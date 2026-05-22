// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('uxtheme.dll', () {
    test('CloseThemeData can be instantiated', () {
      check(_CloseThemeData).isA<Function>();
    });
    test('DrawThemeBackground can be instantiated', () {
      check(_DrawThemeBackground).isA<Function>();
    });
    test('DrawThemeEdge can be instantiated', () {
      check(_DrawThemeEdge).isA<Function>();
    });
    test('DrawThemeIcon can be instantiated', () {
      check(_DrawThemeIcon).isA<Function>();
    });
    test('DrawThemeParentBackground can be instantiated', () {
      check(_DrawThemeParentBackground).isA<Function>();
    });
    test('DrawThemeParentBackgroundEx can be instantiated', () {
      check(_DrawThemeParentBackgroundEx).isA<Function>();
    });
    test('DrawThemeTextEx can be instantiated', () {
      check(_DrawThemeTextEx).isA<Function>();
    });
    test('EnableThemeDialogTexture can be instantiated', () {
      check(_EnableThemeDialogTexture).isA<Function>();
    });
    test('GetCurrentThemeName can be instantiated', () {
      check(_GetCurrentThemeName).isA<Function>();
    });
    test('GetThemeMetric can be instantiated', () {
      check(_GetThemeMetric).isA<Function>();
    });
    test('GetThemePartSize can be instantiated', () {
      check(_GetThemePartSize).isA<Function>();
    });
    test('GetThemeRect can be instantiated', () {
      check(_GetThemeRect).isA<Function>();
    });
    test('GetThemeSysColor can be instantiated', () {
      check(_GetThemeSysColor).isA<Function>();
    });
    test('GetThemeSysColorBrush can be instantiated', () {
      check(_GetThemeSysColorBrush).isA<Function>();
    });
    test('GetThemeSysFont can be instantiated', () {
      check(_GetThemeSysFont).isA<Function>();
    });
    test('GetThemeSysSize can be instantiated', () {
      check(_GetThemeSysSize).isA<Function>();
    });
    test('GetWindowTheme can be instantiated', () {
      check(_GetWindowTheme).isA<Function>();
    });
    test('IsAppThemed can be instantiated', () {
      check(_IsAppThemed).isA<Function>();
    });
    test('IsCompositionActive can be instantiated', () {
      check(_IsCompositionActive).isA<Function>();
    });
    test('IsThemeActive can be instantiated', () {
      check(_IsThemeActive).isA<Function>();
    });
    test('IsThemeBackgroundPartiallyTransparent can be instantiated', () {
      check(_IsThemeBackgroundPartiallyTransparent).isA<Function>();
    });
    test('IsThemeDialogTextureEnabled can be instantiated', () {
      check(_IsThemeDialogTextureEnabled).isA<Function>();
    });
    test('IsThemePartDefined can be instantiated', () {
      check(_IsThemePartDefined).isA<Function>();
    });
    test('OpenThemeData can be instantiated', () {
      check(_OpenThemeData).isA<Function>();
    });
    test('OpenThemeDataEx can be instantiated', () {
      check(_OpenThemeDataEx).isA<Function>();
    });
    test(
      'OpenThemeDataForDpi can be instantiated',
      skip: 15063 > windowsBuildNumber,
      () {
        check(_OpenThemeDataForDpi).isA<Function>();
      },
    );
    test('SetThemeAppProperties can be instantiated', () {
      check(_SetThemeAppProperties).isA<Function>();
    });
    test('SetWindowTheme can be instantiated', () {
      check(_SetWindowTheme).isA<Function>();
    });
    test('SetWindowThemeAttribute can be instantiated', () {
      check(_SetWindowThemeAttribute).isA<Function>();
    });
  });
}

final _uxtheme = DynamicLibrary.open('uxtheme.dll');

final _CloseThemeData = _uxtheme
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'CloseThemeData',
    );

final _DrawThemeBackground = _uxtheme
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Pointer<RECT>,
      ),
      int Function(int, Pointer, int, int, Pointer<RECT>, Pointer<RECT>)
    >('DrawThemeBackground');

