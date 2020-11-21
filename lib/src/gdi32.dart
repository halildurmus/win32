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

/// The CreatePen function creates a logical pen that has the specified
/// style, width, and color. The pen can subsequently be selected into a
/// device context and used to draw lines and curves.
///
/// ```c
/// HPEN CreatePen(
///   int      iStyle,
///   int      cWidth,
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
final CreatePen = _gdi32.lookupFunction<
    IntPtr Function(Int32 iStyle, Int32 cWidth, Int32 color),
    int Function(int iStyle, int cWidth, int color)>('CreatePen');

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

/// The ExtCreatePen function creates a logical cosmetic or geometric pen
/// that has the specified style, width, and brush attributes.
///
/// ```c
/// HPEN ExtCreatePen(
///   DWORD          iPenStyle,
///   DWORD          cWidth,
///   const LOGBRUSH *plbrush,
///   DWORD          cStyle,
///   const DWORD    *pstyle
/// );
/// ```
/// {@category gdi32}
final ExtCreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iPenStyle, Uint32 cWidth, Pointer<LOGFONT> plBrush,
        Uint32 cStyle, Pointer<Uint32> pStyle),
    int Function(int iPenStyle, int cWidth, Pointer<LOGFONT> plBrush,
        int cStyle, Pointer<Uint32> pStyle)>('ExtCreatePen');

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

/// The PolyBezier function draws one or more Bézier curves.
///
/// ```c
/// BOOL PolyBezier(
///   HDC         hdc,
///   const POINT *apt,
///   DWORD       cpt
/// );
/// ```
/// {@category gdi32}
final PolyBezier = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezier');

/// The Rectangle function draws a rectangle. The rectangle is outlined by
/// using the current pen and filled by using the current brush.
///
/// ```c
/// BOOL Rectangle(
///   HDC hdc,
///   int left,
///   int top,
///   int right,
///   int bottom
/// );
/// ```
/// {@category gdi32}
final Rectangle = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(
        int hdc, int left, int top, int right, int bottom)>('Rectangle');

/// The SaveDC function saves the current state of the specified device
/// context (DC) by copying data describing selected objects and graphic
/// modes (such as the bitmap, brush, palette, font, pen, region, drawing
/// mode, and mapping mode) to a context stack.
///
/// ```c
/// int SaveDC(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
final SaveDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'SaveDC');

/// The SelectObject function selects an object into the specified device
/// context (DC). The new object replaces the previous object of the same
/// type.
///
/// ```c
/// HGDIOBJ SelectObject(
///   HDC     hdc,
///   HGDIOBJ h
/// );
/// ```
/// {@category gdi32}
final SelectObject = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, IntPtr h),
    int Function(int hdc, int h)>('SelectObject');

/// The SetBkColor function sets the current background color to the
/// specified color value, or to the nearest physical color if the device
/// cannot represent the specified color value.
///
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

/// The SetBkMode function sets the background mix mode of the specified
/// device context. The background mix mode is used with text, hatched
/// brushes, and pen styles that are not solid lines.
///
/// ```c
/// int SetBkMode(
///   HDC hdc,
///   int mode
/// );
/// ```
/// {@category gdi32}
final SetBkMode = _gdi32.lookupFunction<Int32 Function(IntPtr hdc, Int32 mode),
    int Function(int hdc, int mode)>('SetBkMode');

/// The SetMapMode function sets the mapping mode of the specified device
/// context. The mapping mode defines the unit of measure used to transform
/// page-space units into device-space units, and also defines the
/// orientation of the device's x and y axes.
///
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

/// The SetPixel function sets the pixel at the specified coordinates to
/// the specified color.
///
/// ```c
/// COLORREF SetPixel(
///   HDC      hdc,
///   int      x,
///   int      y,
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
final SetPixel = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 color),
    int Function(int hdc, int x, int y, int color)>('SetPixel');

/// The SetTextColor function sets the text color for the specified device
/// context to the specified color.
///
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

/// The SetViewportExtEx function sets the horizontal and vertical extents
/// of the viewport for a device context by using the specified values.
///
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

/// The SetViewportOrgEx function specifies which device point maps to the
/// window origin (0,0).
///
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

/// The SetWindowExtEx function sets the horizontal and vertical extents of
/// the window for a device context by using the specified values.
///
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

/// The StretchDIBits function copies the color data for a rectangle of
/// pixels in a DIB, JPEG, or PNG image to the specified destination
/// rectangle. If the destination rectangle is larger than the source
/// rectangle, this function stretches the rows and columns of color data
/// to fit the destination rectangle. If the destination rectangle is
/// smaller than the source rectangle, this function compresses the rows
/// and columns by using the specified raster operation.
///
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

/// The TextOut function writes a character string at the specified
/// location, using the currently selected font, background color, and text
/// color.
///
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
