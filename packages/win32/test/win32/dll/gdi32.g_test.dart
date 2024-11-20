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
import 'package:win32/src/_internal/gdi32.g.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('gdi32.dll', () {
    test('AbortPath can be instantiated', () {
      check(_AbortPath).isA<Function>();
    });
    test('AddFontResource can be instantiated', () {
      check(_AddFontResource).isA<Function>();
    });
    test('AddFontResourceEx can be instantiated', () {
      check(_AddFontResourceEx).isA<Function>();
    });
    test('AngleArc can be instantiated', () {
      check(_AngleArc).isA<Function>();
    });
    test('AnimatePalette can be instantiated', () {
      check(_AnimatePalette).isA<Function>();
    });
    test('Arc can be instantiated', () {
      check(_Arc).isA<Function>();
    });
    test('ArcTo can be instantiated', () {
      check(_ArcTo).isA<Function>();
    });
    test('BeginPath can be instantiated', () {
      check(_BeginPath).isA<Function>();
    });
    test('BitBlt can be instantiated', () {
      check(BitBlt_Wrapper).isA<Function>();
    });
    test('CancelDC can be instantiated', () {
      check(_CancelDC).isA<Function>();
    });
    test('Chord can be instantiated', () {
      check(_Chord).isA<Function>();
    });
    test('CloseFigure can be instantiated', () {
      check(_CloseFigure).isA<Function>();
    });
    test('CreateBitmap can be instantiated', () {
      check(_CreateBitmap).isA<Function>();
    });
    test('CreateBitmapIndirect can be instantiated', () {
      check(_CreateBitmapIndirect).isA<Function>();
    });
    test('CreateCompatibleBitmap can be instantiated', () {
      check(_CreateCompatibleBitmap).isA<Function>();
    });
    test('CreateCompatibleDC can be instantiated', () {
      check(_CreateCompatibleDC).isA<Function>();
    });
    test('CreateDC can be instantiated', () {
      check(_CreateDC).isA<Function>();
    });
    test('CreateDIBitmap can be instantiated', () {
      check(_CreateDIBitmap).isA<Function>();
    });
    test('CreateDIBPatternBrushPt can be instantiated', () {
      check(_CreateDIBPatternBrushPt).isA<Function>();
    });
    test('CreateDIBSection can be instantiated', () {
      check(CreateDIBSection_Wrapper).isA<Function>();
    });
    test('CreateEllipticRgn can be instantiated', () {
      check(_CreateEllipticRgn).isA<Function>();
    });
    test('CreateFontIndirect can be instantiated', () {
      check(_CreateFontIndirect).isA<Function>();
    });
    test('CreateHalftonePalette can be instantiated', () {
      check(_CreateHalftonePalette).isA<Function>();
    });
    test('CreateHatchBrush can be instantiated', () {
      check(_CreateHatchBrush).isA<Function>();
    });
    test('CreatePen can be instantiated', () {
      check(_CreatePen).isA<Function>();
    });
    test('CreateRectRgn can be instantiated', () {
      check(_CreateRectRgn).isA<Function>();
    });
    test('CreateSolidBrush can be instantiated', () {
      check(_CreateSolidBrush).isA<Function>();
    });
    test('DeleteDC can be instantiated', () {
      check(_DeleteDC).isA<Function>();
    });
    test('DeleteObject can be instantiated', () {
      check(_DeleteObject).isA<Function>();
    });
    test('DrawEscape can be instantiated', () {
      check(_DrawEscape).isA<Function>();
    });
    test('Ellipse can be instantiated', () {
      check(_Ellipse).isA<Function>();
    });
    test('EndPath can be instantiated', () {
      check(_EndPath).isA<Function>();
    });
    test('EnumFontFamiliesEx can be instantiated', () {
      check(_EnumFontFamiliesEx).isA<Function>();
    });
    test('ExtCreatePen can be instantiated', () {
      check(_ExtCreatePen).isA<Function>();
    });
    test('ExtTextOut can be instantiated', () {
      check(_ExtTextOut).isA<Function>();
    });
    test('FillPath can be instantiated', () {
      check(_FillPath).isA<Function>();
    });
    test('FlattenPath can be instantiated', () {
      check(_FlattenPath).isA<Function>();
    });
    test('GetDeviceCaps can be instantiated', () {
      check(_GetDeviceCaps).isA<Function>();
    });
    test('GetDIBits can be instantiated', () {
      check(_GetDIBits).isA<Function>();
    });
    test('GetNearestColor can be instantiated', () {
      check(_GetNearestColor).isA<Function>();
    });
    test('GetObject can be instantiated', () {
      check(_GetObject).isA<Function>();
    });
    test('GetPath can be instantiated', () {
      check(_GetPath).isA<Function>();
    });
    test('GetPixel can be instantiated', () {
      check(_GetPixel).isA<Function>();
    });
    test('GetStockObject can be instantiated', () {
      check(_GetStockObject).isA<Function>();
    });
    test('GetTextMetrics can be instantiated', () {
      check(_GetTextMetrics).isA<Function>();
    });
    test('GetWindowExtEx can be instantiated', () {
      check(_GetWindowExtEx).isA<Function>();
    });
    test('GetWindowOrgEx can be instantiated', () {
      check(_GetWindowOrgEx).isA<Function>();
    });
    test('LineTo can be instantiated', () {
      check(_LineTo).isA<Function>();
    });
    test('MoveToEx can be instantiated', () {
      check(_MoveToEx).isA<Function>();
    });
    test('Pie can be instantiated', () {
      check(_Pie).isA<Function>();
    });
    test('PolyBezier can be instantiated', () {
      check(_PolyBezier).isA<Function>();
    });
    test('PolyBezierTo can be instantiated', () {
      check(_PolyBezierTo).isA<Function>();
    });
    test('PolyDraw can be instantiated', () {
      check(_PolyDraw).isA<Function>();
    });
    test('Polygon can be instantiated', () {
      check(_Polygon).isA<Function>();
    });
    test('Polyline can be instantiated', () {
      check(_Polyline).isA<Function>();
    });
    test('PolylineTo can be instantiated', () {
      check(_PolylineTo).isA<Function>();
    });
    test('PolyPolygon can be instantiated', () {
      check(_PolyPolygon).isA<Function>();
    });
    test('PolyPolyline can be instantiated', () {
      check(_PolyPolyline).isA<Function>();
    });
    test('PtInRegion can be instantiated', () {
      check(_PtInRegion).isA<Function>();
    });
    test('Rectangle can be instantiated', () {
      check(_Rectangle).isA<Function>();
    });
    test('RectInRegion can be instantiated', () {
      check(_RectInRegion).isA<Function>();
    });
    test('RoundRect can be instantiated', () {
      check(_RoundRect).isA<Function>();
    });
    test('SaveDC can be instantiated', () {
      check(_SaveDC).isA<Function>();
    });
    test('SelectClipPath can be instantiated', () {
      check(_SelectClipPath).isA<Function>();
    });
    test('SelectObject can be instantiated', () {
      check(_SelectObject).isA<Function>();
    });
    test('SetBkColor can be instantiated', () {
      check(_SetBkColor).isA<Function>();
    });
    test('SetBkMode can be instantiated', () {
      check(_SetBkMode).isA<Function>();
    });
    test('SetMapMode can be instantiated', () {
      check(_SetMapMode).isA<Function>();
    });
    test('SetPixel can be instantiated', () {
      check(_SetPixel).isA<Function>();
    });
    test('SetStretchBltMode can be instantiated', () {
      check(_SetStretchBltMode).isA<Function>();
    });
    test('SetTextColor can be instantiated', () {
      check(_SetTextColor).isA<Function>();
    });
    test('SetViewportExtEx can be instantiated', () {
      check(_SetViewportExtEx).isA<Function>();
    });
    test('SetViewportOrgEx can be instantiated', () {
      check(_SetViewportOrgEx).isA<Function>();
    });
    test('SetWindowExtEx can be instantiated', () {
      check(_SetWindowExtEx).isA<Function>();
    });
    test('StretchBlt can be instantiated', () {
      check(_StretchBlt).isA<Function>();
    });
    test('StretchDIBits can be instantiated', () {
      check(_StretchDIBits).isA<Function>();
    });
    test('StrokeAndFillPath can be instantiated', () {
      check(_StrokeAndFillPath).isA<Function>();
    });
    test('StrokePath can be instantiated', () {
      check(_StrokePath).isA<Function>();
    });
    test('TextOut can be instantiated', () {
      check(_TextOut).isA<Function>();
    });
    test('WidenPath can be instantiated', () {
      check(_WidenPath).isA<Function>();
    });
  });
}

