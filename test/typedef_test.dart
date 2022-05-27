@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Find an unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final field = typeDef!.findField('THIS_ONE_GOES_TO_11');
    expect(field, isNull);
  });

  test('Test for unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final method = typeDef!.findMethod('PlaySoundVeryLoudly');
    expect(method, isNull);
  });

  test('Unknown token 1', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => TypeDef.fromToken(scope, 0xFF123456),
        throwsA(isA<WinmdException>().having((exc) => exc.message, 'message',
            equals('Unrecognized token type 0xff'))));
  });

  test('Unknown token 2', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => TypeDef.fromToken(scope, 0x1A123456), // moduleRef type
        throwsA(isA<WinmdException>().having((exc) => exc.message, 'message',
            equals('Unrecognized token 0x1a123456'))));
  });

  test('Unknown token 3', () {
    final scope = MetadataStore.getWin32Scope();
    expect(
        () => TypeDef.fromToken(scope, 0x02FEDCBA), // typeDef missing type
        throwsA(isA<WindowsException>()
            .having((exc) => exc.hr, 'hr', equals(CLDB_E_INDEX_NOTFOUND))
            .having((exc) => exc.toString(), 'toString()',
                startsWith('Error 0x80131124'))));
  });
}
