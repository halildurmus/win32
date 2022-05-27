@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Create module ref from invalid token fails', () {
    final scope = MetadataStore.getWin32Scope();

    expect(
        () => ModuleRef.fromToken(scope, -1),
        throwsA(predicate(
            (e) => e is WindowsException && e.hr == CLDB_E_INDEX_NOTFOUND)));
  });

  test('Can detect the module in which an API is found', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.module.name, equalsIgnoringCase('gdi32'));
    expect(api.module.toString(), equalsIgnoringCase('gdi32'));
  });
}
