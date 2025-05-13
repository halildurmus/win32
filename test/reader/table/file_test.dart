import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' show MetadataIndex, MetadataReader;
import 'package:winmd/writer.dart';

void main() {
  test('File', () {
    final writer = MetadataWriter(name: 'MyMetadata')
      ..writeFile(
        name: 'foo.dll',
        hashValue: Uint8List.fromList([1, 2, 3]),
        flags: FileAttributes.containsNoMetadata,
      )
      ..writeFile(name: 'bar.dll', hashValue: Uint8List.fromList([4, 5, 6]));
    final reader = MetadataReader.read(writer.toBytes());
    final index = MetadataIndex.fromReader(reader);
    final files = index.file.toList();
    check(files.length).equals(2);
    final [file1, file2] = files;

    check(file1.name).equals('foo.dll');
    check(file1.hashValue.slice).deepEquals([1, 2, 3]);
    check(file1.flags).equals(FileAttributes.containsNoMetadata);

    check(file2.name).equals('bar.dll');
    check(file2.hashValue.slice).deepEquals([4, 5, 6]);
    check(file2.flags).equals(FileAttributes.containsMetadata);
  });
}
