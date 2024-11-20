// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/gdi32.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Closes and discards any paths in the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-abortpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool AbortPath(int hdc) => _AbortPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'AbortPath')
external int _AbortPath(int hdc);

/// Adds the font resource from the specified file to the system font table.
///
/// The font can subsequently be used for text output by any application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-addfontresourcew>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int AddFontResource(PCWSTR param0) => _AddFontResource(param0);

@Native<Int32 Function(PCWSTR)>(symbol: 'AddFontResourceW')
external int _AddFontResource(PCWSTR param0);

/// Adds the font resource from the specified file to the system.
///
/// Fonts added with the AddFontResourceEx function can be marked as private and
/// not enumerable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-addfontresourceexw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int AddFontResourceEx(PCWSTR name, FONT_RESOURCE_CHARACTERISTICS fl) =>
    _AddFontResourceEx(name, fl, nullptr);

@Native<Int32 Function(PCWSTR, Uint32, Pointer)>(symbol: 'AddFontResourceExW')
external int _AddFontResourceEx(PCWSTR name, int fl, Pointer res);

/// Draws a line segment and an arc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-anglearc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool AngleArc(
  int hdc,
  int x,
  int y,
  int r,
  double startAngle,
  double sweepAngle,
) => _AngleArc(hdc, x, y, r, startAngle, sweepAngle) != FALSE;

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

/// Replaces entries in the specified logical palette.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-animatepalette>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool AnimatePalette(
  int hPal,
  int iStartIndex,
  int cEntries,
  Pointer<PALETTEENTRY> ppe,
) => _AnimatePalette(hPal, iStartIndex, cEntries, ppe) != FALSE;

@Native<BOOL Function(HPALETTE, Uint32, Uint32, Pointer<PALETTEENTRY>)>(
  symbol: 'AnimatePalette',
)
external int _AnimatePalette(
  int hPal,
  int iStartIndex,
  int cEntries,
  Pointer<PALETTEENTRY> ppe,
);

/// Draws an elliptical arc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-arc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Arc(
  int hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
) => _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4) != FALSE;

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

/// Draws an elliptical arc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-arcto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool ArcTo(
  int hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
) => _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2) != FALSE;

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

/// Opens a path bracket in the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-beginpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool BeginPath(int hdc) => _BeginPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'BeginPath')
external int _BeginPath(int hdc);

/// Performs a bit-block transfer of the color data corresponding to a rectangle
/// of pixels from the specified source device context into a destination device
/// context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-bitblt>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool BitBlt(
  int hdc,
  int x,
  int y,
  int cx,
  int cy,
  int? hdcSrc,
  int x1,
  int y1,
  ROP_CODE rop,
) => BitBlt_Wrapper(hdc, x, y, cx, cy, hdcSrc ?? NULL, x1, y1, rop) != FALSE;

/// Cancels any pending operation on the specified device context (DC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-canceldc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool CancelDC(int hdc) => _CancelDC(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'CancelDC')
external int _CancelDC(int hdc);

/// Draws a chord (a region bounded by the intersection of an ellipse and a line
/// segment, called a secant).
///
/// The chord is outlined by using the current pen and filled by using the
/// current brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-chord>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Chord(
  int hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
) => _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4) != FALSE;

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

/// Closes an open figure in a path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-closefigure>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool CloseFigure(int hdc) => _CloseFigure(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'CloseFigure')
external int _CloseFigure(int hdc);

/// Creates a bitmap with the specified width, height, and color format (color
/// planes and bits-per-pixel).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createbitmap>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateBitmap(
  int nWidth,
  int nHeight,
  int nPlanes,
  int nBitCount,
  Pointer? lpBits,
) => _CreateBitmap(nWidth, nHeight, nPlanes, nBitCount, lpBits ?? nullptr);

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

/// Creates a bitmap with the specified width, height, and color format (color
/// planes and bits-per-pixel).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createbitmapindirect>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateBitmapIndirect(Pointer<BITMAP> pbm) => _CreateBitmapIndirect(pbm);

@Native<HBITMAP Function(Pointer<BITMAP>)>(symbol: 'CreateBitmapIndirect')
external int _CreateBitmapIndirect(Pointer<BITMAP> pbm);

