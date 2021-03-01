@TestOn('windows')
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:win32/win32.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('Can successfully find the location of a WinRT metadata file', () {
      final file = metadataFileContainingType('Windows.Globalization.Calendar');
      expect(file.path, endsWith(r'WinMetadata\Windows.Globalization.winmd'));
    });

    test('Can camel case successfully', () {
      final originalClass = 'UpdateWindowsSettings';
      expect(originalClass.toCamelCase(), equals('updateWindowsSettings'));
    });
  }
}
