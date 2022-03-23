// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'guid.dart';
import 'structs.dart';
import 'structs.g.dart';

final _uxtheme = DynamicLibrary.open('uxtheme.dll');

/// Closes the theme data handle.
///
/// ```c
/// HRESULT CloseThemeData(
///   HTHEME hTheme
/// );
/// ```
/// {@category uxtheme}
int CloseThemeData(int hTheme) => _CloseThemeData(hTheme);

final _CloseThemeData = _uxtheme.lookupFunction<Int32 Function(IntPtr hTheme),
    int Function(int hTheme)>('CloseThemeData');

/// Draws the border and fill defined by the visual style for the specified
/// control part.
///
/// ```c
/// HRESULT DrawThemeBackground(
///   HTHEME  hTheme,
///   HDC     hdc,
///   int     iPartId,
///   int     iStateId,
///   LPCRECT pRect,
///   LPCRECT pClipRect
/// );
/// ```
/// {@category uxtheme}
int DrawThemeBackground(int hTheme, int hdc, int iPartId, int iStateId,
        Pointer<RECT> pRect, Pointer<RECT> pClipRect) =>
    _DrawThemeBackground(hTheme, hdc, iPartId, iStateId, pRect, pClipRect);

final _DrawThemeBackground = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, IntPtr hdc, Int32 iPartId, Int32 iStateId,
        Pointer<RECT> pRect, Pointer<RECT> pClipRect),
    int Function(int hTheme, int hdc, int iPartId, int iStateId,
        Pointer<RECT> pRect, Pointer<RECT> pClipRect)>('DrawThemeBackground');

/// Draws an image from an image list with the icon effect defined by the
/// visual style.
///
/// ```c
/// HRESULT DrawThemeIcon(
///   HTHEME     hTheme,
///   HDC        hdc,
///   int        iPartId,
///   int        iStateId,
///   LPCRECT    pRect,
///   HIMAGELIST himl,
///   int        iImageIndex
/// );
/// ```
/// {@category uxtheme}
int DrawThemeIcon(int hTheme, int hdc, int iPartId, int iStateId,
        Pointer<RECT> pRect, int himl, int iImageIndex) =>
    _DrawThemeIcon(hTheme, hdc, iPartId, iStateId, pRect, himl, iImageIndex);

final _DrawThemeIcon = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, IntPtr hdc, Int32 iPartId, Int32 iStateId,
        Pointer<RECT> pRect, IntPtr himl, Int32 iImageIndex),
    int Function(int hTheme, int hdc, int iPartId, int iStateId,
        Pointer<RECT> pRect, int himl, int iImageIndex)>('DrawThemeIcon');

/// Enables or disables the visual style of the background of a dialog
/// window.
///
/// ```c
/// HRESULT EnableThemeDialogTexture(
///   HWND  hwnd,
///   DWORD dwFlags
/// );
/// ```
/// {@category uxtheme}
int EnableThemeDialogTexture(int hwnd, int dwFlags) =>
    _EnableThemeDialogTexture(hwnd, dwFlags);

final _EnableThemeDialogTexture = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hwnd, Uint32 dwFlags),
    int Function(int hwnd, int dwFlags)>('EnableThemeDialogTexture');

/// Retrieves the name of the current visual style, and optionally
/// retrieves the color scheme name and size name.
///
/// ```c
/// HRESULT GetCurrentThemeName(
///   LPWSTR pszThemeFileName,
///   int    cchMaxNameChars,
///   LPWSTR pszColorBuff,
///   int    cchMaxColorChars,
///   LPWSTR pszSizeBuff,
///   int    cchMaxSizeChars
/// );
/// ```
/// {@category uxtheme}
int GetCurrentThemeName(
        Pointer<Utf16> pszThemeFileName,
        int cchMaxNameChars,
        Pointer<Utf16> pszColorBuff,
        int cchMaxColorChars,
        Pointer<Utf16> pszSizeBuff,
        int cchMaxSizeChars) =>
    _GetCurrentThemeName(pszThemeFileName, cchMaxNameChars, pszColorBuff,
        cchMaxColorChars, pszSizeBuff, cchMaxSizeChars);

