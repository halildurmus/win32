// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _gdi32 = DynamicLibrary.open('gdi32.dll');

/// The AddFontResource function adds the font resource from the specified
/// file to the system font table. The font can subsequently be used for
/// text output by any application.
///
/// ```c
/// int AddFontResourceW(
///   LPCWSTR Arg1
/// );
/// ```
/// {@category gdi32}
int AddFontResource(Pointer<Utf16> param0) => _AddFontResource(param0);

late final _AddFontResource = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> param0),
    int Function(Pointer<Utf16> param0)>('AddFontResourceW');

/// The AddFontResourceEx function adds the font resource from the
/// specified file to the system. Fonts added with the AddFontResourceEx
/// function can be marked as private and not enumerable.
///
/// ```c
/// int AddFontResourceExW(
///   LPCWSTR name,
///   DWORD   fl,
///   PVOID   res
/// );
/// ```
/// {@category gdi32}
int AddFontResourceEx(Pointer<Utf16> name, int fl, Pointer res) =>
    _AddFontResourceEx(name, fl, res);

late final _AddFontResourceEx = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer res),
    int Function(
        Pointer<Utf16> name, int fl, Pointer res)>('AddFontResourceExW');

/// The AngleArc function draws a line segment and an arc. The line segment
/// is drawn from the current position to the beginning of the arc. The arc
/// is drawn along the perimeter of a circle with the given radius and
/// center. The length of the arc is defined by the given start and sweep
/// angles.
///
/// ```c
/// BOOL AngleArc(
///   HDC   hdc,
///   int   x,
///   int   y,
///   DWORD r,
///   FLOAT StartAngle,
///   FLOAT SweepAngle
/// );
/// ```
/// {@category gdi32}
int AngleArc(
        int hdc, int x, int y, int r, double StartAngle, double SweepAngle) =>
    _AngleArc(hdc, x, y, r, StartAngle, SweepAngle);

late final _AngleArc = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 r, Float StartAngle,
        Float SweepAngle),
    int Function(int hdc, int x, int y, int r, double StartAngle,
        double SweepAngle)>('AngleArc');

/// The AnimatePalette function replaces entries in the specified logical
/// palette.
///
/// ```c
/// BOOL AnimatePalette(
///   HPALETTE           hPal,
///   UINT               iStartIndex,
///   UINT               cEntries,
///   const PALETTEENTRY *ppe
/// );
/// ```
/// {@category gdi32}
int AnimatePalette(
        int hPal, int iStartIndex, int cEntries, Pointer<PALETTEENTRY> ppe) =>
    _AnimatePalette(hPal, iStartIndex, cEntries, ppe);

late final _AnimatePalette = _gdi32.lookupFunction<
    Int32 Function(IntPtr hPal, Uint32 iStartIndex, Uint32 cEntries,
        Pointer<PALETTEENTRY> ppe),
    int Function(int hPal, int iStartIndex, int cEntries,
        Pointer<PALETTEENTRY> ppe)>('AnimatePalette');

/// The Arc function draws an elliptical arc.
///
/// ```c
/// BOOL Arc(
///   HDC hdc,
///   int x1,
///   int y1,
///   int x2,
///   int y2,
///   int x3,
///   int y3,
///   int x4,
///   int y4
/// );
/// ```
/// {@category gdi32}
int Arc(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4,
        int y4) =>
    _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4);

late final _Arc = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3,
        Int32 y3, Int32 x4, Int32 y4),
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
        int x4, int y4)>('Arc');

/// The ArcTo function draws an elliptical arc.
///
/// ```c
/// BOOL ArcTo(
///   HDC hdc,
///   int left,
///   int top,
///   int right,
///   int bottom,
///   int xr1,
///   int yr1,
///   int xr2,
///   int yr2
/// );
/// ```
/// {@category gdi32}
int ArcTo(int hdc, int left, int top, int right, int bottom, int xr1, int yr1,
        int xr2, int yr2) =>
    _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);

late final _ArcTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
    int Function(int hdc, int left, int top, int right, int bottom, int xr1,
        int yr1, int xr2, int yr2)>('ArcTo');

