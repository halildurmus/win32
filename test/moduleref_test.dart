@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can detect the module in which an API is found', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    check(api.module.name).equalsIgnoringCase('gdi32.dll');
    check(api.module.toString()).equalsIgnoringCase('gdi32.dll');
  });
}
