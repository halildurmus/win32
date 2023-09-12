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
        ..contains('dart-windows_winmd')
        ..not(it()..endsWith('\\'));
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
      await MetadataStore.loadWin32Metadata(version: '54.0.44-preview');
      final package = LocalStorage.getPackage(MetadataType.win32.packageName);
      check(package).isNotNull();
      check(package!.name).equals('Microsoft.Windows.SDK.Win32Metadata');
      check(package.version).equals('54.0.44-preview');
      MetadataStore.close();
    });

    test('lists NuGet packages', () async {
      await MetadataStore.loadWin32Metadata();
      final packages = LocalStorage.packages;
      check(packages).isNotEmpty();
      final win32Package = packages
          .where((p) => p.name == MetadataType.win32.packageName)
          .lastOrNull;
      check(win32Package).isNotNull();
      final NuGetPackage(:name, :path, :version) = win32Package!;
      check(name).equals('Microsoft.Windows.SDK.Win32Metadata');
      check(version).isNotEmpty();
      check(path)
        ..contains('dart-windows_winmd')
        ..contains('Microsoft.Windows.SDK.Win32Metadata');
      check(win32Package.toString())
          .equals('Microsoft.Windows.SDK.Win32Metadata@$version ($path)');
      MetadataStore.close();
    });
  });
}