/// The BeginPath function opens a path bracket in the specified device
/// context.
///
/// ```c
/// BOOL BeginPath(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int BeginPath(int hdc) => _BeginPath(hdc);

late final _BeginPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'BeginPath');

/// The BitBlt function performs a bit-block transfer of the color data
/// corresponding to a rectangle of pixels from the specified source device
/// context into a destination device context.
///
/// ```c
/// BOOL BitBlt(
///   HDC   hdc,
///   int   x,
///   int   y,
///   int   cx,
///   int   cy,
///   HDC   hdcSrc,
///   int   x1,
///   int   y1,
///   DWORD rop
/// );
/// ```
/// {@category gdi32}
int BitBlt(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1, int y1,
        int rop) =>
    _BitBlt(hdc, x, y, cx, cy, hdcSrc, x1, y1, rop);

late final _BitBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 cx, Int32 cy,
        IntPtr hdcSrc, Int32 x1, Int32 y1, Uint32 rop),
    int Function(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1,
        int y1, int rop)>('BitBlt');

/// The CancelDC function cancels any pending operation on the specified
/// device context (DC).
///
/// ```c
/// BOOL CancelDC(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int CancelDC(int hdc) => _CancelDC(hdc);

late final _CancelDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'CancelDC');

/// The Chord function draws a chord (a region bounded by the intersection
/// of an ellipse and a line segment, called a secant). The chord is
/// outlined by using the current pen and filled by using the current
/// brush.
///
/// ```c
/// BOOL Chord(
///   HDC hdc,
///   int x1,
///   int y1,
///   int x2,
///   int y2,
///   int x3,
///   int y3,
///   int x4,
///   int y4
/// );
/// ```
/// {@category gdi32}
int Chord(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4,
        int y4) =>
    _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4);

late final _Chord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3,
        Int32 y3, Int32 x4, Int32 y4),
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
        int x4, int y4)>('Chord');

/// The CloseFigure function closes an open figure in a path.
///
/// ```c
/// BOOL CloseFigure(
///   HDC hdc);
/// ```
/// {@category gdi32}
int CloseFigure(int hdc) => _CloseFigure(hdc);

late final _CloseFigure =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'CloseFigure');

/// The CreateCompatibleBitmap function creates a bitmap compatible with
/// the device that is associated with the specified device context.
///
/// ```c
/// HBITMAP CreateCompatibleBitmap(
///   HDC hdc,
///   int cx,
///   int cy
/// );
/// ```
/// {@category gdi32}
int CreateCompatibleBitmap(int hdc, int cx, int cy) =>
    _CreateCompatibleBitmap(hdc, cx, cy);

late final _CreateCompatibleBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Int32 cx, Int32 cy),
    int Function(int hdc, int cx, int cy)>('CreateCompatibleBitmap');

/// The CreateCompatibleDC function creates a memory device context (DC)
/// compatible with the specified device.
///
/// ```c
/// HDC CreateCompatibleDC(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int CreateCompatibleDC(int hdc) => _CreateCompatibleDC(hdc);

late final _CreateCompatibleDC =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'CreateCompatibleDC');

/// The CreateDC function creates a device context (DC) for a device using
/// the specified name.
///
/// ```c
/// HDC CreateDCW(
///   LPCWSTR        pwszDriver,
///   LPCWSTR        pwszDevice,
///   LPCWSTR        pszPort,
///   const DEVMODEW *pdm
/// );
/// ```
/// {@category gdi32}
int CreateDC(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice,
        Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm) =>
    _CreateDC(pwszDriver, pwszDevice, pszPort, pdm);

late final _CreateDC = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice,
        Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm),
    int Function(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice,
        Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm)>('CreateDCW');

