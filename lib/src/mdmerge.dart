import 'dart:io';

import 'package:path/path.dart' as p;

import 'attributes.dart';
import 'metadata_type.dart';
import 'reader/has_custom_attributes.dart';
import 'reader/metadata_index.dart';
import 'reader/metadata_reader.dart';
import 'reader/table/type_def.dart';
import 'reader/type_category.dart';
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
  final output = File(outputPath);
  final readers = _expandInput(inputPaths);
  final index = MetadataIndex.fromReaders(readers);
  final name = p.basename(outputPath);
  final writer = MetadataWriter(name);
  for (final typeDef in index.allTypes) {
    _writeType(writer, index, typeDef, null);
  }
  output.writeAsBytesSync(writer.toBytes());
}

List<MetadataReader> _expandInput(List<String> inputPaths) {
  final result = <MetadataReader>[];

  for (final path in inputPaths) {
    final dir = Directory(path);
    if (dir.existsSync()) {
      final winmdFiles =
          [
            for (final entity in dir.listSync())
              if (entity is File &&
                  p.extension(entity.path).toLowerCase() == '.winmd')
                entity,
          ]..sort(
            (a, b) => p
                .basename(a.path)
                .toLowerCase()
                .compareTo(p.basename(b.path).toLowerCase()),
          );

      if (winmdFiles.isEmpty) {
        throw FileSystemException('No .winmd files found in "$path".');
      }

      for (final file in winmdFiles) {
        result.add(MetadataReader.read(file.readAsBytesSync()));
      }
    } else {
      final file = File(path);
      if (!file.existsSync()) {
        throw FileSystemException('File does not exist: $path');
      }
      result.add(MetadataReader.read(file.readAsBytesSync()));
    }
  }

  return result;
}

void _writeType(
  MetadataWriter writer,
  MetadataIndex index,
  TypeDef def,
  TypeDefIndex? outer,
) {
  final TypeDefOrRef extends$;
  if (def.extends$ case final extends_?) {
    extends$ = TypeDefOrRef.typeRef(
      writer.writeTypeRef(namespace: extends_.namespace, name: extends_.name),
    );
  } else {
    extends$ = TypeDefOrRef.none;
  }

  assert(
    def.flags.isNested ? def.namespace.isEmpty : def.namespace.isNotEmpty,
    'Namespace must be empty for nested types.',
  );

  final typeDef = writer.writeTypeDef(
    namespace: def.namespace,
    name: def.name,
    flags: def.flags,
    extends$: extends$,
  );

  if (outer != null) {
    writer.writeNestedClass(inner: typeDef, outer: outer);
  }

  for (final field in def.fields) {
    final fieldRef = writer.writeField(
      flags: field.flags,
      name: field.name,
      type: field.type,
      defaultValue: field.constant?.value,
      offset: field.layout?.offset,
    );
    _writeAttributes(writer, HasCustomAttribute.field(fieldRef), field);
  }

  _writeAttributes(writer, HasCustomAttribute.typeDef(typeDef), def);

  final generics = def.generics
      .map((param) => GenericParameterType(param.sequence))
      .toList();
  for (final impl in def.interfaceImpls) {
    final implRef = writer.writeInterfaceImpl(
      class$: typeDef,
      interface: impl.interface(generics),
    );
    _writeAttributes(writer, HasCustomAttribute.interfaceImpl(implRef), impl);
  }

  for (final generic in def.generics) {
    writer.writeGenericParam(
      number: generic.sequence,
      flags: generic.flags,
      owner: TypeOrMethodDef.typeDef(typeDef),
      name: generic.name,
    );
  }

  final isWinRTClass =
      def.category == TypeCategory.class$ &&
      def.flags.has(TypeAttributes.windowsRuntime);

  final specialMethods = <String, MethodDefIndex?>{};

  for (final method in def.methods) {
    final methodIndex = writer.writeMethodDef(
      implFlags: method.implFlags,
      flags: method.flags,
      name: method.name,
      signature: method.signature(generics),
    );

    if (method.flags.has(MethodAttributes.specialName)) {
      final name = method.name;
      specialMethods[name] = methodIndex;
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

    if (method.implMap case final implMap? when !isWinRTClass) {
      writer.writeImplMap(
        method: methodIndex,
        flags: implMap.flags,
        importName: implMap.importName,
        importScope: implMap.importScope.name,
      );
    }
  }

  if (def.events.isNotEmpty) {
    writer.writeEventMap(parent: typeDef);
    for (final event in def.events) {
      final eventIndex = writer.writeEvent(
        flags: event.eventFlags,
        name: event.name,
        type: event.type(),
      );

      writer
        ..writeMethodSemantics(
          semantics: MethodSemanticsAttributes.addOn,
          method: specialMethods[event.add.name]!,
          association: HasSemantics.event(eventIndex),
        )
        ..writeMethodSemantics(
          semantics: MethodSemanticsAttributes.removeOn,
          method: specialMethods[event.remove.name]!,
          association: HasSemantics.event(eventIndex),
        );

      if (event.raise != null) {
        writer.writeMethodSemantics(
          semantics: MethodSemanticsAttributes.fire,
          method: specialMethods[event.raise!.name]!,
          association: HasSemantics.event(eventIndex),
        );
      }

      _writeAttributes(writer, HasCustomAttribute.event(eventIndex), event);
    }
  }

  if (def.properties.isNotEmpty) {
    writer.writePropertyMap(parent: typeDef);
    for (final property in def.properties) {
      final propertyIndex = writer.writeProperty(
        flags: property.flags,
        name: property.name,
        signature: property.signature(),
      );

      if (property.getter case final getter?) {
        writer.writeMethodSemantics(
          semantics: MethodSemanticsAttributes.getter,
          method: specialMethods[getter.name]!,
          association: HasSemantics.property(propertyIndex),
        );
      }

      if (property.setter case final setter?) {
        writer.writeMethodSemantics(
          semantics: MethodSemanticsAttributes.setter,
          method: specialMethods[setter.name]!,
          association: HasSemantics.property(propertyIndex),
        );
      }

      _writeAttributes(
        writer,
        HasCustomAttribute.property(propertyIndex),
        property,
      );
    }
  }

  if (def.classLayout case final layout?) {
    writer.writeClassLayout(
      packingSize: layout.packingSize,
      classSize: layout.classSize,
      parent: typeDef,
    );
  }

  for (final nestedDef in index.nestedTypes(def)) {
    assert(
      nestedDef.namespace.isEmpty && nestedDef.flags.isNested,
      'Nested type must have empty namespace and be nested.',
    );
    _writeType(writer, index, nestedDef, typeDef);
  }
}

void _writeAttributes<R extends HasCustomAttributes>(
  MetadataWriter writer,
  HasCustomAttribute parent,
  R row,
) {
  for (final attr in row.attributes) {
    final ctor = attr.type;
    final type = ctor.parent;
    final attrParent = MemberRefParent.typeRef(
      writer.writeTypeRef(namespace: type.namespace, name: type.name),
    );
    final ctorRef = writer.writeMemberRef(
      parent: attrParent,
      name: '.ctor',
      signature: ctor.signature(),
    );
    writer.writeCustomAttribute(
      parent: parent,
      type: CustomAttributeType.memberRef(ctorRef),
      fixedArgs: attr.fixedArgs,
      namedArgs: attr.namedArgs,
    );
  }
}
