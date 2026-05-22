// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _gdi32 = DynamicLibrary.open('gdi32.dll');

/// Closes and discards any paths in the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-abortpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool AbortPath(HDC hdc) => _AbortPath(hdc) != FALSE;

final _AbortPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'AbortPath',
    );

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

final _AddFontResource = _gdi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('AddFontResourceW');

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

final _AddFontResourceEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer),
      int Function(Pointer<Utf16>, int, Pointer)
    >('AddFontResourceExW');

/// Draws a line segment and an arc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-anglearc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool AngleArc(
  HDC hdc,
  int x,
  int y,
  int r,
  double startAngle,
  double sweepAngle,
) => _AngleArc(hdc, x, y, r, startAngle, sweepAngle) != FALSE;

final _AngleArc = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Uint32, Float, Float),
      int Function(Pointer, int, int, int, double, double)
    >('AngleArc');

/// Replaces entries in the specified logical palette.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-animatepalette>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool AnimatePalette(
  HPALETTE hPal,
  int iStartIndex,
  int cEntries,
  Pointer<PALETTEENTRY> ppe,
) => _AnimatePalette(hPal, iStartIndex, cEntries, ppe) != FALSE;

final _AnimatePalette = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<PALETTEENTRY>),
      int Function(Pointer, int, int, Pointer<PALETTEENTRY>)
    >('AnimatePalette');

/// Draws an elliptical arc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-arc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Arc(
  HDC hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
) => _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4) != FALSE;

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

/// Draws an elliptical arc.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-arcto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool ArcTo(
  HDC hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
) => _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2) != FALSE;

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

/// Opens a path bracket in the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-beginpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool BeginPath(HDC hdc) => _BeginPath(hdc) != FALSE;

final _BeginPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BeginPath',
    );

/// Performs a bit-block transfer of the color data corresponding to a rectangle
/// of pixels from the specified source device context into a destination device
/// context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-bitblt>.
///
/// {@category gdi32}
Win32Result<bool> BitBlt(
  HDC hdc,
  int x,
  int y,
  int cx,
  int cy,
  HDC? hdcSrc,
  int x1,
  int y1,
  ROP_CODE rop,
) {
  resolveGetLastError();
  final result_ = _BitBlt(hdc, x, y, cx, cy, hdcSrc ?? nullptr, x1, y1, rop);
  return .new(value: result_ != FALSE, error: GetLastError());
}

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

/// Cancels any pending operation on the specified device context (DC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-canceldc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool CancelDC(HDC hdc) => _CancelDC(hdc) != FALSE;

final _CancelDC = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('CancelDC');

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
  HDC hdc,
  int x1,
  int y1,
  int x2,
  int y2,
  int x3,
  int y3,
  int x4,
  int y4,
) => _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4) != FALSE;

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

/// Closes an open figure in a path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-closefigure>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool CloseFigure(HDC hdc) => _CloseFigure(hdc) != FALSE;

final _CloseFigure = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseFigure',
    );

/// Creates a bitmap with the specified width, height, and color format (color
/// planes and bits-per-pixel).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createbitmap>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBITMAP CreateBitmap(
  int nWidth,
  int nHeight,
  int nPlanes,
  int nBitCount,
  Pointer? lpBits,
) => HBITMAP(
  _CreateBitmap(nWidth, nHeight, nPlanes, nBitCount, lpBits ?? nullptr),
);

final _CreateBitmap = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Uint32, Uint32, Pointer),
      Pointer Function(int, int, int, int, Pointer)
    >('CreateBitmap');

/// Creates a bitmap with the specified width, height, and color format (color
/// planes and bits-per-pixel).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createbitmapindirect>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBITMAP CreateBitmapIndirect(Pointer<BITMAP> pbm) =>
    HBITMAP(_CreateBitmapIndirect(pbm));

final _CreateBitmapIndirect = _gdi32
    .lookupFunction<
      Pointer Function(Pointer<BITMAP>),
      Pointer Function(Pointer<BITMAP>)
    >('CreateBitmapIndirect');

/// Creates a bitmap compatible with the device that is associated with the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createcompatiblebitmap>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBITMAP CreateCompatibleBitmap(HDC hdc, int cx, int cy) =>
    HBITMAP(_CreateCompatibleBitmap(hdc, cx, cy));

final _CreateCompatibleBitmap = _gdi32
    .lookupFunction<
      Pointer Function(Pointer, Int32, Int32),
      Pointer Function(Pointer, int, int)
    >('CreateCompatibleBitmap');

