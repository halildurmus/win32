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

  test('Architectures 1', () {
    final arch = Architecture.all();
    expect(arch.arm64, isTrue);
    expect(arch.x86, isTrue);
    expect(arch.x64, isTrue);
  });

  test('Architectures 2', () {
    final arch = const Architecture(0);
    expect(arch.arm64, isFalse);
    expect(arch.x86, isFalse);
    expect(arch.x64, isFalse);
  });
}
