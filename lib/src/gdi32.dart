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

// HFONT CreateFontIndirectW(
//   const LOGFONTW *lplf
// );

/// {@category gdi32}
final CreateFontIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGFONT> lplf),
    int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');

// HBRUSH CreateSolidBrush(
//   COLORREF color
// );

/// {@category gdi32}
final CreateSolidBrush = _gdi32.lookupFunction<IntPtr Function(Int32 color),
    int Function(int color)>('CreateSolidBrush');

// BOOL DeleteObject(
//   HGDIOBJ ho
// );

/// {@category gdi32}
final DeleteObject =
    _gdi32.lookupFunction<Int32 Function(IntPtr ho), int Function(int ho)>(
        'DeleteObject');

// int EnumFontFamiliesExW(
//   HDC           hdc,
//   LPLOGFONTW    lpLogfont,
//   FONTENUMPROCW lpProc,
//   LPARAM        lParam,
//   DWORD         dwFlags
// );

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

// int GetObject(
//   HANDLE h,
//   int    c,
//   LPVOID pv
// );

/// {@category gdi32}
final GetObject = _gdi32.lookupFunction<
    Int32 Function(IntPtr h, Int32 c, Pointer pv),
    int Function(int h, int c, Pointer pv)>('GetObject');

// HGDIOBJ GetStockObject(
//   int i
// );

/// {@category gdi32}
final GetStockObject =
    _gdi32.lookupFunction<IntPtr Function(Int32 i), int Function(int i)>(
        'GetStockObject');

// BOOL GetTextMetrics(
//   HDC          hdc,
//   LPTEXTMETRIC lptm
// );

/// {@category gdi32}
final GetTextMetrics = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TEXTMETRIC> lptm),
    int Function(int hdc, Pointer<TEXTMETRIC> lptm)>('GetTextMetrics');

// BOOL LineTo(
//   HDC hdc,
//   int x,
//   int y
// );

/// {@category gdi32}
final LineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('LineTo');

// BOOL MoveToEx(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPPOINT lppt
// );

/// {@category gdi32}
final MoveToEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');

// int SaveDC(
//   HDC hdc
// );

/// {@category gdi32}
final SaveDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'SaveDC');

// COLORREF SetBkColor(
//   HDC      hdc,
//   COLORREF color
// );

/// {@category gdi32}
final SetBkColor = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 color),
    int Function(int hdc, int color)>('SetBkColor');

// int SetBkMode(
//   HDC hdc,
//   int mode
// );

/// {@category gdi32}
final SetBkMode = _gdi32.lookupFunction<Int32 Function(IntPtr hdc, Int32 mode),
    int Function(int hdc, int mode)>('SetBkMode');

// int SetMapMode(
//   HDC hdc,
//   int iMode
// );

/// {@category gdi32}
final SetMapMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 iMode),
    int Function(int hdc, int iMode)>('SetMapMode');

// COLORREF SetTextColor(
//   HDC      hdc,
//   COLORREF color
// );

/// {@category gdi32}
final SetTextColor = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 color),
    int Function(int hdc, int color)>('SetTextColor');

// BOOL SetViewportExtEx(
//   HDC    hdc,
//   int    x,
//   int    y,
//   LPSIZE lpsz
// );

/// {@category gdi32}
final SetViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(
        int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetViewportExtEx');

// BOOL SetViewportOrgEx(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPPOINT lppt
// );

/// {@category gdi32}
final SetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(
        int hdc, int x, int y, Pointer<POINT> lppt)>('SetViewportOrgEx');

// BOOL SetWindowExtEx(
//   HDC    hdc,
//   int    x,
//   int    y,
//   LPSIZE lpsz
// );

/// {@category gdi32}
final SetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');

// int StretchDIBits(
//   HDC              hdc,
//   int              xDest,
//   int              yDest,
//   int              DestWidth,
//   int              DestHeight,
//   int              xSrc,
//   int              ySrc,
//   int              SrcWidth,
//   int              SrcHeight,
//   const VOID       *lpBits,
//   const BITMAPINFO *lpbmi,
//   UINT             iUsage,
//   DWORD            rop
// );

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

// BOOL TextOutW(
//   HDC     hdc,
//   int     x,
//   int     y,
//   LPCWSTR lpString,
//   int     c
// );

/// {@category gdi32}
final TextOut = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
    int Function(
        int hdc, int x, int y, Pointer<Utf16> lpString, int c)>('TextOutW');