/// Creates a memory device context (DC) compatible with the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createcompatibledc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HDC CreateCompatibleDC(HDC? hdc) => HDC(_CreateCompatibleDC(hdc ?? nullptr));

final _CreateCompatibleDC = _gdi32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'CreateCompatibleDC',
    );

/// Creates a device context (DC) for a device using the specified name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdcw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HDC CreateDC(
  PCWSTR? pwszDriver,
  PCWSTR? pwszDevice,
  PCWSTR? pszPort,
  Pointer<DEVMODE>? pdm,
) => HDC(
  _CreateDC(
    pwszDriver ?? nullptr,
    pwszDevice ?? nullptr,
    pszPort ?? nullptr,
    pdm ?? nullptr,
  ),
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

/// Creates a compatible bitmap (DDB) from a DIB and, optionally, sets the
/// bitmap bits.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibitmap>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBITMAP CreateDIBitmap(
  HDC hdc,
  Pointer<BITMAPINFOHEADER>? pbmih,
  int flInit,
  Pointer? pjBits,
  Pointer<BITMAPINFO>? pbmi,
  DIB_USAGE iUsage,
) => HBITMAP(
  _CreateDIBitmap(
    hdc,
    pbmih ?? nullptr,
    flInit,
    pjBits ?? nullptr,
    pbmi ?? nullptr,
    iUsage,
  ),
);

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

/// Creates a logical brush that has the pattern specified by the
/// device-independent bitmap (DIB).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibpatternbrushpt>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBRUSH CreateDIBPatternBrushPt(Pointer lpPackedDIB, DIB_USAGE iUsage) =>
    HBRUSH(_CreateDIBPatternBrushPt(lpPackedDIB, iUsage));

final _CreateDIBPatternBrushPt = _gdi32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('CreateDIBPatternBrushPt');

/// Creates a DIB that applications can write to directly.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createdibsection>.
///
/// {@category gdi32}
Win32Result<HBITMAP> CreateDIBSection(
  HDC? hdc,
  Pointer<BITMAPINFO> pbmi,
  DIB_USAGE usage,
  Pointer<Pointer> ppvBits,
  HANDLE? hSection,
  int offset,
) {
  resolveGetLastError();
  final result_ = _CreateDIBSection(
    hdc ?? nullptr,
    pbmi,
    usage,
    ppvBits,
    hSection ?? nullptr,
    offset,
  );
  return .new(value: .new(result_), error: GetLastError());
}

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

/// Creates an elliptical region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createellipticrgn>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HRGN CreateEllipticRgn(int x1, int y1, int x2, int y2) =>
    HRGN(_CreateEllipticRgn(x1, y1, x2, y2));

final _CreateEllipticRgn = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Int32, Int32),
      Pointer Function(int, int, int, int)
    >('CreateEllipticRgn');

/// Creates a logical font with the specified characteristics.
///
/// The logical font can subsequently be selected as the font for any device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createfontw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HFONT CreateFont(
  int cHeight,
  int cWidth,
  int cEscapement,
  int cOrientation,
  int cWeight,
  int bItalic,
  int bUnderline,
  int bStrikeOut,
  FONT_CHARSET iCharSet,
  FONT_OUTPUT_PRECISION iOutPrecision,
  FONT_CLIP_PRECISION iClipPrecision,
  FONT_QUALITY iQuality,
  int iPitchAndFamily,
  PCWSTR? pszFaceName,
) => HFONT(
  _CreateFont(
    cHeight,
    cWidth,
    cEscapement,
    cOrientation,
    cWeight,
    bItalic,
    bUnderline,
    bStrikeOut,
    iCharSet,
    iOutPrecision,
    iClipPrecision,
    iQuality,
    iPitchAndFamily,
    pszFaceName ?? nullptr,
  ),
);

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
HFONT CreateFontIndirect(Pointer<LOGFONT> lplf) =>
    HFONT(_CreateFontIndirect(lplf));

final _CreateFontIndirect = _gdi32
    .lookupFunction<
      Pointer Function(Pointer<LOGFONT>),
      Pointer Function(Pointer<LOGFONT>)
    >('CreateFontIndirectW');

/// Creates a halftone palette for the specified device context (DC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createhalftonepalette>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HPALETTE CreateHalftonePalette(HDC? hdc) =>
    HPALETTE(_CreateHalftonePalette(hdc ?? nullptr));