@Native<BOOL Function(HDC)>(symbol: 'AbortPath')
external int _AbortPath(int hdc);

@Native<Int32 Function(PCWSTR)>(symbol: 'AddFontResourceW')
external int _AddFontResource(PCWSTR param0);

@Native<Int32 Function(PCWSTR, Uint32, Pointer)>(symbol: 'AddFontResourceExW')
external int _AddFontResourceEx(PCWSTR name, int fl, Pointer res);

@Native<BOOL Function(HDC, Int32, Int32, Uint32, Float, Float)>(
  symbol: 'AngleArc',
)
external int _AngleArc(
  int hdc,
  int x,
  int y,
  int r,
  double startAngle,
  double sweepAngle,
);

@Native<BOOL Function(HPALETTE, Uint32, Uint32, Pointer<PALETTEENTRY>)>(
  symbol: 'AnimatePalette',
)
external int _AnimatePalette(
  int hPal,
  int iStartIndex,
  int cEntries,
  Pointer<PALETTEENTRY> ppe,
);

@Native<
  BOOL Function(HDC, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
>(symbol: 'Arc')
external int _Arc(
  int hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
);

@Native<
  BOOL Function(HDC, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
>(symbol: 'ArcTo')
external int _ArcTo(
  int hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
);

@Native<BOOL Function(HDC)>(symbol: 'BeginPath')
external int _BeginPath(int hdc);

@Native<BOOL Function(HDC)>(symbol: 'CancelDC')
external int _CancelDC(int hdc);

@Native<
  BOOL Function(HDC, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
>(symbol: 'Chord')
external int _Chord(
  int hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
);

@Native<BOOL Function(HDC)>(symbol: 'CloseFigure')
external int _CloseFigure(int hdc);

@Native<HBITMAP Function(Int32, Int32, Uint32, Uint32, Pointer)>(
  symbol: 'CreateBitmap',
)
external int _CreateBitmap(
  int nWidth,
  int nHeight,
  int nPlanes,
  int nBitCount,
  Pointer lpBits,
);

@Native<HBITMAP Function(Pointer<BITMAP>)>(symbol: 'CreateBitmapIndirect')
external int _CreateBitmapIndirect(Pointer<BITMAP> pbm);

@Native<HBITMAP Function(HDC, Int32, Int32)>(symbol: 'CreateCompatibleBitmap')
external int _CreateCompatibleBitmap(int hdc, int cx, int cy);

@Native<HDC Function(HDC)>(symbol: 'CreateCompatibleDC')
external int _CreateCompatibleDC(int hdc);

@Native<HDC Function(PCWSTR, PCWSTR, PCWSTR, Pointer<DEVMODE>)>(
  symbol: 'CreateDCW',
)
external int _CreateDC(
  PCWSTR pwszDriver,
  PCWSTR pwszDevice,
  PCWSTR pszPort,
  Pointer<DEVMODE> pdm,
);

@Native<
  HBITMAP Function(
    HDC,
    Pointer<BITMAPINFOHEADER>,
    Uint32,
    Pointer,
    Pointer<BITMAPINFO>,
    Uint32,
  )
>(symbol: 'CreateDIBitmap')
external int _CreateDIBitmap(
  int hdc,
  Pointer<BITMAPINFOHEADER> pbmih,
  int flInit,
  Pointer pjBits,
  Pointer<BITMAPINFO> pbmi,
  int iUsage,
);

@Native<HBRUSH Function(Pointer, Uint32)>(symbol: 'CreateDIBPatternBrushPt')
external int _CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage);

@Native<HRGN Function(Int32, Int32, Int32, Int32)>(symbol: 'CreateEllipticRgn')
external int _CreateEllipticRgn(int x1, int y1, int x2, int y2);

@Native<HFONT Function(Pointer<LOGFONT>)>(symbol: 'CreateFontIndirectW')
external int _CreateFontIndirect(Pointer<LOGFONT> lplf);

@Native<HPALETTE Function(HDC)>(symbol: 'CreateHalftonePalette')
external int _CreateHalftonePalette(int hdc);

@Native<HBRUSH Function(Int32, COLORREF)>(symbol: 'CreateHatchBrush')
external int _CreateHatchBrush(int iHatch, int color);

@Native<HPEN Function(Int32, Int32, COLORREF)>(symbol: 'CreatePen')
external int _CreatePen(int iStyle, int cWidth, int color);

@Native<HRGN Function(Int32, Int32, Int32, Int32)>(symbol: 'CreateRectRgn')
external int _CreateRectRgn(int x1, int y1, int x2, int y2);

@Native<HBRUSH Function(COLORREF)>(symbol: 'CreateSolidBrush')
external int _CreateSolidBrush(int color);

@Native<BOOL Function(HDC)>(symbol: 'DeleteDC')
external int _DeleteDC(int hdc);

@Native<BOOL Function(HGDIOBJ)>(symbol: 'DeleteObject')
external int _DeleteObject(int ho);

@Native<Int32 Function(HDC, Int32, Int32, PCSTR)>(symbol: 'DrawEscape')
external int _DrawEscape(int hdc, int iEscape, int cjIn, PCSTR lpIn);

@Native<BOOL Function(HDC, Int32, Int32, Int32, Int32)>(symbol: 'Ellipse')
external int _Ellipse(int hdc, int left, int top, int right, int bottom);

@Native<BOOL Function(HDC)>(symbol: 'EndPath')
external int _EndPath(int hdc);

@Native<
  Int32 Function(
    HDC,
    Pointer<LOGFONT>,
    Pointer<NativeFunction<FONTENUMPROC>>,
    LPARAM,
    Uint32,
  )
>(symbol: 'EnumFontFamiliesExW')
external int _EnumFontFamiliesEx(
  int hdc,
  Pointer<LOGFONT> lpLogfont,
  Pointer<NativeFunction<FONTENUMPROC>> lpProc,
  int lParam,
  int dwFlags,
);

@Native<
  HPEN Function(Uint32, Uint32, Pointer<LOGBRUSH>, Uint32, Pointer<Uint32>)
>(symbol: 'ExtCreatePen')
external int _ExtCreatePen(
  int iPenStyle,
  int cWidth,
  Pointer<LOGBRUSH> plbrush,
  int cStyle,
  Pointer<Uint32> pstyle,
);

@Native<
  BOOL Function(
    HDC,
    Int32,
    Int32,
    Uint32,
    Pointer<RECT>,
    PCWSTR,
    Uint32,
    Pointer<Int32>,
  )
>(symbol: 'ExtTextOutW')
external int _ExtTextOut(
  int hdc,
  int x,
  int y,
  int options,
  Pointer<RECT> lprect,
  PCWSTR lpString,
  int c,
  Pointer<Int32> lpDx,
);

@Native<BOOL Function(HDC)>(symbol: 'FillPath')
external int _FillPath(int hdc);

@Native<BOOL Function(HDC)>(symbol: 'FlattenPath')
external int _FlattenPath(int hdc);

@Native<Int32 Function(HDC, Int32)>(symbol: 'GetDeviceCaps')
external int _GetDeviceCaps(int hdc, int index);

@Native<
  Int32 Function(
    HDC,
    HBITMAP,
    Uint32,
    Uint32,
    Pointer,
    Pointer<BITMAPINFO>,
    Uint32,
  )
>(symbol: 'GetDIBits')
external int _GetDIBits(
  int hdc,
  int hbm,
  int start,
  int cLines,
  Pointer lpvBits,
  Pointer<BITMAPINFO> lpbmi,
  int usage,
);

@Native<COLORREF Function(HDC, COLORREF)>(symbol: 'GetNearestColor')
external int _GetNearestColor(int hdc, int color);

@Native<Int32 Function(HGDIOBJ, Int32, Pointer)>(symbol: 'GetObjectW')
external int _GetObject(int h, int c, Pointer pv);

@Native<Int32 Function(HDC, Pointer<POINT>, Pointer<Uint8>, Int32)>(
  symbol: 'GetPath',
)
external int _GetPath(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt);

@Native<COLORREF Function(HDC, Int32, Int32)>(symbol: 'GetPixel')
external int _GetPixel(int hdc, int x, int y);

@Native<HGDIOBJ Function(Int32)>(symbol: 'GetStockObject')
external int _GetStockObject(int i);

@Native<BOOL Function(HDC, Pointer<TEXTMETRIC>)>(symbol: 'GetTextMetricsW')
external int _GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm);

@Native<BOOL Function(HDC, Pointer<SIZE>)>(symbol: 'GetWindowExtEx')
external int _GetWindowExtEx(int hdc, Pointer<SIZE> lpsize);

@Native<BOOL Function(HDC, Pointer<POINT>)>(symbol: 'GetWindowOrgEx')
external int _GetWindowOrgEx(int hdc, Pointer<POINT> lppoint);

@Native<BOOL Function(HDC, Int32, Int32)>(symbol: 'LineTo')
external int _LineTo(int hdc, int x, int y);

@Native<BOOL Function(HDC, Int32, Int32, Pointer<POINT>)>(symbol: 'MoveToEx')
external int _MoveToEx(int hdc, int x, int y, Pointer<POINT> lppt);

@Native<
  BOOL Function(HDC, Int32, Int32, Int32, Int32, Int32, Int32, Int32, Int32)
>(symbol: 'Pie')
external int _Pie(
  int hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
);

@Native<BOOL Function(HDC, Pointer<POINT>, Uint32)>(symbol: 'PolyBezier')
external int _PolyBezier(int hdc, Pointer<POINT> apt, int cpt);

@Native<BOOL Function(HDC, Pointer<POINT>, Uint32)>(symbol: 'PolyBezierTo')
external int _PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt);

