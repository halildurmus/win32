@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('Scope', () {
    test('name is as expected', () {
      final scope = MetadataStore.getWin32Scope();
      check(scope.name).equals('Windows.Win32.winmd');
    });

    test('version string returns expected result', () {
      final scope = MetadataStore.getWin32Scope();
      check(scope.version).equals('v4.0.30319');
    });

    test('toString() is as expected', () {
      final scope = MetadataStore.getWin32Scope();
      check(scope.toString()).equals('Windows.Win32.winmd');
    });

    test('executable kind is as expected for Win32 metadata', () {
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

    test('executable kind is as expected for WinRT metadata', () {
      final scope = MetadataStore.getScopeForType(
          'Windows.Foundation.Collections.IPropertySet');
      check(scope.name).equals('Windows.Foundation.winmd');
      final peKind = scope.executableKind;
      check(peKind.isPEFile).isTrue();
      check(peKind.isILOnly).isTrue();
      check(peKind.isPlatformNeutral).isFalse();
      check(peKind.imageType).equals(ImageType.i386);
    });

    test('typeDefs ', () {
      final scope =
          MetadataStore.getScopeForType('Windows.Foundation.PropertyValue');
      check(scope.name).equals('Windows.Foundation.winmd');
      check(scope.typeDefs.length).isGreaterOrEqual(50);
      check(scope.typeDefs
              .where(
                  (typeDef) => typeDef.name == 'Windows.Foundation.IAsyncInfo')
              .firstOrNull)
          .isNotNull();
    });

    test('classes ', () {
      final scope =
          MetadataStore.getScopeForType('Windows.Foundation.PropertyValue');
      check(scope.name).equals('Windows.Foundation.winmd');
      check(scope.classes.length).isGreaterOrEqual(50);
      check(scope.classes
              .where((typeDef) =>
                  typeDef.name == 'Windows.Foundation.PropertyValue')
              .firstOrNull)
          .isNotNull();
      check(scope.classes.every((typeDef) => typeDef.isClass)).isTrue();
    });

    test('delegates ', () {
      final scope =
          MetadataStore.getScopeForType('Windows.Foundation.PropertyValue');
      check(scope.name).equals('Windows.Foundation.winmd');
      check(scope.delegates.length).isGreaterOrEqual(11);
      check(scope.delegates
              .where((typeDef) =>
                  typeDef.name ==
                  'Windows.Foundation.AsyncActionCompletedHandler')
              .firstOrNull)
          .isNotNull();
      check(scope.delegates.every((typeDef) => typeDef.isDelegate)).isTrue();
    });

    test('enums ', () {
      final scope =
          MetadataStore.getScopeForType('Windows.Foundation.PropertyValue');
      check(scope.name).equals('Windows.Foundation.winmd');
      check(scope.enums.length).isGreaterOrEqual(19);
      check(scope.enums
              .where(
                  (typeDef) => typeDef.name == 'Windows.Foundation.AsyncStatus')
              .firstOrNull)
          .isNotNull();
      check(scope.enums.every((typeDef) => typeDef.isEnum)).isTrue();
    });

    test('interfaces ', () {
      final scope =
          MetadataStore.getScopeForType('Windows.Foundation.PropertyValue');
      check(scope.name).equals('Windows.Foundation.winmd');
      check(scope.interfaces.length).isGreaterOrEqual(50);
      check(scope.interfaces
              .where((typeDef) =>
                  typeDef.name == 'Windows.Foundation.IPropertyValue')
              .firstOrNull)
          .isNotNull();
      check(scope.interfaces.every((typeDef) => typeDef.isInterface)).isTrue();
    });

    test('structs ', () {
      final scope =
          MetadataStore.getScopeForType('Windows.Foundation.PropertyValue');
      check(scope.name).equals('Windows.Foundation.winmd');
      check(scope.structs.length).isGreaterOrEqual(15);
      check(scope.structs
              .where((typeDef) => typeDef.name == 'Windows.Foundation.Point')
              .firstOrNull)
          .isNotNull();
      check(scope.structs.every((typeDef) => typeDef.isStruct)).isTrue();
    });
  });
}
