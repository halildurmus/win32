@TestOn('windows')

import 'dart:io';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('MetadataStore explicit initialization', () {
    MetadataStore.initialize();
    final scope = MetadataStore.getWin32Scope();
    check(scope.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();
  });

  test('MetadataStore implicit initialization', () {
    final scope = MetadataStore.getWin32Scope();

    check(scope.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();
  });

  test('MetadataStore reinitialization', () {
    final scope = MetadataStore.getWin32Scope();

    check(scope.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();

    MetadataStore.initialize();
    final scope2 = MetadataStore.getWin32Scope();

    check(scope2.typeDefs.length).isGreaterThan(0);
    MetadataStore.close();
  });

  test('MetadataStore scopes are successfully cached', () {
    final scope = MetadataStore.getWin32Scope();

    final scope2 = MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
    check(scope).equals(scope2);
  });

  test('MetadataStore scope prints successfully', () {
    MetadataStore.getWin32Scope();
    MetadataStore.getScopeForType('Windows.Win32.Shell.Apis');
    check(MetadataStore.cache.length).equals(1);
    check(MetadataStore.cacheInfo).equals('[Windows.Win32.winmd]');
    MetadataStore.close();
  });

  test('MetadataStore can cache both WinRT and Win32 metadata', () {
    MetadataStore.getWin32Scope();
    MetadataStore.getScopeForType('Windows.Globalization.Calendar');
    check(MetadataStore.cache.length).equals(2);
    check(MetadataStore.cacheInfo).anyOf([
      it()..equals('[Windows.Globalization.winmd, Windows.Win32.winmd]'),
      it()..equals('[Windows.Win32.winmd, Windows.Globalization.winmd]')
    ]);
    MetadataStore.close();
  });

  test('MetadataStore scope grows organically', () {
    final scope = MetadataStore.getWin32Scope();
    check(MetadataStore.cache.length).equals(1);

    // Do some stuff that requires the Interop metadata to be loaded.
    final shexInfo =
        scope.findTypeDef('Windows.Win32.UI.Shell.SHELLEXECUTEINFOW')!;
    final attrib = shexInfo.findAttribute(
        'Windows.Win32.Foundation.Metadata.SupportedArchitectureAttribute');
    check(attrib).isNotNull();
    final interopValue = attrib?.parameters.first.value;
    check(interopValue).isNotNull();

    check(MetadataStore.cache.length).equals(1);
    check(MetadataStore.cacheInfo).equals('[Windows.Win32.winmd]');

    MetadataStore.close();
    check(MetadataStore.cache.length).equals(0);
  });

  test('Appropriate response to search for empty type', () {
    check(() => MetadataStore.getMetadataForType(''))
        .throws<WinmdException>()
        .has((e) => e.message, 'message')
        .equals('Type cannot be empty.');
    check(() => MetadataStore.getScopeForType(''))
        .throws<WinmdException>()
        .has((e) => e.message, 'message')
        .equals('Type cannot be empty.');
    check(() => MetadataStore.winmdFileContainingType(''))
        .throws<WinmdException>()
        .has((e) => e.message, 'message')
        .equals('Type cannot be empty.');
  });

  test('Appropriate response to failure to find type', () {
    check(() => MetadataStore.winmdFileContainingType(
            'Windows.Monetization.Dogecoin'))
        .throws<WindowsException>()
        .has((e) => e.message, 'message')
        .equals("Could not find type 'Windows.Monetization.Dogecoin'.");
  });

  test('Appropriate response to search for non-existent type', () {
    check(() => MetadataStore.getScopeForType('Windows.Monetization.Dogecoin'))
        .throws<WindowsException>()
        .has((e) => e.message, 'message')
        .equals("Could not find type 'Windows.Monetization.Dogecoin'.");
  });

  test('Appropriate response to search for namespace that is not a type', () {
    check(() => MetadataStore.getScopeForType('Windows.Foundation'))
        .throws<WindowsException>()
        .has((e) => e.message, 'message')
        .equals("'Windows.Foundation' is a namespace, not a type.");
    check(() => MetadataStore.winmdFileContainingType('Windows.Foundation'))
        .throws<WindowsException>()
        .has((e) => e.message, 'message')
        .equals("'Windows.Foundation' is a namespace, not a type.");
  });

  test('Appropriate response to search for an invalid type', () {
    check(() => MetadataStore.getScopeForType('Windows.Monetization.'))
        .throws<WindowsException>()
        .has((e) => e.message, 'message')
        .equals("'Windows.Monetization.' is not a valid Windows Runtime type.");
    check(() => MetadataStore.winmdFileContainingType('Windows.Monetization.'))
        .throws<WindowsException>()
        .has((e) => e.message, 'message')
        .equals("'Windows.Monetization.' is not a valid Windows Runtime type.");
  });

  test('Appropriate response to failure to find scope from non-winmd file', () {
    final cmdPath = File(r'c:\windows\cmd.exe');
    check(() => MetadataStore.getScopeForFile(cmdPath))
        .throws<WindowsException>();
  });
}
