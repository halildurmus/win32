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
      (wdkScope, win32Scope, winrtScope) = await (
        MetadataStore.loadWdkMetadata(),
        MetadataStore.loadWin32Metadata(),
        MetadataStore.loadWinRTMetadata()
      ).wait;
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
      final peKind = winrtScope.executableKind;
      check(peKind.imageType).equals(ImageType.i386);
      check(peKind.isILOnly).isTrue();
      check(peKind.isPEFile).isTrue();
      check(peKind.isPlatformNeutral).isFalse();
    });

    test('typeDefs ', () {
      check(win32Scope.typeDefs.length).isGreaterOrEqual(30000);
      final iunknown = win32Scope.typeDefs
          .where((t) => t.name == 'Windows.Win32.System.Com.IUnknown')
          .firstOrNull;
      check(iunknown).isNotNull();

      check(winrtScope.typeDefs.length).isGreaterOrEqual(10000);
      final asyncInfo = winrtScope.typeDefs
          .where((t) => t.name == 'Windows.Foundation.IAsyncInfo')
          .firstOrNull;
      check(asyncInfo).isNotNull();
    });

    test('classes ', () {
      check(win32Scope.classes.length).isGreaterOrEqual(2000);
      final spVoice = win32Scope.classes
          .where((t) => t.name == 'Windows.Win32.Media.Speech.SpVoice')
          .firstOrNull;
      check(spVoice).isNotNull();
      check(win32Scope.classes.every((t) => t.isClass)).isTrue();

      check(winrtScope.classes.length).isGreaterOrEqual(3000);
      final propertyValue = winrtScope.classes
          .where((t) => t.name == 'Windows.Foundation.PropertyValue')
          .firstOrNull;
      check(propertyValue).isNotNull();
      check(winrtScope.classes.every((t) => t.isClass)).isTrue();
    });

    test('delegates ', () {
      check(win32Scope.delegates.length).isGreaterOrEqual(2000);
      final asyncCallback = win32Scope.delegates
          .where((t) => t.name == 'Windows.Win32.Foundation.PROC')
          .firstOrNull;
      check(asyncCallback).isNotNull();
      check(win32Scope.delegates.every((t) => t.isDelegate)).isTrue();

      check(winrtScope.delegates.length).isGreaterOrEqual(100);
      final asyncActionCompletedHandler = winrtScope.delegates
          .where(
              (t) => t.name == 'Windows.Foundation.AsyncActionCompletedHandler')
          .firstOrNull;
      check(asyncActionCompletedHandler).isNotNull();
      check(winrtScope.delegates.every((t) => t.isDelegate)).isTrue();
    });

    test('enums ', () {
      check(win32Scope.enums.length).isGreaterOrEqual(6000);
      final apttype = win32Scope.enums
          .where((t) => t.name == 'Windows.Win32.System.Com.APTTYPE')
          .firstOrNull;
      check(apttype).isNotNull();
      check(win32Scope.enums.every((t) => t.isEnum)).isTrue();

      check(winrtScope.enums.length).isGreaterOrEqual(1000);
      final asyncStatus = winrtScope.enums
          .where((t) => t.name == 'Windows.Foundation.AsyncStatus')
          .firstOrNull;
      check(asyncStatus).isNotNull();
      check(winrtScope.enums.every((t) => t.isEnum)).isTrue();
    });

    test('interfaces ', () {
      check(win32Scope.interfaces.length).isGreaterOrEqual(6000);
      final iunknown = win32Scope.interfaces
          .where((t) => t.name == 'Windows.Win32.System.Com.IUnknown')
          .firstOrNull;
      check(iunknown).isNotNull();
      check(win32Scope.interfaces.every((t) => t.isInterface)).isTrue();

      check(winrtScope.interfaces.length).isGreaterOrEqual(6000);
      final asyncActionWithProgress = winrtScope.interfaces
          .where(
              (t) => t.name == 'Windows.Foundation.IAsyncActionWithProgress`1')
          .firstOrNull;
      check(asyncActionWithProgress).isNotNull();
      check(winrtScope.interfaces.every((t) => t.isInterface)).isTrue();
    });

    test('structs ', () {
      check(win32Scope.structs.length).isGreaterOrEqual(10000);
      final hwnd = win32Scope.structs
          .where((t) => t.name == 'Windows.Win32.Foundation.HWND')
          .firstOrNull;
      check(hwnd).isNotNull();
      check(win32Scope.structs.every((t) => t.isStruct)).isTrue();

      check(winrtScope.structs.length).isGreaterOrEqual(90);
      final point = winrtScope.structs
          .where((t) => t.name == 'Windows.Foundation.Point')
          .firstOrNull;
      check(point).isNotNull();
      check(winrtScope.structs.every((t) => t.isStruct)).isTrue();
    });

    tearDownAll(MetadataStore.close);
  });
}
