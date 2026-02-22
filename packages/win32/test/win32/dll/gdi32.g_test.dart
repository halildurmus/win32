// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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
    test('CreateFont can be instantiated', () {
      check(_CreateFont).isA<Function>();
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
    test('DeleteMetaFile can be instantiated', () {
      check(_DeleteMetaFile).isA<Function>();
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

@Native<Int32 Function(Pointer)>(symbol: 'AbortPath')
external int _AbortPath(Pointer hdc);

@Native<Int32 Function(Pointer<Utf16>)>(symbol: 'AddFontResourceW')
external int _AddFontResource(Pointer<Utf16> param0);

@Native<Int32 Function(Pointer<Utf16>, Uint32, Pointer)>(
  symbol: 'AddFontResourceExW',
)
external int _AddFontResourceEx(Pointer<Utf16> name, int fl, Pointer res);

@Native<Int32 Function(Pointer, Int32, Int32, Uint32, Float, Float)>(
  symbol: 'AngleArc',
)
external int _AngleArc(
  Pointer hdc,
  int x,
  int y,
  int r,
  double startAngle,
  double sweepAngle,
);

@Native<Int32 Function(Pointer, Uint32, Uint32, Pointer<PALETTEENTRY>)>(
  symbol: 'AnimatePalette',
)
external int _AnimatePalette(
  Pointer hPal,
  int iStartIndex,
  int cEntries,
  Pointer<PALETTEENTRY> ppe,
);

@Native<
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'Arc')
external int _Arc(
  Pointer hdc,
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
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'ArcTo')
external int _ArcTo(
  Pointer hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
);

@Native<Int32 Function(Pointer)>(symbol: 'BeginPath')
external int _BeginPath(Pointer hdc);

@Native<Int32 Function(Pointer)>(symbol: 'CancelDC')
external int _CancelDC(Pointer hdc);

@Native<
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'Chord')
external int _Chord(
  Pointer hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
);

@Native<Int32 Function(Pointer)>(symbol: 'CloseFigure')
external int _CloseFigure(Pointer hdc);

@Native<Pointer Function(Int32, Int32, Uint32, Uint32, Pointer)>(
  symbol: 'CreateBitmap',
)
external Pointer _CreateBitmap(
  int nWidth,
  int nHeight,
  int nPlanes,
  int nBitCount,
  Pointer lpBits,
);

@Native<Pointer Function(Pointer<BITMAP>)>(symbol: 'CreateBitmapIndirect')
external Pointer _CreateBitmapIndirect(Pointer<BITMAP> pbm);

@Native<Pointer Function(Pointer, Int32, Int32)>(
  symbol: 'CreateCompatibleBitmap',
)
external Pointer _CreateCompatibleBitmap(Pointer hdc, int cx, int cy);

@Native<Pointer Function(Pointer)>(symbol: 'CreateCompatibleDC')
external Pointer _CreateCompatibleDC(Pointer hdc);

@Native<
  Pointer Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<DEVMODE>,
  )
>(symbol: 'CreateDCW')
external Pointer _CreateDC(
  Pointer<Utf16> pwszDriver,
  Pointer<Utf16> pwszDevice,
  Pointer<Utf16> pszPort,
  Pointer<DEVMODE> pdm,
);

@Native<
  Pointer Function(
    Pointer,
    Pointer<BITMAPINFOHEADER>,
    Uint32,
    Pointer,
    Pointer<BITMAPINFO>,
    Uint32,
  )
>(symbol: 'CreateDIBitmap')
external Pointer _CreateDIBitmap(
  Pointer hdc,
  Pointer<BITMAPINFOHEADER> pbmih,
  int flInit,
  Pointer pjBits,
  Pointer<BITMAPINFO> pbmi,
  int iUsage,
);

@Native<Pointer Function(Pointer, Uint32)>(symbol: 'CreateDIBPatternBrushPt')
external Pointer _CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage);

@Native<Pointer Function(Int32, Int32, Int32, Int32)>(
  symbol: 'CreateEllipticRgn',
)
external Pointer _CreateEllipticRgn(int x1, int y1, int x2, int y2);

