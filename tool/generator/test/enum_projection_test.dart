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
      started(0),\n
      completed(1),\n
      canceled(2),\n
      error(3);'''));
  });

  test('Flags Enumerations projected correctly', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Storage.FileAttributes');

    final flagsEnumProjection =
        FlagsEnumProjection(winTypeDef!, 'FileAttributes');
    expect(flagsEnumProjection.classDeclaration,
        equals('class FileAttributes extends WinRTEnum {'));
    expect(flagsEnumProjection.identifiers, equalsIgnoringWhitespace('''
      static const normal = FileAttributes(0, name: 'normal');\n
      static const readOnly = FileAttributes(1, name: 'readOnly');\n
      static const directory = FileAttributes(16, name: 'directory');\n
      static const archive = FileAttributes(32, name: 'archive');\n
      static const temporary = FileAttributes(256, name: 'temporary');\n
      static const locallyIncomplete = FileAttributes(512, name: 'locallyIncomplete');'''));
  });
}
