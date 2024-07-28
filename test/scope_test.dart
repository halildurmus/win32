@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('Scope', () {
    late Scope wdkScope;
    late Scope win32Scope;
    late Scope winrtScope;

    setUpAll(() async {
      wdkScope = await MetadataStore.loadWdkMetadata();
      win32Scope = await MetadataStore.loadWin32Metadata();
      winrtScope = await MetadataStore.loadWinRTMetadata();
    });

    test('name is as expected', () {
      check(wdkScope.name).equals('Windows.Wdk.winmd');
      check(win32Scope.name).equals('Windows.Win32.winmd');
      check(winrtScope.name).equals('Windows.winmd');
    });

    test('version string returns expected result', () {
      check(wdkScope.version).equals('v4.0.30319');
      check(win32Scope.version).equals('v4.0.30319');
      check(winrtScope.version).equals('WindowsRuntime 1.4');
    });

    test('toString() is as expected', () {
      check(wdkScope.toString()).equals('Windows.Wdk.winmd');
      check(win32Scope.toString()).equals('Windows.Win32.winmd');
      check(winrtScope.toString()).equals('Windows.winmd');
    });

    test('executable kind is as expected for WDK metadata', () {
      final peKind = wdkScope.executableKind;
      check(peKind.imageType).equals(ImageType.i386);
      check(peKind.isILOnly).isTrue();
      check(peKind.isNativeCode).isFalse();
      check(peKind.isPEFile).isTrue();
      check(peKind.isPlatformNeutral).isFalse();
      check(peKind.makes32BitCalls).isFalse();
      check(peKind.runsOn64BitPlatform).isFalse();
    });

    test('executable kind is as expected for Win32 metadata', () {
      final peKind = win32Scope.executableKind;
      check(peKind.imageType).equals(ImageType.i386);
      check(peKind.isILOnly).isTrue();
      check(peKind.isNativeCode).isFalse();
      check(peKind.isPEFile).isTrue();
      check(peKind.isPlatformNeutral).isFalse();
      check(peKind.makes32BitCalls).isFalse();
      check(peKind.runsOn64BitPlatform).isFalse();
    });

    test('executable kind is as expected for WinRT metadata', () {
      check(winrtScope.name).equals('Windows.winmd');
      final peKind = winrtScope.executableKind;
      check(peKind.imageType).equals(ImageType.i386);
      check(peKind.isILOnly).isTrue();
      check(peKind.isPEFile).isTrue();
      check(peKind.isPlatformNeutral).isFalse();
    });

    test('typeDefs ', () {
      check(winrtScope.name).equals('Windows.winmd');
      check(winrtScope.typeDefs.length).isGreaterOrEqual(50);
      final typeDef = winrtScope.typeDefs
          .where((typeDef) => typeDef.name == 'Windows.Foundation.IAsyncInfo')
          .firstOrNull;
      check(typeDef).isNotNull();
    });

    test('classes ', () {
      check(winrtScope.name).equals('Windows.winmd');
      check(winrtScope.classes.length).isGreaterOrEqual(50);
      final typeDef = winrtScope.classes
          .where(
              (typeDef) => typeDef.name == 'Windows.Foundation.PropertyValue')
          .firstOrNull;
      check(typeDef).isNotNull();
      check(winrtScope.classes.every((typeDef) => typeDef.isClass)).isTrue();
    });

    test('delegates ', () {
      check(winrtScope.name).equals('Windows.winmd');
      check(winrtScope.delegates.length).isGreaterOrEqual(11);
      final typeDef = winrtScope.delegates
          .where((typeDef) =>
              typeDef.name == 'Windows.Foundation.AsyncActionCompletedHandler')
          .firstOrNull;
      check(typeDef).isNotNull();
      check(winrtScope.delegates.every((typeDef) => typeDef.isDelegate))
          .isTrue();
    });

    test('enums ', () {
      check(winrtScope.name).equals('Windows.winmd');
      check(winrtScope.enums.length).isGreaterOrEqual(19);
      final typeDef = winrtScope.enums
          .where((typeDef) => typeDef.name == 'Windows.Foundation.AsyncStatus')
          .firstOrNull;
      check(typeDef).isNotNull();
      check(winrtScope.enums.every((typeDef) => typeDef.isEnum)).isTrue();
    });

    test('interfaces ', () {
      check(winrtScope.name).equals('Windows.winmd');
      check(winrtScope.interfaces.length).isGreaterOrEqual(50);
      final typeDef = winrtScope.interfaces
          .where((typeDef) =>
              typeDef.name == 'Windows.Foundation.IAsyncActionWithProgress`1')
          .firstOrNull;
      check(typeDef).isNotNull();
      check(winrtScope.interfaces.every((typeDef) => typeDef.isInterface))
          .isTrue();
    });

    test('structs ', () {
      check(winrtScope.name).equals('Windows.winmd');
      check(winrtScope.structs.length).isGreaterOrEqual(15);
      final typeDef = winrtScope.structs
          .where((typeDef) => typeDef.name == 'Windows.Foundation.Point')
          .firstOrNull;
      check(typeDef).isNotNull();
      check(winrtScope.structs.every((typeDef) => typeDef.isStruct)).isTrue();
    });

    tearDownAll(MetadataStore.close);
  });
}
