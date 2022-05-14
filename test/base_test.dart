@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  test('Can successfully find the location of a WinRT metadata file', () {
    final file =
        MetadataStore.winmdFileContainingType('Windows.Globalization.Calendar');
    expect(file.path, endsWith(r'WinMetadata\Windows.Globalization.winmd'));
  });

  test('Can successfully find a module', () {
    final file = MetadataStore.getWin32Scope();
    expect(file.moduleToken, equals(0x00000001));
  });

  test('WinmdException', () {
    final exception = WinmdException('Test message');
    expect(exception.toString(), endsWith('Test message'));
  });
}