/// Creates a bitmap compatible with the device that is associated with the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createcompatiblebitmap>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateCompatibleBitmap(int hdc, int cx, int cy) =>
    _CreateCompatibleBitmap(hdc, cx, cy);

@Native<HBITMAP Function(HDC, Int32, Int32)>(symbol: 'CreateCompatibleBitmap')
external int _CreateCompatibleBitmap(int hdc, int cx, int cy);

/// Creates a memory device context (DC) compatible with the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createcompatibledc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateCompatibleDC(int? hdc) => _CreateCompatibleDC(hdc ?? NULL);

@Native<HDC Function(HDC)>(symbol: 'CreateCompatibleDC')
external int _CreateCompatibleDC(int hdc);

/// Creates a device context (DC) for a device using the specified name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdcw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateDC(
  PCWSTR? pwszDriver,
  PCWSTR? pwszDevice,
  PCWSTR? pszPort,
  Pointer<DEVMODE>? pdm,
) => _CreateDC(
  pwszDriver ?? nullptr,
  pwszDevice ?? nullptr,
  pszPort ?? nullptr,
  pdm ?? nullptr,
);

@Native<HDC Function(PCWSTR, PCWSTR, PCWSTR, Pointer<DEVMODE>)>(
  symbol: 'CreateDCW',
)
external int _CreateDC(
  PCWSTR pwszDriver,
  PCWSTR pwszDevice,
  PCWSTR pszPort,
  Pointer<DEVMODE> pdm,
);

/// Creates a compatible bitmap (DDB) from a DIB and, optionally, sets the
/// bitmap bits.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibitmap>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateDIBitmap(
  int hdc,
  Pointer<BITMAPINFOHEADER>? pbmih,
  int flInit,
  Pointer? pjBits,
  Pointer<BITMAPINFO>? pbmi,
  DIB_USAGE iUsage,
) => _CreateDIBitmap(
  hdc,
  pbmih ?? nullptr,
  flInit,
  pjBits ?? nullptr,
  pbmi ?? nullptr,
  iUsage,
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

/// Creates a logical brush that has the pattern specified by the
/// device-independent bitmap (DIB).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibpatternbrushpt>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateDIBPatternBrushPt(Pointer lpPackedDIB, DIB_USAGE iUsage) =>
    _CreateDIBPatternBrushPt(lpPackedDIB, iUsage);

@Native<HBRUSH Function(Pointer, Uint32)>(symbol: 'CreateDIBPatternBrushPt')
external int _CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage);

/// Creates a DIB that applications can write to directly.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibsection>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateDIBSection(
  int? hdc,
  Pointer<BITMAPINFO> pbmi,
  DIB_USAGE usage,
  Pointer<Pointer> ppvBits,
  int? hSection,
  int offset,
) => CreateDIBSection_Wrapper(
  hdc ?? NULL,
  pbmi,
  usage,
  ppvBits,
  hSection ?? NULL,
  offset,
);

/// Creates an elliptical region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createellipticrgn>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateEllipticRgn(int x1, int y1, int x2, int y2) =>
    _CreateEllipticRgn(x1, y1, x2, y2);

@Native<HRGN Function(Int32, Int32, Int32, Int32)>(symbol: 'CreateEllipticRgn')
external int _CreateEllipticRgn(int x1, int y1, int x2, int y2);

/// Creates a logical font that has the specified characteristics.
///
/// The font can subsequently be selected as the current font for any device
/// context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createfontindirectw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateFontIndirect(Pointer<LOGFONT> lplf) => _CreateFontIndirect(lplf);

@Native<HFONT Function(Pointer<LOGFONT>)>(symbol: 'CreateFontIndirectW')
external int _CreateFontIndirect(Pointer<LOGFONT> lplf);

/// Creates a halftone palette for the specified device context (DC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createhalftonepalette>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateHalftonePalette(int? hdc) => _CreateHalftonePalette(hdc ?? NULL);

@Native<HPALETTE Function(HDC)>(symbol: 'CreateHalftonePalette')
external int _CreateHalftonePalette(int hdc);