final _CreateHalftonePalette = _gdi32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'CreateHalftonePalette',
    );

/// Creates a logical brush that has the specified hatch pattern and color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createhatchbrush>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBRUSH CreateHatchBrush(HATCH_BRUSH_STYLE iHatch, COLORREF color) =>
    HBRUSH(_CreateHatchBrush(iHatch, color));

final _CreateHatchBrush = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Uint32),
      Pointer Function(int, int)
    >('CreateHatchBrush');

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
HPEN CreatePen(PEN_STYLE iStyle, int cWidth, COLORREF color) =>
    HPEN(_CreatePen(iStyle, cWidth, color));

final _CreatePen = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Uint32),
      Pointer Function(int, int, int)
    >('CreatePen');

/// Creates a rectangular region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createrectrgn>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HRGN CreateRectRgn(int x1, int y1, int x2, int y2) =>
    HRGN(_CreateRectRgn(x1, y1, x2, y2));

final _CreateRectRgn = _gdi32
    .lookupFunction<
      Pointer Function(Int32, Int32, Int32, Int32),
      Pointer Function(int, int, int, int)
    >('CreateRectRgn');

/// Creates a logical brush that has the specified solid color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-createsolidbrush>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HBRUSH CreateSolidBrush(COLORREF color) => HBRUSH(_CreateSolidBrush(color));

final _CreateSolidBrush = _gdi32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'CreateSolidBrush',
    );

/// Deletes the specified device context (DC).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-deletedc>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool DeleteDC(HDC hdc) => _DeleteDC(hdc) != FALSE;

final _DeleteDC = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('DeleteDC');

/// Deletes a Windows-format metafile or Windows-format metafile handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-deletemetafile>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool DeleteMetaFile(HMETAFILE hmf) => _DeleteMetaFile(hmf) != FALSE;

final _DeleteMetaFile = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeleteMetaFile',
    );

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
bool DeleteObject(HGDIOBJ ho) => _DeleteObject(ho) != FALSE;

final _DeleteObject = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DeleteObject',
    );

/// Provides drawing capabilities of the specified video display that are not
/// directly available through the graphics device interface (GDI).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-drawescape>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int DrawEscape(HDC hdc, int iEscape, int cjIn, PCSTR? lpIn) =>
    _DrawEscape(hdc, iEscape, cjIn, lpIn ?? nullptr);

final _DrawEscape = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<Utf8>),
      int Function(Pointer, int, int, Pointer<Utf8>)
    >('DrawEscape');

/// Creates a D2D1_ELLIPSE structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/d2d1helper/nf-d2d1helper-ellipse>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Ellipse(HDC hdc, int left, int top, int right, int bottom) =>
    _Ellipse(hdc, left, top, right, bottom) != FALSE;

final _Ellipse = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int)
    >('Ellipse');

/// Closes a path bracket and selects the path defined by the bracket into the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-endpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool EndPath(HDC hdc) => _EndPath(hdc) != FALSE;

final _EndPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('EndPath');

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
  HDC hdc,
  Pointer<LOGFONT> lpLogfont,
  Pointer<NativeFunction<FONTENUMPROC>> lpProc,
  LPARAM lParam,
  int dwFlags,
) => _EnumFontFamiliesEx(hdc, lpLogfont, lpProc, lParam, dwFlags);

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

/// Creates a logical cosmetic or geometric pen that has the specified style,
/// width, and brush attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-extcreatepen>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HPEN ExtCreatePen(
  PEN_STYLE iPenStyle,
  int cWidth,
  Pointer<LOGBRUSH> plbrush,
  int cStyle,
  Pointer<Uint32>? pstyle,
) => HPEN(_ExtCreatePen(iPenStyle, cWidth, plbrush, cStyle, pstyle ?? nullptr));

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
  HDC hdc,
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

/// Closes any open figures in the current path and fills the path's interior by
/// using the current brush and polygon-filling mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-fillpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool FillPath(HDC hdc) => _FillPath(hdc) != FALSE;

final _FillPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('FillPath');

/// Transforms any curves in the path that is selected into the current device
/// context (DC), turning each curve into a sequence of lines.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-flattenpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool FlattenPath(HDC hdc) => _FlattenPath(hdc) != FALSE;

final _FlattenPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'FlattenPath',
    );

