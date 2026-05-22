// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

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
import '../functions.dart';
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

final _uxtheme = DynamicLibrary.open('uxtheme.dll');

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

final _CloseThemeData = _uxtheme
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'CloseThemeData',
    );

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

final _DrawThemeParentBackground = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer, Pointer<RECT>)
    >('DrawThemeParentBackground');

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

final _DrawThemeParentBackgroundEx = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<RECT>),
      int Function(Pointer, Pointer, int, Pointer<RECT>)
    >('DrawThemeParentBackgroundEx');

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

final _EnableThemeDialogTexture = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('EnableThemeDialogTexture');

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

final _GetThemeMetric = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Pointer, Int32, Int32, Int32, Pointer<Int32>),
      int Function(int, Pointer, int, int, int, Pointer<Int32>)
    >('GetThemeMetric');

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

final _GetThemeRect = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32, Int32, Pointer<RECT>),
      int Function(int, int, int, int, Pointer<RECT>)
    >('GetThemeRect');

/// Retrieves the value of a system color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemesyscolor>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
COLORREF GetThemeSysColor(HTHEME? hTheme, int iColorId) =>
    COLORREF(_GetThemeSysColor(hTheme ?? NULL, iColorId));

final _GetThemeSysColor = _uxtheme
    .lookupFunction<Uint32 Function(IntPtr, Int32), int Function(int, int)>(
      'GetThemeSysColor',
    );

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

final _GetThemeSysColorBrush = _uxtheme
    .lookupFunction<
      Pointer Function(IntPtr, Int32),
      Pointer Function(int, int)
    >('GetThemeSysColorBrush');

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

final _GetThemeSysFont = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Pointer<LOGFONT>),
      int Function(int, int, Pointer<LOGFONT>)
    >('GetThemeSysFont');

/// Retrieves the value of a system size metric from theme data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getthemesyssize>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
int GetThemeSysSize(HTHEME? hTheme, int iSizeId) =>
    _GetThemeSysSize(hTheme ?? NULL, iSizeId);

final _GetThemeSysSize = _uxtheme
    .lookupFunction<Int32 Function(IntPtr, Int32), int Function(int, int)>(
      'GetThemeSysSize',
    );

/// Retrieves a theme handle to a window that has visual styles applied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-getwindowtheme>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HTHEME GetWindowTheme(HWND hwnd) => HTHEME(_GetWindowTheme(hwnd));

final _GetWindowTheme = _uxtheme
    .lookupFunction<IntPtr Function(Pointer), int Function(Pointer)>(
      'GetWindowTheme',
    );

/// Reports whether the current application's user interface displays using
/// visual styles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isappthemed>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsAppThemed() => _IsAppThemed() != FALSE;

final _IsAppThemed = _uxtheme.lookupFunction<Int32 Function(), int Function()>(
  'IsAppThemed',
);

/// Determines whether Desktop Window Manager (DWM) composition effects are
/// available to the theme.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-iscompositionactive>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsCompositionActive() => _IsCompositionActive() != FALSE;

final _IsCompositionActive = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('IsCompositionActive');

/// Tests if a visual style for the current application is active.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isthemeactive>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsThemeActive() => _IsThemeActive() != FALSE;

final _IsThemeActive = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('IsThemeActive');

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

final _IsThemeBackgroundPartiallyTransparent = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32),
      int Function(int, int, int)
    >('IsThemeBackgroundPartiallyTransparent');

/// Reports whether a specified dialog window supports background texturing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-isthemedialogtextureenabled>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
bool IsThemeDialogTextureEnabled(HWND hwnd) =>
    _IsThemeDialogTextureEnabled(hwnd) != FALSE;

final _IsThemeDialogTextureEnabled = _uxtheme
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsThemeDialogTextureEnabled',
    );

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

final _IsThemePartDefined = _uxtheme
    .lookupFunction<
      Int32 Function(IntPtr, Int32, Int32),
      int Function(int, int, int)
    >('IsThemePartDefined');

/// Opens the theme data for a window and its associated class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-openthemedata>.
///
/// {@category uxtheme}
@pragma('vm:prefer-inline')
HTHEME OpenThemeData(HWND? hwnd, PCWSTR pszClassList) =>
    HTHEME(_OpenThemeData(hwnd ?? nullptr, pszClassList));

final _OpenThemeData = _uxtheme
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('OpenThemeData');

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

final _OpenThemeDataEx = _uxtheme
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('OpenThemeDataEx');

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

final _OpenThemeDataForDpi = _uxtheme
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('OpenThemeDataForDpi');

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

final _SetThemeAppProperties = _uxtheme
    .lookupFunction<Void Function(Uint32), void Function(int)>(
      'SetThemeAppProperties',
    );

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

final _SetWindowTheme = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('SetWindowTheme');

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

final _SetWindowThemeAttribute = _uxtheme
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetWindowThemeAttribute');