/// The CreateDIBitmap function creates a compatible bitmap (DDB) from a
/// DIB and, optionally, sets the bitmap bits.
///
/// ```c
/// HBITMAP CreateDIBitmap(
///   HDC                    hdc,
///   const BITMAPINFOHEADER *pbmih,
///   DWORD                  flInit,
///   const VOID             *pjBits,
///   const BITMAPINFO       *pbmi,
///   UINT                   iUsage
/// );
/// ```
/// {@category gdi32}
int CreateDIBitmap(int hdc, Pointer<BITMAPINFOHEADER> pbmih, int flInit,
        Pointer pjBits, Pointer<BITMAPINFO> pbmi, int iUsage) =>
    _CreateDIBitmap(hdc, pbmih, flInit, pjBits, pbmi, iUsage);

late final _CreateDIBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Pointer<BITMAPINFOHEADER> pbmih, Uint32 flInit,
        Pointer pjBits, Pointer<BITMAPINFO> pbmi, Uint32 iUsage),
    int Function(
        int hdc,
        Pointer<BITMAPINFOHEADER> pbmih,
        int flInit,
        Pointer pjBits,
        Pointer<BITMAPINFO> pbmi,
        int iUsage)>('CreateDIBitmap');

/// The CreateDIBPatternBrushPt function creates a logical brush that has
/// the pattern specified by the device-independent bitmap (DIB).
///
/// ```c
/// HBRUSH CreateDIBPatternBrushPt(
///   const VOID *lpPackedDIB,
///   UINT       iUsage
/// );
/// ```
/// {@category gdi32}
int CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage) =>
    _CreateDIBPatternBrushPt(lpPackedDIB, iUsage);

late final _CreateDIBPatternBrushPt = _gdi32.lookupFunction<
    IntPtr Function(Pointer lpPackedDIB, Uint32 iUsage),
    int Function(Pointer lpPackedDIB, int iUsage)>('CreateDIBPatternBrushPt');

/// The CreateEllipticRgn function creates an elliptical region.
///
/// ```c
/// HRGN CreateEllipticRgn(
///   int x1,
///   int y1,
///   int x2,
///   int y2
/// );
/// ```
/// {@category gdi32}
int CreateEllipticRgn(int x1, int y1, int x2, int y2) =>
    _CreateEllipticRgn(x1, y1, x2, y2);

late final _CreateEllipticRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2),
    int Function(int x1, int y1, int x2, int y2)>('CreateEllipticRgn');

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
int CreateFontIndirect(Pointer<LOGFONT> lplf) => _CreateFontIndirect(lplf);

late final _CreateFontIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGFONT> lplf),
    int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');

/// The CreateHalftonePalette function creates a halftone palette for the
/// specified device context (DC).
///
/// ```c
/// HPALETTE CreateHalftonePalette(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int CreateHalftonePalette(int hdc) => _CreateHalftonePalette(hdc);

late final _CreateHalftonePalette =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'CreateHalftonePalette');

/// The CreateHatchBrush function creates a logical brush that has the
/// specified hatch pattern and color.
///
/// ```c
/// HBRUSH CreateHatchBrush(
///   int      iHatch,
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
int CreateHatchBrush(int iHatch, int color) => _CreateHatchBrush(iHatch, color);

late final _CreateHatchBrush = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iHatch, Uint32 color),
    int Function(int iHatch, int color)>('CreateHatchBrush');

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
int CreatePen(int iStyle, int cWidth, int color) =>
    _CreatePen(iStyle, cWidth, color);

late final _CreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iStyle, Int32 cWidth, Uint32 color),
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
int CreateSolidBrush(int color) => _CreateSolidBrush(color);

late final _CreateSolidBrush = _gdi32.lookupFunction<
    IntPtr Function(Uint32 color), int Function(int color)>('CreateSolidBrush');

/// The DeleteDC function deletes the specified device context (DC).
///
/// ```c
/// BOOL DeleteDC(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int DeleteDC(int hdc) => _DeleteDC(hdc);

late final _DeleteDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'DeleteDC');

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
int DeleteObject(int ho) => _DeleteObject(ho);

late final _DeleteObject =
    _gdi32.lookupFunction<Int32 Function(IntPtr ho), int Function(int ho)>(
        'DeleteObject');

