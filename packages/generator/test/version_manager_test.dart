import 'dart:io';

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('VersionManager', () {
    late Directory tempDir;
    late VersionManager manager;

    setUp(() {
      tempDir = Directory.systemTemp.createTempSync();
      final file = File('${tempDir.path}/versions.dart')
        ..writeAsStringSync('''
// This file defines versions for various NuGet packages used for generating
// Dart projections of the Win32 API.
//
// Each version should be updated with caution, as changes may introduce
// breaking changes in the generated code.

/// The version of the [Windows Driver Kit (WDK) metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.WDK.Win32Metadata/)
/// package.
const wdkMetadataVersion = '0.13.25-experimental';

/// The version of the [Windows API metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Metadata/)
/// package.
const win32MetadataVersion = '63.0.31-preview';

/// The version of the [Windows API documentation metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Win32Docs/)
/// package.
const win32DocsVersion = '0.1.42-alpha';

/// The version of the [Windows Runtime (WinRT) metadata](
/// https://www.nuget.org/packages/Microsoft.Windows.SDK.Contracts/)
/// package.
const winrtMetadataVersion = '10.0.26100.1742';
''');
      manager = VersionManager.load(file.path);
    });

    test('loads versions correctly', () {
      check(manager.wdk).equals('0.13.25-experimental');
      check(manager.win32).equals('63.0.31-preview');
      check(manager.win32Docs).equals('0.1.42-alpha');
      check(manager.winrt).equals('10.0.26100.1742');
    });

    test('updates versions correctly', () {
      manager
        ..updateVersion(NuGetPackage.wdk, '0.13.26-experimental')
        ..updateVersion(NuGetPackage.win32, '63.0.32-preview')
        ..updateVersion(NuGetPackage.win32Docs, '0.1.43-alpha')
        ..updateVersion(NuGetPackage.winrt, '10.0.26100.1743')
        ..save();

      check(manager.wdk).equals('0.13.26-experimental');
      check(manager.win32).equals('63.0.32-preview');
      check(manager.win32Docs).equals('0.1.43-alpha');
      check(manager.winrt).equals('10.0.26100.1743');
    });

    tearDown(() {
      tempDir.deleteSync(recursive: true);
    });
  });
}
