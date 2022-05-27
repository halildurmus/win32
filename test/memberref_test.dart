@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Create member ref from invalid token fails', () {
    final scope = MetadataStore.getWin32Scope();

    expect(
        () => ModuleRef.fromToken(scope, -1),
        throwsA(predicate(
            (e) => e is WindowsException && e.hr == CLDB_E_INDEX_NOTFOUND)));
  });
}
