import 'dart:io';

import 'package:path/path.dart' as p;

import 'attributes.dart';
import 'exception.dart';
import 'member_ref_signature.dart';
import 'metadata_type.dart';
import 'method_signature.dart';
import 'reader/codes.dart' as reader;
import 'reader/has_custom_attributes.dart';
import 'reader/metadata_index.dart';
import 'reader/metadata_reader.dart';
import 'reader/table/event.dart';
import 'reader/table/field.dart';
import 'reader/table/method_def.dart';
import 'reader/table/method_impl.dart';
import 'reader/table/type_def.dart';
import 'reader/table/type_ref.dart';
import 'reader/table/type_spec.dart';
import 'type_name.dart';
import 'writer/codes.dart';
import 'writer/metadata_writer.dart';
import 'writer/table/index.dart';

/// Merges multiple Windows Metadata (.winmd) files into a single output file.
///
/// This function reads one or more `.winmd` files or directories containing
/// `.winmd` files, expands and parses them into an in-memory metadata index,
/// and writes a merged output `.winmd` file at the specified [outputPath].
///
/// Example:
/// ```dart
/// mdmerge(
///   inputPaths: ['path/to/directory', 'path/to/file.winmd'],
///   outputPath: 'path/to/output/merged.winmd',
/// );
/// ```
void mdmerge({required List<String> inputPaths, required String outputPath}) {
  if (inputPaths.isEmpty) {
    throw ArgumentError.value(
      inputPaths,
      'inputPaths',
      'At least one input path must be provided.',
    );
  }

  final readers = _expandInput(inputPaths);
  final index = MetadataIndex.fromReaders(readers);
  final writer = MetadataWriter(name: p.basename(outputPath));
  final types = _sortTypes(index.allTypes);
  for (final typeDef in types) {
    _writeType(writer, index, typeDef, null);
  }
  File(outputPath).writeAsBytesSync(writer.toBytes());
}

/// Sorts the [types] by namespace and name for consistent ordering.
List<TypeDef> _sortTypes(Iterable<TypeDef> types) =>
    types.toList()..sort((a, b) {
      final nsCompare = a.namespace.compareTo(b.namespace);
      return nsCompare != 0 ? nsCompare : a.name.compareTo(b.name);
    });

List<MetadataReader> _expandInput(List<String> inputPaths) {
  final readers = <MetadataReader>[];

  for (final path in inputPaths) {
    final entityType = FileSystemEntity.typeSync(path);

    switch (entityType) {
      case FileSystemEntityType.directory:
        readers.addAll(_readFromDirectory(path));
      case FileSystemEntityType.file:
        readers.add(_readFromFile(path));
      default:
        throw FileSystemException(
          'Invalid input path: "$path" is neither a file nor a directory.',
        );
    }
  }

  return readers;
}

List<MetadataReader> _readFromDirectory(String directoryPath) {
  final dir = Directory(directoryPath);
  final winmdFiles =
      dir
          .listSync()
          .whereType<File>()
          .where((file) => p.extension(file.path).toLowerCase() == '.winmd')
          .toList()
        ..sort(
          (a, b) => p
              .basename(a.path)
              .toLowerCase()
              .compareTo(p.basename(b.path).toLowerCase()),
        );

  if (winmdFiles.isEmpty) {
    throw FileSystemException(
      'No .winmd files found in directory: "$directoryPath".',
    );
  }

  return winmdFiles.map((file) {
    try {
      return MetadataReader.read(file.readAsBytesSync());
    } catch (e) {
      throw FileSystemException(
        'Failed to read metadata from "${file.path}": $e',
      );
    }
  }).toList();
}

MetadataReader _readFromFile(String filePath) {
  final file = File(filePath);
  if (!file.existsSync()) {
    throw FileSystemException('File does not exist: "$filePath".');
  }

  try {
    return MetadataReader.read(file.readAsBytesSync());
  } catch (e) {
    throw FileSystemException('Failed to read metadata from "$filePath": $e');
  }
}

