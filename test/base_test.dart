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
}
