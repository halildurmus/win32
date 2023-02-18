@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Scope name is as expected', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.name).equals('Windows.Win32.winmd');
  });

  test('Scope version string returns expected result', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.version).equals('v4.0.30319');
  });

  test('Scope toString() is as expected', () {
    final scope = MetadataStore.getWin32Scope();
    check(scope.toString()).equals('Windows.Win32.winmd');
  });

  test('Scope executable kind is as expected for Win32 metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final peKind = scope.executableKind;
    check(peKind.isPEFile).isTrue();
    check(peKind.isILOnly).isTrue();
    check(peKind.isPlatformNeutral).isFalse();
    check(peKind.imageType).equals(ImageType.i386);
    check(peKind.makes32BitCalls).isFalse();
    check(peKind.isNativeCode).isFalse();
    check(peKind.runsOn64BitPlatform).isFalse();
  });

  test('Scope executable kind is as expected for WinRT metadata', () {
    final scope = MetadataStore.getScopeForType(
        'Windows.Foundation.Collections.IPropertySet');
    check(scope.name).equals('Windows.Foundation.winmd');
    final peKind = scope.executableKind;
    check(peKind.isPEFile).isTrue();
    check(peKind.isILOnly).isTrue();
    check(peKind.isPlatformNeutral).isFalse();
    check(peKind.imageType).equals(ImageType.i386);
  });
}
