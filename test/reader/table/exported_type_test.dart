import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;
import 'package:winmd/writer.dart';

void main() {
  test('ExportedType', () {
    final writer = MetadataWriter(name: 'MyMetadata');
    final file = writer.writeFile(
      name: 'foo.dll',
      hashValue: Uint8List.fromList([1, 2, 3]),
    );
    final typeDef = writer.writeTypeDef(namespace: 'Namespace', name: 'MyType');
    writer.writeExportedType(
      flags: winmd.TypeAttributes.public,
      typeDefId: typeDef,
      namespace: 'Namespace',
      name: 'MyExportedType',
      implementation: Implementation.file(file),
    );
    final reader = winmd.MetadataReader.read(writer.toBytes());
    final index = winmd.MetadataIndex.fromReader(reader);
    final exportedType = index.exportedType.first;
    check(exportedType.token).equals(0x27000000);
    check(exportedType.flags).equals(winmd.TypeAttributes.public);
    check(
      exportedType.typeDefId,
    ).isNotNull().has((it) => it.name, 'name').equals('MyType');
    check(exportedType.namespace).equals('Namespace');
    check(exportedType.name).equals('MyExportedType');
    check(exportedType.implementation)
        .isA<winmd.ImplementationFile>()
        .has((it) => it.value.name, 'value.name')
        .equals('foo.dll');
  });
}