/// Retrieves device-specific information for the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getdevicecaps>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetDeviceCaps(HDC? hdc, GET_DEVICE_CAPS_INDEX index) =>
    _GetDeviceCaps(hdc ?? nullptr, index);

final _GetDeviceCaps = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'GetDeviceCaps',
    );

/// Retrieves the bits of the specified compatible bitmap and copies them into a
/// buffer as a DIB using the specified format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getdibits>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetDIBits(
  HDC hdc,
  HBITMAP hbm,
  int start,
  int cLines,
  Pointer? lpvBits,
  Pointer<BITMAPINFO> lpbmi,
  DIB_USAGE usage,
) => _GetDIBits(hdc, hbm, start, cLines, lpvBits ?? nullptr, lpbmi, usage);

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

/// Retrieves a color value identifying a color from the system palette that
/// will be displayed when the specified color value is used.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getnearestcolor>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
COLORREF GetNearestColor(HDC hdc, COLORREF color) =>
    COLORREF(_GetNearestColor(hdc, color));

final _GetNearestColor = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('GetNearestColor');

/// Retrieves information for the specified graphics object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getobjectw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetObject(HGDIOBJ h, int c, Pointer? pv) => _GetObject(h, c, pv ?? nullptr);

final _GetObject = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer),
      int Function(Pointer, int, Pointer)
    >('GetObjectW');

/// Retrieves the coordinates defining the endpoints of lines and the control
/// points of curves found in the path that is selected into the specified
/// device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int GetPath(HDC hdc, Pointer<POINT>? apt, Pointer<Uint8>? aj, int cpt) =>
    _GetPath(hdc, apt ?? nullptr, aj ?? nullptr, cpt);

final _GetPath = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint8>, Int32),
      int Function(Pointer, Pointer<POINT>, Pointer<Uint8>, int)
    >('GetPath');

/// Retrieves the red, green, blue (RGB) color value of the pixel at the
/// specified coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getpixel>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
COLORREF GetPixel(HDC hdc, int x, int y) => COLORREF(_GetPixel(hdc, x, y));

final _GetPixel = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('GetPixel');

/// Retrieves a handle to one of the stock pens, brushes, fonts, or palettes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getstockobject>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HGDIOBJ GetStockObject(GET_STOCK_OBJECT_FLAGS i) => HGDIOBJ(_GetStockObject(i));

final _GetStockObject = _gdi32
    .lookupFunction<Pointer Function(Int32), Pointer Function(int)>(
      'GetStockObject',
    );

/// Fills the specified buffer with the metrics for the currently selected font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-gettextmetricsw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool GetTextMetrics(HDC hdc, Pointer<TEXTMETRIC> lptm) =>
    _GetTextMetrics(hdc, lptm) != FALSE;

final _GetTextMetrics = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<TEXTMETRIC>),
      int Function(Pointer, Pointer<TEXTMETRIC>)
    >('GetTextMetricsW');

/// This function retrieves the x-extent and y-extent of the window for the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getwindowextex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool GetWindowExtEx(HDC hdc, Pointer<SIZE> lpsize) =>
    _GetWindowExtEx(hdc, lpsize) != FALSE;

final _GetWindowExtEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<SIZE>),
      int Function(Pointer, Pointer<SIZE>)
    >('GetWindowExtEx');

/// Retrieves the x-coordinates and y-coordinates of the window origin for the
/// specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-getwindoworgex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool GetWindowOrgEx(HDC hdc, Pointer<POINT> lppoint) =>
    _GetWindowOrgEx(hdc, lppoint) != FALSE;

final _GetWindowOrgEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('GetWindowOrgEx');

/// Draws a line from the current position up to, but not including, the
/// specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-lineto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool LineTo(HDC hdc, int x, int y) => _LineTo(hdc, x, y) != FALSE;

final _LineTo = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('LineTo');

/// Updates the current position to the specified point and optionally returns
/// the previous position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-movetoex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool MoveToEx(HDC hdc, int x, int y, Pointer<POINT>? lppt) =>
    _MoveToEx(hdc, x, y, lppt ?? nullptr) != FALSE;

final _MoveToEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<POINT>),
      int Function(Pointer, int, int, Pointer<POINT>)
    >('MoveToEx');

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
  HDC hdc,
  int left,
  int top,
  int right,
  int bottom,
  int xr1,
  int yr1,
  int xr2,
  int yr2,
) => _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2) != FALSE;

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

