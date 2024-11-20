@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('CustomAttributesMixin', () {
    test('isAnsi', () {
      final devModeA = WindowsMetadata.typeDef('DEVMODEA');
      check(devModeA.isAnsi).isTrue();

      final shellFolder = WindowsMetadata.typeDef('IShellFolder');
      check(shellFolder.isAnsi).isFalse();

      final shellLinkA = WindowsMetadata.typeDef('IShellLinkA');
      check(shellLinkA.isAnsi).isTrue();
    });

    test('isUnicode', () {
      final devModeW = WindowsMetadata.typeDef('DEVMODEW');
      check(devModeW.isUnicode).isTrue();

      final shellFolder = WindowsMetadata.typeDef('IShellFolder');
      check(shellFolder.isUnicode).isFalse();

      final shellLinkW = WindowsMetadata.typeDef('IShellLinkW');
      check(shellLinkW.isUnicode).isTrue();
    });
  });

  tearDownAll(WindowsMetadata.close);
}