void _writeType(
  MetadataWriter writer,
  MetadataIndex index,
  TypeDef typeDef,
  TypeDefIndex? outer,
) {
  assert(
    (typeDef.typeVisibility != TypeVisibility.public &&
            typeDef.typeVisibility != TypeVisibility.notPublic)
        ? typeDef.namespace.isEmpty
        : typeDef.namespace.isNotEmpty,
    'Namespace must be empty for nested types.',
  );

  final extends$ = _resolveBaseType(writer, typeDef);

  final typeDefIndex = writer.writeTypeDef(
    namespace: typeDef.namespace,
    name: typeDef.name,
    flags: typeDef.flags,
    extends$: extends$,
  );
  writer.writeTypeRef(namespace: typeDef.namespace, name: typeDef.name);

  if (outer != null) {
    writer.writeNestedClass(inner: typeDefIndex, outer: outer);
  }

  for (final field in typeDef.fields) {
    _writeField(writer, field);
  }

  _writeAttributes(writer, HasCustomAttribute.typeDef(typeDefIndex), typeDef);

  for (final impl in typeDef.interfaceImpls) {
    final implRef = writer.writeInterfaceImpl(
      class$: typeDefIndex,
      interface: impl.interface(),
    );
    _writeAttributes(writer, HasCustomAttribute.interfaceImpl(implRef), impl);
  }

  for (final generic in typeDef.generics) {
    writer.writeGenericParam(
      number: generic.sequence,
      flags: generic.flags,
      owner: TypeOrMethodDef.typeDef(typeDefIndex),
      name: generic.name,
    );
  }

  final specialMethods = _writeMethods(writer, typeDef, typeDefIndex);
  _writeEvents(writer, typeDef, typeDefIndex, specialMethods);
  _writeProperties(writer, typeDef, typeDefIndex, specialMethods);

  if (typeDef.classLayout case final layout?) {
    writer.writeClassLayout(
      packingSize: layout.packingSize,
      classSize: layout.classSize,
      parent: typeDefIndex,
    );
  }

  for (final nested in index.nestedTypes(typeDef)) {
    assert(
      (nested.typeVisibility != TypeVisibility.public &&
              nested.typeVisibility != TypeVisibility.notPublic) &&
          nested.namespace.isEmpty,
      'Nested type must have empty namespace and be nested.',
    );
    _writeType(writer, index, nested, typeDefIndex);
  }
}

@pragma('vm:prefer-inline')
MemberRefParent _buildMemberRefParent(
  MetadataWriter writer,
  TypeSpec typeSpec,
) {
  final type = typeSpec.type();
  if (type is! NamedType) {
    throw WinmdException('Expected NamedType, got: $type');
  }

  return MemberRefParent.typeSpec(
    writer.writeTypeSpec(
      namespace: type.typeName.namespace,
      name: type.typeName.name,
      generics: type.typeName.generics,
    ),
  );
}

@pragma('vm:prefer-inline')
MemberRefSignature _buildMemberRefSignature(MethodSignature sig) =>
    MemberRefSignature.method(
      callingConvention: sig.callingConvention,
      returnType: sig.returnType,
      types: sig.types,
    );

@pragma('vm:prefer-inline')
TypeDefOrRef _resolveBaseType(MetadataWriter writer, TypeDef typeDef) =>
    switch (typeDef.extends$) {
      reader.TypeDefOrRef(:final namespace, :final name) =>
        TypeDefOrRef.typeRef(
          writer.writeTypeRef(namespace: namespace, name: name),
        ),
      _ => TypeDefOrRef.none,
    };

@pragma('vm:prefer-inline')
MetadataType? _resolveEventType(Event event) => switch (event.eventType) {
  reader.TypeDefOrRefTypeDef(value: TypeDef(:final namespace, :final name)) =>
    NamedClassType(TypeName(namespace, name)),
  reader.TypeDefOrRefTypeRef(value: TypeRef(:final namespace, :final name)) =>
    NamedClassType(TypeName(namespace, name)),
  reader.TypeDefOrRefTypeSpec(:final value) => value.type(),
  _ => null,
};