/// Draws one or more Bézier curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polybezier>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyBezier(HDC hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezier(hdc, apt, cpt) != FALSE;

final _PolyBezier = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer<POINT>, int)
    >('PolyBezier');

/// Draws one or more Bézier curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polybezierto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyBezierTo(HDC hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezierTo(hdc, apt, cpt) != FALSE;

final _PolyBezierTo = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer<POINT>, int)
    >('PolyBezierTo');

/// Draws a set of line segments and Bézier curves.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polydraw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyDraw(HDC hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) =>
    _PolyDraw(hdc, apt, aj, cpt) != FALSE;

final _PolyDraw = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint8>, Int32),
      int Function(Pointer, Pointer<POINT>, Pointer<Uint8>, int)
    >('PolyDraw');

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
bool Polygon(HDC hdc, Pointer<POINT> apt, int cpt) =>
    _Polygon(hdc, apt, cpt) != FALSE;

final _Polygon = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Int32),
      int Function(Pointer, Pointer<POINT>, int)
    >('Polygon');

/// Draws a series of line segments by connecting the points in the specified
/// array.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polyline>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool Polyline(HDC hdc, Pointer<POINT> apt, int cpt) =>
    _Polyline(hdc, apt, cpt) != FALSE;

final _Polyline = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Int32),
      int Function(Pointer, Pointer<POINT>, int)
    >('Polyline');

/// Draws one or more straight lines.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polylineto>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolylineTo(HDC hdc, Pointer<POINT> apt, int cpt) =>
    _PolylineTo(hdc, apt, cpt) != FALSE;

final _PolylineTo = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer<POINT>, int)
    >('PolylineTo');

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
bool PolyPolygon(HDC hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) =>
    _PolyPolygon(hdc, apt, asz, csz) != FALSE;

final _PolyPolygon = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Int32>, Int32),
      int Function(Pointer, Pointer<POINT>, Pointer<Int32>, int)
    >('PolyPolygon');

/// Draws multiple series of connected line segments.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-polypolyline>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PolyPolyline(HDC hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz) =>
    _PolyPolyline(hdc, apt, asz, csz) != FALSE;

final _PolyPolyline = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>, Pointer<Uint32>, Uint32),
      int Function(Pointer, Pointer<POINT>, Pointer<Uint32>, int)
    >('PolyPolyline');

/// Determines whether the specified point is inside the specified region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-ptinregion>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool PtInRegion(HRGN hrgn, int x, int y) => _PtInRegion(hrgn, x, y) != FALSE;

final _PtInRegion = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('PtInRegion');

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
bool Rectangle(HDC hdc, int left, int top, int right, int bottom) =>
    _Rectangle(hdc, left, top, right, bottom) != FALSE;

final _Rectangle = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int)
    >('Rectangle');

/// Determines whether any part of the specified rectangle is within the
/// boundaries of a region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-rectinregion>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool RectInRegion(HRGN hrgn, Pointer<RECT> lprect) =>
    _RectInRegion(hrgn, lprect) != FALSE;

final _RectInRegion = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('RectInRegion');

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
  HDC hdc,
  int left,
  int top,
  int right,
  int bottom,
  int width,
  int height,
) => _RoundRect(hdc, left, top, right, bottom, width, height) != FALSE;

final _RoundRect = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int, int, int)
    >('RoundRect');

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
int SaveDC(HDC hdc) => _SaveDC(hdc);

final _SaveDC = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('SaveDC');

/// Selects the current path as a clipping region for a device context,
/// combining the new region with any existing clipping region using the
/// specified mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-selectclippath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SelectClipPath(HDC hdc, RGN_COMBINE_MODE mode) =>
    _SelectClipPath(hdc, mode) != FALSE;

final _SelectClipPath = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SelectClipPath',
    );

/// Selects an object into the specified device context (DC).
///
/// The new object replaces the previous object of the same type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-selectobject>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
HGDIOBJ SelectObject(HDC hdc, HGDIOBJ h) => HGDIOBJ(_SelectObject(hdc, h));

final _SelectObject = _gdi32
    .lookupFunction<
      Pointer Function(Pointer, Pointer),
      Pointer Function(Pointer, Pointer)
    >('SelectObject');

/// Sets the current background color to the specified color value, or to the
/// nearest physical color if the device cannot represent the specified color
/// value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setbkcolor>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
COLORREF SetBkColor(HDC hdc, COLORREF color) =>
    COLORREF(_SetBkColor(hdc, color));

