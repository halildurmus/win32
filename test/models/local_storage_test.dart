// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('LocalStorage', () {
    test('can identify a path', () {
      final path = LocalStorage.path;
      check(path)
        ..isNotEmpty()
        ..endsWith('winmd');
    });

    test('path should stay constant within same invocation', () {
      final path1 = LocalStorage.path;
      final path2 = LocalStorage.path;
      check(path1).equals(path2);
    });

    test('directory should exist', () {
      final _ = LocalStorage.path;
      check(LocalStorage.exists).isTrue();
    });

    test('can find a NuGet package from package name', () async {
      await MetadataStore.loadWin32Metadata();

      final package = LocalStorage.getPackage(MetadataType.win32.packageName);
      check(package).isNotNull();
      check(package!.name).equals('Microsoft.Windows.SDK.Win32Metadata');

      MetadataStore.close();
    });

    test('can find a NuGet package from package name and version', () async {
      const version = '54.0.44-preview';
      await MetadataStore.loadWin32Metadata(version: version);

      final package = LocalStorage.getPackage(MetadataType.win32.packageName,
          version: version);
      check(package).isNotNull();
      check(package!.name).equals('Microsoft.Windows.SDK.Win32Metadata');
      check(package.version).equals(version);

      MetadataStore.close();
    });

    test('lists NuGet packages', () async {
      await MetadataStore.loadWdkMetadata();
      await MetadataStore.loadWin32Metadata();
      await MetadataStore.loadWinRTMetadata();

      final packages = LocalStorage.packages;
      check(packages).isNotEmpty();

      final wdkPackage = packages
          .where((p) => p.name == MetadataType.wdk.packageName)
          .lastOrNull;
      check(wdkPackage).isNotNull();
      check(wdkPackage!.name).equals('Microsoft.Windows.WDK.Win32Metadata');
      check(wdkPackage.version).isNotEmpty();
      check(wdkPackage.path)
          .contains('winmd\\Microsoft.Windows.WDK.Win32Metadata');
      check(wdkPackage.toString()).equals(
        'Microsoft.Windows.WDK.Win32Metadata@${wdkPackage.version} (${wdkPackage.path})',
      );

      final win32Package = packages
          .where((p) => p.name == MetadataType.win32.packageName)
          .lastOrNull;
      check(win32Package).isNotNull();
      check(win32Package!.name).equals('Microsoft.Windows.SDK.Win32Metadata');
      check(win32Package.version).isNotEmpty();
      check(win32Package.path)
          .contains('winmd\\Microsoft.Windows.SDK.Win32Metadata');
      check(win32Package.toString()).equals(
        'Microsoft.Windows.SDK.Win32Metadata@${win32Package.version} (${win32Package.path})',
      );

      final winrtPackage = packages
          .where((p) => p.name == MetadataType.winrt.packageName)
          .lastOrNull;
      check(winrtPackage).isNotNull();
      check(winrtPackage!.name).equals('Microsoft.Windows.SDK.Contracts');
      check(winrtPackage.version).isNotEmpty();
      check(winrtPackage.path)
          .contains('winmd\\Microsoft.Windows.SDK.Contracts');
      check(winrtPackage.toString()).equals(
        'Microsoft.Windows.SDK.Contracts@${winrtPackage.version} (${winrtPackage.path})',
      );

      MetadataStore.close();
    });
  });
}