/// The DrawEscape function provides drawing capabilities of the specified
/// video display that are not directly available through the graphics
/// device interface (GDI).
///
/// ```c
/// int DrawEscape(
///   HDC    hdc,
///   int    iEscape,
///   int    cjIn,
///   LPCSTR lpIn
/// );
/// ```
/// {@category gdi32}
int DrawEscape(int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn) =>
    _DrawEscape(hdc, iEscape, cjIn, lpIn);

late final _DrawEscape = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 iEscape, Int32 cjIn, Pointer<Utf8> lpIn),
    int Function(
        int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn)>('DrawEscape');

/// The Ellipse function draws an ellipse. The center of the ellipse is the
/// center of the specified bounding rectangle. The ellipse is outlined by
/// using the current pen and is filled by using the current brush.
///
/// ```c
/// BOOL Ellipse(
///   HDC hdc,
///   int left,
///   int top,
///   int right,
///   int bottom
/// );
/// ```
/// {@category gdi32}
int Ellipse(int hdc, int left, int top, int right, int bottom) =>
    _Ellipse(hdc, left, top, right, bottom);

late final _Ellipse = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(int hdc, int left, int top, int right, int bottom)>('Ellipse');

/// The EndPath function closes a path bracket and selects the path defined
/// by the bracket into the specified device context.
///
/// ```c
/// BOOL EndPath(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int EndPath(int hdc) => _EndPath(hdc);

late final _EndPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'EndPath');

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
int EnumFontFamiliesEx(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<EnumFontFamExProc>> lpProc,
        int lParam,
        int dwFlags) =>
    _EnumFontFamiliesEx(hdc, lpLogfont, lpProc, lParam, dwFlags);

late final _EnumFontFamiliesEx = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<EnumFontFamExProc>> lpProc,
        IntPtr lParam,
        Uint32 dwFlags),
    int Function(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<EnumFontFamExProc>> lpProc,
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
int ExtCreatePen(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
        int cStyle, Pointer<Uint32> pstyle) =>
    _ExtCreatePen(iPenStyle, cWidth, plbrush, cStyle, pstyle);

late final _ExtCreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iPenStyle, Uint32 cWidth, Pointer<LOGBRUSH> plbrush,
        Uint32 cStyle, Pointer<Uint32> pstyle),
    int Function(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
        int cStyle, Pointer<Uint32> pstyle)>('ExtCreatePen');

/// The ExtTextOut function draws text using the currently selected font,
/// background color, and text color. You can optionally provide dimensions
/// to be used for clipping, opaquing, or both.
///
/// ```c
/// BOOL ExtTextOutW(
///   HDC        hdc,
///   int        x,
///   int        y,
///   UINT       options,
///   const RECT *lprect,
///   LPCWSTR    lpString,
///   UINT       c,
///   const INT  *lpDx
/// );
/// ```
/// {@category gdi32}
int ExtTextOut(int hdc, int x, int y, int options, Pointer<RECT> lprect,
        Pointer<Utf16> lpString, int c, Pointer<Int32> lpDx) =>
    _ExtTextOut(hdc, x, y, options, lprect, lpString, c, lpDx);

late final _ExtTextOut = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Int32 x,
        Int32 y,
        Uint32 options,
        Pointer<RECT> lprect,
        Pointer<Utf16> lpString,
        Uint32 c,
        Pointer<Int32> lpDx),
    int Function(int hdc, int x, int y, int options, Pointer<RECT> lprect,
        Pointer<Utf16> lpString, int c, Pointer<Int32> lpDx)>('ExtTextOutW');

/// The FillPath function closes any open figures in the current path and
/// fills the path's interior by using the current brush and
/// polygon-filling mode.
///
/// ```c
/// BOOL FillPath(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int FillPath(int hdc) => _FillPath(hdc);

late final _FillPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'FillPath');

/// The GetDIBits function retrieves the bits of the specified compatible
/// bitmap and copies them into a buffer as a DIB using the specified
/// format.
///
/// ```c
/// int GetDIBits(
///   HDC          hdc,
///   HBITMAP      hbm,
///   UINT         start,
///   UINT         cLines,
///   LPVOID       lpvBits,
///   LPBITMAPINFO lpbmi,
///   UINT         usage
/// );
/// ```
/// {@category gdi32}
int GetDIBits(int hdc, int hbm, int start, int cLines, Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi, int usage) =>
    _GetDIBits(hdc, hbm, start, cLines, lpvBits, lpbmi, usage);