final _GetCurrentThemeName = _uxtheme.lookupFunction<
    Int32 Function(
        Pointer<Utf16> pszThemeFileName,
        Int32 cchMaxNameChars,
        Pointer<Utf16> pszColorBuff,
        Int32 cchMaxColorChars,
        Pointer<Utf16> pszSizeBuff,
        Int32 cchMaxSizeChars),
    int Function(
        Pointer<Utf16> pszThemeFileName,
        int cchMaxNameChars,
        Pointer<Utf16> pszColorBuff,
        int cchMaxColorChars,
        Pointer<Utf16> pszSizeBuff,
        int cchMaxSizeChars)>('GetCurrentThemeName');

/// Retrieves the value of a metric property.
///
/// ```c
/// HRESULT GetThemeMetric(
///   HTHEME hTheme,
///   HDC    hdc,
///   int    iPartId,
///   int    iStateId,
///   int    iPropId,
///   int    *piVal
/// );
/// ```
/// {@category uxtheme}
int GetThemeMetric(int hTheme, int hdc, int iPartId, int iStateId, int iPropId,
        Pointer<Int32> piVal) =>
    _GetThemeMetric(hTheme, hdc, iPartId, iStateId, iPropId, piVal);

final _GetThemeMetric = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, IntPtr hdc, Int32 iPartId, Int32 iStateId,
        Uint32 iPropId, Pointer<Int32> piVal),
    int Function(int hTheme, int hdc, int iPartId, int iStateId, int iPropId,
        Pointer<Int32> piVal)>('GetThemeMetric');

/// Retrieves the value of a RECT property.
///
/// ```c
/// HRESULT GetThemeRect(
///   HTHEME hTheme,
///   int    iPartId,
///   int    iStateId,
///   int    iPropId,
///   LPRECT pRect
/// );
/// ```
/// {@category uxtheme}
int GetThemeRect(int hTheme, int iPartId, int iStateId, int iPropId,
        Pointer<RECT> pRect) =>
    _GetThemeRect(hTheme, iPartId, iStateId, iPropId, pRect);

final _GetThemeRect = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, Int32 iPartId, Int32 iStateId, Int32 iPropId,
        Pointer<RECT> pRect),
    int Function(int hTheme, int iPartId, int iStateId, int iPropId,
        Pointer<RECT> pRect)>('GetThemeRect');

/// Retrieves the value of a system color.
///
/// ```c
/// COLORREF GetThemeSysColor(
///   HTHEME hTheme,
///   int    iColorId
/// );
/// ```
/// {@category uxtheme}
int GetThemeSysColor(int hTheme, int iColorId) =>
    _GetThemeSysColor(hTheme, iColorId);

final _GetThemeSysColor = _uxtheme.lookupFunction<
    Uint32 Function(IntPtr hTheme, Int32 iColorId),
    int Function(int hTheme, int iColorId)>('GetThemeSysColor');

/// Retrieves a system color brush.
///
/// ```c
/// HBRUSH GetThemeSysColorBrush(
///   HTHEME hTheme,
///   int    iColorId
/// );
/// ```
/// {@category uxtheme}
int GetThemeSysColorBrush(int hTheme, int iColorId) =>
    _GetThemeSysColorBrush(hTheme, iColorId);

final _GetThemeSysColorBrush = _uxtheme.lookupFunction<
    IntPtr Function(IntPtr hTheme, Uint32 iColorId),
    int Function(int hTheme, int iColorId)>('GetThemeSysColorBrush');

