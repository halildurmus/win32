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

  test('Unknown token TypeDef 1', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => TypeDef.fromToken(scope, 0xFF123456),
        throwsA(isA<WinmdException>().having((exc) => exc.message, 'message',
            equals('Unrecognized token type 0xff'))));
  });

  test('Unknown token TypeDef 2', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => TypeDef.fromToken(scope, 0x1A123456), // moduleRef type
        throwsA(isA<WinmdException>().having((exc) => exc.message, 'message',
            equals('Unrecognized token 0x1a123456'))));
  });

  test('Unknown token TypeDef 3', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => TypeDef.fromToken(scope, 0x02FEDCBA), // typeDef missing type
        throwsA(isA<WindowsException>()
            .having((exc) => exc.hr, 'hr', equals(CLDB_E_INDEX_NOTFOUND))
            .having((exc) => exc.toString(), 'toString()',
                startsWith('Error 0x80131124'))));
  });

  test('Unknown token GenericParam', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => GenericParam.fromToken(scope, 0x02FEDCBA), // typeDef missing type
        throwsA(isA<WindowsException>()
            .having((exc) => exc.hr, 'hr', equals(META_E_BAD_INPUT_PARAMETER))
            .having((exc) => exc.toString(), 'toString()',
                startsWith('Error 0x80131193'))));
  });
}