@pragma('vm:prefer-inline')
MemberRefParent _resolveMemberRefParent(
  MetadataWriter writer,
  reader.MemberRefParent parent,
) => switch (parent) {
  reader.MemberRefParentTypeDef(
    value: TypeDef(:final namespace, :final name),
  ) =>
    MemberRefParent.typeDef(
      writer.writeTypeDef(namespace: namespace, name: name),
    ),
  reader.MemberRefParentTypeRef(
    value: TypeRef(:final namespace, :final name),
  ) =>
    MemberRefParent.typeRef(
      writer.writeTypeRef(namespace: namespace, name: name),
    ),
  reader.MemberRefParentTypeSpec(:final value) => _buildMemberRefParent(
    writer,
    value,
  ),
  _ => throw WinmdException('Unsupported MemberRefParent type: $parent'),
};

MethodImpl? _resolveMethodImpl(List<MethodImpl> methodImpls, MethodDef method) {
  for (final impl in methodImpls) {
    if (impl.methodBody case reader.MethodDefOrRefMethodDef(:final value)) {
      if (value.name != method.name) continue;
      if (value.signature() != method.signature()) continue;

      final paramsA = value.params;
      final paramsB = method.params;
      if (paramsA.length != paramsB.length) continue;

      var matches = true;
      for (var i = 0; i < paramsA.length; i++) {
        final a = paramsA[i];
        final b = paramsB[i];
        if (a.flags != b.flags ||
            a.sequence != b.sequence ||
            a.name != b.name) {
          matches = false;
          break;
        }
      }

      if (matches) return impl;
    } else if (impl.methodBody.name == method.name) {
      return impl;
    }
  }

  return null;
}

void _writeAttributes<R extends HasCustomAttributes>(
  MetadataWriter writer,
  HasCustomAttribute parent,
  R row,
) {
  for (final attr in row.attributes) {
    final ctor = attr.type;
    if (ctor is! reader.CustomAttributeTypeMemberRef) {
      throw WinmdException('Expected CustomAttributeMemberRef, got: $ctor');
    }
    final type = ctor.parent;
    final (namespace, name) = switch (type) {
      reader.MemberRefParentTypeDef(:final value) => (
        value.namespace,
        value.name,
      ),
      reader.MemberRefParentTypeRef(:final value) => (
        value.namespace,
        value.name,
      ),
      _ => throw WinmdException('Unsupported MemberRefParent type: $type'),
    };
    final attrParent = MemberRefParent.typeRef(
      writer.writeTypeRef(namespace: namespace, name: name),
    );
    final signature = ctor.value.signature();
    final ctorRef = writer.writeMemberRef(
      parent: attrParent,
      name: '.ctor',
      signature: signature,
    );
    writer.writeCustomAttribute(
      parent: parent,
      type: CustomAttributeType.memberRef(ctorRef),
      fixedArgs: attr.fixedArgs,
      namedArgs: attr.namedArgs,
    );
  }
}

void _writeField(MetadataWriter writer, Field field) {
  final fieldIndex = writer.writeField(
    flags: field.flags,
    name: field.name,
    signature: field.signature,
  );

  if (field.constant?.value case final value?) {
    writer.writeConstant(parent: HasConstant.field(fieldIndex), value: value);
  }

  if (field.layout?.offset case final offset?) {
    writer.writeFieldLayout(offset: offset, field: fieldIndex);
  }

  _writeAttributes(writer, HasCustomAttribute.field(fieldIndex), field);
}

void _writeEvents(
  MetadataWriter writer,
  TypeDef typeDef,
  TypeDefIndex typeDefIndex,
  Map<String, MethodDefIndex> specialMethods,
) {
  if (typeDef.events.isEmpty) return;

  writer.writeEventMap(parent: typeDefIndex);

  for (final event in typeDef.events) {
    final eventIndex = writer.writeEvent(
      name: event.name,
      eventFlags: event.eventFlags,
      eventType: _resolveEventType(event),
    );

    final addMethodIndex = specialMethods[event.add.name]!;
    writer.writeMethodSemantics(
      association: HasSemantics.event(eventIndex),
      semantics: MethodSemanticsAttributes.addOn,
      method: addMethodIndex,
    );

    final removeMethodIndex = specialMethods[event.remove.name]!;
    writer.writeMethodSemantics(
      association: HasSemantics.event(eventIndex),
      semantics: MethodSemanticsAttributes.removeOn,
      method: removeMethodIndex,
    );

    if (event.raise case final raise?) {
      final raiseMethodIndex = specialMethods[raise.name]!;
      writer.writeMethodSemantics(
        association: HasSemantics.event(eventIndex),
        semantics: MethodSemanticsAttributes.fire,
        method: raiseMethodIndex,
      );
    }

    _writeAttributes(writer, HasCustomAttribute.event(eventIndex), event);
  }
}

