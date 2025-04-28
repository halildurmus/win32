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
import 'writer/id.dart' as id show TypeDef;
import 'writer/metadata_writer.dart';

void mdmerge({required List<String> inputPaths, required String outputPath}) {
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
      final files = dir.listSync().whereType<File>();
      final winmdFiles = files.where(
        (f) => p.extension(f.path).toLowerCase() == '.winmd',
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
  id.TypeDef? outer,
) {
  final TypeDefOrRef extends$;
  if (def.extends$ case final extends_?) {
    extends$ = TypeDefOrRef.typeRef(
      writer.addTypeRef(extends_.namespace, extends_.name),
    );
  } else {
    extends$ = TypeDefOrRef.none;
  }

  assert(
    def.flags.isNested ? def.namespace.isEmpty : def.namespace.isNotEmpty,
    'Namespace must be empty for nested types.',
  );

  final typeDef = writer.addTypeDef(
    def.namespace,
    def.name,
    extends$,
    def.flags,
  );

  if (outer != null) {
    writer.addNestedClass(typeDef, outer);
  }

  for (final field in def.fields) {
    final fieldRef = writer.addField(field.name, field.type, field.flags);
    if (field.constant case final constant?) {
      writer.addConstant(HasConstant.field(fieldRef), constant.value!);
    }
    _writeAttributes(writer, HasCustomAttribute.field(fieldRef), field);
  }

  _writeAttributes(writer, HasCustomAttribute.typeDef(typeDef), def);

  final generics = def.generics
      .map((param) => GenericParameterType(param.sequence))
      .toList();
  for (final impl in def.interfaceImpls) {
    final implRef = writer.addInterfaceImpl(typeDef, impl.interface(generics));
    _writeAttributes(writer, HasCustomAttribute.interfaceImpl(implRef), impl);
  }

  for (final generic in def.generics) {
    writer.addGenericParam(
      generic.name,
      TypeOrMethodDef.typeDef(typeDef),
      generic.sequence,
      generic.flags,
    );
  }

  final isWinRTClass =
      def.category == TypeCategory.class$ &&
      def.flags.has(TypeAttributes.windowsRuntime);

  for (final method in def.methods) {
    final methodRef = writer.addMethodDef(
      method.name,
      method.signature(generics),
      method.flags,
      method.implFlags,
    );

    for (final param in method.params) {
      final paramRef = writer.addParam(param.name, param.sequence, param.flags);
      _writeAttributes(writer, HasCustomAttribute.param(paramRef), param);
    }

    _writeAttributes(writer, HasCustomAttribute.methodDef(methodRef), method);

    if (method.implMap case final implMap? when !isWinRTClass) {
      writer.addImplMap(
        methodRef,
        implMap.flags,
        implMap.importName,
        implMap.importScope.name,
      );
    }
  }

  if (def.classLayout case final layout?) {
    writer.addClassLayout(typeDef, layout.packingSize, layout.classSize);
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
    final attributeRef = MemberRefParent.typeRef(
      writer.addTypeRef(type.namespace, type.name),
    );
    final ctorRef = writer.addMemberRef(
      '.ctor',
      ctor.signature(),
      attributeRef,
    );
    writer.addCustomAttribute(
      parent,
      CustomAttributeType.memberRef(ctorRef),
      attr.parameters,
    );
  }
}
