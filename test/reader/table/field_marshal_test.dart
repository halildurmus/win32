import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;
import 'package:winmd/writer.dart';

void main() {
  test('FieldMarshal', () {
    final writer = MetadataWriter(name: 'MyMetadata');
    final someArrayFieldIndex = writer.writeField(
      flags: FieldAttributes.public,
      name: 'SomeArray',
      signature: const winmd.FieldSig(ArrayType(Int32Type())),
    );
    writer.writeFieldMarshal(
      parent: HasFieldMarshal.field(someArrayFieldIndex),
      descriptor: const winmd.MarshallingDescriptor.array(
        elementType: winmd.NATIVE_TYPE_I4,
      ),
    );
    final someStringFieldIndex = writer.writeField(
      flags: FieldAttributes.public,
      name: 'SomeString',
      signature: const winmd.FieldSig(
        NamedValueType(winmd.TypeName('System', 'String')),
      ),
    );
    writer.writeFieldMarshal(
      parent: HasFieldMarshal.field(someStringFieldIndex),
      descriptor: const winmd.MarshallingDescriptor.simple(
        winmd.NATIVE_TYPE_LPWSTR,
      ),
    );
    final reader = winmd.MetadataReader.read(writer.toBytes());
    final index = winmd.MetadataIndex.fromReader(reader);

    final [someArrayField, someStringField] = index.field.toList();

    final someArrayFieldMarshal = someArrayField.fieldMarshal;
    check(someArrayFieldMarshal).isNotNull();
    check(someArrayFieldMarshal!.token).equals(0x0D000000);
    check(someArrayFieldMarshal.parent)
        .isA<winmd.HasFieldMarshalField>()
        .has((it) => it.value.name, 'value.name')
        .equals('SomeArray');
    check(someArrayFieldMarshal.nativeType).equals(
      const winmd.MarshallingDescriptor.array(
        elementType: winmd.NATIVE_TYPE_I4,
      ),
    );

    final someStringFieldMarshal = someStringField.fieldMarshal;
    check(someStringFieldMarshal).isNotNull();
    check(someStringFieldMarshal!.parent)
        .isA<winmd.HasFieldMarshalField>()
        .has((it) => it.value.name, 'value.name')
        .equals('SomeString');
    check(someStringFieldMarshal.nativeType).equals(
      const winmd.MarshallingDescriptor.simple(winmd.NATIVE_TYPE_LPWSTR),
    );
  });
}
