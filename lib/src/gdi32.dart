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
    int hdc, int x, int y, int r, double StartAngle, double SweepAngle) {
  final _AngleArc = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 r, Float StartAngle,
          Float SweepAngle),
      int Function(int hdc, int x, int y, int r, double StartAngle,
          double SweepAngle)>('AngleArc');
  return _AngleArc(hdc, x, y, r, StartAngle, SweepAngle);
}

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
int Arc(
    int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  final _Arc = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2,
          Int32 x3, Int32 y3, Int32 x4, Int32 y4),
      int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
          int x4, int y4)>('Arc');
  return _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4);
}

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
    int xr2, int yr2) {
  final _ArcTo = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right,
          Int32 bottom, Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
      int Function(int hdc, int left, int top, int right, int bottom, int xr1,
          int yr1, int xr2, int yr2)>('ArcTo');
  return _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);
}

/// The BeginPath function opens a path bracket in the specified device
/// context.
///
/// ```c
/// BOOL BeginPath(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int BeginPath(int hdc) {
  final _BeginPath =
      _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
          'BeginPath');
  return _BeginPath(hdc);
}

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
int Chord(
    int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  final _Chord = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2,
          Int32 x3, Int32 y3, Int32 x4, Int32 y4),
      int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
          int x4, int y4)>('Chord');
  return _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4);
}

/// The CloseFigure function closes an open figure in a path.
///
/// ```c
/// BOOL CloseFigure(
///   HDC hdc);
/// ```
/// {@category gdi32}
int CloseFigure(int hdc) {
  final _CloseFigure =
      _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
          'CloseFigure');
  return _CloseFigure(hdc);
}

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
int CreateFontIndirect(Pointer<LOGFONT> lplf) {
  final _CreateFontIndirect = _gdi32.lookupFunction<
      IntPtr Function(Pointer<LOGFONT> lplf),
      int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');
  return _CreateFontIndirect(lplf);
}

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
int CreateHatchBrush(int iHatch, int color) {
  final _CreateHatchBrush = _gdi32.lookupFunction<
      IntPtr Function(Int32 iHatch, Int32 color),
      int Function(int iHatch, int color)>('CreateHatchBrush');
  return _CreateHatchBrush(iHatch, color);
}

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
int CreatePen(int iStyle, int cWidth, int color) {
  final _CreatePen = _gdi32.lookupFunction<
      IntPtr Function(Int32 iStyle, Int32 cWidth, Int32 color),
      int Function(int iStyle, int cWidth, int color)>('CreatePen');
  return _CreatePen(iStyle, cWidth, color);
}

/// The CreateSolidBrush function creates a logical brush that has the
/// specified solid color.
///
/// ```c
/// HBRUSH CreateSolidBrush(
///   COLORREF color
/// );
/// ```
/// {@category gdi32}
int CreateSolidBrush(int color) {
  final _CreateSolidBrush = _gdi32.lookupFunction<IntPtr Function(Int32 color),
      int Function(int color)>('CreateSolidBrush');
  return _CreateSolidBrush(color);
}

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
int DeleteObject(int ho) {
  final _DeleteObject =
      _gdi32.lookupFunction<Int32 Function(IntPtr ho), int Function(int ho)>(
          'DeleteObject');
  return _DeleteObject(ho);
}

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
int Ellipse(int hdc, int left, int top, int right, int bottom) {
  final _Ellipse = _gdi32.lookupFunction<
      Int32 Function(
          IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
      int Function(
          int hdc, int left, int top, int right, int bottom)>('Ellipse');
  return _Ellipse(hdc, left, top, right, bottom);
}

/// The EndPath function closes a path bracket and selects the path defined
/// by the bracket into the specified device context.
///
/// ```c
/// BOOL EndPath(
///   HDC hdc
/// );
/// ```
/// {@category gdi32}
int EndPath(int hdc) {
  final _EndPath =
      _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
          'EndPath');
  return _EndPath(hdc);
}

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
int EnumFontFamiliesEx(int hdc, Pointer<LOGFONT> lpLogFont,
    Pointer<NativeFunction> lpProc, int lParam, int dwFlags) {
  final _EnumFontFamiliesEx = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<LOGFONT> lpLogFont,
          Pointer<NativeFunction> lpProc, IntPtr lParam, Uint32 dwFlags),
      int Function(
          int hdc,
          Pointer<LOGFONT> lpLogFont,
          Pointer<NativeFunction> lpProc,
          int lParam,
          int dwFlags)>('EnumFontFamiliesExW');
  return _EnumFontFamiliesEx(hdc, lpLogFont, lpProc, lParam, dwFlags);
}

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
int ExtCreatePen(int iPenStyle, int cWidth, Pointer<LOGFONT> plBrush,
    int cStyle, Pointer<Uint32> pStyle) {
  final _ExtCreatePen = _gdi32.lookupFunction<
      IntPtr Function(Uint32 iPenStyle, Uint32 cWidth, Pointer<LOGFONT> plBrush,
          Uint32 cStyle, Pointer<Uint32> pStyle),
      int Function(int iPenStyle, int cWidth, Pointer<LOGFONT> plBrush,
          int cStyle, Pointer<Uint32> pStyle)>('ExtCreatePen');
  return _ExtCreatePen(iPenStyle, cWidth, plBrush, cStyle, pStyle);
}

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
    Pointer<Utf16> lpString, int c, Pointer<Int32> lpDx) {
  final _ExtTextOut = _gdi32.lookupFunction<
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
  return _ExtTextOut(hdc, x, y, options, lprect, lpString, c, lpDx);
}

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
int GetObject(int h, int c, Pointer pv) {
  final _GetObject = _gdi32.lookupFunction<
      Int32 Function(IntPtr h, Int32 c, Pointer pv),
      int Function(int h, int c, Pointer pv)>('GetObjectW');
  return _GetObject(h, c, pv);
}

