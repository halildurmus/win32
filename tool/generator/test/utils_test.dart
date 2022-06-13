@TestOn('windows')

import 'package:generator/generator.dart';
import 'package:test/test.dart';
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

  test('libraryFromDllName', () {
    expect(libraryFromDllName('kernel32'), equals('kernel32.dll'));
    expect(libraryFromDllName('gdi32'), equals('gdi32.dll'));
    expect(libraryFromDllName('bthprops'), equals('bthprops.cpl'));
    expect(libraryFromDllName('winspool'), equals('winspool.drv'));
  });

  test('folderFromNamespace', () {
    expect(folderFromNamespace('Windows.Win32.Globalization.ISpellChecker'),
        equals('globalization'));
    expect(
        folderFromNamespace('Windows.Win32.System.Console.CONSOLE_FONT_INFO'),
        equals('system/console'));
    expect(folderFromNamespace('Windows.Win32.UI.Shell.Common.SHITEMID'),
        equals('ui/shell/common'));
  });

  test('folderFromWinRTNamespace', () {
    expect(folderFromWinRTNamespace('Windows.Globalization.Calendar'),
        equals('globalization'));
    expect(folderFromWinRTNamespace('Windows.Storage.Pickers.FileOpenPicker'),
        equals('storage/pickers'));
    expect(
        folderFromWinRTNamespace(
            'Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('devices/geolocation/geofencing'));
  });

  test('filePathFromWinRTNamespace', () {
    expect(filePathFromWinRTNamespace('Windows.Globalization.Calendar'),
        equals('globalization/calendar.dart'));
    expect(filePathFromWinRTNamespace('Windows.Storage.Pickers.FileOpenPicker'),
        equals('storage/pickers/fileopenpicker.dart'));
    expect(
        filePathFromWinRTNamespace(
            'Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('devices/geolocation/geofencing/geofence.dart'));
  });

  test('parentNamespace', () {
    expect(parentNamespace('Windows.Foundation.IAsyncInfo'),
        equals('Windows.Foundation'));
    expect(parentNamespace('Windows.Gaming.Input.Gamepad'),
        equals('Windows.Gaming.Input'));
    expect(parentNamespace('Windows.Devices.Display.Core.DisplayManager'),
        equals('Windows.Devices.Display.Core'));
  });

  test('groupTypesByParentNamespace', () {
    expect(
        groupTypesByParentNamespace([
          'Windows.Data.Xml.Dom.IXmlNodeList',
          'Windows.Foundation.IAsyncInfo',
          'Windows.Foundation.IClosable',
          'Windows.Foundation.IPropertyValue',
          'Windows.Foundation.IStringable',
          'Windows.Foundation.PropertyValue',
          'Windows.Gaming.Input.Gamepad',
          'Windows.Globalization.Calendar',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo',
          'Windows.Networking.IHostName',
          'Windows.Storage.IApplicationDataStatics',
          'Windows.Storage.IStorageItem',
          'Windows.Storage.Pickers.IFileOpenPicker',
          'Windows.Storage.UserDataPaths',
          'Windows.UI.Notifications.IToastNotificationManagerStatics',
          'Windows.UI.Notifications.ToastNotification',
        ]),
        equals([
          NamespaceGroup(
            namespace: 'Windows.Data.Xml.Dom',
            types: ['Windows.Data.Xml.Dom.IXmlNodeList'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Foundation',
            types: [
              'Windows.Foundation.IAsyncInfo',
              'Windows.Foundation.IClosable',
              'Windows.Foundation.IPropertyValue',
              'Windows.Foundation.IStringable',
              'Windows.Foundation.PropertyValue'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Gaming.Input',
            types: ['Windows.Gaming.Input.Gamepad'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization',
            types: ['Windows.Globalization.Calendar'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization.PhoneNumberFormatting',
            types: [
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Networking',
            types: ['Windows.Networking.IHostName'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage',
            types: [
              'Windows.Storage.IApplicationDataStatics',
              'Windows.Storage.IStorageItem',
              'Windows.Storage.UserDataPaths'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage.Pickers',
            types: ['Windows.Storage.Pickers.IFileOpenPicker'],
          ),
          NamespaceGroup(
            namespace: 'Windows.UI.Notifications',
            types: [
              'Windows.UI.Notifications.IToastNotificationManagerStatics',
              'Windows.UI.Notifications.ToastNotification'
            ],
          )
        ]));
  });
}