@Native<
  Pointer Function(
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Uint32,
    Pointer<Utf16>,
  )
>(symbol: 'CreateFontW')
external Pointer _CreateFont(
  int cHeight,
  int cWidth,
  int cEscapement,
  int cOrientation,
  int cWeight,
  int bItalic,
  int bUnderline,
  int bStrikeOut,
  int iCharSet,
  int iOutPrecision,
  int iClipPrecision,
  int iQuality,
  int iPitchAndFamily,
  Pointer<Utf16> pszFaceName,
);

@Native<Pointer Function(Pointer<LOGFONT>)>(symbol: 'CreateFontIndirectW')
external Pointer _CreateFontIndirect(Pointer<LOGFONT> lplf);

@Native<Pointer Function(Pointer)>(symbol: 'CreateHalftonePalette')
external Pointer _CreateHalftonePalette(Pointer hdc);

@Native<Pointer Function(Int32, Uint32)>(symbol: 'CreateHatchBrush')
external Pointer _CreateHatchBrush(int iHatch, int color);

@Native<Pointer Function(Int32, Int32, Uint32)>(symbol: 'CreatePen')
external Pointer _CreatePen(int iStyle, int cWidth, int color);

@Native<Pointer Function(Int32, Int32, Int32, Int32)>(symbol: 'CreateRectRgn')
external Pointer _CreateRectRgn(int x1, int y1, int x2, int y2);

@Native<Pointer Function(Uint32)>(symbol: 'CreateSolidBrush')
external Pointer _CreateSolidBrush(int color);

@Native<Int32 Function(Pointer)>(symbol: 'DeleteDC')
external int _DeleteDC(Pointer hdc);

@Native<Int32 Function(Pointer)>(symbol: 'DeleteMetaFile')
external int _DeleteMetaFile(Pointer hmf);

@Native<Int32 Function(Pointer)>(symbol: 'DeleteObject')
external int _DeleteObject(Pointer ho);

@Native<Int32 Function(Pointer, Int32, Int32, Pointer<Utf8>)>(
  symbol: 'DrawEscape',
)
external int _DrawEscape(
  Pointer hdc,
  int iEscape,
  int cjIn,
  Pointer<Utf8> lpIn,
);

@Native<Int32 Function(Pointer, Int32, Int32, Int32, Int32)>(symbol: 'Ellipse')
external int _Ellipse(Pointer hdc, int left, int top, int right, int bottom);

@Native<Int32 Function(Pointer)>(symbol: 'EndPath')
external int _EndPath(Pointer hdc);

@Native<
  Int32 Function(
    Pointer,
    Pointer<LOGFONT>,
    Pointer<NativeFunction<FONTENUMPROC>>,
    IntPtr,
    Uint32,
  )
>(symbol: 'EnumFontFamiliesExW')
external int _EnumFontFamiliesEx(
  Pointer hdc,
  Pointer<LOGFONT> lpLogfont,
  Pointer<NativeFunction<FONTENUMPROC>> lpProc,
  int lParam,
  int dwFlags,
);

@Native<
  Pointer Function(Uint32, Uint32, Pointer<LOGBRUSH>, Uint32, Pointer<Uint32>)
>(symbol: 'ExtCreatePen')
external Pointer _ExtCreatePen(
  int iPenStyle,
  int cWidth,
  Pointer<LOGBRUSH> plbrush,
  int cStyle,
  Pointer<Uint32> pstyle,
);

@Native<
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Uint32,
    Pointer<RECT>,
    Pointer<Utf16>,
    Uint32,
    Pointer<Int32>,
  )
>(symbol: 'ExtTextOutW')
external int _ExtTextOut(
  Pointer hdc,
  int x,
  int y,
  int options,
  Pointer<RECT> lprect,
  Pointer<Utf16> lpString,
  int c,
  Pointer<Int32> lpDx,
);

@Native<Int32 Function(Pointer)>(symbol: 'FillPath')
external int _FillPath(Pointer hdc);

@Native<Int32 Function(Pointer)>(symbol: 'FlattenPath')
external int _FlattenPath(Pointer hdc);