/// Creates a logical brush that has the specified hatch pattern and color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createhatchbrush>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateHatchBrush(HATCH_BRUSH_STYLE iHatch, int color) =>
    _CreateHatchBrush(iHatch, color);

@Native<HBRUSH Function(Int32, COLORREF)>(symbol: 'CreateHatchBrush')
external int _CreateHatchBrush(int iHatch, int color);

/// Creates a logical pen that has the specified style, width, and color.
///
/// The pen can subsequently be selected into a device context and used to draw
/// lines and curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createpen>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreatePen(PEN_STYLE iStyle, int cWidth, int color) =>
    _CreatePen(iStyle, cWidth, color);

@Native<HPEN Function(Int32, Int32, COLORREF)>(symbol: 'CreatePen')
external int _CreatePen(int iStyle, int cWidth, int color);

/// Creates a rectangular region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createrectrgn>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateRectRgn(int x1, int y1, int x2, int y2) =>
    _CreateRectRgn(x1, y1, x2, y2);

@Native<HRGN Function(Int32, Int32, Int32, Int32)>(symbol: 'CreateRectRgn')
external int _CreateRectRgn(int x1, int y1, int x2, int y2);

/// Creates a logical brush that has the specified solid color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createsolidbrush>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int CreateSolidBrush(int color) => _CreateSolidBrush(color);

@Native<HBRUSH Function(COLORREF)>(symbol: 'CreateSolidBrush')
external int _CreateSolidBrush(int color);

/// Deletes the specified device context (DC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-deletedc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool DeleteDC(int hdc) => _DeleteDC(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'DeleteDC')
external int _DeleteDC(int hdc);

/// Deletes a logical pen, brush, font, bitmap, region, or palette, freeing all
/// system resources associated with the object.
///
/// After the object is deleted, the specified handle is no longer valid.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-deleteobject>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool DeleteObject(int ho) => _DeleteObject(ho) != FALSE;

@Native<BOOL Function(HGDIOBJ)>(symbol: 'DeleteObject')
external int _DeleteObject(int ho);

/// Provides drawing capabilities of the specified video display that are not
/// directly available through the graphics device interface (GDI).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-drawescape>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int DrawEscape(int hdc, int iEscape, int cjIn, PCSTR? lpIn) =>
    _DrawEscape(hdc, iEscape, cjIn, lpIn ?? nullptr);

@Native<Int32 Function(HDC, Int32, Int32, PCSTR)>(symbol: 'DrawEscape')
external int _DrawEscape(int hdc, int iEscape, int cjIn, PCSTR lpIn);

/// Creates a D2D1_ELLIPSE structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d2d1helper/nf-d2d1helper-ellipse>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Ellipse(int hdc, int left, int top, int right, int bottom) =>
    _Ellipse(hdc, left, top, right, bottom) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, Int32, Int32)>(symbol: 'Ellipse')
external int _Ellipse(int hdc, int left, int top, int right, int bottom);

/// Closes a path bracket and selects the path defined by the bracket into the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-endpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool EndPath(int hdc) => _EndPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'EndPath')
external int _EndPath(int hdc);

/// Enumerates all uniquely-named fonts in the system that match the font
/// characteristics specified by the LOGFONT structure.
///
/// EnumFontFamiliesEx enumerates fonts based on typeface name, character set,
/// or both.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-enumfontfamiliesexw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int EnumFontFamiliesEx(
  int hdc,
  Pointer<LOGFONT> lpLogfont,
  Pointer<NativeFunction<FONTENUMPROC>> lpProc,
  int lParam,
  int dwFlags,
) => _EnumFontFamiliesEx(hdc, lpLogfont, lpProc, lParam, dwFlags);

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

/// Creates a logical cosmetic or geometric pen that has the specified style,
/// width, and brush attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-extcreatepen>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int ExtCreatePen(
  PEN_STYLE iPenStyle,
  int cWidth,
  Pointer<LOGBRUSH> plbrush,
  int cStyle,
  Pointer<Uint32>? pstyle,
) => _ExtCreatePen(iPenStyle, cWidth, plbrush, cStyle, pstyle ?? nullptr);

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

