// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'dart:io';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('MetadataStore explicit initialization', () async {
    MetadataStore.initialize();
    final scope = await MetadataStore.loadWin32Metadata();
    check(scope.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();
  });

  test('MetadataStore implicit initialization', () async {
    final scope = await MetadataStore.loadWin32Metadata();
    check(scope.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();
  });

  test('MetadataStore reinitialization', () async {
    final scope = await MetadataStore.loadWin32Metadata();
    check(scope.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();

    MetadataStore.initialize();
    final scope2 = await MetadataStore.loadWin32Metadata();
    check(scope2.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();
  });

  test('MetadataStore scopes are successfully cached', () async {
    MetadataStore.initialize();
    final scope = await MetadataStore.loadWin32Metadata();
    final scope2 = MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
    check(scope).equals(scope2);
    MetadataStore.close();
  });

  test('MetadataStore can cache both WinRT and Win32 metadata', () async {
    check(MetadataStore.scopeCache.length).equals(0);
    check(MetadataStore.cacheInfo).equals('[]');

    MetadataStore.initialize();

    await MetadataStore.loadWin32Metadata();
    check(MetadataStore.scopeCache.length).equals(1);
    check(MetadataStore.cacheInfo).equals('[Windows.Win32.winmd]');

    await MetadataStore.loadWinRTMetadata();
    check(MetadataStore.scopeCache.length).equals(2);
    check(MetadataStore.cacheInfo)
        .equals('[Windows.Win32.winmd, Windows.winmd]');

    MetadataStore.close();
    check(MetadataStore.scopeCache.length).equals(0);
    check(MetadataStore.cacheInfo).equals('[]');
  });

  test('Appropriate response to search for empty type', () {
    check(() => MetadataStore.getScopeForType(''))
        .throws<ArgumentError>()
        .has((e) => e.message, 'message')
        .equals('Must not be empty.');
  });

  test('Appropriate response to search for an invalid type', () {
    check(() => MetadataStore.getScopeForType('Foo.Bar'))
        .throws<ArgumentError>()
        .has((e) => e.message, 'message')
        .equals('Must start with `Windows`.');
  });

  test('Appropriate response to failure to find scope from non-winmd file', () {
    final cmdPath = File(r'c:\windows\cmd.exe');
    check(() => MetadataStore.loadMetadataFromFile(cmdPath))
        .throws<ArgumentError>();
  });
}
