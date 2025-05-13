import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' show FieldSig, MetadataIndex, MetadataReader;
import 'package:winmd/writer.dart';

void main() {
  test('FieldRVA', () {
    final writer = MetadataWriter(name: 'MyMetadata');
    final field = writer.writeField(
      name: 'foo',
      signature: const FieldSig(StringType()),
    );
    writer.writeFieldRVA(field: field, rva: 0x1000);
    final reader = MetadataReader.read(writer.toBytes());
    final index = MetadataIndex.fromReader(reader);
    final fieldRVA = index.fieldRVA.first;
    check(fieldRVA.field.name).equals('foo');
    check(fieldRVA.rva).equals(0x1000);
  });
}
