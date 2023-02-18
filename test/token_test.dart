@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('0 is not a valid token', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.reader.IsValidToken(0)).equals(FALSE);
  });
  test('0x00000001 is a valid token', () {
    // This should be the module identifier in all normal circumstances
    final scope = MetadataStore.getWin32Scope();
    check(scope.reader.IsValidToken(0x00000001)).equals(TRUE);
  });

  test('ValueType', () {
    final scope = MetadataStore.getWin32Scope();
    final accel =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.ACCEL')!;
    check(accel.isResolvedToken).isTrue();
    check(accel.parent?.name).equals('System.ValueType');
    check(accel.parent!.isResolvedToken).isFalse();
  });
  test('IInspectable works', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;
    check(winTypeDef.parent!.name).endsWith('IInspectable');
  });
}
