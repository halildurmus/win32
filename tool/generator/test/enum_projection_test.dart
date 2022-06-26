@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Enumerations projected correctly', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.AsyncStatus');

    final enumProjection = EnumProjection(winTypeDef!, 'AsyncStatus');
    expect(enumProjection.classDeclaration,
        equals('enum AsyncStatus implements WinRTEnum {'));
    expect(enumProjection.identifiers, equalsIgnoringWhitespace('''
      Started(0),\n
      Completed(1),\n
      Canceled(2),\n
      Error(3);'''));
  });

  test('Flags Enumerations projected correctly', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Storage.FileAttributes');

    final flagsEnumProjection =
        FlagsEnumProjection(winTypeDef!, 'FileAttributes');
    expect(flagsEnumProjection.classDeclaration,
        equals('class FileAttributes extends WinRTEnum {'));
    expect(flagsEnumProjection.identifiers, equalsIgnoringWhitespace('''
      static const Normal = FileAttributes(0, name: 'Normal');\n
      static const ReadOnly = FileAttributes(1, name: 'ReadOnly');\n
      static const Directory = FileAttributes(16, name: 'Directory');\n
      static const Archive = FileAttributes(32, name: 'Archive');\n
      static const Temporary = FileAttributes(256, name: 'Temporary');\n
      static const LocallyIncomplete = FileAttributes(512, name: 'LocallyIncomplete');'''));
  });
}
