import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('HasCustomAttributes', () {
    test('isAnsi', () {
      final devModeA = WindowsMetadata.findTypeDefByName('DEVMODEA');
      check(devModeA.isAnsi).isTrue();

      final shellFolder = WindowsMetadata.findTypeDefByName('IShellFolder');
      check(shellFolder.isAnsi).isFalse();

      final shellLinkA = WindowsMetadata.findTypeDefByName('IShellLinkA');
      check(shellLinkA.isAnsi).isTrue();
    });

    test('isUnicode', () {
      final devModeW = WindowsMetadata.findTypeDefByName('DEVMODEW');
      check(devModeW.isUnicode).isTrue();

      final shellFolder = WindowsMetadata.findTypeDefByName('IShellFolder');
      check(shellFolder.isUnicode).isFalse();

      final shellLinkW = WindowsMetadata.findTypeDefByName('IShellLinkW');
      check(shellLinkW.isUnicode).isTrue();
    });
  });
}
