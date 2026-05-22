// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
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
      check(_BitBlt).isA<Function>();
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
      check(_CreateDIBSection).isA<Function>();
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

final _gdi32 = DynamicLibrary.open('gdi32.dll');

final _AbortPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'AbortPath',
    );

final _AddFontResource = _gdi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('AddFontResourceW');

final _AddFontResourceEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer<Utf16>, int, Pointer)
    >('AddFontResourceExW');

final _AngleArc = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Uint32, Float, Float),
      int Function(Pointer, int, int, int, double, double)
    >('AngleArc');

final _AnimatePalette = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<PALETTEENTRY>),
      int Function(Pointer, int, int, Pointer<PALETTEENTRY>)
    >('AnimatePalette');

final _Arc = _gdi32
    .lookupFunction<
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
      ),
      int Function(Pointer, int, int, int, int, int, int, int, int)
    >('Arc');

final _ArcTo = _gdi32
    .lookupFunction<
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
      ),
      int Function(Pointer, int, int, int, int, int, int, int, int)
    >('ArcTo');

final _BeginPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BeginPath',
    );

final _BitBlt = _gdi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Int32,
        Int32,
        Pointer,
        Int32,
        Int32,
        Uint32,
      ),
      int Function(Pointer, int, int, int, int, Pointer, int, int, int)
    >('BitBlt');

final _CancelDC = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('CancelDC');

final _Chord = _gdi32
    .lookupFunction<
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
      ),
      int Function(Pointer, int, int, int, int, int, int, int, int)
    >('Chord');

final _CloseFigure = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseFigure',
    );

final _CreateBitmap = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Uint32, Uint32, Pointer),
      Pointer Function(int, int, int, int, Pointer)
    >('CreateBitmap');

final _CreateBitmapIndirect = _gdi32
    .lookupFunction<
      Pointer Function(Pointer<BITMAP>),
      Pointer Function(Pointer<BITMAP>)
    >('CreateBitmapIndirect');

final _CreateCompatibleBitmap = _gdi32
    .lookupFunction<
      Pointer Function(Pointer, Int32, Int32),
      Pointer Function(Pointer, int, int)
    >('CreateCompatibleBitmap');

final _CreateCompatibleDC = _gdi32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'CreateCompatibleDC',
    );

final _CreateDC = _gdi32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
      )
    >('CreateDCW');

final _CreateDIBitmap = _gdi32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<BITMAPINFOHEADER>,
        Uint32,
        Pointer,
        Pointer<BITMAPINFO>,
        Uint32,
      ),
      Pointer Function(
        Pointer,
        Pointer<BITMAPINFOHEADER>,
        int,
        Pointer,
        Pointer<BITMAPINFO>,
        int,
      )
    >('CreateDIBitmap');

final _CreateDIBPatternBrushPt = _gdi32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('CreateDIBPatternBrushPt');

final _CreateDIBSection = _gdi32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<BITMAPINFO>,
        Uint32,
        Pointer<Pointer>,
        Pointer,
        Uint32,
      ),
      Pointer Function(
        Pointer,
        Pointer<BITMAPINFO>,
        int,
        Pointer<Pointer>,
        Pointer,
        int,
      )
    >('CreateDIBSection');

final _CreateEllipticRgn = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Int32, Int32),
      Pointer Function(int, int, int, int)
    >('CreateEllipticRgn');

final _CreateFont = _gdi32
    .lookupFunction<
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
      ),
      Pointer Function(
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        Pointer<Utf16>,
      )
    >('CreateFontW');

final _CreateFontIndirect = _gdi32
    .lookupFunction<
      Pointer Function(Pointer<LOGFONT>),
      Pointer Function(Pointer<LOGFONT>)
    >('CreateFontIndirectW');

final _CreateHalftonePalette = _gdi32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'CreateHalftonePalette',
    );

final _CreateHatchBrush = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Uint32),
      Pointer Function(int, int)
    >('CreateHatchBrush');

final _CreatePen = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Uint32),
      Pointer Function(int, int, int)
    >('CreatePen');

final _CreateRectRgn = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Int32, Int32),
      Pointer Function(int, int, int, int)
    >('CreateRectRgn');

final _CreateSolidBrush = _gdi32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'CreateSolidBrush',
    );

final _DeleteDC = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('DeleteDC');

final _DeleteMetaFile = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeleteMetaFile',
    );

final _DeleteObject = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeleteObject',
    );

final _DrawEscape = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<Utf8>),
      int Function(Pointer, int, int, Pointer<Utf8>)
    >('DrawEscape');

final _Ellipse = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int)
    >('Ellipse');

final _EndPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('EndPath');

final _EnumFontFamiliesEx = _gdi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<LOGFONT>,
        Pointer<NativeFunction<FONTENUMPROC>>,
        IntPtr,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer<LOGFONT>,
        Pointer<NativeFunction<FONTENUMPROC>>,
        int,
        int,
      )
    >('EnumFontFamiliesExW');

