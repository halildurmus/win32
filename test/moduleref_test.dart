@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can detect the module in which an API is found', () {
    final scope = MetadataStore.getWin32Scope();
    final typedef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis')!;

    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.module.name, equalsIgnoringCase('gdi32'));
    expect(api.module.toString(), equalsIgnoringCase('gdi32'));
  });
}
