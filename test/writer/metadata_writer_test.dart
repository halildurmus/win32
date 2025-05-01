import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' show MetadataIndex, MetadataReader;
import 'package:winmd/writer.dart';

void main() {
  group('MetadataWriter', () {
    test('empty', () {
      final writer = MetadataWriter('MyMetadata');
      final bytes = writer.toBytes();
      final reader = MetadataReader.read(bytes);
      check(reader.moduleName).equals('MyMetadata');
      check(reader.blobHeap.data).length.equals(12);
      check(reader.blobHeap[1]).deepEquals(
        Uint8List.fromList([
          0xB7, 0x7A, 0x5C, 0x56, 0x19, 0x34, 0xE0, 0x89, //
        ]),
      );
      check(reader.guidHeap.data.length).equals(16);
      check(reader.guidHeap[0].isZero).isFalse();
      check(reader.stringHeap.data).length.equals(32);
      check(reader.stringHeap[1]).equals('MyMetadata');
      check(reader.stringHeap[12]).equals('mscorlib');
      check(reader.stringHeap[21]).equals('<Module>');
      check(reader.userStringHeap.data)
        ..length.equals(4)
        ..deepEquals(Uint8List.fromList([0, 0, 0, 0]));
      final tableStream = reader.tableStream;
      check(tableStream.assemblyRefs.length).equals(1);
      check(tableStream.classLayouts.length).equals(0);
      check(tableStream.constants.length).equals(0);
      check(tableStream.customAttributes.length).equals(0);
      check(tableStream.fields.length).equals(0);
      check(tableStream.fieldLayouts.length).equals(0);
      check(tableStream.genericParams.length).equals(0);
      check(tableStream.genericParamConstraints.length).equals(0);
      check(tableStream.implMaps.length).equals(0);
      check(tableStream.interfaceImpls.length).equals(0);
      check(tableStream.memberRefs.length).equals(0);
      check(tableStream.methodDefs.length).equals(0);
      check(tableStream.modules.length).equals(1);
      check(tableStream.moduleRefs.length).equals(0);
      check(tableStream.nestedClasses.length).equals(0);
      check(tableStream.params.length).equals(0);
      check(tableStream.typeDefs.length).equals(1);
      check(tableStream.typeRefs.length).equals(0);
      check(tableStream.typeSpecs.length).equals(0);
      final index = MetadataIndex.fromReader(reader);
      final assemblyRef = index.assemblyRefs.first;
      check(assemblyRef.name).equals('mscorlib');
      check(assemblyRef.version).equals('4.0.0.0');
      check(assemblyRef.flags).equals(const AssemblyFlags(0));
      final module = index.modules.first;
      check(module.name).equals('MyMetadata');
      check(module.mvid.isZero).isFalse();
      final typeDef = index.typeDefs.first;
      check(typeDef.namespace).isEmpty();
      check(typeDef.name).equals('<Module>');
      check(typeDef.extends$).isNull();
      check(typeDef.flags).equals(const TypeAttributes(0));
    });

    test('Attribute', () {
      final writer = MetadataWriter('MyMetadata');

      final typeDef = writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'Name',
        flags:
            TypeAttributes.public |
            TypeAttributes.interface |
            TypeAttributes.abstract |
            TypeAttributes.windowsRuntime,
      );

      final guidAttribute = MemberRefParent.typeRef(
        writer.writeTypeRef(
          namespace: 'Windows.Foundation.Metadata',
          name: 'GuidAttribute',
        ),
      );

      const guidSignature = MethodSignature(
        types: [
          Uint32Type(),
          Uint16Type(),
          Uint16Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
        ],
      );

      final guidCtor = writer.writeMemberRef(
        parent: guidAttribute,
        name: '.ctor',
        signature: guidSignature,
      );

      const guidValue = [
        FixedArg(Uint32Value(0xd095a8ca)),
        FixedArg(Uint16Value(0x1103)),
        FixedArg(Uint16Value(0x4ef5)),
        FixedArg(Uint8Value(0x99)),
        FixedArg(Uint8Value(0x8c)),
        FixedArg(Uint8Value(0x62)),
        FixedArg(Uint8Value(0x82)),
        FixedArg(Uint8Value(0x15)),
        FixedArg(Uint8Value(0x10)),
        FixedArg(Uint8Value(0xef)),
        FixedArg(Uint8Value(0x8f)),
      ];

      writer.writeCustomAttribute(
        parent: HasCustomAttribute.typeDef(typeDef),
        type: CustomAttributeType.memberRef(guidCtor),
        fixedArgs: guidValue,
      );

      final bytes = writer.toBytes();
      final reader = MetadataReader.read(bytes);
      final index = MetadataIndex.fromReader(reader);
      final type = index.allTypes
          .where((def) => def.name == 'Name')
          .firstOrNull;
      check(type).isNotNull();
      final attributes = type!.attributes.toList();
      check(attributes.length).equals(1);
      final attribute = attributes.first;
      check(attribute.type.name).equals('.ctor');
    });

    test('Class', () {
      final writer = MetadataWriter('MyMetadata');

      final interfaceTypeDef = writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'IName',
        flags:
            TypeAttributes.public |
            TypeAttributes.interface |
            TypeAttributes.abstract |
            TypeAttributes.windowsRuntime,
      );

      final guidAttribute = MemberRefParent.typeRef(
        writer.writeTypeRef(
          namespace: 'Windows.Foundation.Metadata',
          name: 'GuidAttribute',
        ),
      );

      const guidSignature = MethodSignature(
        types: [
          Uint32Type(),
          Uint16Type(),
          Uint16Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
          Uint8Type(),
        ],
      );

      final guidCtor = writer.writeMemberRef(
        parent: guidAttribute,
        name: '.ctor',
        signature: guidSignature,
      );

      const guidValue = [
        FixedArg(Uint32Value(0xd095a8ca)),
        FixedArg(Uint16Value(0x1103)),
        FixedArg(Uint16Value(0x4ef5)),
        FixedArg(Uint8Value(0x99)),
        FixedArg(Uint8Value(0x8c)),
        FixedArg(Uint8Value(0x62)),
        FixedArg(Uint8Value(0x82)),
        FixedArg(Uint8Value(0x15)),
        FixedArg(Uint8Value(0x10)),
        FixedArg(Uint8Value(0xef)),
        FixedArg(Uint8Value(0x8f)),
      ];

      final objectName = TypeDefOrRef.typeRef(
        writer.writeTypeRef(namespace: 'System', name: 'Object'),
      );

      final classTypeDef = writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'Name',
        extends$: objectName,
        flags:
            TypeAttributes.public |
            TypeAttributes.sealed |
            TypeAttributes.windowsRuntime,
      );

      final interfaceImpl = writer.writeInterfaceImpl(
        class$: classTypeDef,
        interface: MetadataType.named('Namespace', 'IName'),
      );

      final defaultAttribute = MemberRefParent.typeRef(
        writer.writeTypeRef(
          namespace: 'Windows.Foundation.Metadata',
          name: 'DefaultAttribute',
        ),
      );

      final defaultCtor = writer.writeMemberRef(
        parent: defaultAttribute,
        name: '.ctor',
      );

      writer
        ..writeCustomAttribute(
          parent: HasCustomAttribute.interfaceImpl(interfaceImpl),
          type: CustomAttributeType.memberRef(defaultCtor),
        )
        ..writeCustomAttribute(
          parent: HasCustomAttribute.typeDef(interfaceTypeDef),
          type: CustomAttributeType.memberRef(guidCtor),
          fixedArgs: guidValue,
        );

      final bytes = writer.toBytes();
      final reader = MetadataReader.read(bytes);
      MetadataIndex.fromReader(reader).findSingleType('Namespace', 'Name');
    });

    test('Interface', () {
      final writer = MetadataWriter('MyMetadata')
        ..writeTypeDef(
          namespace: 'Namespace',
          name: 'Name',
          flags:
              TypeAttributes.public |
              TypeAttributes.interface |
              TypeAttributes.abstract |
              TypeAttributes.windowsRuntime,
        );

      final flags =
          MethodAttributes.public |
          MethodAttributes.hideBySig |
          MethodAttributes.abstract |
          MethodAttributes.newSlot |
          MethodAttributes.virtual;

      var signature = const MethodSignature(
        returnType: Int32Type(),
        types: [Int8Type(), Int16Type()],
      );
      writer
        ..writeMethodDef(flags: flags, name: 'One', signature: signature)
        ..writeParam(flags: ParamAttributes.in$, sequence: 1, name: 'i8')
        ..writeParam(flags: ParamAttributes.in$, sequence: 2, name: 'i16');

      signature = const MethodSignature(returnType: StringType());
      writer.writeMethodDef(flags: flags, name: 'Two', signature: signature);

      final bytes = writer.toBytes();
      final reader = MetadataReader.read(bytes);
      final index = MetadataIndex.fromReader(reader);

      final typeDef = index.findSingleType('Namespace', 'Name');
      final methods = typeDef.methods.toList();
      check(methods.length).equals(2);

      check(methods[0].name).equals('One');
      var sig = methods[0].signature();
      check(sig.flags).equals(MethodCallFlags.hasThis);
      check(sig.returnType).isA<Int32Type>();
      check(sig.types.length).equals(2);
      check(sig.types[0]).isA<Int8Type>();
      check(sig.types[1]).isA<Int16Type>();

      check(methods[1].name).equals('Two');
      sig = methods[1].signature();
      check(sig.flags).equals(MethodCallFlags.hasThis);
      check(sig.returnType).isA<StringType>();
      check(sig.types.length).equals(0);
    });

    test('Struct', () {
      final writer = MetadataWriter('MyMetadata');

      final valueType = writer.writeTypeRef(
        namespace: 'System',
        name: 'ValueType',
      );
      writer
        ..writeTypeDef(
          namespace: 'Namespace',
          name: 'Name',
          extends$: TypeDefOrRef.typeRef(valueType),
          flags:
              TypeAttributes.public |
              TypeAttributes.sequentialLayout |
              TypeAttributes.sealed |
              TypeAttributes.windowsRuntime,
        )
        ..writeField(
          flags: FieldAttributes.public,
          name: 'SomeGuid',
          type: MetadataType.named('System', 'Guid'),
          offset: 0,
        )
        ..writeField(
          flags: FieldAttributes.public,
          name: 'SomeNum',
          type: const Int32Type(),
          offset: 16,
        );

      final bytes = writer.toBytes();
      final reader = MetadataReader.read(bytes);
      final index = MetadataIndex.fromReader(reader);

      final typeDef = index.findSingleType('Namespace', 'Name');
      final fields = typeDef.fields.toList();
      check(fields.length).equals(2);

      check(fields[0].name).equals('SomeGuid');
      check(fields[0].type).equals(MetadataType.named('System', 'Guid'));
      check(
        fields[0].layout,
      ).isNotNull().has((it) => it.offset, 'offset').equals(0);
      check(fields[1].name).equals('SomeNum');
      check(fields[1].type).equals(const Int32Type());
      check(
        fields[1].layout,
      ).isNotNull().has((it) => it.offset, 'offset').equals(16);
    });
  });
}