/// Draws text using the currently selected font, background color, and text
/// color.
///
/// You can optionally provide dimensions to be used for clipping, opaquing, or
/// both.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-exttextoutw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool ExtTextOut(
  int hdc,
  int x,
  int y,
  ETO_OPTIONS options,
  Pointer<RECT>? lprect,
  PCWSTR? lpString,
  int c,
  Pointer<Int32>? lpDx,
) =>
    _ExtTextOut(
      hdc,
      x,
      y,
      options,
      lprect ?? nullptr,
      lpString ?? nullptr,
      c,
      lpDx ?? nullptr,
    ) !=
    FALSE;

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

/// Closes any open figures in the current path and fills the path's interior by
/// using the current brush and polygon-filling mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-fillpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool FillPath(int hdc) => _FillPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'FillPath')
external int _FillPath(int hdc);

/// Transforms any curves in the path that is selected into the current device
/// context (DC), turning each curve into a sequence of lines.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-flattenpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool FlattenPath(int hdc) => _FlattenPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'FlattenPath')
external int _FlattenPath(int hdc);

/// Retrieves device-specific information for the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getdevicecaps>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetDeviceCaps(int? hdc, GET_DEVICE_CAPS_INDEX index) =>
    _GetDeviceCaps(hdc ?? NULL, index);

@Native<Int32 Function(HDC, Int32)>(symbol: 'GetDeviceCaps')
external int _GetDeviceCaps(int hdc, int index);

/// Retrieves the bits of the specified compatible bitmap and copies them into a
/// buffer as a DIB using the specified format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getdibits>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetDIBits(
  int hdc,
  int hbm,
  int start,
  int cLines,
  Pointer? lpvBits,
  Pointer<BITMAPINFO> lpbmi,
  DIB_USAGE usage,
) => _GetDIBits(hdc, hbm, start, cLines, lpvBits ?? nullptr, lpbmi, usage);

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

/// Retrieves a color value identifying a color from the system palette that
/// will be displayed when the specified color value is used.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getnearestcolor>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetNearestColor(int hdc, int color) => _GetNearestColor(hdc, color);

@Native<COLORREF Function(HDC, COLORREF)>(symbol: 'GetNearestColor')
external int _GetNearestColor(int hdc, int color);

/// Retrieves information for the specified graphics object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getobjectw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetObject(int h, int c, Pointer? pv) => _GetObject(h, c, pv ?? nullptr);

@Native<Int32 Function(HGDIOBJ, Int32, Pointer)>(symbol: 'GetObjectW')
external int _GetObject(int h, int c, Pointer pv);

/// Retrieves the coordinates defining the endpoints of lines and the control
/// points of curves found in the path that is selected into the specified
/// device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetPath(int hdc, Pointer<POINT>? apt, Pointer<Uint8>? aj, int cpt) =>
    _GetPath(hdc, apt ?? nullptr, aj ?? nullptr, cpt);

@Native<Int32 Function(HDC, Pointer<POINT>, Pointer<Uint8>, Int32)>(
  symbol: 'GetPath',
)
external int _GetPath(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt);

/// Retrieves the red, green, blue (RGB) color value of the pixel at the
/// specified coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getpixel>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetPixel(int hdc, int x, int y) => _GetPixel(hdc, x, y);

@Native<COLORREF Function(HDC, Int32, Int32)>(symbol: 'GetPixel')
external int _GetPixel(int hdc, int x, int y);

/// Retrieves a handle to one of the stock pens, brushes, fonts, or palettes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getstockobject>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetStockObject(GET_STOCK_OBJECT_FLAGS i) => _GetStockObject(i);

@Native<HGDIOBJ Function(Int32)>(symbol: 'GetStockObject')
external int _GetStockObject(int i);

/// Fills the specified buffer with the metrics for the currently selected font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-gettextmetricsw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm) =>
    _GetTextMetrics(hdc, lptm) != FALSE;

@Native<BOOL Function(HDC, Pointer<TEXTMETRIC>)>(symbol: 'GetTextMetricsW')
external int _GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm);

/// This function retrieves the x-extent and y-extent of the window for the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getwindowextex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool GetWindowExtEx(int hdc, Pointer<SIZE> lpsize) =>
    _GetWindowExtEx(hdc, lpsize) != FALSE;

