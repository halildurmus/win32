@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Find an unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    check(typeDef).isNotNull();

    final field = typeDef!.findField('THIS_ONE_GOES_TO_11');
    check(field).isNull();
  });

  test('Test for unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    check(typeDef).isNotNull();

    final method = typeDef!.findMethod('PlaySoundVeryLoudly');
    check(method).isNull();
  });

  test('Test for parent field', () {
    final typeDef =
        MetadataStore.getMetadataForType('Windows.Data.Xml.Dom.IXmlNodeList');

    check(typeDef).isNotNull();
    check(typeDef!.parent).isNotNull();
    check(typeDef.parent!.name).endsWith('IInspectable');
    check(typeDef.parent!.parent).isNull();
  });

  test('Distinguish WinRT structs, delegates, classes, enums, and interfaces',
      () {
    final aStruct =
        MetadataStore.getMetadataForType('Windows.Foundation.Point')!;
    check(aStruct.isWindowsRuntime).isTrue();
    check(aStruct.isStruct).isTrue();
    check(aStruct.isClass).isFalse();
    check(aStruct.isInterface).isFalse();
    check(aStruct.isDelegate).isFalse();
    check(aStruct.isEnum).isFalse();

    final aClass =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    check(aClass.isWindowsRuntime).isTrue();
    check(aClass.isStruct).isFalse();
    check(aClass.isClass).isTrue();
    check(aClass.isInterface).isFalse();
    check(aClass.isDelegate).isFalse();
    check(aClass.isEnum).isFalse();

    final anInterface =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;
    check(anInterface.isWindowsRuntime).isTrue();
    check(anInterface.isStruct).isFalse();
    check(anInterface.isClass).isFalse();
    check(anInterface.isInterface).isTrue();
    check(anInterface.isDelegate).isFalse();
    check(anInterface.isEnum).isFalse();

    final aDelegate = MetadataStore.getMetadataForType(
        'Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler')!;
    check(aDelegate.isWindowsRuntime).isTrue();
    check(aDelegate.isStruct).isFalse();
    check(aDelegate.isClass).isFalse();
    check(aDelegate.isInterface).isFalse();
    check(aDelegate.isDelegate).isTrue();
    check(aDelegate.isEnum).isFalse();

    final anEnum =
        MetadataStore.getMetadataForType('Windows.Globalization.DayOfWeek')!;
    check(anEnum.isWindowsRuntime).isTrue();
    check(anEnum.isStruct).isFalse();
    check(anEnum.isClass).isFalse();
    check(anEnum.isInterface).isFalse();
    check(anEnum.isDelegate).isFalse();
    check(anEnum.isEnum).isTrue();
  });

  test('Distinguish Win32 structs, delegates, classes, enums, and interfaces',
      () {
    final win32 = MetadataStore.getWin32Scope();
    final aStruct =
        win32.findTypeDef('Windows.Win32.Graphics.Gdi.MONITORINFOEXW')!;
    check(aStruct.isWindowsRuntime).isFalse();
    check(aStruct.isStruct).isTrue();
    check(aStruct.isClass).isFalse();
    check(aStruct.isInterface).isFalse();
    check(aStruct.isDelegate).isFalse();
    check(aStruct.isEnum).isFalse();

    final aClass = win32.findTypeDef('Windows.Win32.UI.Shell.FileOpenDialog')!;
    check(aClass.isWindowsRuntime).isFalse();
    check(aClass.isStruct).isFalse();
    check(aClass.isClass).isTrue();
    check(aClass.isInterface).isFalse();
    check(aClass.isDelegate).isFalse();
    check(aClass.isEnum).isFalse();

    final anInterface =
        win32.findTypeDef('Windows.Win32.UI.Shell.IFileOpenDialog')!;
    check(anInterface.isWindowsRuntime).isFalse();
    check(anInterface.isStruct).isFalse();
    check(anInterface.isClass).isFalse();
    check(anInterface.isInterface).isTrue();
    check(anInterface.isDelegate).isFalse();
    check(anInterface.isEnum).isFalse();

    final aDelegate = win32.findTypeDef('Windows.Win32.UI.Shell.APPLET_PROC')!;
    check(aDelegate.isWindowsRuntime).isFalse();
    check(aDelegate.isStruct).isFalse();
    check(aDelegate.isClass).isFalse();
    check(aDelegate.isInterface).isFalse();
    check(aDelegate.isDelegate).isTrue();
    check(aDelegate.isEnum).isFalse();

    final anEnum =
        win32.findTypeDef('Windows.Win32.Graphics.Gdi.BACKGROUND_MODE')!;
    check(anEnum.isWindowsRuntime).isFalse();
    check(anEnum.isStruct).isFalse();
    check(anEnum.isClass).isFalse();
    check(anEnum.isInterface).isFalse();
    check(anEnum.isDelegate).isFalse();
    check(anEnum.isEnum).isTrue();
  });
}
