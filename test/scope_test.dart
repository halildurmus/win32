@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Scope name is as expected', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.name, equals('Windows.Win32.winmd'));
  });

  test('Scope version string returns expected result', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.version, equals('v4.0.30319'));
  });

  test('Scope toString() is as expected', () {
    final scope = MetadataStore.getWin32Scope();
    expect(scope.toString(), equals('Windows.Win32.winmd'));
  });

  test('Scope executable kind is as expected for Win32 metadata', () {
    final scope = MetadataStore.getWin32Scope();
    final peKind = scope.executableKind;
    expect(peKind.isPEFile, isTrue);
    expect(peKind.isILOnly, isTrue);
    expect(peKind.isPlatformNeutral, isFalse);
    expect(peKind.imageType, equals(ImageType.i386));
    expect(peKind.makes32BitCalls, isFalse);
    expect(peKind.isNativeCode, isFalse);
    expect(peKind.runsOn64BitPlatform, isFalse);
  });

  test('Scope executable kind is as expected for WinRT metadata', () {
    final scope = MetadataStore.getScopeForType(
        'Windows.Foundation.Collections.IPropertySet');
    expect(scope.name, equals('Windows.Foundation.winmd'));
    final peKind = scope.executableKind;
    expect(peKind.isPEFile, isTrue);
    expect(peKind.isILOnly, isTrue);
    expect(peKind.isPlatformNeutral, isFalse);
    expect(peKind.imageType, equals(ImageType.i386));
  });
}
