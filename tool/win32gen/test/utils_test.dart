@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('typePretendsToBeAnsi', () {
    expect(typePretendsToBeAnsi('RGNDATA'), isTrue);
    expect(typePretendsToBeAnsi('ENUMLOGFONTEXA'), isFalse);
  });

  test('stripAnsiUnicodeSuffix', () {
    expect(stripAnsiUnicodeSuffix('RGNDATA'), equals('RGNDATA'));
    expect(stripAnsiUnicodeSuffix('ENUMLOGFONTEXA'), equals('ENUMLOGFONTEX'));
    expect(stripAnsiUnicodeSuffix('ENUMLOGFONTEXW'), equals('ENUMLOGFONTEX'));
  });

  test('sortImports', () {
    expect(
        sortImports([
          "import 'dart:ffi';",
          "import 'package:ffi/ffi.dart';",
          "import 'dart:async';",
          "import 'package:win32/win32.dart';",
          "import '../../../combase.dart';",
          "import '../../../exceptions.dart';",
          "import '../../../types.dart';",
          "import '../../../utils.dart';",
          "import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
          "import '../../../macros.dart';",
        ]),
        orderedEquals([
          "import 'dart:async';",
          "import 'dart:ffi';",
          "",
          "import 'package:ffi/ffi.dart';",
          "import 'package:win32/win32.dart';",
          "",
          "import '../../../combase.dart';",
          "import '../../../exceptions.dart';",
          "import '../../../macros.dart';",
          "import '../../../types.dart';",
          "import '../../../utils.dart';",
          "import '../../../win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';",
        ]));
  });

  test('stripGenerics', () {
    expect(stripGenerics('TypedEventHandler`2'), equals('TypedEventHandler'));
    expect(stripGenerics('LicenseChangedEventHandler'),
        equals('LicenseChangedEventHandler'));
  });

  test('typedefIsAnsi', () {
    final scope = MetadataStore.getWin32Scope();
    final rgnData = scope.findTypeDef('Windows.Win32.Graphics.Gdi.RGNDATA')!;
    expect(typedefIsAnsi(rgnData), isFalse);

    final enumLogFontExA =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.ENUMLOGFONTEXA')!;
    expect(typedefIsAnsi(enumLogFontExA), isTrue);

    final enumLogFontExW =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.ENUMLOGFONTEXW')!;
    expect(typedefIsAnsi(enumLogFontExW), isFalse);
  });

  test('mangleName', () {
    final scope = MetadataStore.getWin32Scope();
    final propVariant = scope
        .findTypeDef('Windows.Win32.System.Com.StructuredStorage.PROPVARIANT')!;

    final union1 = propVariant.fields.first.typeIdentifier.type;
    expect(union1, isNotNull);
    expect(mangleName(union1!), equals('_PROPVARIANT__Anonymous_e__Union'));

    final struct1 = union1.fields.first.typeIdentifier.type;
    expect(struct1, isNotNull);
    expect(mangleName(struct1!),
        equals('_PROPVARIANT__Anonymous_e__Union__Anonymous_e__Struct'));

    final union2 = struct1.fields.last.typeIdentifier.type;
    expect(union2, isNotNull);
    expect(
        mangleName(union2!),
        equals(
            '_PROPVARIANT__Anonymous_e__Union__Anonymous_e__Struct__Anonymous_e__Union'));
  });

  test('stripAnsiUnicodeSuffix', () {
    expect(stripAnsiUnicodeSuffix('AREA'), equals('AREA'));
    expect(stripAnsiUnicodeSuffix('Pointer<AREA>'), equals('Pointer<AREA>'));
    expect(stripAnsiUnicodeSuffix('ADDJOB_INFO_1W'), equals('ADDJOB_INFO_1'));
    expect(stripAnsiUnicodeSuffix('Pointer<ADDJOB_INFO_1W>'),
        equals('Pointer<ADDJOB_INFO_1>'));
  });

  test('wrapCommentText', () {
    expect(wrapCommentText('', 12), isEmpty);

    expect(wrapCommentText('This is a short string', 8),
        equals('/// This\n/// is a\n/// short\n/// string'));

    expect(wrapCommentText('This is a short string', 12),
        equals('/// This is\n/// a short\n/// string'));

    expect(wrapCommentText('This is a short string', 20),
        equals('/// This is a short\n/// string'));

    expect(wrapCommentText('This is a short string', 200),
        equals('/// This is a short string'));
  });

  test('classNameForInterfaceName', () {
    expect(classNameForInterfaceName('Windows.Win32.UI.Shell.IShellLinkW'),
        equals('Windows.Win32.UI.Shell.ShellLink'));
    expect(classNameForInterfaceName('Windows.Win32.UI.Shell.IShellLinkA'),
        equals('Windows.Win32.UI.Shell.ShellLink'));
    expect(classNameForInterfaceName('Windows.Win32.UI.Shell.IShellLink'),
        equals('Windows.Win32.UI.Shell.ShellLink'));
  });

  test('toCamelCase', () {
    expect('TitleCase'.toCamelCase(), equals('titleCase'));
    expect('camelCase'.toCamelCase(), equals('camelCase'));
    expect(''.toCamelCase(), equals(''));
  });

  test('private', () {
    expect(private('foo'), equals('_foo'));
    expect(private('_foo'), equals('__foo'));
  });

  test('stripLeadingUnderscores', () {
    expect(stripLeadingUnderscores('_leading'), equals('leading'));
    expect(stripLeadingUnderscores('__leading'), equals('leading'));
    expect(stripLeadingUnderscores('_2'), equals('x2'));
    expect(stripLeadingUnderscores('noUnderscore'), equals('noUnderscore'));
  });

  test('folderFromNamespace', () {
    expect(
        folderFromNamespace('Windows.Win32.System.Console'), equals('system'));
    expect(folderFromNamespace('Windows.Win32.UI.Shell.Common'),
        equals('ui/shell'));
  });
}
