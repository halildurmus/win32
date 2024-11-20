// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Closes the theme data handle.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-closethemedata>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void CloseThemeData(HTHEME hTheme) {
  final hr$ = HRESULT(_CloseThemeData(hTheme));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(IntPtr)>(symbol: 'CloseThemeData')
external int _CloseThemeData(int hTheme);

/// Draws the border and fill defined by the visual style for the specified
/// control part.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-drawthemebackground>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void DrawThemeBackground(
  HTHEME hTheme,
  HDC hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  Pointer<RECT>? pClipRect,
) {
  final hr$ = HRESULT(
    _DrawThemeBackground(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pRect,
      pClipRect ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Draws one or more edges defined by the visual style of a rectangle.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-drawthemeedge>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void DrawThemeEdge(
  HTHEME hTheme,
  HDC hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pDestRect,
  DRAWEDGE_FLAGS uEdge,
  DRAW_EDGE_FLAGS uFlags,
  Pointer<RECT>? pContentRect,
) {
  final hr$ = HRESULT(
    _DrawThemeEdge(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pDestRect,
      uEdge,
      uFlags,
      pContentRect ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Draws an image from an image list with the icon effect defined by the visual
/// style.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-drawthemeicon>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void DrawThemeIcon(
  HTHEME hTheme,
  HDC hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT> pRect,
  HIMAGELIST himl,
  int iImageIndex,
) {
  final hr$ = HRESULT(
    _DrawThemeIcon(hTheme, hdc, iPartId, iStateId, pRect, himl, iImageIndex),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Draws the part of a parent control that is covered by a
/// partially-transparent or alpha-blended child control.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-drawthemeparentbackground>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void DrawThemeParentBackground(HWND hwnd, HDC hdc, Pointer<RECT>? prc) {
  final hr$ = HRESULT(_DrawThemeParentBackground(hwnd, hdc, prc ?? nullptr));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer, Pointer, Pointer<RECT>)>(
  symbol: 'DrawThemeParentBackground',
)
external int _DrawThemeParentBackground(
  Pointer hwnd,
  Pointer hdc,
  Pointer<RECT> prc,
);

/// Used by partially-transparent or alpha-blended child controls to draw the
/// part of their parent in front of which they appear.
///
/// Sends a WM_ERASEBKGND message followed by a WM_PRINTCLIENT.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-drawthemeparentbackgroundex>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void DrawThemeParentBackgroundEx(
  HWND hwnd,
  HDC hdc,
  DRAW_THEME_PARENT_BACKGROUND_FLAGS dwFlags,
  Pointer<RECT>? prc,
) {
  final hr$ = HRESULT(
    _DrawThemeParentBackgroundEx(hwnd, hdc, dwFlags, prc ?? nullptr),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer, Pointer, Uint32, Pointer<RECT>)>(
  symbol: 'DrawThemeParentBackgroundEx',
)
external int _DrawThemeParentBackgroundEx(
  Pointer hwnd,
  Pointer hdc,
  int dwFlags,
  Pointer<RECT> prc,
);

/// Draws text using the color and font defined by the visual style.
///
/// Extends DrawThemeText by allowing additional text format options.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-drawthemetextex>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void DrawThemeTextEx(
  HTHEME hTheme,
  HDC hdc,
  int iPartId,
  int iStateId,
  PCWSTR pszText,
  int cchText,
  DRAW_TEXT_FORMAT dwTextFlags,
  Pointer<RECT> pRect,
  Pointer<DTTOPTS>? pOptions,
) {
  final hr$ = HRESULT(
    _DrawThemeTextEx(
      hTheme,
      hdc,
      iPartId,
      iStateId,
      pszText,
      cchText,
      dwTextFlags,
      pRect,
      pOptions ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Enables or disables the visual style of the background of a dialog window.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-enablethemedialogtexture>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void EnableThemeDialogTexture(HWND hwnd, int dwFlags) {
  final hr$ = HRESULT(_EnableThemeDialogTexture(hwnd, dwFlags));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer, Uint32)>(symbol: 'EnableThemeDialogTexture')
external int _EnableThemeDialogTexture(Pointer hwnd, int dwFlags);

/// Retrieves the name of the current visual style, and optionally retrieves the
/// color scheme name and size name.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getcurrentthemename>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void GetCurrentThemeName(
  PWSTR pszThemeFileName,
  int cchMaxNameChars,
  PWSTR? pszColorBuff,
  int cchMaxColorChars,
  PWSTR? pszSizeBuff,
  int cchMaxSizeChars,
) {
  final hr$ = HRESULT(
    _GetCurrentThemeName(
      pszThemeFileName,
      cchMaxNameChars,
      pszColorBuff ?? nullptr,
      cchMaxColorChars,
      pszSizeBuff ?? nullptr,
      cchMaxSizeChars,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

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

/// Retrieves the value of a metric property.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthememetric>.
///
/// {@category uxtheme}
int GetThemeMetric(
  HTHEME hTheme,
  HDC? hdc,
  int iPartId,
  int iStateId,
  THEME_PROPERTY_SYMBOL_ID iPropId,
) {
  final piVal = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(
    _GetThemeMetric(hTheme, hdc ?? nullptr, iPartId, iStateId, iPropId, piVal),
  );
  if (hr$.isError) {
    free(piVal);
    throw WindowsException(hr$);
  }
  final result$ = piVal.value;
  free(piVal);
  return result$;
}

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

/// Calculates the original size of the part defined by a visual style.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemepartsize>.
///
/// {@category uxtheme}
Pointer<SIZE> GetThemePartSize(
  HTHEME hTheme,
  HDC? hdc,
  int iPartId,
  int iStateId,
  Pointer<RECT>? prc,
  THEMESIZE eSize,
) {
  final psz = adaptiveCalloc<SIZE>();
  final hr$ = HRESULT(
    _GetThemePartSize(
      hTheme,
      hdc ?? nullptr,
      iPartId,
      iStateId,
      prc ?? nullptr,
      eSize,
      psz,
    ),
  );
  if (hr$.isError) {
    free(psz);
    throw WindowsException(hr$);
  }
  return psz;
}

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

/// Retrieves the value of a RECT property.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemerect>.
///
/// {@category uxtheme}
Pointer<RECT> GetThemeRect(
  HTHEME hTheme,
  int iPartId,
  int iStateId,
  int iPropId,
) {
  final pRect = adaptiveCalloc<RECT>();
  final hr$ = HRESULT(_GetThemeRect(hTheme, iPartId, iStateId, iPropId, pRect));
  if (hr$.isError) {
    free(pRect);
    throw WindowsException(hr$);
  }
  return pRect;
}

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

/// Retrieves the value of a system color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemesyscolor>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
COLORREF GetThemeSysColor(HTHEME? hTheme, int iColorId) =>
    COLORREF(_GetThemeSysColor(hTheme ?? NULL, iColorId));

@Native<Uint32 Function(IntPtr, Int32)>(symbol: 'GetThemeSysColor')
external int _GetThemeSysColor(int hTheme, int iColorId);

/// Retrieves a system color brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemesyscolorbrush>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HBRUSH GetThemeSysColorBrush(
  HTHEME? hTheme,
  THEME_PROPERTY_SYMBOL_ID iColorId,
) => HBRUSH(_GetThemeSysColorBrush(hTheme ?? NULL, iColorId));

@Native<Pointer Function(IntPtr, Int32)>(symbol: 'GetThemeSysColorBrush')
external Pointer _GetThemeSysColorBrush(int hTheme, int iColorId);

/// Retrieves the LOGFONT of a system font.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemesysfont>.
///
/// {@category uxtheme}
Pointer<LOGFONT> GetThemeSysFont(
  HTHEME? hTheme,
  THEME_PROPERTY_SYMBOL_ID iFontId,
) {
  final plf = adaptiveCalloc<LOGFONT>();
  final hr$ = HRESULT(_GetThemeSysFont(hTheme ?? NULL, iFontId, plf));
  if (hr$.isError) {
    free(plf);
    throw WindowsException(hr$);
  }
  return plf;
}

@Native<Int32 Function(IntPtr, Int32, Pointer<LOGFONT>)>(
  symbol: 'GetThemeSysFont',
)
external int _GetThemeSysFont(int hTheme, int iFontId, Pointer<LOGFONT> plf);

/// Retrieves the value of a system size metric from theme data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemesyssize>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
int GetThemeSysSize(HTHEME? hTheme, int iSizeId) =>
    _GetThemeSysSize(hTheme ?? NULL, iSizeId);

@Native<Int32 Function(IntPtr, Int32)>(symbol: 'GetThemeSysSize')
external int _GetThemeSysSize(int hTheme, int iSizeId);

/// Retrieves a theme handle to a window that has visual styles applied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getwindowtheme>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HTHEME GetWindowTheme(HWND hwnd) => HTHEME(_GetWindowTheme(hwnd));

@Native<IntPtr Function(Pointer)>(symbol: 'GetWindowTheme')
external int _GetWindowTheme(Pointer hwnd);

/// Reports whether the current application's user interface displays using
/// visual styles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isappthemed>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsAppThemed() => _IsAppThemed() != FALSE;

@Native<Int32 Function()>(symbol: 'IsAppThemed')
external int _IsAppThemed();

/// Determines whether Desktop Window Manager (DWM) composition effects are
/// available to the theme.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-iscompositionactive>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsCompositionActive() => _IsCompositionActive() != FALSE;

@Native<Int32 Function()>(symbol: 'IsCompositionActive')
external int _IsCompositionActive();

/// Tests if a visual style for the current application is active.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isthemeactive>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsThemeActive() => _IsThemeActive() != FALSE;

@Native<Int32 Function()>(symbol: 'IsThemeActive')
external int _IsThemeActive();

/// Retrieves whether the background specified by the visual style has
/// transparent pieces or alpha-blended pieces.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isthemebackgroundpartiallytransparent>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsThemeBackgroundPartiallyTransparent(
  HTHEME hTheme,
  int iPartId,
  int iStateId,
) => _IsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId) != FALSE;

@Native<Int32 Function(IntPtr, Int32, Int32)>(
  symbol: 'IsThemeBackgroundPartiallyTransparent',
)
external int _IsThemeBackgroundPartiallyTransparent(
  int hTheme,
  int iPartId,
  int iStateId,
);

/// Reports whether a specified dialog window supports background texturing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isthemedialogtextureenabled>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsThemeDialogTextureEnabled(HWND hwnd) =>
    _IsThemeDialogTextureEnabled(hwnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsThemeDialogTextureEnabled')
external int _IsThemeDialogTextureEnabled(Pointer hwnd);

/// Retrieves whether a visual style has defined parameters for the specified
/// part and state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isthemepartdefined>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsThemePartDefined(HTHEME hTheme, int iPartId, int iStateId) =>
    _IsThemePartDefined(hTheme, iPartId, iStateId) != FALSE;

@Native<Int32 Function(IntPtr, Int32, Int32)>(symbol: 'IsThemePartDefined')
external int _IsThemePartDefined(int hTheme, int iPartId, int iStateId);

/// Opens the theme data for a window and its associated class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-openthemedata>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HTHEME OpenThemeData(HWND? hwnd, PCWSTR pszClassList) =>
    HTHEME(_OpenThemeData(hwnd ?? nullptr, pszClassList));

@Native<IntPtr Function(Pointer, Pointer<Utf16>)>(symbol: 'OpenThemeData')
external int _OpenThemeData(Pointer hwnd, Pointer<Utf16> pszClassList);

/// Opens the theme data associated with a window for specified theme classes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-openthemedataex>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HTHEME OpenThemeDataEx(
  HWND? hwnd,
  PCWSTR pszClassList,
  OPEN_THEME_DATA_FLAGS dwFlags,
) => HTHEME(_OpenThemeDataEx(hwnd ?? nullptr, pszClassList, dwFlags));

@Native<IntPtr Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'OpenThemeDataEx',
)
external int _OpenThemeDataEx(
  Pointer hwnd,
  Pointer<Utf16> pszClassList,
  int dwFlags,
);

/// A variant of OpenThemeData that opens a theme handle associated with a
/// specific DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-openthemedatafordpi>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HTHEME OpenThemeDataForDpi(HWND? hwnd, PCWSTR pszClassList, int dpi) =>
    HTHEME(_OpenThemeDataForDpi(hwnd ?? nullptr, pszClassList, dpi));

@Native<IntPtr Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'OpenThemeDataForDpi',
)
external int _OpenThemeDataForDpi(
  Pointer hwnd,
  Pointer<Utf16> pszClassList,
  int dpi,
);

/// Sets the flags that determine how visual styles are implemented in the
/// calling application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-setthemeappproperties>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void SetThemeAppProperties(SET_THEME_APP_PROPERTIES_FLAGS dwFlags) =>
    _SetThemeAppProperties(dwFlags);

@Native<Void Function(Uint32)>(symbol: 'SetThemeAppProperties')
external void _SetThemeAppProperties(int dwFlags);

/// Causes a window to use a different set of visual style information than its
/// class normally uses.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-setwindowtheme>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void SetWindowTheme(HWND hwnd, PCWSTR? pszSubAppName, PCWSTR? pszSubIdList) {
  final hr$ = HRESULT(
    _SetWindowTheme(hwnd, pszSubAppName ?? nullptr, pszSubIdList ?? nullptr),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)>(
  symbol: 'SetWindowTheme',
)
external int _SetWindowTheme(
  Pointer hwnd,
  Pointer<Utf16> pszSubAppName,
  Pointer<Utf16> pszSubIdList,
);

/// Sets attributes to control how visual styles are applied to a specified
/// window.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-setwindowthemeattribute>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
void SetWindowThemeAttribute(
  HWND hwnd,
  WINDOWTHEMEATTRIBUTETYPE eAttribute,
  Pointer pvAttribute,
  int cbAttribute,
) {
  final hr$ = HRESULT(
    _SetWindowThemeAttribute(hwnd, eAttribute, pvAttribute, cbAttribute),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Pointer, Int32, Pointer, Uint32)>(
  symbol: 'SetWindowThemeAttribute',
)
external int _SetWindowThemeAttribute(
  Pointer hwnd,
  int eAttribute,
  Pointer pvAttribute,
  int cbAttribute,
);
