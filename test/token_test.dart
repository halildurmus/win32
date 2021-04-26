@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('0 is not a valid token', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.reader.IsValidToken(0), equals(FALSE));
  });
  test('0x00000001 is a valid token', () {
    // This should be the module identifier in all normal circumstances
    final scope = MetadataStore.getWin32Scope();
    expect(scope.reader.IsValidToken(0x00000001), equals(TRUE));
  });

  test('ValueType', () {
    final scope = MetadataStore.getWin32Scope();
    final accel = scope.findTypeDef('Windows.Win32.WindowsAndMessaging.ACCEL')!;
    expect(accel.isResolvedToken, isTrue);
    expect(accel.parent?.name, equals('System.ValueType'));
    expect(accel.parent?.isResolvedToken, isFalse);
  });
  test('IInspectable works', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;
    expect(winTypeDef.parent?.name, endsWith('IInspectable'));
  });
}
