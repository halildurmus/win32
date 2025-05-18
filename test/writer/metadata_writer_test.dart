import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;
import 'package:winmd/writer.dart';

void main() {
  group('MetadataWriter', () {
    test('empty', () {
      final writer = MetadataWriter(name: 'MyMetadata');
      final bytes = writer.toBytes();
      final reader = winmd.MetadataReader.read(bytes);
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
      check(tableStream.assembly.length).equals(1);
      check(tableStream.assemblyOS.length).equals(0);
      check(tableStream.assemblyProcessor.length).equals(0);
      check(tableStream.assemblyRef.length).equals(1);
      check(tableStream.assemblyRefOS.length).equals(0);
      check(tableStream.assemblyRefProcessor.length).equals(0);
      check(tableStream.classLayout.length).equals(0);
      check(tableStream.constant.length).equals(0);
      check(tableStream.customAttribute.length).equals(0);
      check(tableStream.declSecurity.length).equals(0);
      check(tableStream.event.length).equals(0);
      check(tableStream.eventMap.length).equals(0);
      check(tableStream.exportedType.length).equals(0);
      check(tableStream.field.length).equals(0);
      check(tableStream.fieldLayout.length).equals(0);
      check(tableStream.fieldMarshal.length).equals(0);
      check(tableStream.fieldRVA.length).equals(0);
      check(tableStream.file.length).equals(0);
      check(tableStream.genericParam.length).equals(0);
      check(tableStream.genericParamConstraint.length).equals(0);
      check(tableStream.implMap.length).equals(0);
      check(tableStream.interfaceImpl.length).equals(0);
      check(tableStream.manifestResource.length).equals(0);
      check(tableStream.memberRef.length).equals(0);
      check(tableStream.methodDef.length).equals(0);
      check(tableStream.methodImpl.length).equals(0);
      check(tableStream.methodSemantics.length).equals(0);
      check(tableStream.methodSpec.length).equals(0);
      check(tableStream.module.length).equals(1);
      check(tableStream.moduleRef.length).equals(0);
      check(tableStream.nestedClass.length).equals(0);
      check(tableStream.param.length).equals(0);
      check(tableStream.property.length).equals(0);
      check(tableStream.propertyMap.length).equals(0);
      check(tableStream.standAloneSig.length).equals(0);
      check(tableStream.typeDef.length).equals(1);
      check(tableStream.typeRef.length).equals(0);
      check(tableStream.typeSpec.length).equals(0);
      final index = winmd.MetadataIndex.fromReader(reader);
      final assemblyRef = index.assemblyRef.first;
      check(assemblyRef.name).equals('mscorlib');
      check(assemblyRef.version).equals('4.0.0.0');
      check(assemblyRef.flags).equals(const AssemblyFlags(0));
      final module = index.module.first;
      check(module.name).equals('MyMetadata');
      check(module.mvid.isZero).isFalse();
      final typeDef = index.typeDef.first;
      check(typeDef.namespace).isEmpty();
      check(typeDef.name).equals('<Module>');
      check(typeDef.extends$).isNull();
      check(typeDef.flags).equals(const TypeAttributes(0));
    });

    test('Class', () {
      final writer = MetadataWriter(name: 'MyMetadata');

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

      const guidSignature = winmd.MethodRefSig(
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
        interface: const NamedClassType(winmd.TypeName('Namespace', 'IName')),
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
        signature: const winmd.MethodRefSig(),
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
      final reader = winmd.MetadataReader.read(bytes);
      winmd.MetadataIndex.fromReader(
        reader,
      ).findSingleType('Namespace', 'Name');
    });

    test('CustomAttribute', () {
      final writer = MetadataWriter(name: 'MyMetadata');

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

      const guidSignature = winmd.MethodRefSig(
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
      final reader = winmd.MetadataReader.read(bytes);
      final index = winmd.MetadataIndex.fromReader(reader);
      final type = index.allTypes
          .where((def) => def.name == 'Name')
          .firstOrNull;
      check(type).isNotNull();
      final attributes = type!.attributes;
      check(attributes.length).equals(1);
      final attribute = attributes.first;
      check(attribute.type.name).equals('.ctor');
    });

    test('FieldMarshal', () {
      final writer = MetadataWriter(name: 'MyMetadata');
      final someArray = writer.writeField(
        flags: FieldAttributes.public,
        name: 'SomeArray',
        signature: const ArrayType(Int32Type()),
      );
      writer.writeFieldMarshal(
        parent: HasFieldMarshal.field(someArray),
        descriptor: const winmd.MarshallingDescriptor.array(
          elementType: winmd.NATIVE_TYPE_I4,
        ),
      );
      final someString = writer.writeField(
        flags: FieldAttributes.public,
        name: 'SomeString',
        signature: const NamedValueType(winmd.TypeName('System', 'String')),
      );
      writer.writeFieldMarshal(
        parent: HasFieldMarshal.field(someString),
        descriptor: const winmd.MarshallingDescriptor.simple(
          winmd.NATIVE_TYPE_LPWSTR,
        ),
      );
      final bytes = writer.toBytes();
      final reader = winmd.MetadataReader.read(bytes);
      final metadata = winmd.MetadataIndex.fromReader(reader);

      final [someArrayField, someStringField] = metadata.field.toList();

      final someArrayMarshal = someArrayField.fieldMarshal;
      check(someArrayMarshal).isNotNull();
      check(someArrayMarshal!.parent)
          .isA<winmd.HasFieldMarshalField>()
          .has((it) => it.value.name, 'value.name')
          .equals('SomeArray');
      check(someArrayMarshal.nativeType).equals(
        const winmd.MarshallingDescriptor.array(
          elementType: winmd.NATIVE_TYPE_I4,
        ),
      );

      final someStringMarshal = someStringField.fieldMarshal;
      check(someStringMarshal).isNotNull();
      check(someStringMarshal!.parent)
          .isA<winmd.HasFieldMarshalField>()
          .has((it) => it.value.name, 'value.name')
          .equals('SomeString');
      check(someStringMarshal.nativeType).equals(
        const winmd.MarshallingDescriptor.simple(winmd.NATIVE_TYPE_LPWSTR),
      );
    });

    test('Interface', () {
      final writer = MetadataWriter(name: 'MyMetadata')
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

      writer
        ..writeMethodDef(
          flags: flags,
          name: 'One',
          signature: const MethodSignature(
            returnType: Int32Type(),
            types: [Int8Type(), Int16Type()],
          ),
        )
        ..writeParam(flags: ParamAttributes.in$, sequence: 1, name: 'i8')
        ..writeParam(flags: ParamAttributes.in$, sequence: 2, name: 'i16')
        ..writeMethodDef(
          flags: flags,
          name: 'Two',
          signature: const MethodSignature(returnType: StringType()),
        );

      final reader = winmd.MetadataReader.read(writer.toBytes());
      final index = winmd.MetadataIndex.fromReader(reader);

      final typeDef = index.findSingleType('Namespace', 'Name');
      final methods = typeDef.methods;
      check(methods.length).equals(2);

      check(methods[0].name).equals('One');
      check(methods[0].signature).equals(
        const winmd.MethodSignature(
          returnType: Int32Type(),
          types: [Int8Type(), Int16Type()],
        ),
      );

      check(methods[1].name).equals('Two');
      check(
        methods[1].signature,
      ).equals(const winmd.MethodSignature(returnType: StringType()));
    });

    test('Struct', () {
      final writer = MetadataWriter(name: 'MyMetadata');

      final valueType = writer.writeTypeRef(
        namespace: 'System',
        name: 'ValueType',
      );

      writer.writeTypeDef(
        namespace: 'Namespace',
        name: 'Name',
        extends$: TypeDefOrRef.typeRef(valueType),
        flags:
            TypeAttributes.public |
            TypeAttributes.sequentialLayout |
            TypeAttributes.sealed |
            TypeAttributes.windowsRuntime,
      );

      final someGuid = writer.writeField(
        flags: FieldAttributes.public,
        name: 'SomeGuid',
        signature: const NamedValueType(winmd.TypeName('System', 'Guid')),
      );
      writer.writeFieldLayout(offset: 0, field: someGuid);

      final someNum = writer.writeField(
        flags: FieldAttributes.public,
        name: 'SomeNum',
        signature: const Int32Type(),
      );
      writer.writeFieldLayout(offset: 16, field: someNum);

      final bytes = writer.toBytes();
      final reader = winmd.MetadataReader.read(bytes);
      final index = winmd.MetadataIndex.fromReader(reader);

      final typeDef = index.findSingleType('Namespace', 'Name');
      final fields = typeDef.fields;
      check(fields.length).equals(2);

      check(fields[0].name).equals('SomeGuid');
      check(
        fields[0].signature,
      ).equals(const NamedValueType(winmd.TypeName('System', 'Guid')));
      check(
        fields[0].layout,
      ).isNotNull().has((it) => it.offset, 'offset').equals(0);
      check(fields[1].name).equals('SomeNum');
      check(fields[1].signature).equals(const Int32Type());
      check(
        fields[1].layout,
      ).isNotNull().has((it) => it.offset, 'offset').equals(16);
    });
  });
}