@Native<BOOL Function(HDC, Pointer<POINT>, Pointer<Uint8>, Int32)>(
  symbol: 'PolyDraw',
)
external int _PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt);

@Native<BOOL Function(HDC, Pointer<POINT>, Int32)>(symbol: 'Polygon')
external int _Polygon(int hdc, Pointer<POINT> apt, int cpt);

@Native<BOOL Function(HDC, Pointer<POINT>, Int32)>(symbol: 'Polyline')
external int _Polyline(int hdc, Pointer<POINT> apt, int cpt);

@Native<BOOL Function(HDC, Pointer<POINT>, Uint32)>(symbol: 'PolylineTo')
external int _PolylineTo(int hdc, Pointer<POINT> apt, int cpt);

@Native<BOOL Function(HDC, Pointer<POINT>, Pointer<Int32>, Int32)>(
  symbol: 'PolyPolygon',
)
external int _PolyPolygon(
  int hdc,
  Pointer<POINT> apt,
  Pointer<Int32> asz,
  int csz,
);

@Native<BOOL Function(HDC, Pointer<POINT>, Pointer<Uint32>, Uint32)>(
  symbol: 'PolyPolyline',
)
external int _PolyPolyline(
  int hdc,
  Pointer<POINT> apt,
  Pointer<Uint32> asz,
  int csz,
);

