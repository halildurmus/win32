@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Enums projected correctly', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Foundation.AsyncStatus');

    final enumProjection = EnumProjection(winTypeDef!, 'AsyncStatus');
    expect(enumProjection.hasFlagsAttribute, false);
    expect(enumProjection.enumSetHelper, isEmpty);
    expect(enumProjection.fields, equalsIgnoringWhitespace('''
      Started(0),\n
      Completed(1),\n
      Canceled(2),\n
      Error(3);'''));
  });

  test(
      'Enums that support a bitwise combination of its member values projected correctly',
      () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Storage.FileAttributes');

    final enumProjection = EnumProjection(winTypeDef!, 'FileAttributes');
    expect(enumProjection.hasFlagsAttribute, true);
    expect(enumProjection.enumSetHelper, isNotEmpty);
    expect(enumProjection.fields, equalsIgnoringWhitespace('''
      Normal(0),\n
      ReadOnly(1),\n
      Directory(16),\n
      Archive(32),\n
      Temporary(256),\n
      LocallyIncomplete(512);'''));
  });
}
