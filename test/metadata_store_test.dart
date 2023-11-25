// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MetadataStore', () {
    test('explicit initialization', () async {
      MetadataStore.initialize();
      final scope = await MetadataStore.loadWin32Metadata();
      check(scope.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();
    });

    test('implicit initialization', () async {
      final scope = await MetadataStore.loadWin32Metadata();
      check(scope.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();
    });

    test('reinitialization', () async {
      final scope = await MetadataStore.loadWin32Metadata();
      check(scope.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();

      MetadataStore.initialize();
      final scope2 = await MetadataStore.loadWin32Metadata();
      check(scope2.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();
    });

    test('scopes are successfully cached', () async {
      MetadataStore.initialize();
      final scope = await MetadataStore.loadWin32Metadata();
      final scope2 = MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
      check(scope).equals(scope2);
      MetadataStore.close();
    });

    test('can cache Wdk, Win32, and WinRT metadata', () async {
      check(MetadataStore.scopeCache.length).equals(0);
      check(MetadataStore.cacheInfo).equals('[]');

      MetadataStore.initialize();

      await MetadataStore.loadWdkMetadata();
      check(MetadataStore.scopeCache.length).equals(1);
      check(MetadataStore.cacheInfo).equals('[Windows.Wdk.winmd]');

      await MetadataStore.loadWin32Metadata();
      check(MetadataStore.scopeCache.length).equals(2);
      check(MetadataStore.cacheInfo)
          .equals('[Windows.Wdk.winmd, Windows.Win32.winmd]');

      await MetadataStore.loadWinRTMetadata();
      check(MetadataStore.scopeCache.length).equals(3);
      check(MetadataStore.cacheInfo)
          .equals('[Windows.Wdk.winmd, Windows.Win32.winmd, Windows.winmd]');

      MetadataStore.close();
      check(MetadataStore.scopeCache.length).equals(0);
      check(MetadataStore.cacheInfo).equals('[]');
    });

    test('can find the metadata for a type', () async {
      await MetadataStore.loadWdkMetadata();
      await MetadataStore.loadWin32Metadata();
      await MetadataStore.loadWinRTMetadata();
      final typeDef1 = MetadataStore.getMetadataForType(
          'Windows.Wdk.System.SystemInformation.SYSTEM_INFORMATION_CLASS');
      check(typeDef1).isNotNull();
      final typeDef2 = MetadataStore.getMetadataForType(
          'Windows.Win32.Networking.NetworkListManager.INetwork');
      check(typeDef2).isNotNull();
      final typeDef3 =
          MetadataStore.getMetadataForType('Windows.Globalization.Calendar');
      check(typeDef3).isNotNull();
      MetadataStore.close();
    });

    test('appropriate response to searching for empty type', () {
      check(() => MetadataStore.getMetadataForType(''))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must not be empty.');
      check(() => MetadataStore.getScopeForType(''))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must not be empty.');
    });

    test('appropriate response to searching for an invalid type', () {
      check(() => MetadataStore.getMetadataForType('Foo.Bar'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must start with `Windows`.');
      check(() => MetadataStore.getScopeForType('Foo.Bar'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must start with `Windows`.');
    });

    test(
        'appropriate response to searching for a Wdk type without loading the '
        'Wdk metadata first', () {
      check(() => MetadataStore.getScopeForType(
              'Windows.Wdk.System.SystemInformation.SYSTEM_INFORMATION_CLASS'))
          .throws<WinmdException>()
          .has((e) => e.message, 'message')
          .equals(
            'Metadata scope for '
            '`Windows.Wdk.System.SystemInformation.SYSTEM_INFORMATION_CLASS` '
            'could not be found. Please ensure that you load the Wdk metadata '
            'first by calling `loadWdkMetadata()`.',
          );
    });

    test(
        'appropriate response to searching for a Win32 type without loading the '
        'Win32 metadata first', () {
      check(() => MetadataStore.getScopeForType(
              'Windows.Win32.Networking.NetworkListManager.INetwork'))
          .throws<WinmdException>()
          .has((e) => e.message, 'message')
          .equals(
            'Metadata scope for '
            '`Windows.Win32.Networking.NetworkListManager.INetwork` could not '
            'be found. Please ensure that you load the Win32 metadata first by '
            'calling `loadWin32Metadata()`.',
          );
    });

    test(
        'appropriate response to searching for a WinRT type without loading the '
        'WinRT metadata first', () {
      check(() =>
              MetadataStore.getScopeForType('Windows.Globalization.Calendar'))
          .throws<WinmdException>()
          .has((e) => e.message, 'message')
          .equals(
            'Metadata scope for `Windows.Globalization.Calendar` could not be '
            'found. Please ensure that you load the WinRT metadata first by '
            'calling `loadWinRTMetadata()`.',
          );
    });

    test('appropriate response to failure to find scope from non-winmd file',
        () {
      final cmdPath = File(r'c:\windows\cmd.exe');
      check(() => MetadataStore.loadMetadataFromFile(cmdPath))
          .throws<ArgumentError>();
    });
  });
}