/// Retrieves the LOGFONT of a system font.
///
/// ```c
/// HRESULT GetThemeSysFont(
///   HTHEME   hTheme,
///   int      iFontId,
///   LOGFONTW *plf
/// );
/// ```
/// {@category uxtheme}
int GetThemeSysFont(int hTheme, int iFontId, Pointer<LOGFONT> plf) =>
    _GetThemeSysFont(hTheme, iFontId, plf);

final _GetThemeSysFont = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, Uint32 iFontId, Pointer<LOGFONT> plf),
    int Function(
        int hTheme, int iFontId, Pointer<LOGFONT> plf)>('GetThemeSysFont');

/// Retrieves the value of a system size metric from theme data.
///
/// ```c
/// int GetThemeSysSize(
///   HTHEME hTheme,
///   int    iSizeId
/// );
/// ```
/// {@category uxtheme}
int GetThemeSysSize(int hTheme, int iSizeId) =>
    _GetThemeSysSize(hTheme, iSizeId);

final _GetThemeSysSize = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, Int32 iSizeId),
    int Function(int hTheme, int iSizeId)>('GetThemeSysSize');

/// Retrieves a theme handle to a window that has visual styles applied.
///
/// ```c
/// HTHEME GetWindowTheme(
///   HWND hwnd
/// );
/// ```
/// {@category uxtheme}
int GetWindowTheme(int hwnd) => _GetWindowTheme(hwnd);

final _GetWindowTheme = _uxtheme.lookupFunction<IntPtr Function(IntPtr hwnd),
    int Function(int hwnd)>('GetWindowTheme');

/// Reports whether the current application's user interface displays using
/// visual styles.
///
/// ```c
/// BOOL IsAppThemed();
/// ```
/// {@category uxtheme}
int IsAppThemed() => _IsAppThemed();

final _IsAppThemed =
    _uxtheme.lookupFunction<Int32 Function(), int Function()>('IsAppThemed');

/// Determines whether Desktop Window Manager (DWM) composition effects are
/// available to the theme.
///
/// ```c
/// BOOL IsCompositionActive();
/// ```
/// {@category uxtheme}
int IsCompositionActive() => _IsCompositionActive();

final _IsCompositionActive = _uxtheme
    .lookupFunction<Int32 Function(), int Function()>('IsCompositionActive');

/// Tests if a visual style for the current application is active.
///
/// ```c
/// BOOL IsThemeActive();
/// ```
/// {@category uxtheme}
int IsThemeActive() => _IsThemeActive();

final _IsThemeActive =
    _uxtheme.lookupFunction<Int32 Function(), int Function()>('IsThemeActive');

/// Retrieves whether the background specified by the visual style has
/// transparent pieces or alpha-blended pieces.
///
/// ```c
/// BOOL IsThemeBackgroundPartiallyTransparent(
///   HTHEME hTheme,
///   int    iPartId,
///   int    iStateId
/// );
/// ```
/// {@category uxtheme}
int IsThemeBackgroundPartiallyTransparent(
        int hTheme, int iPartId, int iStateId) =>
    _IsThemeBackgroundPartiallyTransparent(hTheme, iPartId, iStateId);

final _IsThemeBackgroundPartiallyTransparent = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hTheme, Int32 iPartId, Int32 iStateId),
    int Function(int hTheme, int iPartId,
        int iStateId)>('IsThemeBackgroundPartiallyTransparent');

/// Reports whether a specified dialog window supports background
/// texturing.
///
/// ```c
/// BOOL IsThemeDialogTextureEnabled(
///   HWND hwnd
/// );
/// ```
/// {@category uxtheme}
int IsThemeDialogTextureEnabled(int hwnd) => _IsThemeDialogTextureEnabled(hwnd);

final _IsThemeDialogTextureEnabled = _uxtheme.lookupFunction<
    Int32 Function(IntPtr hwnd),
    int Function(int hwnd)>('IsThemeDialogTextureEnabled');

/// Opens the theme data for a window and its associated class.
///
/// ```c
/// HTHEME OpenThemeData(
///   HWND    hwnd,
///   LPCWSTR pszClassList
/// );
/// ```
/// {@category uxtheme}
int OpenThemeData(int hwnd, Pointer<Utf16> pszClassList) =>
    _OpenThemeData(hwnd, pszClassList);

