@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;
  late Scope winrtScope;

  setUpAll(() async {
    (win32Scope, winrtScope) =
        await (
          MetadataStore.loadWin32Scope(),
          MetadataStore.loadWinrtScope(),
        ).wait;
  });

  group('TypeDef', () {
    group('Win32', () {
      test('attribute', () {
        final typeDef = win32Scope.findTypeDef(
          'Windows.Win32.Foundation.Metadata.NativeEncodingAttribute',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.attribute);
        check(typeDef.isAttribute).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isFalse();
      });

      test('class', () {
        final typeDef = win32Scope.findTypeDef('Windows.Win32.Foundation.Apis');
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.class$);
        check(typeDef.isClass).isTrue();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isFalse();
      });

      test('delegate', () {
        final typeDef = win32Scope.findTypeDef(
          'Windows.Win32.UI.Shell.APPLET_PROC',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.delegate);
        check(typeDef.isDelegate).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isFalse();
      });

      test('enum', () {
        final typeDef = win32Scope.findTypeDef(
          'Windows.Win32.Graphics.Gdi.BACKGROUND_MODE',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.enum$);
        check(typeDef.isEnum).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isFalse();
      });

      test('interface', () {
        final typeDef = win32Scope.findTypeDef(
          'Windows.Win32.UI.Shell.IFileOpenDialog',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.interface);
        check(typeDef.isInterface).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isFalse();
      });

      test('struct', () {
        final typeDef = win32Scope.findTypeDef(
          'Windows.Win32.Graphics.Gdi.MONITORINFOEXW',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.struct);
        check(typeDef.isStruct).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isWindowsRuntime).isFalse();
      });
    });

    group('WinRT', () {
      test('attribute', () {
        final typeDef = winrtScope.findTypeDef(
          'Windows.Foundation.Metadata.DefaultAttribute',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.attribute);
        check(typeDef.isAttribute).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isTrue();
      });

      test('class', () {
        final typeDef = winrtScope.findTypeDef(
          'Windows.Globalization.Calendar',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.class$);
        check(typeDef.isClass).isTrue();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isTrue();
      });

      test('delegate', () {
        final typeDef = winrtScope.findTypeDef(
          'Windows.Gaming.Preview.GamesEnumeration.GameListChangedEventHandler',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.delegate);
        check(typeDef.isDelegate).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isTrue();
      });

      test('enum', () {
        final typeDef = winrtScope.findTypeDef(
          'Windows.Globalization.DayOfWeek',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.enum$);
        check(typeDef.isEnum).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isTrue();
      });

      test('interface', () {
        final typeDef = winrtScope.findTypeDef(
          'Windows.Globalization.ICalendar',
        );
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.interface);
        check(typeDef.isInterface).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isStruct).isFalse();
        check(typeDef.isWindowsRuntime).isTrue();
      });

      test('struct', () {
        final typeDef = winrtScope.findTypeDef('Windows.Foundation.Point');
        check(typeDef).isNotNull();
        check(typeDef!.kind).equals(TypeDefKind.struct);
        check(typeDef.isStruct).isTrue();
        check(typeDef.isClass).isFalse();
        check(typeDef.isDelegate).isFalse();
        check(typeDef.isEnum).isFalse();
        check(typeDef.isInterface).isFalse();
        check(typeDef.isWindowsRuntime).isTrue();
      });
    });

    group('defaultInterface', () {
      test('returns null if the TypeDef is not a runtime class', () {
        final typeDef = winrtScope.findTypeDef('Windows.Networking.IHostName');
        check(typeDef).isNotNull();
        check(typeDef!.name).endsWith('IHostName');
        check(typeDef.defaultInterface).isNull();
      });

      test('returns the correct default interface for a runtime class', () {
        final typeDef = winrtScope.findTypeDef('Windows.Networking.HostName');
        check(typeDef).isNotNull();
        check(typeDef!.name).endsWith('HostName');
        check(
          typeDef.defaultInterface,
        ).isNotNull().has((it) => it.name, 'name').endsWith('IHostName');
      });
    });

    test('findField', () {
      final typeDef = win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apis');
      check(typeDef).isNotNull();
      final field = typeDef!.findField('THIS_ONE_GOES_TO_11');
      check(field).isNull();
    });

    test('findMethod', () {
      final typeDef = win32Scope.findTypeDef('Windows.Win32.Media.Audio.Apis');
      check(typeDef).isNotNull();
      final method = typeDef!.findMethod('PlaySoundVeryLoudly');
      check(method).isNull();
    });

    test('parent', () {
      final typeDef = winrtScope.findTypeDef(
        'Windows.Data.Xml.Dom.IXmlNodeList',
      );
      check(typeDef).isNotNull();
      final parent = typeDef!.parent;
      check(parent).isNotNull();
      check(parent!.name).endsWith('IInspectable');
      check(parent.parent).isNull();
    });
  });

  tearDownAll(MetadataStore.close);
}