late final _GetDIBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hbm, Uint32 start, Uint32 cLines,
        Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, Uint32 usage),
    int Function(int hdc, int hbm, int start, int cLines, Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi, int usage)>('GetDIBits');

/// The GetNearestColor function retrieves a color value identifying a
/// color from the system palette that will be displayed when the specified
/// color value is used.
///
/// ```c
/// COLORREF GetNearestColor(
///   HDC      hdc,
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
int GetNearestColor(int hdc, int color) => _GetNearestColor(hdc, color);

late final _GetNearestColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
    int Function(int hdc, int color)>('GetNearestColor');

/// The GetObject function retrieves information for the specified graphics
/// object.
///
/// ```c
/// int GetObjectW(
///   HANDLE h,
///   int    c,
///   LPVOID pv
/// );
/// ```
/// {@category gdi32}
int GetObject(int h, int c, Pointer pv) => _GetObject(h, c, pv);

late final _GetObject = _gdi32.lookupFunction<
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
int GetStockObject(int i) => _GetStockObject(i);

late final _GetStockObject =
    _gdi32.lookupFunction<IntPtr Function(Uint32 i), int Function(int i)>(
        'GetStockObject');

/// The GetTextMetrics function fills the specified buffer with the metrics
/// for the currently selected font.
///
/// ```c
/// BOOL GetTextMetricsW(
///   HDC          hdc,
///   LPTEXTMETRICW lptm
/// );
/// ```
/// {@category gdi32}
int GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm) =>
    _GetTextMetrics(hdc, lptm);

late final _GetTextMetrics = _gdi32.lookupFunction<
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
int LineTo(int hdc, int x, int y) => _LineTo(hdc, x, y);

late final _LineTo = _gdi32.lookupFunction<
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
int MoveToEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _MoveToEx(hdc, x, y, lppt);

late final _MoveToEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');

/// The Pie function draws a pie-shaped wedge bounded by the intersection
/// of an ellipse and two radials. The pie is outlined by using the current
/// pen and filled by using the current brush.
///
/// ```c
/// BOOL Pie(
///   HDC hdc,
///   int left,
///   int top,
///   int right,
///   int bottom,
///   int xr1,
///   int yr1,
///   int xr2,
///   int yr2
/// );
/// ```
/// {@category gdi32}
int Pie(int hdc, int left, int top, int right, int bottom, int xr1, int yr1,
        int xr2, int yr2) =>
    _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);

late final _Pie = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
    int Function(int hdc, int left, int top, int right, int bottom, int xr1,
        int yr1, int xr2, int yr2)>('Pie');

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
int PolyBezier(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezier(hdc, apt, cpt);

late final _PolyBezier = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezier');

/// The PolyBezierTo function draws one or more Bézier curves.
///
/// ```c
/// BOOL PolyBezierTo(
///   HDC         hdc,
///   const POINT *apt,
///   DWORD       cpt
/// );
/// ```
/// {@category gdi32}
int PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezierTo(hdc, apt, cpt);

late final _PolyBezierTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezierTo');

/// The PolyDraw function draws a set of line segments and Bézier curves.
///
/// ```c
/// BOOL PolyDraw(
///   HDC         hdc,
///   const POINT *apt,
///   const BYTE  *aj,
///   int         cpt
/// );
/// ```
/// {@category gdi32}
int PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) =>
    _PolyDraw(hdc, apt, aj, cpt);

late final _PolyDraw = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
    int Function(
        int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt)>('PolyDraw');

/// The Polygon function draws a polygon consisting of two or more vertices
/// connected by straight lines. The polygon is outlined by using the
/// current pen and filled by using the current brush and polygon fill
/// mode.
///
/// ```c
/// BOOL Polygon(
///   HDC         hdc,
///   const POINT *apt,
///   int         cpt
/// );
/// ```
/// {@category gdi32}
int Polygon(int hdc, Pointer<POINT> apt, int cpt) => _Polygon(hdc, apt, cpt);

