import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

void main() {
  group('WindowsMetadataPackage', () {
    test('wdk', () {
      const wdk = WindowsMetadataPackage.wdk;
      check(wdk.packageId).equals('microsoft.windows.wdk.win32metadata');
      check(wdk.assetName).equals('Windows.Wdk.winmd');
    });

    test('win32', () {
      const win32 = WindowsMetadataPackage.win32;
      check(win32.packageId).equals('microsoft.windows.sdk.win32metadata');
      check(win32.assetName).equals('Windows.Win32.winmd');
    });

    test('winrt', () {
      const winrt = WindowsMetadataPackage.winrt;
      check(winrt.packageId).equals('microsoft.windows.sdk.contracts');
      check(winrt.assetName).equals('Windows.winmd');
    });
  });
}
