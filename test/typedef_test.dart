@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Find an unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final field = typeDef!.findField('THIS_ONE_GOES_TO_11');
    expect(field, isNull);
  });

  test('Test for unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final method = typeDef!.findMethod('PlaySoundVeryLoudly');
    expect(method, isNull);
  });

  test('Test for parent field', () {
    final typeDef =
        MetadataStore.getMetadataForType('Windows.Data.Xml.Dom.IXmlNodeList');

    expect(typeDef, isNotNull);
    expect(typeDef!.parent, isNotNull);
    expect(typeDef.parent!.name, endsWith('IInspectable'));
    expect(typeDef.parent!.parent, isNull);
  });

  test('Distinguish WinRT structs, delegates, classes, enums, and interfaces',
      () {
    final aStruct =
        MetadataStore.getMetadataForType('Windows.Foundation.Point')!;
    expect(aStruct.isWindowsRuntime, isTrue);
    expect(aStruct.isStruct, isTrue);
    expect(aStruct.isClass, isFalse);
    expect(aStruct.isInterface, isFalse);
    expect(aStruct.isDelegate, isFalse);
    expect(aStruct.isEnum, isFalse);

    final aClass =
        MetadataStore.getMetadataForType('Windows.Globalization.Calendar')!;
    expect(aClass.isWindowsRuntime, isTrue);
    expect(aClass.isStruct, isFalse);
    expect(aClass.isClass, isTrue);
    expect(aClass.isInterface, isFalse);
    expect(aClass.isDelegate, isFalse);
    expect(aClass.isEnum, isFalse);

    final anInterface =
        MetadataStore.getMetadataForType('Windows.Globalization.ICalendar')!;
    expect(anInterface.isWindowsRuntime, isTrue);
    expect(anInterface.isStruct, isFalse);
    expect(anInterface.isClass, isFalse);
    expect(anInterface.isInterface, isTrue);
    expect(anInterface.isDelegate, isFalse);
    expect(anInterface.isEnum, isFalse);

    final aDelegate = MetadataStore.getMetadataForType(
        'Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler')!;
    expect(aDelegate.isWindowsRuntime, isTrue);
    expect(aDelegate.isStruct, isFalse);
    expect(aDelegate.isClass, isFalse);
    expect(aDelegate.isInterface, isFalse);
    expect(aDelegate.isDelegate, isTrue);
    expect(aDelegate.isEnum, isFalse);

    final anEnum =
        MetadataStore.getMetadataForType('Windows.Globalization.DayOfWeek')!;
    expect(anEnum.isWindowsRuntime, isTrue);
    expect(anEnum.isStruct, isFalse);
    expect(anEnum.isClass, isFalse);
    expect(anEnum.isInterface, isFalse);
    expect(anEnum.isDelegate, isFalse);
    expect(anEnum.isEnum, isTrue);
  });

  test('Distinguish Win32 structs, delegates, classes, enums, and interfaces',
      () {
    final win32 = MetadataStore.getWin32Scope();
    final aStruct =
        win32.findTypeDef('Windows.Win32.Graphics.Gdi.MONITORINFOEXW')!;
    expect(aStruct.isWindowsRuntime, isFalse);
    expect(aStruct.isStruct, isTrue);
    expect(aStruct.isClass, isFalse);
    expect(aStruct.isInterface, isFalse);
    expect(aStruct.isDelegate, isFalse);
    expect(aStruct.isEnum, isFalse);

    final aClass = win32.findTypeDef('Windows.Win32.UI.Shell.FileOpenDialog')!;
    expect(aClass.isWindowsRuntime, isFalse);
    expect(aClass.isStruct, isFalse);
    expect(aClass.isClass, isTrue);
    expect(aClass.isInterface, isFalse);
    expect(aClass.isDelegate, isFalse);
    expect(aClass.isEnum, isFalse);

    final anInterface =
        win32.findTypeDef('Windows.Win32.UI.Shell.IFileOpenDialog')!;
    expect(anInterface.isWindowsRuntime, isFalse);
    expect(anInterface.isStruct, isFalse);
    expect(anInterface.isClass, isFalse);
    expect(anInterface.isInterface, isTrue);
    expect(anInterface.isDelegate, isFalse);
    expect(anInterface.isEnum, isFalse);

    final aDelegate = win32.findTypeDef('Windows.Win32.UI.Shell.APPLET_PROC')!;
    expect(aDelegate.isWindowsRuntime, isFalse);
    expect(aDelegate.isStruct, isFalse);
    expect(aDelegate.isClass, isFalse);
    expect(aDelegate.isInterface, isFalse);
    expect(aDelegate.isDelegate, isTrue);
    expect(aDelegate.isEnum, isFalse);

    final anEnum =
        win32.findTypeDef('Windows.Win32.Graphics.Gdi.BACKGROUND_MODE')!;
    expect(anEnum.isWindowsRuntime, isFalse);
    expect(anEnum.isStruct, isFalse);
    expect(anEnum.isClass, isFalse);
    expect(anEnum.isInterface, isFalse);
    expect(anEnum.isDelegate, isFalse);
    expect(anEnum.isEnum, isTrue);
  });
}
