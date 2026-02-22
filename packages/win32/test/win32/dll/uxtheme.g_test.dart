// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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

@Native<Int32 Function(IntPtr)>(symbol: 'CloseThemeData')
external int _CloseThemeData(int hTheme);

@Native<
  Int32 Function(IntPtr, Pointer, Int32, Int32, Pointer<RECT>, Pointer<RECT>)
>(symbol: 'DrawThemeBackground')
external int _DrawThemeBackground(
  int hTheme,
  Pointer hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<RECT> pClipRect,
);

@Native<
  Int32 Function(
    IntPtr,
    Pointer,
    Int32,
    Int32,
    Pointer<RECT>,
    Uint32,
    Uint32,
    Pointer<RECT>,
  )
>(symbol: 'DrawThemeEdge')
external int _DrawThemeEdge(
  int hTheme,
  Pointer hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pDestRect,
  int uEdge,
  int uFlags,
  Pointer<RECT> pContentRect,
);

@Native<
  Int32 Function(IntPtr, Pointer, Int32, Int32, Pointer<RECT>, IntPtr, Int32)
>(symbol: 'DrawThemeIcon')
external int _DrawThemeIcon(
  int hTheme,
  Pointer hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  int himl,
  int iImageIndex,
);

@Native<Int32 Function(Pointer, Pointer, Pointer<RECT>)>(
  symbol: 'DrawThemeParentBackground',
)
external int _DrawThemeParentBackground(
  Pointer hwnd,
  Pointer hdc,
  Pointer<RECT> prc,
);

@Native<Int32 Function(Pointer, Pointer, Uint32, Pointer<RECT>)>(
  symbol: 'DrawThemeParentBackgroundEx',
)
external int _DrawThemeParentBackgroundEx(
  Pointer hwnd,
  Pointer hdc,
  int dwFlags,
  Pointer<RECT> prc,
);

@Native<
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
  )
>(symbol: 'DrawThemeTextEx')
external int _DrawThemeTextEx(
  int hTheme,
  Pointer hdc,
  int iPartId,
  int iStateId,
  Pointer<Utf16> pszText,
  int cchText,
  int dwTextFlags,
  Pointer<RECT> pRect,
  Pointer<DTTOPTS> pOptions,
);

@Native<Int32 Function(Pointer, Uint32)>(symbol: 'EnableThemeDialogTexture')
external int _EnableThemeDialogTexture(Pointer hwnd, int dwFlags);

@Native<
  Int32 Function(
    Pointer<Utf16>,
    Int32,
    Pointer<Utf16>,
    Int32,
    Pointer<Utf16>,
    Int32,
  )
>(symbol: 'GetCurrentThemeName')
external int _GetCurrentThemeName(
  Pointer<Utf16> pszThemeFileName,
  int cchMaxNameChars,
  Pointer<Utf16> pszColorBuff,
  int cchMaxColorChars,
  Pointer<Utf16> pszSizeBuff,
  int cchMaxSizeChars,
);

@Native<Int32 Function(IntPtr, Pointer, Int32, Int32, Int32, Pointer<Int32>)>(
  symbol: 'GetThemeMetric',
)
external int _GetThemeMetric(
  int hTheme,
  Pointer hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
);

@Native<
  Int32 Function(
    IntPtr,
    Pointer,
    Int32,
    Int32,
    Pointer<RECT>,
    Int32,
    Pointer<SIZE>,
  )
>(symbol: 'GetThemePartSize')
external int _GetThemePartSize(
  int hTheme,
  Pointer hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> prc,
  int eSize,
  Pointer<SIZE> psz,
);

@Native<Int32 Function(IntPtr, Int32, Int32, Int32, Pointer<RECT>)>(
  symbol: 'GetThemeRect',
)
external int _GetThemeRect(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<RECT> pRect,
);

@Native<Uint32 Function(IntPtr, Int32)>(symbol: 'GetThemeSysColor')
external int _GetThemeSysColor(int hTheme, int iColorId);

@Native<Pointer Function(IntPtr, Int32)>(symbol: 'GetThemeSysColorBrush')
external Pointer _GetThemeSysColorBrush(int hTheme, int iColorId);

@Native<Int32 Function(IntPtr, Int32, Pointer<LOGFONT>)>(
  symbol: 'GetThemeSysFont',
)
external int _GetThemeSysFont(int hTheme, int iFontId, Pointer<LOGFONT> plf);

@Native<Int32 Function(IntPtr, Int32)>(symbol: 'GetThemeSysSize')
external int _GetThemeSysSize(int hTheme, int iSizeId);

@Native<IntPtr Function(Pointer)>(symbol: 'GetWindowTheme')
external int _GetWindowTheme(Pointer hwnd);

@Native<Int32 Function()>(symbol: 'IsAppThemed')
external int _IsAppThemed();

@Native<Int32 Function()>(symbol: 'IsCompositionActive')
external int _IsCompositionActive();

@Native<Int32 Function()>(symbol: 'IsThemeActive')
external int _IsThemeActive();

@Native<Int32 Function(IntPtr, Int32, Int32)>(
  symbol: 'IsThemeBackgroundPartiallyTransparent',
)
external int _IsThemeBackgroundPartiallyTransparent(
  int hTheme,
  int iPartId,
  int iStateId,
);

@Native<Int32 Function(Pointer)>(symbol: 'IsThemeDialogTextureEnabled')
external int _IsThemeDialogTextureEnabled(Pointer hwnd);

@Native<Int32 Function(IntPtr, Int32, Int32)>(symbol: 'IsThemePartDefined')
external int _IsThemePartDefined(int hTheme, int iPartId, int iStateId);

@Native<IntPtr Function(Pointer, Pointer<Utf16>)>(symbol: 'OpenThemeData')
external int _OpenThemeData(Pointer hwnd, Pointer<Utf16> pszClassList);

@Native<IntPtr Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'OpenThemeDataEx',
)
external int _OpenThemeDataEx(
  Pointer hwnd,
  Pointer<Utf16> pszClassList,
  int dwFlags,
);

@Native<IntPtr Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'OpenThemeDataForDpi',
)
external int _OpenThemeDataForDpi(
  Pointer hwnd,
  Pointer<Utf16> pszClassList,
  int dpi,
);

@Native<Void Function(Uint32)>(symbol: 'SetThemeAppProperties')
external void _SetThemeAppProperties(int dwFlags);

@Native<Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'SetWindowTheme',
)
external int _SetWindowTheme(
  Pointer hwnd,
  Pointer<Utf16> pszSubAppName,
  Pointer<Utf16> pszSubIdList,
);

@Native<Int32 Function(Pointer, Int32, Pointer, Uint32)>(
  symbol: 'SetWindowThemeAttribute',
)
external int _SetWindowThemeAttribute(
  Pointer hwnd,
  int eAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);