@Native<BOOL Function(HDC, Pointer<SIZE>)>(symbol: 'GetWindowExtEx')
external int _GetWindowExtEx(int hdc, Pointer<SIZE> lpsize);

/// Retrieves the x-coordinates and y-coordinates of the window origin for the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getwindoworgex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool GetWindowOrgEx(int hdc, Pointer<POINT> lppoint) =>
    _GetWindowOrgEx(hdc, lppoint) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>)>(symbol: 'GetWindowOrgEx')
external int _GetWindowOrgEx(int hdc, Pointer<POINT> lppoint);

/// Draws a line from the current position up to, but not including, the
/// specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-lineto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool LineTo(int hdc, int x, int y) => _LineTo(hdc, x, y) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32)>(symbol: 'LineTo')
external int _LineTo(int hdc, int x, int y);

/// Updates the current position to the specified point and optionally returns
/// the previous position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-movetoex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool MoveToEx(int hdc, int x, int y, Pointer<POINT>? lppt) =>
    _MoveToEx(hdc, x, y, lppt ?? nullptr) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, Pointer<POINT>)>(symbol: 'MoveToEx')
external int _MoveToEx(int hdc, int x, int y, Pointer<POINT> lppt);

/// Draws a pie-shaped wedge bounded by the intersection of an ellipse and two
/// radials.
///
/// The pie is outlined by using the current pen and filled by using the current
/// brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-pie>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Pie(
  int hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
) => _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2) != FALSE;

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

/// Draws one or more Bézier curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polybezier>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyBezier(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezier(hdc, apt, cpt) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Uint32)>(symbol: 'PolyBezier')
external int _PolyBezier(int hdc, Pointer<POINT> apt, int cpt);

/// Draws one or more Bézier curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polybezierto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezierTo(hdc, apt, cpt) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Uint32)>(symbol: 'PolyBezierTo')
external int _PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt);

/// Draws a set of line segments and Bézier curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polydraw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) =>
    _PolyDraw(hdc, apt, aj, cpt) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Pointer<Uint8>, Int32)>(
  symbol: 'PolyDraw',
)
external int _PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt);

/// Draws a polygon consisting of two or more vertices connected by straight
/// lines.
///
/// The polygon is outlined by using the current pen and filled by using the
/// current brush and polygon fill mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polygon>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Polygon(int hdc, Pointer<POINT> apt, int cpt) =>
    _Polygon(hdc, apt, cpt) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Int32)>(symbol: 'Polygon')
external int _Polygon(int hdc, Pointer<POINT> apt, int cpt);

/// Draws a series of line segments by connecting the points in the specified
/// array.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polyline>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Polyline(int hdc, Pointer<POINT> apt, int cpt) =>
    _Polyline(hdc, apt, cpt) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Int32)>(symbol: 'Polyline')
external int _Polyline(int hdc, Pointer<POINT> apt, int cpt);

/// Draws one or more straight lines.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polylineto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolylineTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolylineTo(hdc, apt, cpt) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Uint32)>(symbol: 'PolylineTo')
external int _PolylineTo(int hdc, Pointer<POINT> apt, int cpt);

/// Draws a series of closed polygons.
///
/// Each polygon is outlined by using the current pen and filled by using the
/// current brush and polygon fill mode. The polygons drawn by this function can
/// overlap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polypolygon>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyPolygon(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) =>
    _PolyPolygon(hdc, apt, asz, csz) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Pointer<Int32>, Int32)>(
  symbol: 'PolyPolygon',
)
external int _PolyPolygon(
  int hdc,
  Pointer<POINT> apt,
  Pointer<Int32> asz,
  int csz,
);

/// Draws multiple series of connected line segments.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polypolyline>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyPolyline(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz) =>
    _PolyPolyline(hdc, apt, asz, csz) != FALSE;

@Native<BOOL Function(HDC, Pointer<POINT>, Pointer<Uint32>, Uint32)>(
  symbol: 'PolyPolyline',
)
external int _PolyPolyline(
  int hdc,
  Pointer<POINT> apt,
  Pointer<Uint32> asz,
  int csz,
);

