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
    expect(
        enumProjection.identifiers,
        orderedEquals([
          'started(0)',
          'completed(1)',
          'canceled(2)',
          'error(3)',
        ]));
  });

  test('Acronyms in enum identifiers are converted to lowercase', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Devices.Geolocation.PositionSource');

    final enumProjection = EnumProjection(winTypeDef!, 'PositionSource');
    expect(enumProjection.classDeclaration,
        equals('enum PositionSource implements WinRTEnum {'));
    expect(
        enumProjection.identifiers,
        orderedEquals([
          'cellular(0)',
          'satellite(1)',
          'wifi(2)',
          'ipAddress(3)',
          'unknown(4)',
          'default_(5)',
          'obfuscated(6)'
        ]));
  });

  test('Flags Enumerations projected correctly', () {
    final winTypeDef =
        MetadataStore.getMetadataForType('Windows.Storage.FileAttributes');

    final flagsEnumProjection =
        FlagsEnumProjection(winTypeDef!, 'FileAttributes');
    expect(flagsEnumProjection.classDeclaration,
        equals('class FileAttributes extends WinRTEnum {'));
    expect(
        flagsEnumProjection.identifiers,
        orderedEquals([
          "static const normal = FileAttributes(0, name: 'normal');",
          "static const readOnly = FileAttributes(1, name: 'readOnly');",
          "static const directory = FileAttributes(16, name: 'directory');",
          "static const archive = FileAttributes(32, name: 'archive');",
          "static const temporary = FileAttributes(256, name: 'temporary');",
          "static const locallyIncomplete = FileAttributes(512, name: 'locallyIncomplete');",
        ]));
  });
}
