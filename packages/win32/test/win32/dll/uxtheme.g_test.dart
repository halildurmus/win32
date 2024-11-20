// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

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

@Native<Int32 Function(HTHEME)>(symbol: 'CloseThemeData')
external int _CloseThemeData(int hTheme);

@Native<
  Int32 Function(HTHEME, HDC, Int32, Int32, Pointer<RECT>, Pointer<RECT>)
>(symbol: 'DrawThemeBackground')
external int _DrawThemeBackground(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<RECT> pClipRect,
);

@Native<
  Int32 Function(
    HTHEME,
    HDC,
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
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pDestRect,
  int uEdge,
  int uFlags,
  Pointer<RECT> pContentRect,
);

@Native<
  Int32 Function(HTHEME, HDC, Int32, Int32, Pointer<RECT>, HIMAGELIST, Int32)
>(symbol: 'DrawThemeIcon')
external int _DrawThemeIcon(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  int himl,
  int iImageIndex,
);

@Native<Int32 Function(HWND, HDC, Pointer<RECT>)>(
  symbol: 'DrawThemeParentBackground',
)
external int _DrawThemeParentBackground(int hwnd, int hdc, Pointer<RECT> prc);

@Native<Int32 Function(HWND, HDC, Uint32, Pointer<RECT>)>(
  symbol: 'DrawThemeParentBackgroundEx',
)
external int _DrawThemeParentBackgroundEx(
  int hwnd,
  int hdc,
  int dwFlags,
  Pointer<RECT> prc,
);

@Native<
  Int32 Function(
    HTHEME,
    HDC,
    Int32,
    Int32,
    PCWSTR,
    Int32,
    Uint32,
    Pointer<RECT>,
    Pointer<DTTOPTS>,
  )
>(symbol: 'DrawThemeTextEx')
external int _DrawThemeTextEx(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  PCWSTR pszText,
  int cchText,
  int dwTextFlags,
  Pointer<RECT> pRect,
  Pointer<DTTOPTS> pOptions,
);

@Native<Int32 Function(HWND, Uint32)>(symbol: 'EnableThemeDialogTexture')
external int _EnableThemeDialogTexture(int hwnd, int dwFlags);

@Native<Int32 Function(PWSTR, Int32, PWSTR, Int32, PWSTR, Int32)>(
  symbol: 'GetCurrentThemeName',
)
external int _GetCurrentThemeName(
  PWSTR pszThemeFileName,
  int cchMaxNameChars,
  PWSTR pszColorBuff,
  int cchMaxColorChars,
  PWSTR pszSizeBuff,
  int cchMaxSizeChars,
);

@Native<Int32 Function(HTHEME, HDC, Int32, Int32, Int32, Pointer<Int32>)>(
  symbol: 'GetThemeMetric',
)
external int _GetThemeMetric(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<Int32> piVal,
);

@Native<
  Int32 Function(HTHEME, HDC, Int32, Int32, Pointer<RECT>, Int32, Pointer<SIZE>)
>(symbol: 'GetThemePartSize')
external int _GetThemePartSize(
  int hTheme,
  int hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> prc,
  int eSize,
  Pointer<SIZE> psz,
);

@Native<Int32 Function(HTHEME, Int32, Int32, Int32, Pointer<RECT>)>(
  symbol: 'GetThemeRect',
)
external int _GetThemeRect(
  int hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
  Pointer<RECT> pRect,
);

@Native<COLORREF Function(HTHEME, Int32)>(symbol: 'GetThemeSysColor')
external int _GetThemeSysColor(int hTheme, int iColorId);

@Native<HBRUSH Function(HTHEME, Int32)>(symbol: 'GetThemeSysColorBrush')
external int _GetThemeSysColorBrush(int hTheme, int iColorId);

@Native<Int32 Function(HTHEME, Int32, Pointer<LOGFONT>)>(
  symbol: 'GetThemeSysFont',
)
external int _GetThemeSysFont(int hTheme, int iFontId, Pointer<LOGFONT> plf);

@Native<Int32 Function(HTHEME, Int32)>(symbol: 'GetThemeSysSize')
external int _GetThemeSysSize(int hTheme, int iSizeId);

@Native<HTHEME Function(HWND)>(symbol: 'GetWindowTheme')
external int _GetWindowTheme(int hwnd);

@Native<BOOL Function()>(symbol: 'IsAppThemed')
external int _IsAppThemed();

@Native<BOOL Function()>(symbol: 'IsCompositionActive')
external int _IsCompositionActive();

@Native<BOOL Function()>(symbol: 'IsThemeActive')
external int _IsThemeActive();

@Native<BOOL Function(HTHEME, Int32, Int32)>(
  symbol: 'IsThemeBackgroundPartiallyTransparent',
)
external int _IsThemeBackgroundPartiallyTransparent(
  int hTheme,
  int iPartId,
  int iStateId,
);

@Native<BOOL Function(HWND)>(symbol: 'IsThemeDialogTextureEnabled')
external int _IsThemeDialogTextureEnabled(int hwnd);

@Native<BOOL Function(HTHEME, Int32, Int32)>(symbol: 'IsThemePartDefined')
external int _IsThemePartDefined(int hTheme, int iPartId, int iStateId);

@Native<HTHEME Function(HWND, PCWSTR)>(symbol: 'OpenThemeData')
external int _OpenThemeData(int hwnd, PCWSTR pszClassList);

@Native<HTHEME Function(HWND, PCWSTR, Uint32)>(symbol: 'OpenThemeDataEx')
external int _OpenThemeDataEx(int hwnd, PCWSTR pszClassList, int dwFlags);

@Native<HTHEME Function(HWND, PCWSTR, Uint32)>(symbol: 'OpenThemeDataForDpi')
external int _OpenThemeDataForDpi(int hwnd, PCWSTR pszClassList, int dpi);

@Native<Void Function(Uint32)>(symbol: 'SetThemeAppProperties')
external void _SetThemeAppProperties(int dwFlags);

@Native<Int32 Function(HWND, PCWSTR, PCWSTR)>(symbol: 'SetWindowTheme')
external int _SetWindowTheme(
  int hwnd,
  PCWSTR pszSubAppName,
  PCWSTR pszSubIdList,
);

@Native<Int32 Function(HWND, Int32, Pointer, Uint32)>(
  symbol: 'SetWindowThemeAttribute',
)
external int _SetWindowThemeAttribute(
  int hwnd,
  int eAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);