@Native<Int32 Function(Pointer, Int32)>(symbol: 'GetDeviceCaps')
external int _GetDeviceCaps(Pointer hdc, int index);

@Native<
  Int32 Function(
    Pointer,
    Pointer,
    Uint32,
    Uint32,
    Pointer,
    Pointer<BITMAPINFO>,
    Uint32,
  )
>(symbol: 'GetDIBits')
external int _GetDIBits(
  Pointer hdc,
  Pointer hbm,
  int start,
  int cLines,
  Pointer lpvBits,
  Pointer<BITMAPINFO> lpbmi,
  int usage,
);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'GetNearestColor')
external int _GetNearestColor(Pointer hdc, int color);

@Native<Int32 Function(Pointer, Int32, Pointer)>(symbol: 'GetObjectW')
external int _GetObject(Pointer h, int c, Pointer pv);

@Native<Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint8>, Int32)>(
  symbol: 'GetPath',
)
external int _GetPath(
  Pointer hdc,
  Pointer<POINT> apt,
  Pointer<Uint8> aj,
  int cpt,
);

@Native<Uint32 Function(Pointer, Int32, Int32)>(symbol: 'GetPixel')
external int _GetPixel(Pointer hdc, int x, int y);

@Native<Pointer Function(Int32)>(symbol: 'GetStockObject')
external Pointer _GetStockObject(int i);

@Native<Int32 Function(Pointer, Pointer<TEXTMETRIC>)>(symbol: 'GetTextMetricsW')
external int _GetTextMetrics(Pointer hdc, Pointer<TEXTMETRIC> lptm);

@Native<Int32 Function(Pointer, Pointer<SIZE>)>(symbol: 'GetWindowExtEx')
external int _GetWindowExtEx(Pointer hdc, Pointer<SIZE> lpsize);

@Native<Int32 Function(Pointer, Pointer<POINT>)>(symbol: 'GetWindowOrgEx')
external int _GetWindowOrgEx(Pointer hdc, Pointer<POINT> lppoint);

@Native<Int32 Function(Pointer, Int32, Int32)>(symbol: 'LineTo')
external int _LineTo(Pointer hdc, int x, int y);

@Native<Int32 Function(Pointer, Int32, Int32, Pointer<POINT>)>(
  symbol: 'MoveToEx',
)
external int _MoveToEx(Pointer hdc, int x, int y, Pointer<POINT> lppt);

@Native<
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'Pie')
external int _Pie(
  Pointer hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
);

@Native<Int32 Function(Pointer, Pointer<POINT>, Uint32)>(symbol: 'PolyBezier')
external int _PolyBezier(Pointer hdc, Pointer<POINT> apt, int cpt);

@Native<Int32 Function(Pointer, Pointer<POINT>, Uint32)>(symbol: 'PolyBezierTo')
external int _PolyBezierTo(Pointer hdc, Pointer<POINT> apt, int cpt);

@Native<Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint8>, Int32)>(
  symbol: 'PolyDraw',
)
external int _PolyDraw(
  Pointer hdc,
  Pointer<POINT> apt,
  Pointer<Uint8> aj,
  int cpt,
);

@Native<Int32 Function(Pointer, Pointer<POINT>, Int32)>(symbol: 'Polygon')
external int _Polygon(Pointer hdc, Pointer<POINT> apt, int cpt);

@Native<Int32 Function(Pointer, Pointer<POINT>, Int32)>(symbol: 'Polyline')
external int _Polyline(Pointer hdc, Pointer<POINT> apt, int cpt);

@Native<Int32 Function(Pointer, Pointer<POINT>, Uint32)>(symbol: 'PolylineTo')
external int _PolylineTo(Pointer hdc, Pointer<POINT> apt, int cpt);

@Native<Int32 Function(Pointer, Pointer<POINT>, Pointer<Int32>, Int32)>(
  symbol: 'PolyPolygon',
)
external int _PolyPolygon(
  Pointer hdc,
  Pointer<POINT> apt,
  Pointer<Int32> asz,
  int csz,
);