final _DrawThemeEdge = _uxtheme
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Uint32,
        Uint32,
        Pointer<RECT>,
      ),
      int Function(
        int,
        Pointer,
        int,
        int,
        Pointer<RECT>,
        int,
        int,
        Pointer<RECT>,
      )
    >('DrawThemeEdge');

final _DrawThemeIcon = _uxtheme
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        IntPtr,
        Int32,
      ),
      int Function(int, Pointer, int, int, Pointer<RECT>, int, int)
    >('DrawThemeIcon');

final _DrawThemeParentBackground = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer, Pointer<RECT>)
    >('DrawThemeParentBackground');

final _DrawThemeParentBackgroundEx = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<RECT>),
      int Function(Pointer, Pointer, int, Pointer<RECT>)
    >('DrawThemeParentBackgroundEx');

final _DrawThemeTextEx = _uxtheme
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer,
        Int32,
        Int32,
        Pointer<Utf16>,
        Int32,
        Uint32,
        Pointer<RECT>,
        Pointer<DTTOPTS>,
      ),
      int Function(
        int,
        Pointer,
        int,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<RECT>,
        Pointer<DTTOPTS>,
      )
    >('DrawThemeTextEx');

final _EnableThemeDialogTexture = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('EnableThemeDialogTexture');

final _GetCurrentThemeName = _uxtheme
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Int32,
        Pointer<Utf16>,
        Int32,
        Pointer<Utf16>,
        Int32,
      ),
      int Function(
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        int,
        Pointer<Utf16>,
        int,
      )
    >('GetCurrentThemeName');

final _GetThemeMetric = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Pointer, Int32, Int32, Int32, Pointer<Int32>),
      int Function(int, Pointer, int, int, int, Pointer<Int32>)
    >('GetThemeMetric');

final _GetThemePartSize = _uxtheme
    .lookupFunction<
      Int32 Function(
        IntPtr,
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Int32,
        Pointer<SIZE>,
      ),
      int Function(int, Pointer, int, int, Pointer<RECT>, int, Pointer<SIZE>)
    >('GetThemePartSize');

final _GetThemeRect = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32, Int32, Pointer<RECT>),
      int Function(int, int, int, int, Pointer<RECT>)
    >('GetThemeRect');

final _GetThemeSysColor = _uxtheme
    .lookupFunction<Uint32 Function(IntPtr, Int32), int Function(int, int)>(
      'GetThemeSysColor',
    );

final _GetThemeSysColorBrush = _uxtheme
    .lookupFunction<
      Pointer Function(IntPtr, Int32),
      Pointer Function(int, int)
    >('GetThemeSysColorBrush');

final _GetThemeSysFont = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Pointer<LOGFONT>),
      int Function(int, int, Pointer<LOGFONT>)
    >('GetThemeSysFont');

final _GetThemeSysSize = _uxtheme
    .lookupFunction<Int32 Function(IntPtr, Int32), int Function(int, int)>(
      'GetThemeSysSize',
    );

final _GetWindowTheme = _uxtheme
    .lookupFunction<IntPtr Function(Pointer), int Function(Pointer)>(
      'GetWindowTheme',
    );

final _IsAppThemed = _uxtheme.lookupFunction<Int32 Function(), int Function()>(
  'IsAppThemed',
);

final _IsCompositionActive = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('IsCompositionActive');

final _IsThemeActive = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('IsThemeActive');

final _IsThemeBackgroundPartiallyTransparent = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32),
      int Function(int, int, int)
    >('IsThemeBackgroundPartiallyTransparent');

final _IsThemeDialogTextureEnabled = _uxtheme
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsThemeDialogTextureEnabled',
    );

final _IsThemePartDefined = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32),
      int Function(int, int, int)
    >('IsThemePartDefined');

final _OpenThemeData = _uxtheme
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('OpenThemeData');

final _OpenThemeDataEx = _uxtheme
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('OpenThemeDataEx');

final _OpenThemeDataForDpi = _uxtheme
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('OpenThemeDataForDpi');

final _SetThemeAppProperties = _uxtheme
    .lookupFunction<Void Function(Uint32), void Function(int)>(
      'SetThemeAppProperties',
    );

final _SetWindowTheme = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('SetWindowTheme');

final _SetWindowThemeAttribute = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetWindowThemeAttribute');