final _ExtCreatePen = _gdi32
    .lookupFunction<
      Pointer Function(
        Uint32,
        Uint32,
        Pointer<LOGBRUSH>,
        Uint32,
        Pointer<Uint32>,
      ),
      Pointer Function(int, int, Pointer<LOGBRUSH>, int, Pointer<Uint32>)
    >('ExtCreatePen');

final _ExtTextOut = _gdi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Uint32,
        Pointer<RECT>,
        Pointer<Utf16>,
        Uint32,
        Pointer<Int32>,
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        Pointer<RECT>,
        Pointer<Utf16>,
        int,
        Pointer<Int32>,
      )
    >('ExtTextOutW');

final _FillPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('FillPath');

final _FlattenPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FlattenPath',
    );

final _GetDeviceCaps = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'GetDeviceCaps',
    );

final _GetDIBits = _gdi32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer,
        Uint32,
        Uint32,
        Pointer,
        Pointer<BITMAPINFO>,
        Uint32,
      ),
      int Function(
        Pointer,
        Pointer,
        int,
        int,
        Pointer,
        Pointer<BITMAPINFO>,
        int,
      )
    >('GetDIBits');

final _GetNearestColor = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('GetNearestColor');

final _GetObject = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer),
      int Function(Pointer, int, Pointer)
    >('GetObjectW');

final _GetPath = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint8>, Int32),
      int Function(Pointer, Pointer<POINT>, Pointer<Uint8>, int)
    >('GetPath');

final _GetPixel = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('GetPixel');

final _GetStockObject = _gdi32
    .lookupFunction<Pointer Function(Int32), Pointer Function(int)>(
      'GetStockObject',
    );

final _GetTextMetrics = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<TEXTMETRIC>),
      int Function(Pointer, Pointer<TEXTMETRIC>)
    >('GetTextMetricsW');

final _GetWindowExtEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<SIZE>),
      int Function(Pointer, Pointer<SIZE>)
    >('GetWindowExtEx');

final _GetWindowOrgEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('GetWindowOrgEx');

final _LineTo = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('LineTo');

final _MoveToEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<POINT>),
      int Function(Pointer, int, int, Pointer<POINT>)
    >('MoveToEx');

final _Pie = _gdi32
    .lookupFunction<
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
      ),
      int Function(Pointer, int, int, int, int, int, int, int, int)
    >('Pie');

final _PolyBezier = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer<POINT>, int)
    >('PolyBezier');

final _PolyBezierTo = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer<POINT>, int)
    >('PolyBezierTo');

final _PolyDraw = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint8>, Int32),
      int Function(Pointer, Pointer<POINT>, Pointer<Uint8>, int)
    >('PolyDraw');

final _Polygon = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Int32),
      int Function(Pointer, Pointer<POINT>, int)
    >('Polygon');

final _Polyline = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Int32),
      int Function(Pointer, Pointer<POINT>, int)
    >('Polyline');

final _PolylineTo = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer<POINT>, int)
    >('PolylineTo');

final _PolyPolygon = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Int32>, Int32),
      int Function(Pointer, Pointer<POINT>, Pointer<Int32>, int)
    >('PolyPolygon');

final _PolyPolyline = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint32>, Uint32),
      int Function(Pointer, Pointer<POINT>, Pointer<Uint32>, int)
    >('PolyPolyline');

final _PtInRegion = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('PtInRegion');

final _Rectangle = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int)
    >('Rectangle');

final _RectInRegion = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('RectInRegion');

final _RoundRect = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int, int, int)
    >('RoundRect');

final _SaveDC = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('SaveDC');

final _SelectClipPath = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SelectClipPath',
    );

final _SelectObject = _gdi32
    .lookupFunction<
      Pointer Function(Pointer, Pointer),
      Pointer Function(Pointer, Pointer)
    >('SelectObject');

final _SetBkColor = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetBkColor');

final _SetBkMode = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetBkMode',
    );

final _SetMapMode = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetMapMode',
    );

final _SetPixel = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Int32, Uint32),
      int Function(Pointer, int, int, int)
    >('SetPixel');

final _SetStretchBltMode = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetStretchBltMode',
    );

final _SetTextColor = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetTextColor');

final _SetViewportExtEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<SIZE>),
      int Function(Pointer, int, int, Pointer<SIZE>)
    >('SetViewportExtEx');

final _SetViewportOrgEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<POINT>),
      int Function(Pointer, int, int, Pointer<POINT>)
    >('SetViewportOrgEx');

final _SetWindowExtEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<SIZE>),
      int Function(Pointer, int, int, Pointer<SIZE>)
    >('SetWindowExtEx');

final _StretchBlt = _gdi32
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        int,
        Pointer,
        int,
        int,
        int,
        int,
        int,
      )
    >('StretchBlt');

final _StretchDIBits = _gdi32
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
        Pointer,
        Pointer<BITMAPINFO>,
        int,
        int,
      )
    >('StretchDIBits');

final _StrokeAndFillPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'StrokeAndFillPath',
    );

final _StrokePath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'StrokePath',
    );

final _TextOut = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<Utf16>, Int32),
      int Function(Pointer, int, int, Pointer<Utf16>, int)
    >('TextOutW');

final _WidenPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WidenPath',
    );
