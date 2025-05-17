import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;
import 'package:winmd/writer.dart';

void main() {
  group('ManifestResource', () {
    test('File', () {
      final writer = MetadataWriter(name: 'MyMetadata');
      final file = writer.writeFile(
        name: 'foo.dll',
        hashValue: Uint8List.fromList([1, 2, 3]),
        flags: FileAttributes.containsNoMetadata,
      );
      writer.writeManifestResource(
        offset: 0,
        flags: ManifestResourceAttributes.public,
        name: 'MyResource',
        implementation: Implementation.file(file),
      );
      final reader = winmd.MetadataReader.read(writer.toBytes());
      final index = winmd.MetadataIndex.fromReader(reader);
      final manifestResource = index.manifestResource.first;
      check(manifestResource.token).equals(0x28000000);
      check(manifestResource.offset).equals(0);
      check(
        manifestResource.flags,
      ).equals(winmd.ManifestResourceAttributes.public);
      check(
        manifestResource.resourceVisibility,
      ).equals(winmd.ManifestResourceVisibility.public);
      check(manifestResource.name).equals('MyResource');
      check(manifestResource.implementation)
          .isNotNull()
          .isA<winmd.ImplementationFile>()
          .has((it) => it.value.name, 'value.name')
          .equals('foo.dll');
    });
  });
}
