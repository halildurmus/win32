// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _gdi32 = DynamicLibrary.open('gdi32.dll');

/// The CreateFontIndirect function creates a logical font that has the
/// specified characteristics. The font can subsequently be selected as the
/// current font for any device context.
///
/// ```c
/// HFONT CreateFontIndirectW(
///   const LOGFONTW *lplf
/// );
/// ```
/// {@category gdi32}
final CreateFontIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGFONT> lplf),
    int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');

/// The CreateSolidBrush function creates a logical brush that has the
/// specified solid color.
///
/// ```c
/// HBRUSH CreateSolidBrush(
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
final CreateSolidBrush = _gdi32.lookupFunction<IntPtr Function(Int32 color),
    int Function(int color)>('CreateSolidBrush');

/// The DeleteObject function deletes a logical pen, brush, font, bitmap,
/// region, or palette, freeing all system resources associated with the
/// object. After the object is deleted, the specified handle is no longer
/// valid.
///
/// ```c
/// BOOL DeleteObject(
///   HGDIOBJ ho
/// );
/// ```
/// {@category gdi32}
final DeleteObject =
    _gdi32.lookupFunction<Int32 Function(IntPtr ho), int Function(int ho)>(
        'DeleteObject');

/// The EnumFontFamiliesEx function enumerates all uniquely-named fonts in
/// the system that match the font characteristics specified by the LOGFONT
/// structure. EnumFontFamiliesEx enumerates fonts based on typeface name,
/// character set, or both.
///
/// ```c
/// int EnumFontFamiliesExW(
///   HDC           hdc,
///   LPLOGFONTW    lpLogfont,
///   FONTENUMPROCW lpProc,
///   LPARAM        lParam,
///   DWORD         dwFlags
/// );
/// ```
/// {@category gdi32}
final EnumFontFamiliesEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<LOGFONT> lpLogFont,
        Pointer<NativeFunction> lpProc, IntPtr lParam, Uint32 dwFlags),
    int Function(
        int hdc,
        Pointer<LOGFONT> lpLogFont,
        Pointer<NativeFunction> lpProc,
        int lParam,
        int dwFlags)>('EnumFontFamiliesExW');

/// The GetObject function retrieves information for the specified graphics
/// object.
///
/// ```c
/// int GetObject(
///   HANDLE h,
///   int    c,
///   LPVOID pv
/// );
/// ```
/// {@category gdi32}
final GetObject = _gdi32.lookupFunction<
    Int32 Function(IntPtr h, Int32 c, Pointer pv),
    int Function(int h, int c, Pointer pv)>('GetObjectW');

/// The GetStockObject function retrieves a handle to one of the stock
/// pens, brushes, fonts, or palettes.
///
/// ```c
/// HGDIOBJ GetStockObject(
///   int i
/// );
/// ```
/// {@category gdi32}
final GetStockObject =
    _gdi32.lookupFunction<IntPtr Function(Int32 i), int Function(int i)>(
        'GetStockObject');

/// The GetTextMetrics function fills the specified buffer with the metrics
/// for the currently selected font.
///
/// ```c
/// BOOL GetTextMetrics(
///   HDC          hdc,
///   LPTEXTMETRIC lptm
/// );
/// ```
/// {@category gdi32}
final GetTextMetrics = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TEXTMETRIC> lptm),
    int Function(int hdc, Pointer<TEXTMETRIC> lptm)>('GetTextMetricsW');

/// The LineTo function draws a line from the current position up to, but
/// not including, the specified point.
///
/// ```c
/// BOOL LineTo(
///   HDC hdc,
///   int x,
///   int y
/// );
/// ```
/// {@category gdi32}
final LineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('LineTo');

/// The MoveToEx function updates the current position to the specified
/// point and optionally returns the previous position.
///
/// ```c
/// BOOL MoveToEx(
///   HDC     hdc,
///   int     x,
///   int     y,
///   LPPOINT lppt
/// );
/// ```
/// {@category gdi32}
final MoveToEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');

/// ```c
/// int SaveDC(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
final SaveDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'SaveDC');

/// ```c
/// COLORREF SetBkColor(
///   HDC      hdc,
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
final SetBkColor = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 color),
    int Function(int hdc, int color)>('SetBkColor');

/// ```c
/// int SetBkMode(
///   HDC hdc,
///   int mode
/// );
/// ```
/// {@category gdi32}
final SetBkMode = _gdi32.lookupFunction<Int32 Function(IntPtr hdc, Int32 mode),
    int Function(int hdc, int mode)>('SetBkMode');

/// ```c
/// int SetMapMode(
///   HDC hdc,
///   int iMode
/// );
/// ```
/// {@category gdi32}
final SetMapMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 iMode),
    int Function(int hdc, int iMode)>('SetMapMode');

/// ```c
/// COLORREF SetTextColor(
///   HDC      hdc,
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
final SetTextColor = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 color),
    int Function(int hdc, int color)>('SetTextColor');

/// ```c
/// BOOL SetViewportExtEx(
///   HDC    hdc,
///   int    x,
///   int    y,
///   LPSIZE lpsz
/// );
/// ```
/// {@category gdi32}
final SetViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(
        int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetViewportExtEx');

/// ```c
/// BOOL SetViewportOrgEx(
///   HDC     hdc,
///   int     x,
///   int     y,
///   LPPOINT lppt
/// );
/// ```
/// {@category gdi32}
final SetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(
        int hdc, int x, int y, Pointer<POINT> lppt)>('SetViewportOrgEx');

/// ```c
/// BOOL SetWindowExtEx(
///   HDC    hdc,
///   int    x,
///   int    y,
///   LPSIZE lpsz
/// );
/// ```
/// {@category gdi32}
final SetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');

/// ```c
/// int StretchDIBits(
///   HDC              hdc,
///   int              xDest,
///   int              yDest,
///   int              DestWidth,
///   int              DestHeight,
///   int              xSrc,
///   int              ySrc,
///   int              SrcWidth,
///   int              SrcHeight,
///   const VOID       *lpBits,
///   const BITMAPINFO *lpbmi,
///   UINT             iUsage,
///   DWORD            rop
/// );
/// ```
/// {@category gdi32}
final StretchDIBits = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Int32 xDest,
        Int32 yDest,
        Int32 DestWidth,
        Int32 DestHeight,
        Int32 xSrc,
        Int32 ySrc,
        Int32 SrcWidth,
        Int32 SrcHeight,
        Pointer<Void> lpBits,
        Pointer<BITMAPINFO> lpbmi,
        Uint32 iUsage,
        Uint32 rop),
    int Function(
        int hdc,
        int xDest,
        int yDest,
        int DestWidth,
        int DestHeight,
        int xSrc,
        int ySrc,
        int SrcWidth,
        int SrcHeight,
        Pointer<Void> lpBits,
        Pointer<BITMAPINFO> lpbmi,
        int iUsage,
        int rop)>('StretchDIBits');

/// ```c
/// BOOL TextOutW(
///   HDC     hdc,
///   int     x,
///   int     y,
///   LPCWSTR lpString,
///   int     c
/// );
/// ```
/// {@category gdi32}
final TextOut = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
    int Function(
        int hdc, int x, int y, Pointer<Utf16> lpString, int c)>('TextOutW');