final _OpenThemeData = _uxtheme.lookupFunction<
    IntPtr Function(IntPtr hwnd, Pointer<Utf16> pszClassList),
    int Function(int hwnd, Pointer<Utf16> pszClassList)>('OpenThemeData');

/// Opens the theme data associated with a window for specified theme
/// classes.
///
/// ```c
/// HTHEME OpenThemeDataEx(
///   HWND    hwnd,
///   LPCWSTR pszClassList,
///   DWORD   dwFlags
/// );
/// ```
/// {@category uxtheme}
int OpenThemeDataEx(int hwnd, Pointer<Utf16> pszClassList, int dwFlags) =>
    _OpenThemeDataEx(hwnd, pszClassList, dwFlags);

final _OpenThemeDataEx = _uxtheme.lookupFunction<
    IntPtr Function(IntPtr hwnd, Pointer<Utf16> pszClassList, Uint32 dwFlags),
    int Function(
        int hwnd, Pointer<Utf16> pszClassList, int dwFlags)>('OpenThemeDataEx');

/// A variant of OpenThemeData that opens a theme handle associated with a
/// specific DPI.
///
/// ```c
/// HTHEME OpenThemeDataForDpi(
///   HWND    hwnd,
///   LPCWSTR pszClassList,
///   UINT    dpi
/// );
/// ```
/// {@category uxtheme}
int OpenThemeDataForDpi(int hwnd, Pointer<Utf16> pszClassList, int dpi) =>
    _OpenThemeDataForDpi(hwnd, pszClassList, dpi);

final _OpenThemeDataForDpi = _uxtheme.lookupFunction<
    IntPtr Function(IntPtr hwnd, Pointer<Utf16> pszClassList, Uint32 dpi),
    int Function(
        int hwnd, Pointer<Utf16> pszClassList, int dpi)>('OpenThemeDataForDpi');

/// Causes a window to use a different set of visual style information than
/// its class normally uses.
///
/// ```c
/// HRESULT SetWindowTheme(
///   HWND    hwnd,
///   LPCWSTR pszSubAppName,
///   LPCWSTR pszSubIdList
/// );
/// ```
/// {@category uxtheme}
int SetWindowTheme(
        int hwnd, Pointer<Utf16> pszSubAppName, Pointer<Utf16> pszSubIdList) =>
    _SetWindowTheme(hwnd, pszSubAppName, pszSubIdList);

final _SetWindowTheme = _uxtheme.lookupFunction<
    Int32 Function(
        IntPtr hwnd, Pointer<Utf16> pszSubAppName, Pointer<Utf16> pszSubIdList),
    int Function(int hwnd, Pointer<Utf16> pszSubAppName,
        Pointer<Utf16> pszSubIdList)>('SetWindowTheme');

/// Sets attributes to control how visual styles are applied to a specified
/// window.
///
/// ```c
/// HRESULT SetWindowThemeAttribute(
///   [in] HWND                     hwnd,
///        WINDOWTHEMEATTRIBUTETYPE eAttribute,
///   [in] PVOID                    pvAttribute,
///   [in] DWORD                    cbAttribute
/// );
/// ```
/// {@category uxtheme}
int SetWindowThemeAttribute(
        int hwnd, int eAttribute, Pointer pvAttribute, int cbAttribute) =>
    _SetWindowThemeAttribute(hwnd, eAttribute, pvAttribute, cbAttribute);

final _SetWindowThemeAttribute = _uxtheme.lookupFunction<
    Int32 Function(
        IntPtr hwnd, Int32 eAttribute, Pointer pvAttribute, Uint32 cbAttribute),
    int Function(int hwnd, int eAttribute, Pointer pvAttribute,
        int cbAttribute)>('SetWindowThemeAttribute');