/// Determines whether the specified point is inside the specified region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-ptinregion>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PtInRegion(int hrgn, int x, int y) => _PtInRegion(hrgn, x, y) != FALSE;

@Native<BOOL Function(HRGN, Int32, Int32)>(symbol: 'PtInRegion')
external int _PtInRegion(int hrgn, int x, int y);

/// Draws a rectangle.
///
/// The rectangle is outlined by using the current pen and filled by using the
/// current brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-rectangle>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Rectangle(int hdc, int left, int top, int right, int bottom) =>
    _Rectangle(hdc, left, top, right, bottom) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, Int32, Int32)>(symbol: 'Rectangle')
external int _Rectangle(int hdc, int left, int top, int right, int bottom);

/// Determines whether any part of the specified rectangle is within the
/// boundaries of a region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-rectinregion>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool RectInRegion(int hrgn, Pointer<RECT> lprect) =>
    _RectInRegion(hrgn, lprect) != FALSE;

@Native<BOOL Function(HRGN, Pointer<RECT>)>(symbol: 'RectInRegion')
external int _RectInRegion(int hrgn, Pointer<RECT> lprect);

/// Draws a rectangle with rounded corners.
///
/// The rectangle is outlined by using the current pen and filled by using the
/// current brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-roundrect>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool RoundRect(
  int hdc,
  int left,
  int top,
  int right,
  int bottom,
  int width,
  int height,
) => _RoundRect(hdc, left, top, right, bottom, width, height) != FALSE;

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

/// Saves the current state of the specified device context (DC) by copying data
/// describing selected objects and graphic modes (such as the bitmap, brush,
/// palette, font, pen, region, drawing mode, and mapping mode) to a context
/// stack.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-savedc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SaveDC(int hdc) => _SaveDC(hdc);

@Native<Int32 Function(HDC)>(symbol: 'SaveDC')
external int _SaveDC(int hdc);

/// Selects the current path as a clipping region for a device context,
/// combining the new region with any existing clipping region using the
/// specified mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-selectclippath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SelectClipPath(int hdc, RGN_COMBINE_MODE mode) =>
    _SelectClipPath(hdc, mode) != FALSE;

@Native<BOOL Function(HDC, Int32)>(symbol: 'SelectClipPath')
external int _SelectClipPath(int hdc, int mode);

/// Selects an object into the specified device context (DC).
///
/// The new object replaces the previous object of the same type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-selectobject>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SelectObject(int hdc, int h) => _SelectObject(hdc, h);

@Native<HGDIOBJ Function(HDC, HGDIOBJ)>(symbol: 'SelectObject')
external int _SelectObject(int hdc, int h);

/// Sets the current background color to the specified color value, or to the
/// nearest physical color if the device cannot represent the specified color
/// value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setbkcolor>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetBkColor(int hdc, int color) => _SetBkColor(hdc, color);

@Native<COLORREF Function(HDC, COLORREF)>(symbol: 'SetBkColor')
external int _SetBkColor(int hdc, int color);

/// Sets the background mix mode of the specified device context.
///
/// The background mix mode is used with text, hatched brushes, and pen styles
/// that are not solid lines.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setbkmode>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetBkMode(int hdc, BACKGROUND_MODE mode) => _SetBkMode(hdc, mode);

@Native<Int32 Function(HDC, Int32)>(symbol: 'SetBkMode')
external int _SetBkMode(int hdc, int mode);

/// Sets the mapping mode of the specified device context.
///
/// The mapping mode defines the unit of measure used to transform page-space
/// units into device-space units, and also defines the orientation of the
/// device's x and y axes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setmapmode>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetMapMode(int hdc, HDC_MAP_MODE iMode) => _SetMapMode(hdc, iMode);

@Native<Int32 Function(HDC, Int32)>(symbol: 'SetMapMode')
external int _SetMapMode(int hdc, int iMode);

/// Sets the pixel at the specified coordinates to the specified color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setpixel>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetPixel(int hdc, int x, int y, int color) => _SetPixel(hdc, x, y, color);

@Native<COLORREF Function(HDC, Int32, Int32, COLORREF)>(symbol: 'SetPixel')
external int _SetPixel(int hdc, int x, int y, int color);