@Native<BOOL Function(HRGN, Int32, Int32)>(symbol: 'PtInRegion')
external int _PtInRegion(int hrgn, int x, int y);

@Native<BOOL Function(HDC, Int32, Int32, Int32, Int32)>(symbol: 'Rectangle')
external int _Rectangle(int hdc, int left, int top, int right, int bottom);

@Native<BOOL Function(HRGN, Pointer<RECT>)>(symbol: 'RectInRegion')
external int _RectInRegion(int hrgn, Pointer<RECT> lprect);

@Native<BOOL Function(HDC, Int32, Int32, Int32, Int32, Int32, Int32)>(
  symbol: 'RoundRect',
)
external int _RoundRect(
  int hdc,
  int left,
  int top,
  int right,
  int bottom,
  int width,
  int height,
);

@Native<Int32 Function(HDC)>(symbol: 'SaveDC')
external int _SaveDC(int hdc);

@Native<BOOL Function(HDC, Int32)>(symbol: 'SelectClipPath')
external int _SelectClipPath(int hdc, int mode);

@Native<HGDIOBJ Function(HDC, HGDIOBJ)>(symbol: 'SelectObject')
external int _SelectObject(int hdc, int h);

@Native<COLORREF Function(HDC, COLORREF)>(symbol: 'SetBkColor')
external int _SetBkColor(int hdc, int color);

