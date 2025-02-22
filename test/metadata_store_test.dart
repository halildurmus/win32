@TestOn('windows')
library;

import 'dart:io';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MetadataStore', () {
    test('explicit initialization', () async {
      MetadataStore.initialize();
      final scope = await MetadataStore.loadWin32Scope();
      check(scope.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();
    });

    test('implicit initialization', () async {
      final scope = await MetadataStore.loadWin32Scope();
      check(scope.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();
    });

    test('reinitialization', () async {
      final scope = await MetadataStore.loadWin32Scope();
      check(scope.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();

      MetadataStore.initialize();
      final scope2 = await MetadataStore.loadWin32Scope();
      check(scope2.typeDefs.length).isGreaterThan(0);
      MetadataStore.close();
    });

    test('scopes are successfully cached', () async {
      MetadataStore.initialize();
      final scope = await MetadataStore.loadWin32Scope();
      final scope2 = MetadataStore.findScope('Windows.Win32.Shell.Apis');
      check(scope).equals(scope2);
      MetadataStore.close();
    });

    test('can cache WDK, Win32, and WinRT metadata', () async {
      check(MetadataStore.scopeCache.length).equals(0);
      check(MetadataStore.cacheInfo).equals('[]');

      MetadataStore.initialize();

      await MetadataStore.loadWdkScope();
      check(MetadataStore.scopeCache.length).equals(1);
      check(MetadataStore.cacheInfo).equals('[Windows.Wdk.winmd]');

      await MetadataStore.loadWin32Scope();
      check(MetadataStore.scopeCache.length).equals(2);
      check(
        MetadataStore.cacheInfo,
      ).equals('[Windows.Wdk.winmd, Windows.Win32.winmd]');

      await MetadataStore.loadWinrtScope();
      check(MetadataStore.scopeCache.length).equals(3);
      check(
        MetadataStore.cacheInfo,
      ).equals('[Windows.Wdk.winmd, Windows.Win32.winmd, Windows.winmd]');

      MetadataStore.close();
      check(MetadataStore.scopeCache.length).equals(0);
      check(MetadataStore.cacheInfo).equals('[]');
    });

    test('can find the type definition for a type', () async {
      await MetadataStore.loadWdkScope();
      await MetadataStore.loadWin32Scope();
      await MetadataStore.loadWinrtScope();
      final typeDef1 = MetadataStore.findTypeDef(
        'Windows.Wdk.System.SystemInformation.SYSTEM_INFORMATION_CLASS',
      );
      check(typeDef1).isNotNull();
      final typeDef2 = MetadataStore.findTypeDef(
        'Windows.Win32.Networking.NetworkListManager.INetwork',
      );
      check(typeDef2).isNotNull();
      final typeDef3 = MetadataStore.findTypeDef(
        'Windows.Globalization.Calendar',
      );
      check(typeDef3).isNotNull();
      MetadataStore.close();
    });

    test('appropriate response to searching for empty type', () {
      check(() => MetadataStore.findTypeDef(''))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must not be empty.');
      check(() => MetadataStore.findScope(''))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must not be empty.');
    });

    test('appropriate response to searching for an invalid type', () {
      check(() => MetadataStore.findTypeDef('Foo.Bar'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must start with `Windows`.');
      check(() => MetadataStore.findScope('Foo.Bar'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Must start with `Windows`.');
    });

    test('appropriate response to searching for a WDK type without loading the '
        'WDK scope first', () {
      check(
            () => MetadataStore.findScope(
              'Windows.Wdk.System.SystemInformation.SYSTEM_INFORMATION_CLASS',
            ),
          )
          .throws<WinmdException>()
          .has((e) => e.message, 'message')
          .equals(
            'Scope for '
            '`Windows.Wdk.System.SystemInformation.SYSTEM_INFORMATION_CLASS` '
            'not found. Please load the WDK scope by calling `loadWdkScope()`.',
          );
    });

    test(
      'appropriate response to searching for a Win32 type without loading the '
      'Win32 scope first',
      () {
        check(
              () => MetadataStore.findScope(
                'Windows.Win32.Networking.NetworkListManager.INetwork',
              ),
            )
            .throws<WinmdException>()
            .has((e) => e.message, 'message')
            .equals(
              'Scope for `Windows.Win32.Networking.NetworkListManager.INetwork` '
              'not found. Please load the Win32 scope by calling '
              '`loadWin32Scope()`.',
            );
      },
    );

    test(
      'appropriate response to searching for a WinRT type without loading the '
      'WinRT scope first',
      () {
        check(() => MetadataStore.findScope('Windows.Globalization.Calendar'))
            .throws<WinmdException>()
            .has((e) => e.message, 'message')
            .equals(
              'Scope for `Windows.Globalization.Calendar` not found. Please '
              'load the WinRT scope by calling `loadWinrtScope()`.',
            );
      },
    );

    test(
      'appropriate response to failure to load scope from non-winmd file',
      () {
        final cmdPath = File(r'c:\windows\cmd.exe');
        check(
          () => MetadataStore.loadScopeFromFile(cmdPath),
        ).throws<ArgumentError>();
      },
    );
  });
}
