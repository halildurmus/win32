@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;
  late Scope winrtScope;

  setUpAll(() async {
    (win32Scope, winrtScope) = await (
      MetadataStore.loadWin32Metadata(),
      MetadataStore.loadWinRTMetadata()
    ).wait;
  });

  test('Find an unknown field', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apis');
    check(typeDef).isNotNull();
    final field = typeDef!.findField('THIS_ONE_GOES_TO_11');
    check(field).isNull();
  });

  test('Test for unknown field', () {
    final typeDef = win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apis');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('PlaySoundVeryLoudly');
    check(method).isNull();
  });

  test('Test for parent field', () {
    final typeDef = winrtScope.findTypeDef('Windows.Data.Xml.Dom.IXmlNodeList');
    check(typeDef).isNotNull();
    final parent = typeDef!.parent;
    check(parent).isNotNull();
    check(parent!.name).endsWith('IInspectable');
    check(parent.parent).isNull();
  });

  test('Distinguish Win32 structs, delegates, classes, enums, and interfaces',
      () {
    final class_ =
        win32Scope.findTypeDef('Windows.Win32.UI.Shell.FileOpenDialog');
    check(class_).isNotNull();
    check(class_!.isClass).isTrue();
    check(class_.isDelegate).isFalse();
    check(class_.isEnum).isFalse();
    check(class_.isInterface).isFalse();
    check(class_.isStruct).isFalse();
    check(class_.isWindowsRuntime).isFalse();

    final delegate =
        win32Scope.findTypeDef('Windows.Win32.UI.Shell.APPLET_PROC');
    check(delegate).isNotNull();
    check(delegate!.isDelegate).isTrue();
    check(delegate.isClass).isFalse();
    check(delegate.isEnum).isFalse();
    check(delegate.isInterface).isFalse();
    check(delegate.isStruct).isFalse();
    check(delegate.isWindowsRuntime).isFalse();

    final enum_ =
        win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.BACKGROUND_MODE');
    check(enum_).isNotNull();
    check(enum_!.isEnum).isTrue();
    check(enum_.isClass).isFalse();
    check(enum_.isDelegate).isFalse();
    check(enum_.isInterface).isFalse();
    check(enum_.isStruct).isFalse();
    check(enum_.isWindowsRuntime).isFalse();

    final interface =
        win32Scope.findTypeDef('Windows.Win32.UI.Shell.IFileOpenDialog');
    check(interface).isNotNull();
    check(interface!.isInterface).isTrue();
    check(interface.isClass).isFalse();
    check(interface.isDelegate).isFalse();
    check(interface.isEnum).isFalse();
    check(interface.isStruct).isFalse();
    check(interface.isWindowsRuntime).isFalse();

    final struct =
        win32Scope.findTypeDef('Windows.Win32.Graphics.Gdi.MONITORINFOEXW');
    check(struct).isNotNull();
    check(struct!.isStruct).isTrue();
    check(struct.isClass).isFalse();
    check(struct.isDelegate).isFalse();
    check(struct.isEnum).isFalse();
    check(struct.isInterface).isFalse();
    check(struct.isWindowsRuntime).isFalse();
  });

  test('Distinguish WinRT structs, delegates, classes, enums, and interfaces',
      () {
    final class_ = winrtScope.findTypeDef('Windows.Globalization.Calendar');
    check(class_).isNotNull();
    check(class_!.isClass).isTrue();
    check(class_.isDelegate).isFalse();
    check(class_.isEnum).isFalse();
    check(class_.isInterface).isFalse();
    check(class_.isStruct).isFalse();
    check(class_.isWindowsRuntime).isTrue();

    final delegate = winrtScope.findTypeDef(
        'Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler');
    check(delegate).isNotNull();
    check(delegate!.isDelegate).isTrue();
    check(delegate.isClass).isFalse();
    check(delegate.isEnum).isFalse();
    check(delegate.isInterface).isFalse();
    check(delegate.isStruct).isFalse();
    check(delegate.isWindowsRuntime).isTrue();

    final enum_ = winrtScope.findTypeDef('Windows.Globalization.DayOfWeek');
    check(enum_).isNotNull();
    check(enum_!.isEnum).isTrue();
    check(enum_.isClass).isFalse();
    check(enum_.isDelegate).isFalse();
    check(enum_.isInterface).isFalse();
    check(enum_.isStruct).isFalse();
    check(enum_.isWindowsRuntime).isTrue();

    final interface = winrtScope.findTypeDef('Windows.Globalization.ICalendar');
    check(interface).isNotNull();
    check(interface!.isInterface).isTrue();
    check(interface.isClass).isFalse();
    check(interface.isDelegate).isFalse();
    check(interface.isEnum).isFalse();
    check(interface.isStruct).isFalse();
    check(interface.isWindowsRuntime).isTrue();

    final struct = winrtScope.findTypeDef('Windows.Foundation.Point');
    check(struct).isNotNull();
    check(struct!.isStruct).isTrue();
    check(struct.isClass).isFalse();
    check(struct.isDelegate).isFalse();
    check(struct.isEnum).isFalse();
    check(struct.isInterface).isFalse();
    check(struct.isWindowsRuntime).isTrue();
  });

  group('defaultInterface', () {
    test('throws an AssertionError if the TypeDef is not a runtime class', () {
      final typeDef = winrtScope.findTypeDef('Windows.Networking.IHostName');
      check(typeDef).isNotNull();
      check(typeDef!.name).endsWith('IHostName');
      check(() => typeDef.defaultInterface).throws<AssertionError>();
    });

    test('returns the correct default interface for a runtime class', () {
      final typeDef = winrtScope.findTypeDef('Windows.Networking.HostName');
      check(typeDef).isNotNull();
      check(typeDef!.name).endsWith('HostName');
      check(typeDef.defaultInterface.name).endsWith('IHostName');
    });
  });

  tearDownAll(MetadataStore.close);
}