@Native<Int32 Function(HDC, Int32)>(symbol: 'SetBkMode')
external int _SetBkMode(int hdc, int mode);

@Native<Int32 Function(HDC, Int32)>(symbol: 'SetMapMode')
external int _SetMapMode(int hdc, int iMode);

@Native<COLORREF Function(HDC, Int32, Int32, COLORREF)>(symbol: 'SetPixel')
external int _SetPixel(int hdc, int x, int y, int color);

@Native<Int32 Function(HDC, Int32)>(symbol: 'SetStretchBltMode')
external int _SetStretchBltMode(int hdc, int mode);

@Native<COLORREF Function(HDC, COLORREF)>(symbol: 'SetTextColor')
external int _SetTextColor(int hdc, int color);

@Native<BOOL Function(HDC, Int32, Int32, Pointer<SIZE>)>(
  symbol: 'SetViewportExtEx',
)
external int _SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz);

@Native<BOOL Function(HDC, Int32, Int32, Pointer<POINT>)>(
  symbol: 'SetViewportOrgEx',
)
external int _SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt);

@Native<BOOL Function(HDC, Int32, Int32, Pointer<SIZE>)>(
  symbol: 'SetWindowExtEx',
)
external int _SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz);

@Native<
  BOOL Function(
    HDC,
    Int32,
    Int32,
    Int32,
    Int32,
    HDC,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>(symbol: 'StretchBlt')
external int _StretchBlt(
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
  int rop,
);

@Native<
  Int32 Function(
    HDC,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Pointer<BITMAPINFO>,
    Uint32,
    Uint32,
  )
>(symbol: 'StretchDIBits')
external int _StretchDIBits(
  int hdc,
  int xDest,
  int yDest,
  int destWidth,
  int destHeight,
  int xSrc,
  int ySrc,
  int srcWidth,
  int srcHeight,
  Pointer lpBits,
  Pointer<BITMAPINFO> lpbmi,
  int iUsage,
  int rop,
);

@Native<BOOL Function(HDC)>(symbol: 'StrokeAndFillPath')
external int _StrokeAndFillPath(int hdc);

@Native<BOOL Function(HDC)>(symbol: 'StrokePath')
external int _StrokePath(int hdc);

@Native<BOOL Function(HDC, Int32, Int32, PCWSTR, Int32)>(symbol: 'TextOutW')
external int _TextOut(int hdc, int x, int y, PCWSTR lpString, int c);

@Native<BOOL Function(HDC)>(symbol: 'WidenPath')
external int _WidenPath(int hdc);