final _SetBkColor = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetBkColor');

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
int SetBkMode(HDC hdc, BACKGROUND_MODE mode) => _SetBkMode(hdc, mode);

final _SetBkMode = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetBkMode',
    );

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
int SetMapMode(HDC hdc, HDC_MAP_MODE iMode) => _SetMapMode(hdc, iMode);

final _SetMapMode = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetMapMode',
    );

/// Sets the pixel at the specified coordinates to the specified color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setpixel>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
COLORREF SetPixel(HDC hdc, int x, int y, COLORREF color) =>
    COLORREF(_SetPixel(hdc, x, y, color));

final _SetPixel = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Int32, Uint32),
      int Function(Pointer, int, int, int)
    >('SetPixel');

/// Sets the bitmap stretching mode in the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setstretchbltmode>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int SetStretchBltMode(HDC hdc, STRETCH_BLT_MODE mode) =>
    _SetStretchBltMode(hdc, mode);

final _SetStretchBltMode = _gdi32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'SetStretchBltMode',
    );

/// Sets the text color for the specified device context to the specified color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-settextcolor>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
COLORREF SetTextColor(HDC hdc, COLORREF color) =>
    COLORREF(_SetTextColor(hdc, color));

final _SetTextColor = _gdi32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetTextColor');

/// Sets the horizontal and vertical extents of the viewport for a device
/// context by using the specified values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setviewportextex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SetViewportExtEx(HDC hdc, int x, int y, Pointer<SIZE>? lpsz) =>
    _SetViewportExtEx(hdc, x, y, lpsz ?? nullptr) != FALSE;

final _SetViewportExtEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<SIZE>),
      int Function(Pointer, int, int, Pointer<SIZE>)
    >('SetViewportExtEx');

/// Specifies which device point maps to the window origin (0,0).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setviewportorgex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SetViewportOrgEx(HDC hdc, int x, int y, Pointer<POINT>? lppt) =>
    _SetViewportOrgEx(hdc, x, y, lppt ?? nullptr) != FALSE;

final _SetViewportOrgEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<POINT>),
      int Function(Pointer, int, int, Pointer<POINT>)
    >('SetViewportOrgEx');

/// Sets the horizontal and vertical extents of the window for a device context
/// by using the specified values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-setwindowextex>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool SetWindowExtEx(HDC hdc, int x, int y, Pointer<SIZE>? lpsz) =>
    _SetWindowExtEx(hdc, x, y, lpsz ?? nullptr) != FALSE;

final _SetWindowExtEx = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<SIZE>),
      int Function(Pointer, int, int, Pointer<SIZE>)
    >('SetWindowExtEx');

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
  HDC hdcDest,
  int xDest,
  int yDest,
  int wDest,
  int hDest,
  HDC? hdcSrc,
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
      hdcSrc ?? nullptr,
      xSrc,
      ySrc,
      wSrc,
      hSrc,
      rop,
    ) !=
    FALSE;

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

/// Copies the color data for a rectangle of pixels in a DIB, JPEG, or PNG image
/// to the specified destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-stretchdibits>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
int StretchDIBits(
  HDC hdc,
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

/// Closes any open figures in a path, strokes the outline of the path by using
/// the current pen, and fills its interior by using the current brush.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-strokeandfillpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool StrokeAndFillPath(HDC hdc) => _StrokeAndFillPath(hdc) != FALSE;

final _StrokeAndFillPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'StrokeAndFillPath',
    );

/// Renders the specified path by using the current pen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-strokepath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool StrokePath(HDC hdc) => _StrokePath(hdc) != FALSE;

final _StrokePath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'StrokePath',
    );

/// Writes a character string at the specified location, using the currently
/// selected font, background color, and text color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-textoutw>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool TextOut(HDC hdc, int x, int y, PCWSTR lpString, int c) =>
    _TextOut(hdc, x, y, lpString, c) != FALSE;

final _TextOut = _gdi32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<Utf16>, Int32),
      int Function(Pointer, int, int, Pointer<Utf16>, int)
    >('TextOutW');

/// Redefines the current path as the area that would be painted if the path
/// were stroked using the pen currently selected into the given device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wingdi/nf-wingdi-widenpath>.
///
/// {@category gdi32}
@pragma('vm:prefer-inline')
bool WidenPath(HDC hdc) => _WidenPath(hdc) != FALSE;

final _WidenPath = _gdi32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WidenPath',
    );