@Native<Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint32>, Uint32)>(
  symbol: 'PolyPolyline',
)
external int _PolyPolyline(
  Pointer hdc,
  Pointer<POINT> apt,
  Pointer<Uint32> asz,
  int csz,
);

@Native<Int32 Function(Pointer, Int32, Int32)>(symbol: 'PtInRegion')
external int _PtInRegion(Pointer hrgn, int x, int y);

@Native<Int32 Function(Pointer, Int32, Int32, Int32, Int32)>(
  symbol: 'Rectangle',
)
external int _Rectangle(Pointer hdc, int left, int top, int right, int bottom);

@Native<Int32 Function(Pointer, Pointer<RECT>)>(symbol: 'RectInRegion')
external int _RectInRegion(Pointer hrgn, Pointer<RECT> lprect);

@Native<Int32 Function(Pointer, Int32, Int32, Int32, Int32, Int32, Int32)>(
  symbol: 'RoundRect',
)
external int _RoundRect(
  Pointer hdc,
  int left,
  int top,
  int right,
  int bottom,
  int width,
  int height,
);

@Native<Int32 Function(Pointer)>(symbol: 'SaveDC')
external int _SaveDC(Pointer hdc);

@Native<Int32 Function(Pointer, Int32)>(symbol: 'SelectClipPath')
external int _SelectClipPath(Pointer hdc, int mode);

@Native<Pointer Function(Pointer, Pointer)>(symbol: 'SelectObject')
external Pointer _SelectObject(Pointer hdc, Pointer h);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'SetBkColor')
external int _SetBkColor(Pointer hdc, int color);

@Native<Int32 Function(Pointer, Int32)>(symbol: 'SetBkMode')
external int _SetBkMode(Pointer hdc, int mode);

@Native<Int32 Function(Pointer, Int32)>(symbol: 'SetMapMode')
external int _SetMapMode(Pointer hdc, int iMode);

@Native<Uint32 Function(Pointer, Int32, Int32, Uint32)>(symbol: 'SetPixel')
external int _SetPixel(Pointer hdc, int x, int y, int color);

@Native<Int32 Function(Pointer, Int32)>(symbol: 'SetStretchBltMode')
external int _SetStretchBltMode(Pointer hdc, int mode);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'SetTextColor')
external int _SetTextColor(Pointer hdc, int color);

@Native<Int32 Function(Pointer, Int32, Int32, Pointer<SIZE>)>(
  symbol: 'SetViewportExtEx',
)
external int _SetViewportExtEx(Pointer hdc, int x, int y, Pointer<SIZE> lpsz);

@Native<Int32 Function(Pointer, Int32, Int32, Pointer<POINT>)>(
  symbol: 'SetViewportOrgEx',
)
external int _SetViewportOrgEx(Pointer hdc, int x, int y, Pointer<POINT> lppt);

@Native<Int32 Function(Pointer, Int32, Int32, Pointer<SIZE>)>(
  symbol: 'SetWindowExtEx',
)
external int _SetWindowExtEx(Pointer hdc, int x, int y, Pointer<SIZE> lpsz);

@Native<
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>(symbol: 'StretchBlt')
external int _StretchBlt(
  Pointer hdcDest,
  int xDest,
  int yDest,
  int wDest,
  int hDest,
  Pointer hdcSrc,
  int xSrc,
  int ySrc,
  int wSrc,
  int hSrc,
  int rop,
);

@Native<
  Int32 Function(
    Pointer,
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
  Pointer hdc,
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

@Native<Int32 Function(Pointer)>(symbol: 'StrokeAndFillPath')
external int _StrokeAndFillPath(Pointer hdc);

@Native<Int32 Function(Pointer)>(symbol: 'StrokePath')
external int _StrokePath(Pointer hdc);

@Native<Int32 Function(Pointer, Int32, Int32, Pointer<Utf16>, Int32)>(
  symbol: 'TextOutW',
)
external int _TextOut(
  Pointer hdc,
  int x,
  int y,
  Pointer<Utf16> lpString,
  int c,
);

@Native<Int32 Function(Pointer)>(symbol: 'WidenPath')
external int _WidenPath(Pointer hdc);
