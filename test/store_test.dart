@TestOn('windows')

import 'dart:io';

import 'package:test/test.dart';
import 'package:winmd/src/metadatastore.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('MetadataStore explicit initialization', () {
    MetadataStore.initialize();
    final scope =
        MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    expect(scope.typeDefs.length, isPositive);
    MetadataStore.close();
  });

  test('MetadataStore implicit initialization', () {
    final scope =
        MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    expect(scope.typeDefs.length, isPositive);
    MetadataStore.close();
  });

  test('MetadataStore reinitialization', () {
    final scope =
        MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    expect(scope.typeDefs.length, isPositive);
    MetadataStore.close();

    MetadataStore.initialize();
    final scope2 =
        MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    expect(scope2.typeDefs.length, isPositive);
    MetadataStore.close();
  });

  test('MetadataStore scopes are successfully cached', () {
    final scope =
        MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    final scope2 = MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
    expect(scope, equals(scope2));
  });

  test('MetadataStore scope prints successfully', () {
    MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
    MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
    expect(MetadataStore.cache.length, equals(1));
    expect(MetadataStore.cacheInfo(), equals('Store: [Windows.Win32.winmd]'));
  });

  test('MetadataStore can cache both WinRT and Win32 metadata', () {
    MetadataStore.getScopeForType('Windows.Globalization.Calendar');
    expect(MetadataStore.cache.length, equals(2));
    expect(
        MetadataStore.cacheInfo(),
        anyOf(
          equals('Store: [Windows.Globalization.winmd, Windows.Win32.winmd]'),
          equals('Store: [Windows.Win32.winmd, Windows.Globalization.winmd]'),
        ));
  });
}