late final _Polygon = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polygon');

/// The Polyline function draws a series of line segments by connecting the
/// points in the specified array.
///
/// ```c
/// BOOL Polyline(
///   HDC         hdc,
///   const POINT *apt,
///   int         cpt
/// );
/// ```
/// {@category gdi32}
int Polyline(int hdc, Pointer<POINT> apt, int cpt) => _Polyline(hdc, apt, cpt);

late final _Polyline = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polyline');

/// The PolylineTo function draws one or more straight lines.
///
/// ```c
/// BOOL PolylineTo(
///   HDC         hdc,
///   const POINT *apt,
///   DWORD         cpt
/// );
/// ```
/// {@category gdi32}
int PolylineTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolylineTo(hdc, apt, cpt);

late final _PolylineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolylineTo');

/// The PolyPolygon function draws a series of closed polygons. Each
/// polygon is outlined by using the current pen and filled by using the
/// current brush and polygon fill mode. The polygons drawn by this
/// function can overlap.
///
/// ```c
/// BOOL PolyPolygon(
///   HDC         hdc,
///   const POINT *apt,
///   const INT   *asz,
///   int         csz
/// );
/// ```
/// {@category gdi32}
int PolyPolygon(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) =>
    _PolyPolygon(hdc, apt, asz, csz);

late final _PolyPolygon = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Int32> asz, Int32 csz),
    int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz,
        int csz)>('PolyPolygon');

/// The PolyPolyline function draws multiple series of connected line
/// segments.
///
/// ```c
/// BOOL PolyPolyline(
///   HDC         hdc,
///   const POINT *apt,
///   const DWORD *asz,
///   DWORD       csz
/// );
/// ```
/// {@category gdi32}
int PolyPolyline(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz) =>
    _PolyPolyline(hdc, apt, asz, csz);

late final _PolyPolyline = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Uint32> asz, Uint32 csz),
    int Function(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz,
        int csz)>('PolyPolyline');

/// The PtInRegion function determines whether the specified point is
/// inside the specified region.
///
/// ```c
/// BOOL PtInRegion(
///   HRGN hrgn,
///   int  x,
///   int  y
/// );
/// ```
/// {@category gdi32}
int PtInRegion(int hrgn, int x, int y) => _PtInRegion(hrgn, x, y);

late final _PtInRegion = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Int32 x, Int32 y),
    int Function(int hrgn, int x, int y)>('PtInRegion');

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
int Rectangle(int hdc, int left, int top, int right, int bottom) =>
    _Rectangle(hdc, left, top, right, bottom);

late final _Rectangle = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(
        int hdc, int left, int top, int right, int bottom)>('Rectangle');

/// The RectInRegion function determines whether any part of the specified
/// rectangle is within the boundaries of a region.
///
/// ```c
/// BOOL RectInRegion(
///   HRGN       hrgn,
///   const RECT *lprect
/// );
/// ```
/// {@category gdi32}
int RectInRegion(int hrgn, Pointer<RECT> lprect) => _RectInRegion(hrgn, lprect);

late final _RectInRegion = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Pointer<RECT> lprect),
    int Function(int hrgn, Pointer<RECT> lprect)>('RectInRegion');

/// The RoundRect function draws a rectangle with rounded corners. The
/// rectangle is outlined by using the current pen and filled by using the
/// current brush.
///
/// ```c
/// BOOL RoundRect(
///   HDC hdc,
///   int left,
///   int top,
///   int right,
///   int bottom,
///   int width,
///   int height
/// );
/// ```
/// {@category gdi32}
int RoundRect(int hdc, int left, int top, int right, int bottom, int width,
        int height) =>
    _RoundRect(hdc, left, top, right, bottom, width, height);

late final _RoundRect = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 width, Int32 height),
    int Function(int hdc, int left, int top, int right, int bottom, int width,
        int height)>('RoundRect');

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
int SaveDC(int hdc) => _SaveDC(hdc);

late final _SaveDC =
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
int SelectObject(int hdc, int h) => _SelectObject(hdc, h);

