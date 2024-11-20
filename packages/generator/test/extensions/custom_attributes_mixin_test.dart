@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('CustomAttributesMixin', () {
    test('isAnsi', () {
      final devModeA = WindowsMetadata.findTypeDef('DEVMODEA');
      check(devModeA.isAnsi).isTrue();

      final shellFolder = WindowsMetadata.findTypeDef('IShellFolder');
      check(shellFolder.isAnsi).isFalse();

      final shellLinkA = WindowsMetadata.findTypeDef('IShellLinkA');
      check(shellLinkA.isAnsi).isTrue();
    });

    test('isUnicode', () {
      final devModeW = WindowsMetadata.findTypeDef('DEVMODEW');
      check(devModeW.isUnicode).isTrue();

      final shellFolder = WindowsMetadata.findTypeDef('IShellFolder');
      check(shellFolder.isUnicode).isFalse();

      final shellLinkW = WindowsMetadata.findTypeDef('IShellLinkW');
      check(shellLinkW.isUnicode).isTrue();
    });
  });

  tearDownAll(WindowsMetadata.close);
}
