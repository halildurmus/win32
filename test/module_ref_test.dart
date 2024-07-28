@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can detect the module in which an API is found', () async {
    final scope = await MetadataStore.loadWin32Metadata();
    final typeDef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('AddFontResourceW');
    check(method).isNotNull();
    check(method!.module.name).equalsIgnoringCase('gdi32.dll');
    check(method.module.toString()).equalsIgnoringCase('gdi32.dll');

    MetadataStore.close();
  });
}