late final _SelectObject = _gdi32.lookupFunction<
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
int SetBkColor(int hdc, int color) => _SetBkColor(hdc, color);

late final _SetBkColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
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
int SetBkMode(int hdc, int mode) => _SetBkMode(hdc, mode);

late final _SetBkMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode),
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
int SetMapMode(int hdc, int iMode) => _SetMapMode(hdc, iMode);

late final _SetMapMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iMode),
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
int SetPixel(int hdc, int x, int y, int color) => _SetPixel(hdc, x, y, color);

late final _SetPixel = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color),
    int Function(int hdc, int x, int y, int color)>('SetPixel');

/// The SetStretchBltMode function sets the bitmap stretching mode in the
/// specified device context.
///
/// ```c
/// int SetStretchBltMode(
///   HDC hdc,
///   int mode
/// );
/// ```
/// {@category gdi32}
int SetStretchBltMode(int hdc, int mode) => _SetStretchBltMode(hdc, mode);

late final _SetStretchBltMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode),
    int Function(int hdc, int mode)>('SetStretchBltMode');

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
int SetTextColor(int hdc, int color) => _SetTextColor(hdc, color);

late final _SetTextColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
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
int SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) =>
    _SetViewportExtEx(hdc, x, y, lpsz);

late final _SetViewportExtEx = _gdi32.lookupFunction<
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
int SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _SetViewportOrgEx(hdc, x, y, lppt);

late final _SetViewportOrgEx = _gdi32.lookupFunction<
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
int SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) =>
    _SetWindowExtEx(hdc, x, y, lpsz);

late final _SetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');

/// The StretchBlt function copies a bitmap from a source rectangle into a
/// destination rectangle, stretching or compressing the bitmap to fit the
/// dimensions of the destination rectangle, if necessary. The system
/// stretches or compresses the bitmap according to the stretching mode
/// currently set in the destination device context.
///
/// ```c
/// BOOL StretchBlt(
///   HDC   hdcDest,
///   int   xDest,
///   int   yDest,
///   int   wDest,
///   int   hDest,
///   HDC   hdcSrc,
///   int   xSrc,
///   int   ySrc,
///   int   wSrc,
///   int   hSrc,
///   DWORD rop
/// );
/// ```
/// {@category gdi32}
int StretchBlt(int hdcDest, int xDest, int yDest, int wDest, int hDest,
        int hdcSrc, int xSrc, int ySrc, int wSrc, int hSrc, int rop) =>
    _StretchBlt(hdcDest, xDest, yDest, wDest, hDest, hdcSrc, xSrc, ySrc, wSrc,
        hSrc, rop);

late final _StretchBlt = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Int32 xDest,
        Int32 yDest,
        Int32 wDest,
        Int32 hDest,
        IntPtr hdcSrc,
        Int32 xSrc,
        Int32 ySrc,
        Int32 wSrc,
        Int32 hSrc,
        Uint32 rop),
    int Function(
        int hdcDest,
        int xDest,
        int yDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xSrc,
        int ySrc,
        int wSrc,
        int hSrc,
        int rop)>('StretchBlt');

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
int StretchDIBits(
        int hdc,
        int xDest,
        int yDest,
        int DestWidth,
        int DestHeight,
        int xSrc,
        int ySrc,
        int SrcWidth,
        int SrcHeight,
        Pointer lpBits,
        Pointer<BITMAPINFO> lpbmi,
        int iUsage,
        int rop) =>
    _StretchDIBits(hdc, xDest, yDest, DestWidth, DestHeight, xSrc, ySrc,
        SrcWidth, SrcHeight, lpBits, lpbmi, iUsage, rop);

late final _StretchDIBits = _gdi32.lookupFunction<
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
        Pointer lpBits,
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
        Pointer lpBits,
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
int TextOut(int hdc, int x, int y, Pointer<Utf16> lpString, int c) =>
    _TextOut(hdc, x, y, lpString, c);

late final _TextOut = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
    int Function(
        int hdc, int x, int y, Pointer<Utf16> lpString, int c)>('TextOutW');