/// The GetStockObject function retrieves a handle to one of the stock
/// pens, brushes, fonts, or palettes.
///
/// ```c
/// HGDIOBJ GetStockObject(
///   int i
/// );
/// ```
/// {@category gdi32}
int GetStockObject(int i) {
  final _GetStockObject =
      _gdi32.lookupFunction<IntPtr Function(Int32 i), int Function(int i)>(
          'GetStockObject');
  return _GetStockObject(i);
}

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
int GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm) {
  final _GetTextMetrics = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<TEXTMETRIC> lptm),
      int Function(int hdc, Pointer<TEXTMETRIC> lptm)>('GetTextMetricsW');
  return _GetTextMetrics(hdc, lptm);
}

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
int LineTo(int hdc, int x, int y) {
  final _LineTo = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y),
      int Function(int hdc, int x, int y)>('LineTo');
  return _LineTo(hdc, x, y);
}

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
int MoveToEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _MoveToEx = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
      int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');
  return _MoveToEx(hdc, x, y, lppt);
}

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
    int xr2, int yr2) {
  final _Pie = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right,
          Int32 bottom, Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
      int Function(int hdc, int left, int top, int right, int bottom, int xr1,
          int yr1, int xr2, int yr2)>('Pie');
  return _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);
}

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
int PolyBezier(int hdc, Pointer<POINT> apt, int cpt) {
  final _PolyBezier = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
      int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezier');
  return _PolyBezier(hdc, apt, cpt);
}

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
int PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt) {
  final _PolyBezierTo = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
      int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezierTo');
  return _PolyBezierTo(hdc, apt, cpt);
}

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
int PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) {
  final _PolyDraw = _gdi32.lookupFunction<
      Int32 Function(
          IntPtr hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
      int Function(
          int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt)>('PolyDraw');
  return _PolyDraw(hdc, apt, aj, cpt);
}

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
int Polygon(int hdc, Pointer<POINT> apt, int cpt) {
  final _Polygon = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
      int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polygon');
  return _Polygon(hdc, apt, cpt);
}

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
int Polyline(int hdc, Pointer<POINT> apt, int cpt) {
  final _Polyline = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
      int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polyline');
  return _Polyline(hdc, apt, cpt);
}

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
int PolylineTo(int hdc, Pointer<POINT> apt, int cpt) {
  final _PolylineTo = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
      int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolylineTo');
  return _PolylineTo(hdc, apt, cpt);
}

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
int PolyPolygon(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) {
  final _PolyPolygon = _gdi32.lookupFunction<
      Int32 Function(
          IntPtr hdc, Pointer<POINT> apt, Pointer<Int32> asz, Int32 csz),
      int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz,
          int csz)>('PolyPolygon');
  return _PolyPolygon(hdc, apt, asz, csz);
}

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
int PolyPolyline(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) {
  final _PolyPolyline = _gdi32.lookupFunction<
      Int32 Function(
          IntPtr hdc, Pointer<POINT> apt, Pointer<Int32> asz, Uint32 csz),
      int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz,
          int csz)>('PolyPolyline');
  return _PolyPolyline(hdc, apt, asz, csz);
}

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
int PtInRegion(int hrgn, int x, int y) {
  final _PtInRegion = _gdi32.lookupFunction<
      Int32 Function(IntPtr hrgn, Int32 x, Int32 y),
      int Function(int hrgn, int x, int y)>('PtInRegion');
  return _PtInRegion(hrgn, x, y);
}

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
int Rectangle(int hdc, int left, int top, int right, int bottom) {
  final _Rectangle = _gdi32.lookupFunction<
      Int32 Function(
          IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
      int Function(
          int hdc, int left, int top, int right, int bottom)>('Rectangle');
  return _Rectangle(hdc, left, top, right, bottom);
}

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
int RectInRegion(int hrgn, Pointer<RECT> lprect) {
  final _RectInRegion = _gdi32.lookupFunction<
      Int32 Function(IntPtr hrgn, Pointer<RECT> lprect),
      int Function(int hrgn, Pointer<RECT> lprect)>('RectInRegion');
  return _RectInRegion(hrgn, lprect);
}

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
int RoundRect(
    int hdc, int left, int top, int right, int bottom, int width, int height) {
  final _RoundRect = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right,
          Int32 bottom, Int32 width, Int32 height),
      int Function(int hdc, int left, int top, int right, int bottom, int width,
          int height)>('RoundRect');
  return _RoundRect(hdc, left, top, right, bottom, width, height);
}

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
int SaveDC(int hdc) {
  final _SaveDC =
      _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
          'SaveDC');
  return _SaveDC(hdc);
}

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
int SelectObject(int hdc, int h) {
  final _SelectObject = _gdi32.lookupFunction<
      IntPtr Function(IntPtr hdc, IntPtr h),
      int Function(int hdc, int h)>('SelectObject');
  return _SelectObject(hdc, h);
}

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
int SetBkColor(int hdc, int color) {
  final _SetBkColor = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 color),
      int Function(int hdc, int color)>('SetBkColor');
  return _SetBkColor(hdc, color);
}

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
int SetBkMode(int hdc, int mode) {
  final _SetBkMode = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 mode),
      int Function(int hdc, int mode)>('SetBkMode');
  return _SetBkMode(hdc, mode);
}

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
int SetMapMode(int hdc, int iMode) {
  final _SetMapMode = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 iMode),
      int Function(int hdc, int iMode)>('SetMapMode');
  return _SetMapMode(hdc, iMode);
}

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
int SetPixel(int hdc, int x, int y, int color) {
  final _SetPixel = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 color),
      int Function(int hdc, int x, int y, int color)>('SetPixel');
  return _SetPixel(hdc, x, y, color);
}

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
int SetTextColor(int hdc, int color) {
  final _SetTextColor = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 color),
      int Function(int hdc, int color)>('SetTextColor');
  return _SetTextColor(hdc, color);
}

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
int SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) {
  final _SetViewportExtEx = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
      int Function(
          int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetViewportExtEx');
  return _SetViewportExtEx(hdc, x, y, lpsz);
}

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
int SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _SetViewportOrgEx = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
      int Function(
          int hdc, int x, int y, Pointer<POINT> lppt)>('SetViewportOrgEx');
  return _SetViewportOrgEx(hdc, x, y, lppt);
}

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
int SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) {
  final _SetWindowExtEx = _gdi32.lookupFunction<
      Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
      int Function(
          int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');
  return _SetWindowExtEx(hdc, x, y, lpsz);
}

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
    Pointer<Void> lpBits,
    Pointer<BITMAPINFO> lpbmi,
    int iUsage,
    int rop) {
  final _StretchDIBits = _gdi32.lookupFunction<
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
  return _StretchDIBits(hdc, xDest, yDest, DestWidth, DestHeight, xSrc, ySrc,
      SrcWidth, SrcHeight, lpBits, lpbmi, iUsage, rop);
}

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
int TextOut(int hdc, int x, int y, Pointer<Utf16> lpString, int c) {
  final _TextOut = _gdi32.lookupFunction<
      Int32 Function(
          IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
      int Function(
          int hdc, int x, int y, Pointer<Utf16> lpString, int c)>('TextOutW');
  return _TextOut(hdc, x, y, lpString, c);
}