/// Sets the bitmap stretching mode in the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setstretchbltmode>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetStretchBltMode(int hdc, STRETCH_BLT_MODE mode) =>
    _SetStretchBltMode(hdc, mode);

@Native<Int32 Function(HDC, Int32)>(symbol: 'SetStretchBltMode')
external int _SetStretchBltMode(int hdc, int mode);

/// Sets the text color for the specified device context to the specified color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-settextcolor>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetTextColor(int hdc, int color) => _SetTextColor(hdc, color);

@Native<COLORREF Function(HDC, COLORREF)>(symbol: 'SetTextColor')
external int _SetTextColor(int hdc, int color);

/// Sets the horizontal and vertical extents of the viewport for a device
/// context by using the specified values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setviewportextex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE>? lpsz) =>
    _SetViewportExtEx(hdc, x, y, lpsz ?? nullptr) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, Pointer<SIZE>)>(
  symbol: 'SetViewportExtEx',
)
external int _SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz);

/// Specifies which device point maps to the window origin (0,0).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setviewportorgex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT>? lppt) =>
    _SetViewportOrgEx(hdc, x, y, lppt ?? nullptr) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, Pointer<POINT>)>(
  symbol: 'SetViewportOrgEx',
)
external int _SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt);

/// Sets the horizontal and vertical extents of the window for a device context
/// by using the specified values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setwindowextex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE>? lpsz) =>
    _SetWindowExtEx(hdc, x, y, lpsz ?? nullptr) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, Pointer<SIZE>)>(
  symbol: 'SetWindowExtEx',
)
external int _SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz);

/// Copies a bitmap from a source rectangle into a destination rectangle,
/// stretching or compressing the bitmap to fit the dimensions of the
/// destination rectangle, if necessary.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-stretchblt>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool StretchBlt(
  int hdcDest,
  int xDest,
  int yDest,
  int wDest,
  int hDest,
  int? hdcSrc,
  int xSrc,
  int ySrc,
  int wSrc,
  int hSrc,
  ROP_CODE rop,
) =>
    _StretchBlt(
      hdcDest,
      xDest,
      yDest,
      wDest,
      hDest,
      hdcSrc ?? NULL,
      xSrc,
      ySrc,
      wSrc,
      hSrc,
      rop,
    ) !=
    FALSE;

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

/// Copies the color data for a rectangle of pixels in a DIB, JPEG, or PNG image
/// to the specified destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-stretchdibits>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int StretchDIBits(
  int hdc,
  int xDest,
  int yDest,
  int destWidth,
  int destHeight,
  int xSrc,
  int ySrc,
  int srcWidth,
  int srcHeight,
  Pointer? lpBits,
  Pointer<BITMAPINFO> lpbmi,
  DIB_USAGE iUsage,
  ROP_CODE rop,
) => _StretchDIBits(
  hdc,
  xDest,
  yDest,
  destWidth,
  destHeight,
  xSrc,
  ySrc,
  srcWidth,
  srcHeight,
  lpBits ?? nullptr,
  lpbmi,
  iUsage,
  rop,
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

/// Closes any open figures in a path, strokes the outline of the path by using
/// the current pen, and fills its interior by using the current brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-strokeandfillpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool StrokeAndFillPath(int hdc) => _StrokeAndFillPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'StrokeAndFillPath')
external int _StrokeAndFillPath(int hdc);

/// Renders the specified path by using the current pen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-strokepath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool StrokePath(int hdc) => _StrokePath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'StrokePath')
external int _StrokePath(int hdc);

/// Writes a character string at the specified location, using the currently
/// selected font, background color, and text color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-textoutw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool TextOut(int hdc, int x, int y, PCWSTR lpString, int c) =>
    _TextOut(hdc, x, y, lpString, c) != FALSE;

@Native<BOOL Function(HDC, Int32, Int32, PCWSTR, Int32)>(symbol: 'TextOutW')
external int _TextOut(int hdc, int x, int y, PCWSTR lpString, int c);

/// Redefines the current path as the area that would be painted if the path
/// were stroked using the pen currently selected into the given device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-widenpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool WidenPath(int hdc) => _WidenPath(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'WidenPath')
external int _WidenPath(int hdc);