Map<String, MethodDefIndex> _writeMethods(
  MetadataWriter writer,
  TypeDef typeDef,
  TypeDefIndex typeDefIndex,
) {
  final specialMethods = <String, MethodDefIndex>{};
  final methodImpls = typeDef.methodImpls;

  for (final method in typeDef.methods) {
    final methodIndex = writer.writeMethodDef(
      implFlags: method.implFlags,
      flags: method.flags,
      name: method.name,
      signature: method.signature(),
    );

    if (method.flags.has(MethodAttributes.specialName)) {
      specialMethods[method.name] = methodIndex;
    }

    for (final param in method.params) {
      final paramIndex = writer.writeParam(
        flags: param.flags,
        sequence: param.sequence,
        name: param.name,
      );
      _writeAttributes(writer, HasCustomAttribute.param(paramIndex), param);
    }

    _writeAttributes(writer, HasCustomAttribute.methodDef(methodIndex), method);

    if (method.implMap case final implMap?) {
      writer.writeImplMap(
        method: methodIndex,
        flags: implMap.flags,
        importName: implMap.importName,
        importScope: implMap.importScope.name,
      );
    }

    final impl = _resolveMethodImpl(methodImpls, method);
    if (impl != null) {
      final methodDeclaration = _writeMethodDeclaration(
        writer,
        impl.methodDeclaration,
      );
      writer.writeMethodImpl(
        class$: typeDefIndex,
        methodBody: MethodDefOrRef.methodDef(methodIndex),
        methodDeclaration: MethodDefOrRef.memberRef(methodDeclaration),
      );
    }
  }

  return specialMethods;
}

MemberRefIndex _writeMethodDeclaration(
  MetadataWriter writer,
  reader.MethodDefOrRef methodDeclaration,
) {
  final name = methodDeclaration.name;

  final (parent, signature) = switch (methodDeclaration) {
    reader.MethodDefOrRefMemberRef(:final value) => (
      _resolveMemberRefParent(writer, value.parent),
      _buildMemberRefSignature(value.signature() as MethodRefSig),
    ),
    reader.MethodDefOrRefMethodDef(:final value) => (
      MemberRefParent.typeDef(
        writer.writeTypeDef(
          namespace: value.parent.namespace,
          name: value.parent.name,
        ),
      ),
      _buildMemberRefSignature(value.signature()),
    ),
  };

  return writer.writeMemberRef(
    parent: parent,
    name: name,
    signature: signature,
  );
}

void _writeProperties(
  MetadataWriter writer,
  TypeDef typeDef,
  TypeDefIndex typeDefIndex,
  Map<String, MethodDefIndex> specialMethods,
) {
  if (typeDef.properties.isEmpty) return;

  writer.writePropertyMap(parent: typeDefIndex);

  for (final property in typeDef.properties) {
    final propertyIndex = writer.writeProperty(
      flags: property.flags,
      name: property.name,
      signature: property.signature(),
    );

    if (property.getter case final getter?) {
      final methodIndex = specialMethods[getter.name]!;
      writer.writeMethodSemantics(
        association: HasSemantics.property(propertyIndex),
        semantics: MethodSemanticsAttributes.getter,
        method: methodIndex,
      );
    }

    if (property.setter case final setter?) {
      final methodIndex = specialMethods[setter.name]!;
      writer.writeMethodSemantics(
        association: HasSemantics.property(propertyIndex),
        semantics: MethodSemanticsAttributes.setter,
        method: methodIndex,
      );
    }

    _writeAttributes(
      writer,
      HasCustomAttribute.property(propertyIndex),
      property,
    );
  }
}
