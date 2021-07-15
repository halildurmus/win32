// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../guid.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/callbacks.g.dart';

// -----------------------------------------------------------------------
// GDI32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('GDI32.dll');

int AbortPath(int hdc) => _AbortPath(hdc);

late final _AbortPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'AbortPath');

int AddFontMemResourceEx(Pointer pFileView, int cjSize, Pointer pvResrved,
        Pointer<Uint32> pNumFonts) =>
    _AddFontMemResourceEx(pFileView, cjSize, pvResrved, pNumFonts);

late final _AddFontMemResourceEx = _gdi32.lookupFunction<
    IntPtr Function(Pointer pFileView, Uint32 cjSize, Pointer pvResrved,
        Pointer<Uint32> pNumFonts),
    int Function(Pointer pFileView, int cjSize, Pointer pvResrved,
        Pointer<Uint32> pNumFonts)>('AddFontMemResourceEx');

int AddFontResourceEx(Pointer<Utf16> name, int fl, Pointer res) =>
    _AddFontResourceEx(name, fl, res);

late final _AddFontResourceEx = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer res),
    int Function(
        Pointer<Utf16> name, int fl, Pointer res)>('AddFontResourceExW');

int AddFontResource(Pointer<Utf16> param0) => _AddFontResource(param0);

late final _AddFontResource = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> param0),
    int Function(Pointer<Utf16> param0)>('AddFontResourceW');

int AngleArc(
        int hdc, int x, int y, int r, double StartAngle, double SweepAngle) =>
    _AngleArc(hdc, x, y, r, StartAngle, SweepAngle);

late final _AngleArc = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 r, Float StartAngle,
        Float SweepAngle),
    int Function(int hdc, int x, int y, int r, double StartAngle,
        double SweepAngle)>('AngleArc');

int AnimatePalette(
        int hPal, int iStartIndex, int cEntries, Pointer<PALETTEENTRY> ppe) =>
    _AnimatePalette(hPal, iStartIndex, cEntries, ppe);

late final _AnimatePalette = _gdi32.lookupFunction<
    Int32 Function(IntPtr hPal, Uint32 iStartIndex, Uint32 cEntries,
        Pointer<PALETTEENTRY> ppe),
    int Function(int hPal, int iStartIndex, int cEntries,
        Pointer<PALETTEENTRY> ppe)>('AnimatePalette');

int Arc(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4,
        int y4) =>
    _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4);

late final _Arc = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3,
        Int32 y3, Int32 x4, Int32 y4),
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
        int x4, int y4)>('Arc');

int ArcTo(int hdc, int left, int top, int right, int bottom, int xr1, int yr1,
        int xr2, int yr2) =>
    _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);

late final _ArcTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
    int Function(int hdc, int left, int top, int right, int bottom, int xr1,
        int yr1, int xr2, int yr2)>('ArcTo');

int BeginPath(int hdc) => _BeginPath(hdc);

late final _BeginPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'BeginPath');

int BitBlt(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1, int y1,
        int rop) =>
    _BitBlt(hdc, x, y, cx, cy, hdcSrc, x1, y1, rop);

late final _BitBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 cx, Int32 cy,
        IntPtr hdcSrc, Int32 x1, Int32 y1, Uint32 rop),
    int Function(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1,
        int y1, int rop)>('BitBlt');

int CancelDC(int hdc) => _CancelDC(hdc);

late final _CancelDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'CancelDC');

int Chord(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4,
        int y4) =>
    _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4);

late final _Chord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3,
        Int32 y3, Int32 x4, Int32 y4),
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3,
        int x4, int y4)>('Chord');

int CloseEnhMetaFile(int hdc) => _CloseEnhMetaFile(hdc);

late final _CloseEnhMetaFile =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'CloseEnhMetaFile');

int CloseFigure(int hdc) => _CloseFigure(hdc);

late final _CloseFigure =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'CloseFigure');

int CloseMetaFile(int hdc) => _CloseMetaFile(hdc);

late final _CloseMetaFile =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'CloseMetaFile');

int CombineRgn(int hrgnDst, int hrgnSrc1, int hrgnSrc2, int iMode) =>
    _CombineRgn(hrgnDst, hrgnSrc1, hrgnSrc2, iMode);

late final _CombineRgn = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hrgnDst, IntPtr hrgnSrc1, IntPtr hrgnSrc2, Uint32 iMode),
    int Function(
        int hrgnDst, int hrgnSrc1, int hrgnSrc2, int iMode)>('CombineRgn');

int CombineTransform(
        Pointer<XFORM> lpxfOut, Pointer<XFORM> lpxf1, Pointer<XFORM> lpxf2) =>
    _CombineTransform(lpxfOut, lpxf1, lpxf2);

late final _CombineTransform = _gdi32.lookupFunction<
    Int32 Function(
        Pointer<XFORM> lpxfOut, Pointer<XFORM> lpxf1, Pointer<XFORM> lpxf2),
    int Function(Pointer<XFORM> lpxfOut, Pointer<XFORM> lpxf1,
        Pointer<XFORM> lpxf2)>('CombineTransform');

int CopyEnhMetaFile(int hEnh, Pointer<Utf16> lpFileName) =>
    _CopyEnhMetaFile(hEnh, lpFileName);

late final _CopyEnhMetaFile = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hEnh, Pointer<Utf16> lpFileName),
    int Function(int hEnh, Pointer<Utf16> lpFileName)>('CopyEnhMetaFileW');

int CopyMetaFile(int param0, Pointer<Utf16> param1) =>
    _CopyMetaFile(param0, param1);

late final _CopyMetaFile = _gdi32.lookupFunction<
    IntPtr Function(IntPtr param0, Pointer<Utf16> param1),
    int Function(int param0, Pointer<Utf16> param1)>('CopyMetaFileW');

int CreateBitmap(
        int nWidth, int nHeight, int nPlanes, int nBitCount, Pointer lpBits) =>
    _CreateBitmap(nWidth, nHeight, nPlanes, nBitCount, lpBits);

late final _CreateBitmap = _gdi32.lookupFunction<
    IntPtr Function(Int32 nWidth, Int32 nHeight, Uint32 nPlanes,
        Uint32 nBitCount, Pointer lpBits),
    int Function(int nWidth, int nHeight, int nPlanes, int nBitCount,
        Pointer lpBits)>('CreateBitmap');

int CreateBitmapIndirect(Pointer<BITMAP> pbm) => _CreateBitmapIndirect(pbm);

late final _CreateBitmapIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<BITMAP> pbm),
    int Function(Pointer<BITMAP> pbm)>('CreateBitmapIndirect');

int CreateBrushIndirect(Pointer<LOGBRUSH> plbrush) =>
    _CreateBrushIndirect(plbrush);

late final _CreateBrushIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGBRUSH> plbrush),
    int Function(Pointer<LOGBRUSH> plbrush)>('CreateBrushIndirect');

int CreateCompatibleBitmap(int hdc, int cx, int cy) =>
    _CreateCompatibleBitmap(hdc, cx, cy);

late final _CreateCompatibleBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Int32 cx, Int32 cy),
    int Function(int hdc, int cx, int cy)>('CreateCompatibleBitmap');

int CreateCompatibleDC(int hdc) => _CreateCompatibleDC(hdc);

late final _CreateCompatibleDC =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'CreateCompatibleDC');

int CreateDIBPatternBrush(int h, int iUsage) =>
    _CreateDIBPatternBrush(h, iUsage);

late final _CreateDIBPatternBrush = _gdi32.lookupFunction<
    IntPtr Function(IntPtr h, Uint32 iUsage),
    int Function(int h, int iUsage)>('CreateDIBPatternBrush');

int CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage) =>
    _CreateDIBPatternBrushPt(lpPackedDIB, iUsage);

late final _CreateDIBPatternBrushPt = _gdi32.lookupFunction<
    IntPtr Function(Pointer lpPackedDIB, Uint32 iUsage),
    int Function(Pointer lpPackedDIB, int iUsage)>('CreateDIBPatternBrushPt');

int CreateDIBSection(int hdc, Pointer<BITMAPINFO> pbmi, int usage,
        Pointer<Pointer> ppvBits, int hSection, int offset) =>
    _CreateDIBSection(hdc, pbmi, usage, ppvBits, hSection, offset);

late final _CreateDIBSection = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Pointer<BITMAPINFO> pbmi, Uint32 usage,
        Pointer<Pointer> ppvBits, IntPtr hSection, Uint32 offset),
    int Function(
        int hdc,
        Pointer<BITMAPINFO> pbmi,
        int usage,
        Pointer<Pointer> ppvBits,
        int hSection,
        int offset)>('CreateDIBSection');

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

int CreateDiscardableBitmap(int hdc, int cx, int cy) =>
    _CreateDiscardableBitmap(hdc, cx, cy);

late final _CreateDiscardableBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Int32 cx, Int32 cy),
    int Function(int hdc, int cx, int cy)>('CreateDiscardableBitmap');

int CreateEllipticRgn(int x1, int y1, int x2, int y2) =>
    _CreateEllipticRgn(x1, y1, x2, y2);

late final _CreateEllipticRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2),
    int Function(int x1, int y1, int x2, int y2)>('CreateEllipticRgn');

int CreateEllipticRgnIndirect(Pointer<RECT> lprect) =>
    _CreateEllipticRgnIndirect(lprect);

late final _CreateEllipticRgnIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<RECT> lprect),
    int Function(Pointer<RECT> lprect)>('CreateEllipticRgnIndirect');

int CreateEnhMetaFile(int hdc, Pointer<Utf16> lpFilename, Pointer<RECT> lprc,
        Pointer<Utf16> lpDesc) =>
    _CreateEnhMetaFile(hdc, lpFilename, lprc, lpDesc);

late final _CreateEnhMetaFile = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Pointer<Utf16> lpFilename, Pointer<RECT> lprc,
        Pointer<Utf16> lpDesc),
    int Function(int hdc, Pointer<Utf16> lpFilename, Pointer<RECT> lprc,
        Pointer<Utf16> lpDesc)>('CreateEnhMetaFileW');

int CreateFontIndirectEx(Pointer<ENUMLOGFONTEXDV> param0) =>
    _CreateFontIndirectEx(param0);

late final _CreateFontIndirectEx = _gdi32.lookupFunction<
    IntPtr Function(Pointer<ENUMLOGFONTEXDV> param0),
    int Function(Pointer<ENUMLOGFONTEXDV> param0)>('CreateFontIndirectExW');

int CreateFontIndirect(Pointer<LOGFONT> lplf) => _CreateFontIndirect(lplf);

late final _CreateFontIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGFONT> lplf),
    int Function(Pointer<LOGFONT> lplf)>('CreateFontIndirectW');

int CreateFont(
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
        Pointer<Utf16> pszFaceName) =>
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
        pszFaceName);

late final _CreateFont = _gdi32.lookupFunction<
    IntPtr Function(
        Int32 cHeight,
        Int32 cWidth,
        Int32 cEscapement,
        Int32 cOrientation,
        Int32 cWeight,
        Uint32 bItalic,
        Uint32 bUnderline,
        Uint32 bStrikeOut,
        Uint32 iCharSet,
        Uint32 iOutPrecision,
        Uint32 iClipPrecision,
        Uint32 iQuality,
        Uint32 iPitchAndFamily,
        Pointer<Utf16> pszFaceName),
    int Function(
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
        Pointer<Utf16> pszFaceName)>('CreateFontW');

int CreateHalftonePalette(int hdc) => _CreateHalftonePalette(hdc);

late final _CreateHalftonePalette =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'CreateHalftonePalette');

int CreateHatchBrush(int iHatch, int color) => _CreateHatchBrush(iHatch, color);

late final _CreateHatchBrush = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iHatch, Uint32 color),
    int Function(int iHatch, int color)>('CreateHatchBrush');

int CreateMetaFile(Pointer<Utf16> pszFile) => _CreateMetaFile(pszFile);

late final _CreateMetaFile = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pszFile),
    int Function(Pointer<Utf16> pszFile)>('CreateMetaFileW');

int CreatePalette(Pointer<LOGPALETTE> plpal) => _CreatePalette(plpal);

late final _CreatePalette = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGPALETTE> plpal),
    int Function(Pointer<LOGPALETTE> plpal)>('CreatePalette');

int CreatePatternBrush(int hbm) => _CreatePatternBrush(hbm);

late final _CreatePatternBrush =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hbm), int Function(int hbm)>(
        'CreatePatternBrush');

int CreatePen(int iStyle, int cWidth, int color) =>
    _CreatePen(iStyle, cWidth, color);

late final _CreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iStyle, Int32 cWidth, Uint32 color),
    int Function(int iStyle, int cWidth, int color)>('CreatePen');

int CreatePenIndirect(Pointer<LOGPEN> plpen) => _CreatePenIndirect(plpen);

late final _CreatePenIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGPEN> plpen),
    int Function(Pointer<LOGPEN> plpen)>('CreatePenIndirect');

int CreatePolyPolygonRgn(
        Pointer<POINT> pptl, Pointer<Int32> pc, int cPoly, int iMode) =>
    _CreatePolyPolygonRgn(pptl, pc, cPoly, iMode);

late final _CreatePolyPolygonRgn = _gdi32.lookupFunction<
    IntPtr Function(
        Pointer<POINT> pptl, Pointer<Int32> pc, Int32 cPoly, Uint32 iMode),
    int Function(Pointer<POINT> pptl, Pointer<Int32> pc, int cPoly,
        int iMode)>('CreatePolyPolygonRgn');

int CreatePolygonRgn(Pointer<POINT> pptl, int cPoint, int iMode) =>
    _CreatePolygonRgn(pptl, cPoint, iMode);

late final _CreatePolygonRgn = _gdi32.lookupFunction<
    IntPtr Function(Pointer<POINT> pptl, Int32 cPoint, Uint32 iMode),
    int Function(
        Pointer<POINT> pptl, int cPoint, int iMode)>('CreatePolygonRgn');

int CreateRectRgn(int x1, int y1, int x2, int y2) =>
    _CreateRectRgn(x1, y1, x2, y2);

late final _CreateRectRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2),
    int Function(int x1, int y1, int x2, int y2)>('CreateRectRgn');

int CreateRectRgnIndirect(Pointer<RECT> lprect) =>
    _CreateRectRgnIndirect(lprect);

late final _CreateRectRgnIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<RECT> lprect),
    int Function(Pointer<RECT> lprect)>('CreateRectRgnIndirect');

int CreateRoundRectRgn(int x1, int y1, int x2, int y2, int w, int h) =>
    _CreateRoundRectRgn(x1, y1, x2, y2, w, h);

late final _CreateRoundRectRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 w, Int32 h),
    int Function(
        int x1, int y1, int x2, int y2, int w, int h)>('CreateRoundRectRgn');

int CreateScalableFontResource(int fdwHidden, Pointer<Utf16> lpszFont,
        Pointer<Utf16> lpszFile, Pointer<Utf16> lpszPath) =>
    _CreateScalableFontResource(fdwHidden, lpszFont, lpszFile, lpszPath);

late final _CreateScalableFontResource = _gdi32.lookupFunction<
    Int32 Function(Uint32 fdwHidden, Pointer<Utf16> lpszFont,
        Pointer<Utf16> lpszFile, Pointer<Utf16> lpszPath),
    int Function(
        int fdwHidden,
        Pointer<Utf16> lpszFont,
        Pointer<Utf16> lpszFile,
        Pointer<Utf16> lpszPath)>('CreateScalableFontResourceW');

int CreateSolidBrush(int color) => _CreateSolidBrush(color);

late final _CreateSolidBrush = _gdi32.lookupFunction<
    IntPtr Function(Uint32 color), int Function(int color)>('CreateSolidBrush');

int DPtoLP(int hdc, Pointer<POINT> lppt, int c) => _DPtoLP(hdc, lppt, c);

late final _DPtoLP = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt, Int32 c),
    int Function(int hdc, Pointer<POINT> lppt, int c)>('DPtoLP');

int DeleteDC(int hdc) => _DeleteDC(hdc);

late final _DeleteDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'DeleteDC');

int DeleteEnhMetaFile(int hmf) => _DeleteEnhMetaFile(hmf);

late final _DeleteEnhMetaFile =
    _gdi32.lookupFunction<Int32 Function(IntPtr hmf), int Function(int hmf)>(
        'DeleteEnhMetaFile');

int DeleteMetaFile(int hmf) => _DeleteMetaFile(hmf);

late final _DeleteMetaFile =
    _gdi32.lookupFunction<Int32 Function(IntPtr hmf), int Function(int hmf)>(
        'DeleteMetaFile');

int DeleteObject(int ho) => _DeleteObject(ho);

late final _DeleteObject =
    _gdi32.lookupFunction<Int32 Function(IntPtr ho), int Function(int ho)>(
        'DeleteObject');

int DrawEscape(int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn) =>
    _DrawEscape(hdc, iEscape, cjIn, lpIn);

late final _DrawEscape = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 iEscape, Int32 cjIn, Pointer<Utf8> lpIn),
    int Function(
        int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn)>('DrawEscape');

int Ellipse(int hdc, int left, int top, int right, int bottom) =>
    _Ellipse(hdc, left, top, right, bottom);

late final _Ellipse = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(int hdc, int left, int top, int right, int bottom)>('Ellipse');

int EndPath(int hdc) => _EndPath(hdc);

late final _EndPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'EndPath');

int EnumEnhMetaFile(
        int hdc,
        int hmf,
        Pointer<NativeFunction<ENHMFENUMPROC>> proc,
        Pointer param3,
        Pointer<RECT> lpRect) =>
    _EnumEnhMetaFile(hdc, hmf, proc, param3, lpRect);

late final _EnumEnhMetaFile = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        IntPtr hmf,
        Pointer<NativeFunction<ENHMFENUMPROC>> proc,
        Pointer param3,
        Pointer<RECT> lpRect),
    int Function(int hdc, int hmf, Pointer<NativeFunction<ENHMFENUMPROC>> proc,
        Pointer param3, Pointer<RECT> lpRect)>('EnumEnhMetaFile');

int EnumFontFamiliesEx(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc,
        int lParam,
        int dwFlags) =>
    _EnumFontFamiliesEx(hdc, lpLogfont, lpProc, lParam, dwFlags);

late final _EnumFontFamiliesEx = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc,
        IntPtr lParam,
        Uint32 dwFlags),
    int Function(
        int hdc,
        Pointer<LOGFONT> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc,
        int lParam,
        int dwFlags)>('EnumFontFamiliesExW');

int EnumFontFamilies(int hdc, Pointer<Utf16> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc, int lParam) =>
    _EnumFontFamilies(hdc, lpLogfont, lpProc, lParam);

late final _EnumFontFamilies = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc, IntPtr lParam),
    int Function(
        int hdc,
        Pointer<Utf16> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc,
        int lParam)>('EnumFontFamiliesW');

int EnumFonts(int hdc, Pointer<Utf16> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc, int lParam) =>
    _EnumFonts(hdc, lpLogfont, lpProc, lParam);

late final _EnumFonts = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc, IntPtr lParam),
    int Function(
        int hdc,
        Pointer<Utf16> lpLogfont,
        Pointer<NativeFunction<FONTENUMPROCW>> lpProc,
        int lParam)>('EnumFontsW');

int EnumMetaFile(int hdc, int hmf, Pointer<NativeFunction<MFENUMPROC>> proc,
        int param3) =>
    _EnumMetaFile(hdc, hmf, proc, param3);

late final _EnumMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf,
        Pointer<NativeFunction<MFENUMPROC>> proc, IntPtr param3),
    int Function(int hdc, int hmf, Pointer<NativeFunction<MFENUMPROC>> proc,
        int param3)>('EnumMetaFile');

int EnumObjects(int hdc, int nType,
        Pointer<NativeFunction<GOBJENUMPROC>> lpFunc, int lParam) =>
    _EnumObjects(hdc, nType, lpFunc, lParam);

late final _EnumObjects = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 nType,
        Pointer<NativeFunction<GOBJENUMPROC>> lpFunc, IntPtr lParam),
    int Function(
        int hdc,
        int nType,
        Pointer<NativeFunction<GOBJENUMPROC>> lpFunc,
        int lParam)>('EnumObjects');

int EqualRgn(int hrgn1, int hrgn2) => _EqualRgn(hrgn1, hrgn2);

late final _EqualRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn1, IntPtr hrgn2),
    int Function(int hrgn1, int hrgn2)>('EqualRgn');

int ExcludeClipRect(int hdc, int left, int top, int right, int bottom) =>
    _ExcludeClipRect(hdc, left, top, right, bottom);

late final _ExcludeClipRect = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(
        int hdc, int left, int top, int right, int bottom)>('ExcludeClipRect');

int ExtCreatePen(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
        int cStyle, Pointer<Uint32> pstyle) =>
    _ExtCreatePen(iPenStyle, cWidth, plbrush, cStyle, pstyle);

late final _ExtCreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iPenStyle, Uint32 cWidth, Pointer<LOGBRUSH> plbrush,
        Uint32 cStyle, Pointer<Uint32> pstyle),
    int Function(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush,
        int cStyle, Pointer<Uint32> pstyle)>('ExtCreatePen');

int ExtFloodFill(int hdc, int x, int y, int color, int type) =>
    _ExtFloodFill(hdc, x, y, color, type);

late final _ExtFloodFill = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color, Uint32 type),
    int Function(int hdc, int x, int y, int color, int type)>('ExtFloodFill');

int ExtSelectClipRgn(int hdc, int hrgn, int mode) =>
    _ExtSelectClipRgn(hdc, hrgn, mode);

late final _ExtSelectClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, Uint32 mode),
    int Function(int hdc, int hrgn, int mode)>('ExtSelectClipRgn');

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

int FillPath(int hdc) => _FillPath(hdc);

late final _FillPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'FillPath');

int FillRgn(int hdc, int hrgn, int hbr) => _FillRgn(hdc, hrgn, hbr);

late final _FillRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, IntPtr hbr),
    int Function(int hdc, int hrgn, int hbr)>('FillRgn');

int FixBrushOrgEx(int hdc, int x, int y, Pointer<POINT> ptl) =>
    _FixBrushOrgEx(hdc, x, y, ptl);

late final _FixBrushOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> ptl),
    int Function(int hdc, int x, int y, Pointer<POINT> ptl)>('FixBrushOrgEx');

int FlattenPath(int hdc) => _FlattenPath(hdc);

late final _FlattenPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'FlattenPath');

int FloodFill(int hdc, int x, int y, int color) => _FloodFill(hdc, x, y, color);

late final _FloodFill = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color),
    int Function(int hdc, int x, int y, int color)>('FloodFill');

int FrameRgn(int hdc, int hrgn, int hbr, int w, int h) =>
    _FrameRgn(hdc, hrgn, hbr, w, h);

late final _FrameRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, IntPtr hbr, Int32 w, Int32 h),
    int Function(int hdc, int hrgn, int hbr, int w, int h)>('FrameRgn');

int GdiAlphaBlend(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        BLENDFUNCTION ftn) =>
    _GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc,
        xoriginSrc, yoriginSrc, wSrc, hSrc, ftn);

late final _GdiAlphaBlend = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Int32 xoriginDest,
        Int32 yoriginDest,
        Int32 wDest,
        Int32 hDest,
        IntPtr hdcSrc,
        Int32 xoriginSrc,
        Int32 yoriginSrc,
        Int32 wSrc,
        Int32 hSrc,
        BLENDFUNCTION ftn),
    int Function(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        BLENDFUNCTION ftn)>('GdiAlphaBlend');

int GdiComment(int hdc, int nSize, Pointer<Uint8> lpData) =>
    _GdiComment(hdc, nSize, lpData);

late final _GdiComment = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 nSize, Pointer<Uint8> lpData),
    int Function(int hdc, int nSize, Pointer<Uint8> lpData)>('GdiComment');

int GdiFlush() => _GdiFlush();

late final _GdiFlush =
    _gdi32.lookupFunction<Int32 Function(), int Function()>('GdiFlush');

int GdiGetBatchLimit() => _GdiGetBatchLimit();

late final _GdiGetBatchLimit = _gdi32
    .lookupFunction<Uint32 Function(), int Function()>('GdiGetBatchLimit');

int GdiGradientFill(int hdc, Pointer<TRIVERTEX> pVertex, int nVertex,
        Pointer pMesh, int nCount, int ulMode) =>
    _GdiGradientFill(hdc, pVertex, nVertex, pMesh, nCount, ulMode);

late final _GdiGradientFill = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TRIVERTEX> pVertex, Uint32 nVertex,
        Pointer pMesh, Uint32 nCount, Uint32 ulMode),
    int Function(int hdc, Pointer<TRIVERTEX> pVertex, int nVertex,
        Pointer pMesh, int nCount, int ulMode)>('GdiGradientFill');

int GdiSetBatchLimit(int dw) => _GdiSetBatchLimit(dw);

late final _GdiSetBatchLimit =
    _gdi32.lookupFunction<Uint32 Function(Uint32 dw), int Function(int dw)>(
        'GdiSetBatchLimit');

int GdiTransparentBlt(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        int crTransparent) =>
    _GdiTransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc,
        xoriginSrc, yoriginSrc, wSrc, hSrc, crTransparent);

late final _GdiTransparentBlt = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Int32 xoriginDest,
        Int32 yoriginDest,
        Int32 wDest,
        Int32 hDest,
        IntPtr hdcSrc,
        Int32 xoriginSrc,
        Int32 yoriginSrc,
        Int32 wSrc,
        Int32 hSrc,
        Uint32 crTransparent),
    int Function(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        int crTransparent)>('GdiTransparentBlt');

int GetArcDirection(int hdc) => _GetArcDirection(hdc);

late final _GetArcDirection =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetArcDirection');

int GetAspectRatioFilterEx(int hdc, Pointer<SIZE> lpsize) =>
    _GetAspectRatioFilterEx(hdc, lpsize);

late final _GetAspectRatioFilterEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<SIZE> lpsize),
    int Function(int hdc, Pointer<SIZE> lpsize)>('GetAspectRatioFilterEx');

int GetBitmapBits(int hbit, int cb, Pointer lpvBits) =>
    _GetBitmapBits(hbit, cb, lpvBits);

late final _GetBitmapBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbit, Int32 cb, Pointer lpvBits),
    int Function(int hbit, int cb, Pointer lpvBits)>('GetBitmapBits');

int GetBitmapDimensionEx(int hbit, Pointer<SIZE> lpsize) =>
    _GetBitmapDimensionEx(hbit, lpsize);

late final _GetBitmapDimensionEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbit, Pointer<SIZE> lpsize),
    int Function(int hbit, Pointer<SIZE> lpsize)>('GetBitmapDimensionEx');

int GetBkColor(int hdc) => _GetBkColor(hdc);

late final _GetBkColor =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetBkColor');

int GetBkMode(int hdc) => _GetBkMode(hdc);

late final _GetBkMode =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetBkMode');

int GetBoundsRect(int hdc, Pointer<RECT> lprect, int flags) =>
    _GetBoundsRect(hdc, lprect, flags);

late final _GetBoundsRect = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<RECT> lprect, Uint32 flags),
    int Function(int hdc, Pointer<RECT> lprect, int flags)>('GetBoundsRect');

int GetBrushOrgEx(int hdc, Pointer<POINT> lppt) => _GetBrushOrgEx(hdc, lppt);

late final _GetBrushOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt),
    int Function(int hdc, Pointer<POINT> lppt)>('GetBrushOrgEx');

int GetCharABCWidthsFloat(
        int hdc, int iFirst, int iLast, Pointer<ABCFLOAT> lpABC) =>
    _GetCharABCWidthsFloat(hdc, iFirst, iLast, lpABC);

late final _GetCharABCWidthsFloat = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<ABCFLOAT> lpABC),
    int Function(int hdc, int iFirst, int iLast,
        Pointer<ABCFLOAT> lpABC)>('GetCharABCWidthsFloatW');

int GetCharABCWidthsI(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi,
        Pointer<ABC> pabc) =>
    _GetCharABCWidthsI(hdc, giFirst, cgi, pgi, pabc);

late final _GetCharABCWidthsI = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 giFirst, Uint32 cgi, Pointer<Uint16> pgi,
        Pointer<ABC> pabc),
    int Function(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi,
        Pointer<ABC> pabc)>('GetCharABCWidthsI');

int GetCharABCWidths(int hdc, int wFirst, int wLast, Pointer<ABC> lpABC) =>
    _GetCharABCWidths(hdc, wFirst, wLast, lpABC);

late final _GetCharABCWidths = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 wFirst, Uint32 wLast, Pointer<ABC> lpABC),
    int Function(int hdc, int wFirst, int wLast,
        Pointer<ABC> lpABC)>('GetCharABCWidthsW');

int GetCharWidth32(int hdc, int iFirst, int iLast, Pointer<Int32> lpBuffer) =>
    _GetCharWidth32(hdc, iFirst, iLast, lpBuffer);

late final _GetCharWidth32 = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<Int32> lpBuffer),
    int Function(int hdc, int iFirst, int iLast,
        Pointer<Int32> lpBuffer)>('GetCharWidth32W');

int GetCharWidthFloat(
        int hdc, int iFirst, int iLast, Pointer<Float> lpBuffer) =>
    _GetCharWidthFloat(hdc, iFirst, iLast, lpBuffer);

late final _GetCharWidthFloat = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<Float> lpBuffer),
    int Function(int hdc, int iFirst, int iLast,
        Pointer<Float> lpBuffer)>('GetCharWidthFloatW');

int GetCharWidthI(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi,
        Pointer<Int32> piWidths) =>
    _GetCharWidthI(hdc, giFirst, cgi, pgi, piWidths);

late final _GetCharWidthI = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 giFirst, Uint32 cgi, Pointer<Uint16> pgi,
        Pointer<Int32> piWidths),
    int Function(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi,
        Pointer<Int32> piWidths)>('GetCharWidthI');

int GetCharWidth(int hdc, int iFirst, int iLast, Pointer<Int32> lpBuffer) =>
    _GetCharWidth(hdc, iFirst, iLast, lpBuffer);

late final _GetCharWidth = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<Int32> lpBuffer),
    int Function(int hdc, int iFirst, int iLast,
        Pointer<Int32> lpBuffer)>('GetCharWidthW');

int GetCharacterPlacement(int hdc, Pointer<Utf16> lpString, int nCount,
        int nMexExtent, Pointer<GCP_RESULTS> lpResults, int dwFlags) =>
    _GetCharacterPlacement(
        hdc, lpString, nCount, nMexExtent, lpResults, dwFlags);

late final _GetCharacterPlacement = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 nCount,
        Int32 nMexExtent, Pointer<GCP_RESULTS> lpResults, Uint32 dwFlags),
    int Function(int hdc, Pointer<Utf16> lpString, int nCount, int nMexExtent,
        Pointer<GCP_RESULTS> lpResults, int dwFlags)>('GetCharacterPlacementW');

int GetClipBox(int hdc, Pointer<RECT> lprect) => _GetClipBox(hdc, lprect);

late final _GetClipBox = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<RECT> lprect),
    int Function(int hdc, Pointer<RECT> lprect)>('GetClipBox');

int GetClipRgn(int hdc, int hrgn) => _GetClipRgn(hdc, hrgn);

late final _GetClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn),
    int Function(int hdc, int hrgn)>('GetClipRgn');

int GetColorAdjustment(int hdc, Pointer<COLORADJUSTMENT> lpca) =>
    _GetColorAdjustment(hdc, lpca);

late final _GetColorAdjustment = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<COLORADJUSTMENT> lpca),
    int Function(int hdc, Pointer<COLORADJUSTMENT> lpca)>('GetColorAdjustment');

int GetCurrentObject(int hdc, int type) => _GetCurrentObject(hdc, type);

late final _GetCurrentObject = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Uint32 type),
    int Function(int hdc, int type)>('GetCurrentObject');

int GetCurrentPositionEx(int hdc, Pointer<POINT> lppt) =>
    _GetCurrentPositionEx(hdc, lppt);

late final _GetCurrentPositionEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt),
    int Function(int hdc, Pointer<POINT> lppt)>('GetCurrentPositionEx');

int GetDCBrushColor(int hdc) => _GetDCBrushColor(hdc);

late final _GetDCBrushColor =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetDCBrushColor');

int GetDCOrgEx(int hdc, Pointer<POINT> lppt) => _GetDCOrgEx(hdc, lppt);

late final _GetDCOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt),
    int Function(int hdc, Pointer<POINT> lppt)>('GetDCOrgEx');

int GetDCPenColor(int hdc) => _GetDCPenColor(hdc);

late final _GetDCPenColor =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetDCPenColor');

int GetDIBColorTable(
        int hdc, int iStart, int cEntries, Pointer<RGBQUAD> prgbq) =>
    _GetDIBColorTable(hdc, iStart, cEntries, prgbq);

late final _GetDIBColorTable = _gdi32.lookupFunction<
    Uint32 Function(
        IntPtr hdc, Uint32 iStart, Uint32 cEntries, Pointer<RGBQUAD> prgbq),
    int Function(int hdc, int iStart, int cEntries,
        Pointer<RGBQUAD> prgbq)>('GetDIBColorTable');

int GetDIBits(int hdc, int hbm, int start, int cLines, Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi, int usage) =>
    _GetDIBits(hdc, hbm, start, cLines, lpvBits, lpbmi, usage);

late final _GetDIBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hbm, Uint32 start, Uint32 cLines,
        Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, Uint32 usage),
    int Function(int hdc, int hbm, int start, int cLines, Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi, int usage)>('GetDIBits');

int GetDeviceCaps(int hdc, int index) => _GetDeviceCaps(hdc, index);

late final _GetDeviceCaps = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 index),
    int Function(int hdc, int index)>('GetDeviceCaps');

int GetEnhMetaFileBits(int hEMF, int nSize, Pointer<Uint8> lpData) =>
    _GetEnhMetaFileBits(hEMF, nSize, lpData);

late final _GetEnhMetaFileBits = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hEMF, Uint32 nSize, Pointer<Uint8> lpData),
    int Function(
        int hEMF, int nSize, Pointer<Uint8> lpData)>('GetEnhMetaFileBits');

int GetEnhMetaFileDescription(
        int hemf, int cchBuffer, Pointer<Utf16> lpDescription) =>
    _GetEnhMetaFileDescription(hemf, cchBuffer, lpDescription);

late final _GetEnhMetaFileDescription = _gdi32.lookupFunction<
    Uint32 Function(
        IntPtr hemf, Uint32 cchBuffer, Pointer<Utf16> lpDescription),
    int Function(int hemf, int cchBuffer,
        Pointer<Utf16> lpDescription)>('GetEnhMetaFileDescriptionW');

int GetEnhMetaFileHeader(
        int hemf, int nSize, Pointer<ENHMETAHEADER> lpEnhMetaHeader) =>
    _GetEnhMetaFileHeader(hemf, nSize, lpEnhMetaHeader);

late final _GetEnhMetaFileHeader = _gdi32.lookupFunction<
    Uint32 Function(
        IntPtr hemf, Uint32 nSize, Pointer<ENHMETAHEADER> lpEnhMetaHeader),
    int Function(int hemf, int nSize,
        Pointer<ENHMETAHEADER> lpEnhMetaHeader)>('GetEnhMetaFileHeader');

int GetEnhMetaFilePaletteEntries(
        int hemf, int nNumEntries, Pointer<PALETTEENTRY> lpPaletteEntries) =>
    _GetEnhMetaFilePaletteEntries(hemf, nNumEntries, lpPaletteEntries);

late final _GetEnhMetaFilePaletteEntries = _gdi32.lookupFunction<
        Uint32 Function(IntPtr hemf, Uint32 nNumEntries,
            Pointer<PALETTEENTRY> lpPaletteEntries),
        int Function(
            int hemf, int nNumEntries, Pointer<PALETTEENTRY> lpPaletteEntries)>(
    'GetEnhMetaFilePaletteEntries');

int GetEnhMetaFile(Pointer<Utf16> lpName) => _GetEnhMetaFile(lpName);

late final _GetEnhMetaFile = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpName),
    int Function(Pointer<Utf16> lpName)>('GetEnhMetaFileW');

int GetFontData(
        int hdc, int dwTable, int dwOffset, Pointer pvBuffer, int cjBuffer) =>
    _GetFontData(hdc, dwTable, dwOffset, pvBuffer, cjBuffer);

late final _GetFontData = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 dwTable, Uint32 dwOffset,
        Pointer pvBuffer, Uint32 cjBuffer),
    int Function(int hdc, int dwTable, int dwOffset, Pointer pvBuffer,
        int cjBuffer)>('GetFontData');

int GetFontLanguageInfo(int hdc) => _GetFontLanguageInfo(hdc);

late final _GetFontLanguageInfo =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetFontLanguageInfo');

int GetFontUnicodeRanges(int hdc, Pointer<GLYPHSET> lpgs) =>
    _GetFontUnicodeRanges(hdc, lpgs);

late final _GetFontUnicodeRanges = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<GLYPHSET> lpgs),
    int Function(int hdc, Pointer<GLYPHSET> lpgs)>('GetFontUnicodeRanges');

int GetGlyphIndices(
        int hdc, Pointer<Utf16> lpstr, int c, Pointer<Uint16> pgi, int fl) =>
    _GetGlyphIndices(hdc, lpstr, c, pgi, fl);

late final _GetGlyphIndices = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<Utf16> lpstr, Int32 c,
        Pointer<Uint16> pgi, Uint32 fl),
    int Function(int hdc, Pointer<Utf16> lpstr, int c, Pointer<Uint16> pgi,
        int fl)>('GetGlyphIndicesW');

int GetGlyphOutline(
        int hdc,
        int uChar,
        int fuFormat,
        Pointer<GLYPHMETRICS> lpgm,
        int cjBuffer,
        Pointer pvBuffer,
        Pointer<MAT2> lpmat2) =>
    _GetGlyphOutline(hdc, uChar, fuFormat, lpgm, cjBuffer, pvBuffer, lpmat2);

late final _GetGlyphOutline = _gdi32.lookupFunction<
    Uint32 Function(
        IntPtr hdc,
        Uint32 uChar,
        Uint32 fuFormat,
        Pointer<GLYPHMETRICS> lpgm,
        Uint32 cjBuffer,
        Pointer pvBuffer,
        Pointer<MAT2> lpmat2),
    int Function(
        int hdc,
        int uChar,
        int fuFormat,
        Pointer<GLYPHMETRICS> lpgm,
        int cjBuffer,
        Pointer pvBuffer,
        Pointer<MAT2> lpmat2)>('GetGlyphOutlineW');

int GetGraphicsMode(int hdc) => _GetGraphicsMode(hdc);

late final _GetGraphicsMode =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetGraphicsMode');

int GetKerningPairs(int hdc, int nPairs, Pointer<KERNINGPAIR> lpKernPair) =>
    _GetKerningPairs(hdc, nPairs, lpKernPair);

late final _GetKerningPairs = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 nPairs, Pointer<KERNINGPAIR> lpKernPair),
    int Function(int hdc, int nPairs,
        Pointer<KERNINGPAIR> lpKernPair)>('GetKerningPairsW');

int GetLayout(int hdc) => _GetLayout(hdc);

late final _GetLayout =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetLayout');

int GetMapMode(int hdc) => _GetMapMode(hdc);

late final _GetMapMode =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetMapMode');

int GetMetaFileBitsEx(int hMF, int cbBuffer, Pointer lpData) =>
    _GetMetaFileBitsEx(hMF, cbBuffer, lpData);

late final _GetMetaFileBitsEx = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hMF, Uint32 cbBuffer, Pointer lpData),
    int Function(int hMF, int cbBuffer, Pointer lpData)>('GetMetaFileBitsEx');

int GetMetaFile(Pointer<Utf16> lpName) => _GetMetaFile(lpName);

late final _GetMetaFile = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpName),
    int Function(Pointer<Utf16> lpName)>('GetMetaFileW');

int GetMetaRgn(int hdc, int hrgn) => _GetMetaRgn(hdc, hrgn);

late final _GetMetaRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn),
    int Function(int hdc, int hrgn)>('GetMetaRgn');

int GetMiterLimit(int hdc, Pointer<Float> plimit) =>
    _GetMiterLimit(hdc, plimit);

late final _GetMiterLimit = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Float> plimit),
    int Function(int hdc, Pointer<Float> plimit)>('GetMiterLimit');

int GetNearestColor(int hdc, int color) => _GetNearestColor(hdc, color);

late final _GetNearestColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
    int Function(int hdc, int color)>('GetNearestColor');

int GetNearestPaletteIndex(int h, int color) =>
    _GetNearestPaletteIndex(h, color);

late final _GetNearestPaletteIndex = _gdi32.lookupFunction<
    Uint32 Function(IntPtr h, Uint32 color),
    int Function(int h, int color)>('GetNearestPaletteIndex');

int GetObjectType(int h) => _GetObjectType(h);

late final _GetObjectType =
    _gdi32.lookupFunction<Uint32 Function(IntPtr h), int Function(int h)>(
        'GetObjectType');

int GetObject(int h, int c, Pointer pv) => _GetObject(h, c, pv);

late final _GetObject = _gdi32.lookupFunction<
    Int32 Function(IntPtr h, Int32 c, Pointer pv),
    int Function(int h, int c, Pointer pv)>('GetObjectW');

int GetOutlineTextMetrics(
        int hdc, int cjCopy, Pointer<OUTLINETEXTMETRIC> potm) =>
    _GetOutlineTextMetrics(hdc, cjCopy, potm);

late final _GetOutlineTextMetrics = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 cjCopy, Pointer<OUTLINETEXTMETRIC> potm),
    int Function(int hdc, int cjCopy,
        Pointer<OUTLINETEXTMETRIC> potm)>('GetOutlineTextMetricsW');

int GetPaletteEntries(int hpal, int iStart, int cEntries,
        Pointer<PALETTEENTRY> pPalEntries) =>
    _GetPaletteEntries(hpal, iStart, cEntries, pPalEntries);

late final _GetPaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hpal, Uint32 iStart, Uint32 cEntries,
        Pointer<PALETTEENTRY> pPalEntries),
    int Function(int hpal, int iStart, int cEntries,
        Pointer<PALETTEENTRY> pPalEntries)>('GetPaletteEntries');

int GetPath(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) =>
    _GetPath(hdc, apt, aj, cpt);

late final _GetPath = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
    int Function(
        int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt)>('GetPath');

int GetPixel(int hdc, int x, int y) => _GetPixel(hdc, x, y);

late final _GetPixel = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('GetPixel');

int GetPolyFillMode(int hdc) => _GetPolyFillMode(hdc);

late final _GetPolyFillMode =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetPolyFillMode');

int GetROP2(int hdc) => _GetROP2(hdc);

late final _GetROP2 =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetROP2');

int GetRandomRgn(int hdc, int hrgn, int i) => _GetRandomRgn(hdc, hrgn, i);

late final _GetRandomRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, Int32 i),
    int Function(int hdc, int hrgn, int i)>('GetRandomRgn');

int GetRasterizerCaps(Pointer<RASTERIZER_STATUS> lpraststat, int cjBytes) =>
    _GetRasterizerCaps(lpraststat, cjBytes);

late final _GetRasterizerCaps = _gdi32.lookupFunction<
    Int32 Function(Pointer<RASTERIZER_STATUS> lpraststat, Uint32 cjBytes),
    int Function(Pointer<RASTERIZER_STATUS> lpraststat,
        int cjBytes)>('GetRasterizerCaps');

int GetRgnBox(int hrgn, Pointer<RECT> lprc) => _GetRgnBox(hrgn, lprc);

late final _GetRgnBox = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Pointer<RECT> lprc),
    int Function(int hrgn, Pointer<RECT> lprc)>('GetRgnBox');

int GetStockObject(int i) => _GetStockObject(i);

late final _GetStockObject =
    _gdi32.lookupFunction<IntPtr Function(Uint32 i), int Function(int i)>(
        'GetStockObject');

int GetStretchBltMode(int hdc) => _GetStretchBltMode(hdc);

late final _GetStretchBltMode =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetStretchBltMode');

int GetSystemPaletteEntries(
        int hdc, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries) =>
    _GetSystemPaletteEntries(hdc, iStart, cEntries, pPalEntries);

late final _GetSystemPaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 iStart, Uint32 cEntries,
        Pointer<PALETTEENTRY> pPalEntries),
    int Function(int hdc, int iStart, int cEntries,
        Pointer<PALETTEENTRY> pPalEntries)>('GetSystemPaletteEntries');

int GetSystemPaletteUse(int hdc) => _GetSystemPaletteUse(hdc);

late final _GetSystemPaletteUse =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetSystemPaletteUse');

int GetTextAlign(int hdc) => _GetTextAlign(hdc);

late final _GetTextAlign =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetTextAlign');

int GetTextCharacterExtra(int hdc) => _GetTextCharacterExtra(hdc);

late final _GetTextCharacterExtra =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetTextCharacterExtra');

int GetTextColor(int hdc) => _GetTextColor(hdc);

late final _GetTextColor =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'GetTextColor');

int GetTextExtentExPointI(
        int hdc,
        Pointer<Uint16> lpwszString,
        int cwchString,
        int nMaxExtent,
        Pointer<Int32> lpnFit,
        Pointer<Int32> lpnDx,
        Pointer<SIZE> lpSize) =>
    _GetTextExtentExPointI(
        hdc, lpwszString, cwchString, nMaxExtent, lpnFit, lpnDx, lpSize);

late final _GetTextExtentExPointI = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Pointer<Uint16> lpwszString,
        Int32 cwchString,
        Int32 nMaxExtent,
        Pointer<Int32> lpnFit,
        Pointer<Int32> lpnDx,
        Pointer<SIZE> lpSize),
    int Function(
        int hdc,
        Pointer<Uint16> lpwszString,
        int cwchString,
        int nMaxExtent,
        Pointer<Int32> lpnFit,
        Pointer<Int32> lpnDx,
        Pointer<SIZE> lpSize)>('GetTextExtentExPointI');

int GetTextExtentExPoint(
        int hdc,
        Pointer<Utf16> lpszString,
        int cchString,
        int nMaxExtent,
        Pointer<Int32> lpnFit,
        Pointer<Int32> lpnDx,
        Pointer<SIZE> lpSize) =>
    _GetTextExtentExPoint(
        hdc, lpszString, cchString, nMaxExtent, lpnFit, lpnDx, lpSize);

late final _GetTextExtentExPoint = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Pointer<Utf16> lpszString,
        Int32 cchString,
        Int32 nMaxExtent,
        Pointer<Int32> lpnFit,
        Pointer<Int32> lpnDx,
        Pointer<SIZE> lpSize),
    int Function(
        int hdc,
        Pointer<Utf16> lpszString,
        int cchString,
        int nMaxExtent,
        Pointer<Int32> lpnFit,
        Pointer<Int32> lpnDx,
        Pointer<SIZE> lpSize)>('GetTextExtentExPointW');

int GetTextExtentPoint32(
        int hdc, Pointer<Utf16> lpString, int c, Pointer<SIZE> psizl) =>
    _GetTextExtentPoint32(hdc, lpString, c, psizl);

late final _GetTextExtentPoint32 = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<Utf16> lpString, Int32 c, Pointer<SIZE> psizl),
    int Function(int hdc, Pointer<Utf16> lpString, int c,
        Pointer<SIZE> psizl)>('GetTextExtentPoint32W');

int GetTextExtentPointI(
        int hdc, Pointer<Uint16> pgiIn, int cgi, Pointer<SIZE> psize) =>
    _GetTextExtentPointI(hdc, pgiIn, cgi, psize);

late final _GetTextExtentPointI = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<Uint16> pgiIn, Int32 cgi, Pointer<SIZE> psize),
    int Function(int hdc, Pointer<Uint16> pgiIn, int cgi,
        Pointer<SIZE> psize)>('GetTextExtentPointI');

int GetTextExtentPoint(
        int hdc, Pointer<Utf16> lpString, int c, Pointer<SIZE> lpsz) =>
    _GetTextExtentPoint(hdc, lpString, c, lpsz);

late final _GetTextExtentPoint = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<Utf16> lpString, Int32 c, Pointer<SIZE> lpsz),
    int Function(int hdc, Pointer<Utf16> lpString, int c,
        Pointer<SIZE> lpsz)>('GetTextExtentPointW');

int GetTextFace(int hdc, int c, Pointer<Utf16> lpName) =>
    _GetTextFace(hdc, c, lpName);

late final _GetTextFace = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 c, Pointer<Utf16> lpName),
    int Function(int hdc, int c, Pointer<Utf16> lpName)>('GetTextFaceW');

int GetTextMetrics(int hdc, Pointer<TEXTMETRIC> lptm) =>
    _GetTextMetrics(hdc, lptm);

late final _GetTextMetrics = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TEXTMETRIC> lptm),
    int Function(int hdc, Pointer<TEXTMETRIC> lptm)>('GetTextMetricsW');

int GetViewportExtEx(int hdc, Pointer<SIZE> lpsize) =>
    _GetViewportExtEx(hdc, lpsize);

late final _GetViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<SIZE> lpsize),
    int Function(int hdc, Pointer<SIZE> lpsize)>('GetViewportExtEx');

int GetViewportOrgEx(int hdc, Pointer<POINT> lppoint) =>
    _GetViewportOrgEx(hdc, lppoint);

late final _GetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppoint),
    int Function(int hdc, Pointer<POINT> lppoint)>('GetViewportOrgEx');

int GetWinMetaFileBits(int hemf, int cbData16, Pointer<Uint8> pData16,
        int iMapMode, int hdcRef) =>
    _GetWinMetaFileBits(hemf, cbData16, pData16, iMapMode, hdcRef);

late final _GetWinMetaFileBits = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hemf, Uint32 cbData16, Pointer<Uint8> pData16,
        Int32 iMapMode, IntPtr hdcRef),
    int Function(int hemf, int cbData16, Pointer<Uint8> pData16, int iMapMode,
        int hdcRef)>('GetWinMetaFileBits');

int GetWindowExtEx(int hdc, Pointer<SIZE> lpsize) =>
    _GetWindowExtEx(hdc, lpsize);

late final _GetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<SIZE> lpsize),
    int Function(int hdc, Pointer<SIZE> lpsize)>('GetWindowExtEx');

int GetWindowOrgEx(int hdc, Pointer<POINT> lppoint) =>
    _GetWindowOrgEx(hdc, lppoint);

late final _GetWindowOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppoint),
    int Function(int hdc, Pointer<POINT> lppoint)>('GetWindowOrgEx');

int GetWorldTransform(int hdc, Pointer<XFORM> lpxf) =>
    _GetWorldTransform(hdc, lpxf);

late final _GetWorldTransform = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<XFORM> lpxf),
    int Function(int hdc, Pointer<XFORM> lpxf)>('GetWorldTransform');

int IntersectClipRect(int hdc, int left, int top, int right, int bottom) =>
    _IntersectClipRect(hdc, left, top, right, bottom);

late final _IntersectClipRect = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(int hdc, int left, int top, int right,
        int bottom)>('IntersectClipRect');

int InvertRgn(int hdc, int hrgn) => _InvertRgn(hdc, hrgn);

late final _InvertRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn),
    int Function(int hdc, int hrgn)>('InvertRgn');

int LPtoDP(int hdc, Pointer<POINT> lppt, int c) => _LPtoDP(hdc, lppt, c);

late final _LPtoDP = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt, Int32 c),
    int Function(int hdc, Pointer<POINT> lppt, int c)>('LPtoDP');

int LineTo(int hdc, int x, int y) => _LineTo(hdc, x, y);

late final _LineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('LineTo');

int MaskBlt(
        int hdcDest,
        int xDest,
        int yDest,
        int width,
        int height,
        int hdcSrc,
        int xSrc,
        int ySrc,
        int hbmMask,
        int xMask,
        int yMask,
        int rop) =>
    _MaskBlt(hdcDest, xDest, yDest, width, height, hdcSrc, xSrc, ySrc, hbmMask,
        xMask, yMask, rop);

late final _MaskBlt = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Int32 xDest,
        Int32 yDest,
        Int32 width,
        Int32 height,
        IntPtr hdcSrc,
        Int32 xSrc,
        Int32 ySrc,
        IntPtr hbmMask,
        Int32 xMask,
        Int32 yMask,
        Uint32 rop),
    int Function(
        int hdcDest,
        int xDest,
        int yDest,
        int width,
        int height,
        int hdcSrc,
        int xSrc,
        int ySrc,
        int hbmMask,
        int xMask,
        int yMask,
        int rop)>('MaskBlt');

int ModifyWorldTransform(int hdc, Pointer<XFORM> lpxf, int mode) =>
    _ModifyWorldTransform(hdc, lpxf, mode);

late final _ModifyWorldTransform = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<XFORM> lpxf, Uint32 mode),
    int Function(
        int hdc, Pointer<XFORM> lpxf, int mode)>('ModifyWorldTransform');

int MoveToEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _MoveToEx(hdc, x, y, lppt);

late final _MoveToEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('MoveToEx');

int OffsetClipRgn(int hdc, int x, int y) => _OffsetClipRgn(hdc, x, y);

late final _OffsetClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('OffsetClipRgn');

int OffsetRgn(int hrgn, int x, int y) => _OffsetRgn(hrgn, x, y);

late final _OffsetRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Int32 x, Int32 y),
    int Function(int hrgn, int x, int y)>('OffsetRgn');

int OffsetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _OffsetViewportOrgEx(hdc, x, y, lppt);

late final _OffsetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(
        int hdc, int x, int y, Pointer<POINT> lppt)>('OffsetViewportOrgEx');

int OffsetWindowOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _OffsetWindowOrgEx(hdc, x, y, lppt);

late final _OffsetWindowOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(
        int hdc, int x, int y, Pointer<POINT> lppt)>('OffsetWindowOrgEx');

int PaintRgn(int hdc, int hrgn) => _PaintRgn(hdc, hrgn);

late final _PaintRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn),
    int Function(int hdc, int hrgn)>('PaintRgn');

int PatBlt(int hdc, int x, int y, int w, int h, int rop) =>
    _PatBlt(hdc, x, y, w, h, rop);

late final _PatBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 w, Int32 h, Uint32 rop),
    int Function(int hdc, int x, int y, int w, int h, int rop)>('PatBlt');

int PathToRegion(int hdc) => _PathToRegion(hdc);

late final _PathToRegion =
    _gdi32.lookupFunction<IntPtr Function(IntPtr hdc), int Function(int hdc)>(
        'PathToRegion');

int Pie(int hdc, int left, int top, int right, int bottom, int xr1, int yr1,
        int xr2, int yr2) =>
    _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);

late final _Pie = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2),
    int Function(int hdc, int left, int top, int right, int bottom, int xr1,
        int yr1, int xr2, int yr2)>('Pie');

int PlayEnhMetaFile(int hdc, int hmf, Pointer<RECT> lprect) =>
    _PlayEnhMetaFile(hdc, hmf, lprect);

late final _PlayEnhMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf, Pointer<RECT> lprect),
    int Function(int hdc, int hmf, Pointer<RECT> lprect)>('PlayEnhMetaFile');

int PlayEnhMetaFileRecord(int hdc, Pointer<HANDLETABLE> pht,
        Pointer<ENHMETARECORD> pmr, int cht) =>
    _PlayEnhMetaFileRecord(hdc, pht, pmr, cht);

late final _PlayEnhMetaFileRecord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<HANDLETABLE> pht,
        Pointer<ENHMETARECORD> pmr, Uint32 cht),
    int Function(int hdc, Pointer<HANDLETABLE> pht, Pointer<ENHMETARECORD> pmr,
        int cht)>('PlayEnhMetaFileRecord');

int PlayMetaFile(int hdc, int hmf) => _PlayMetaFile(hdc, hmf);

late final _PlayMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf),
    int Function(int hdc, int hmf)>('PlayMetaFile');

int PlayMetaFileRecord(int hdc, Pointer<HANDLETABLE> lpHandleTable,
        Pointer<METARECORD> lpMR, int noObjs) =>
    _PlayMetaFileRecord(hdc, lpHandleTable, lpMR, noObjs);

late final _PlayMetaFileRecord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<HANDLETABLE> lpHandleTable,
        Pointer<METARECORD> lpMR, Uint32 noObjs),
    int Function(int hdc, Pointer<HANDLETABLE> lpHandleTable,
        Pointer<METARECORD> lpMR, int noObjs)>('PlayMetaFileRecord');

int PlgBlt(int hdcDest, Pointer<POINT> lpPoint, int hdcSrc, int xSrc, int ySrc,
        int width, int height, int hbmMask, int xMask, int yMask) =>
    _PlgBlt(hdcDest, lpPoint, hdcSrc, xSrc, ySrc, width, height, hbmMask, xMask,
        yMask);

late final _PlgBlt = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Pointer<POINT> lpPoint,
        IntPtr hdcSrc,
        Int32 xSrc,
        Int32 ySrc,
        Int32 width,
        Int32 height,
        IntPtr hbmMask,
        Int32 xMask,
        Int32 yMask),
    int Function(
        int hdcDest,
        Pointer<POINT> lpPoint,
        int hdcSrc,
        int xSrc,
        int ySrc,
        int width,
        int height,
        int hbmMask,
        int xMask,
        int yMask)>('PlgBlt');

int PolyBezier(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezier(hdc, apt, cpt);

late final _PolyBezier = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezier');

int PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolyBezierTo(hdc, apt, cpt);

late final _PolyBezierTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolyBezierTo');

int PolyDraw(int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt) =>
    _PolyDraw(hdc, apt, aj, cpt);

late final _PolyDraw = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Uint8> aj, Int32 cpt),
    int Function(
        int hdc, Pointer<POINT> apt, Pointer<Uint8> aj, int cpt)>('PolyDraw');

int PolyPolygon(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) =>
    _PolyPolygon(hdc, apt, asz, csz);

late final _PolyPolygon = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Int32> asz, Int32 csz),
    int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz,
        int csz)>('PolyPolygon');

int PolyPolyline(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz) =>
    _PolyPolyline(hdc, apt, asz, csz);

late final _PolyPolyline = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Pointer<POINT> apt, Pointer<Uint32> asz, Uint32 csz),
    int Function(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz,
        int csz)>('PolyPolyline');

int PolyTextOut(int hdc, Pointer<POLYTEXT> ppt, int nstrings) =>
    _PolyTextOut(hdc, ppt, nstrings);

late final _PolyTextOut = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POLYTEXT> ppt, Int32 nstrings),
    int Function(int hdc, Pointer<POLYTEXT> ppt, int nstrings)>('PolyTextOutW');

int Polygon(int hdc, Pointer<POINT> apt, int cpt) => _Polygon(hdc, apt, cpt);

late final _Polygon = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polygon');

int Polyline(int hdc, Pointer<POINT> apt, int cpt) => _Polyline(hdc, apt, cpt);

late final _Polyline = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('Polyline');

int PolylineTo(int hdc, Pointer<POINT> apt, int cpt) =>
    _PolylineTo(hdc, apt, cpt);

late final _PolylineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt),
    int Function(int hdc, Pointer<POINT> apt, int cpt)>('PolylineTo');

int PtInRegion(int hrgn, int x, int y) => _PtInRegion(hrgn, x, y);

late final _PtInRegion = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Int32 x, Int32 y),
    int Function(int hrgn, int x, int y)>('PtInRegion');

int PtVisible(int hdc, int x, int y) => _PtVisible(hdc, x, y);

late final _PtVisible = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y),
    int Function(int hdc, int x, int y)>('PtVisible');

int RealizePalette(int hdc) => _RealizePalette(hdc);

late final _RealizePalette =
    _gdi32.lookupFunction<Uint32 Function(IntPtr hdc), int Function(int hdc)>(
        'RealizePalette');

int RectInRegion(int hrgn, Pointer<RECT> lprect) => _RectInRegion(hrgn, lprect);

late final _RectInRegion = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Pointer<RECT> lprect),
    int Function(int hrgn, Pointer<RECT> lprect)>('RectInRegion');

int RectVisible(int hdc, Pointer<RECT> lprect) => _RectVisible(hdc, lprect);

late final _RectVisible = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<RECT> lprect),
    int Function(int hdc, Pointer<RECT> lprect)>('RectVisible');

int Rectangle(int hdc, int left, int top, int right, int bottom) =>
    _Rectangle(hdc, left, top, right, bottom);

late final _Rectangle = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(
        int hdc, int left, int top, int right, int bottom)>('Rectangle');

int RemoveFontMemResourceEx(int h) => _RemoveFontMemResourceEx(h);

late final _RemoveFontMemResourceEx =
    _gdi32.lookupFunction<Int32 Function(IntPtr h), int Function(int h)>(
        'RemoveFontMemResourceEx');

int RemoveFontResourceEx(Pointer<Utf16> name, int fl, Pointer pdv) =>
    _RemoveFontResourceEx(name, fl, pdv);

late final _RemoveFontResourceEx = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer pdv),
    int Function(
        Pointer<Utf16> name, int fl, Pointer pdv)>('RemoveFontResourceExW');

int RemoveFontResource(Pointer<Utf16> lpFileName) =>
    _RemoveFontResource(lpFileName);

late final _RemoveFontResource = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpFileName),
    int Function(Pointer<Utf16> lpFileName)>('RemoveFontResourceW');

int ResizePalette(int hpal, int n) => _ResizePalette(hpal, n);

late final _ResizePalette = _gdi32.lookupFunction<
    Int32 Function(IntPtr hpal, Uint32 n),
    int Function(int hpal, int n)>('ResizePalette');

int RestoreDC(int hdc, int nSavedDC) => _RestoreDC(hdc, nSavedDC);

late final _RestoreDC = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 nSavedDC),
    int Function(int hdc, int nSavedDC)>('RestoreDC');

int RoundRect(int hdc, int left, int top, int right, int bottom, int width,
        int height) =>
    _RoundRect(hdc, left, top, right, bottom, width, height);

late final _RoundRect = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom,
        Int32 width, Int32 height),
    int Function(int hdc, int left, int top, int right, int bottom, int width,
        int height)>('RoundRect');

int SaveDC(int hdc) => _SaveDC(hdc);

late final _SaveDC =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'SaveDC');

int ScaleViewportExtEx(
        int hdc, int xn, int dx, int yn, int yd, Pointer<SIZE> lpsz) =>
    _ScaleViewportExtEx(hdc, xn, dx, yn, yd, lpsz);

late final _ScaleViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 xn, Int32 dx, Int32 yn, Int32 yd, Pointer<SIZE> lpsz),
    int Function(int hdc, int xn, int dx, int yn, int yd,
        Pointer<SIZE> lpsz)>('ScaleViewportExtEx');

int ScaleWindowExtEx(
        int hdc, int xn, int xd, int yn, int yd, Pointer<SIZE> lpsz) =>
    _ScaleWindowExtEx(hdc, xn, xd, yn, yd, lpsz);

late final _ScaleWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 xn, Int32 xd, Int32 yn, Int32 yd, Pointer<SIZE> lpsz),
    int Function(int hdc, int xn, int xd, int yn, int yd,
        Pointer<SIZE> lpsz)>('ScaleWindowExtEx');

int SelectClipPath(int hdc, int mode) => _SelectClipPath(hdc, mode);

late final _SelectClipPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode),
    int Function(int hdc, int mode)>('SelectClipPath');

int SelectClipRgn(int hdc, int hrgn) => _SelectClipRgn(hdc, hrgn);

late final _SelectClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn),
    int Function(int hdc, int hrgn)>('SelectClipRgn');

int SelectObject(int hdc, int h) => _SelectObject(hdc, h);

late final _SelectObject = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, IntPtr h),
    int Function(int hdc, int h)>('SelectObject');

int SelectPalette(int hdc, int hPal, int bForceBkgd) =>
    _SelectPalette(hdc, hPal, bForceBkgd);

late final _SelectPalette = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, IntPtr hPal, Int32 bForceBkgd),
    int Function(int hdc, int hPal, int bForceBkgd)>('SelectPalette');

int SetArcDirection(int hdc, int dir) => _SetArcDirection(hdc, dir);

late final _SetArcDirection = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 dir),
    int Function(int hdc, int dir)>('SetArcDirection');

int SetBitmapBits(int hbm, int cb, Pointer pvBits) =>
    _SetBitmapBits(hbm, cb, pvBits);

late final _SetBitmapBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbm, Uint32 cb, Pointer pvBits),
    int Function(int hbm, int cb, Pointer pvBits)>('SetBitmapBits');

int SetBitmapDimensionEx(int hbm, int w, int h, Pointer<SIZE> lpsz) =>
    _SetBitmapDimensionEx(hbm, w, h, lpsz);

late final _SetBitmapDimensionEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbm, Int32 w, Int32 h, Pointer<SIZE> lpsz),
    int Function(
        int hbm, int w, int h, Pointer<SIZE> lpsz)>('SetBitmapDimensionEx');

int SetBkColor(int hdc, int color) => _SetBkColor(hdc, color);

late final _SetBkColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
    int Function(int hdc, int color)>('SetBkColor');

int SetBkMode(int hdc, int mode) => _SetBkMode(hdc, mode);

late final _SetBkMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode),
    int Function(int hdc, int mode)>('SetBkMode');

int SetBoundsRect(int hdc, Pointer<RECT> lprect, int flags) =>
    _SetBoundsRect(hdc, lprect, flags);

late final _SetBoundsRect = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<RECT> lprect, Uint32 flags),
    int Function(int hdc, Pointer<RECT> lprect, int flags)>('SetBoundsRect');

int SetBrushOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _SetBrushOrgEx(hdc, x, y, lppt);

late final _SetBrushOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('SetBrushOrgEx');

int SetColorAdjustment(int hdc, Pointer<COLORADJUSTMENT> lpca) =>
    _SetColorAdjustment(hdc, lpca);

late final _SetColorAdjustment = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<COLORADJUSTMENT> lpca),
    int Function(int hdc, Pointer<COLORADJUSTMENT> lpca)>('SetColorAdjustment');

int SetDCBrushColor(int hdc, int color) => _SetDCBrushColor(hdc, color);

late final _SetDCBrushColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
    int Function(int hdc, int color)>('SetDCBrushColor');

int SetDCPenColor(int hdc, int color) => _SetDCPenColor(hdc, color);

late final _SetDCPenColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
    int Function(int hdc, int color)>('SetDCPenColor');

int SetDIBColorTable(
        int hdc, int iStart, int cEntries, Pointer<RGBQUAD> prgbq) =>
    _SetDIBColorTable(hdc, iStart, cEntries, prgbq);

late final _SetDIBColorTable = _gdi32.lookupFunction<
    Uint32 Function(
        IntPtr hdc, Uint32 iStart, Uint32 cEntries, Pointer<RGBQUAD> prgbq),
    int Function(int hdc, int iStart, int cEntries,
        Pointer<RGBQUAD> prgbq)>('SetDIBColorTable');

int SetDIBits(int hdc, int hbm, int start, int cLines, Pointer lpBits,
        Pointer<BITMAPINFO> lpbmi, int ColorUse) =>
    _SetDIBits(hdc, hbm, start, cLines, lpBits, lpbmi, ColorUse);

late final _SetDIBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hbm, Uint32 start, Uint32 cLines,
        Pointer lpBits, Pointer<BITMAPINFO> lpbmi, Uint32 ColorUse),
    int Function(int hdc, int hbm, int start, int cLines, Pointer lpBits,
        Pointer<BITMAPINFO> lpbmi, int ColorUse)>('SetDIBits');

int SetDIBitsToDevice(
        int hdc,
        int xDest,
        int yDest,
        int w,
        int h,
        int xSrc,
        int ySrc,
        int StartScan,
        int cLines,
        Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi,
        int ColorUse) =>
    _SetDIBitsToDevice(hdc, xDest, yDest, w, h, xSrc, ySrc, StartScan, cLines,
        lpvBits, lpbmi, ColorUse);

late final _SetDIBitsToDevice = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Int32 xDest,
        Int32 yDest,
        Uint32 w,
        Uint32 h,
        Int32 xSrc,
        Int32 ySrc,
        Uint32 StartScan,
        Uint32 cLines,
        Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi,
        Uint32 ColorUse),
    int Function(
        int hdc,
        int xDest,
        int yDest,
        int w,
        int h,
        int xSrc,
        int ySrc,
        int StartScan,
        int cLines,
        Pointer lpvBits,
        Pointer<BITMAPINFO> lpbmi,
        int ColorUse)>('SetDIBitsToDevice');

int SetEnhMetaFileBits(int nSize, Pointer<Uint8> pb) =>
    _SetEnhMetaFileBits(nSize, pb);

late final _SetEnhMetaFileBits = _gdi32.lookupFunction<
    IntPtr Function(Uint32 nSize, Pointer<Uint8> pb),
    int Function(int nSize, Pointer<Uint8> pb)>('SetEnhMetaFileBits');

int SetGraphicsMode(int hdc, int iMode) => _SetGraphicsMode(hdc, iMode);

late final _SetGraphicsMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iMode),
    int Function(int hdc, int iMode)>('SetGraphicsMode');

int SetLayout(int hdc, int l) => _SetLayout(hdc, l);

late final _SetLayout = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 l),
    int Function(int hdc, int l)>('SetLayout');

int SetMapMode(int hdc, int iMode) => _SetMapMode(hdc, iMode);

late final _SetMapMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iMode),
    int Function(int hdc, int iMode)>('SetMapMode');

int SetMapperFlags(int hdc, int flags) => _SetMapperFlags(hdc, flags);

late final _SetMapperFlags = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 flags),
    int Function(int hdc, int flags)>('SetMapperFlags');

int SetMetaFileBitsEx(int cbBuffer, Pointer<Uint8> lpData) =>
    _SetMetaFileBitsEx(cbBuffer, lpData);

late final _SetMetaFileBitsEx = _gdi32.lookupFunction<
    IntPtr Function(Uint32 cbBuffer, Pointer<Uint8> lpData),
    int Function(int cbBuffer, Pointer<Uint8> lpData)>('SetMetaFileBitsEx');

int SetMetaRgn(int hdc) => _SetMetaRgn(hdc);

late final _SetMetaRgn =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'SetMetaRgn');

int SetMiterLimit(int hdc, double limit, Pointer<Float> old) =>
    _SetMiterLimit(hdc, limit, old);

late final _SetMiterLimit = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Float limit, Pointer<Float> old),
    int Function(int hdc, double limit, Pointer<Float> old)>('SetMiterLimit');

int SetPaletteEntries(int hpal, int iStart, int cEntries,
        Pointer<PALETTEENTRY> pPalEntries) =>
    _SetPaletteEntries(hpal, iStart, cEntries, pPalEntries);

late final _SetPaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hpal, Uint32 iStart, Uint32 cEntries,
        Pointer<PALETTEENTRY> pPalEntries),
    int Function(int hpal, int iStart, int cEntries,
        Pointer<PALETTEENTRY> pPalEntries)>('SetPaletteEntries');

int SetPixel(int hdc, int x, int y, int color) => _SetPixel(hdc, x, y, color);

late final _SetPixel = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color),
    int Function(int hdc, int x, int y, int color)>('SetPixel');

int SetPixelV(int hdc, int x, int y, int color) => _SetPixelV(hdc, x, y, color);

late final _SetPixelV = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color),
    int Function(int hdc, int x, int y, int color)>('SetPixelV');

int SetPolyFillMode(int hdc, int mode) => _SetPolyFillMode(hdc, mode);

late final _SetPolyFillMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode),
    int Function(int hdc, int mode)>('SetPolyFillMode');

int SetROP2(int hdc, int rop2) => _SetROP2(hdc, rop2);

late final _SetROP2 = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 rop2),
    int Function(int hdc, int rop2)>('SetROP2');

int SetRectRgn(int hrgn, int left, int top, int right, int bottom) =>
    _SetRectRgn(hrgn, left, top, right, bottom);

late final _SetRectRgn = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hrgn, Int32 left, Int32 top, Int32 right, Int32 bottom),
    int Function(
        int hrgn, int left, int top, int right, int bottom)>('SetRectRgn');

int SetStretchBltMode(int hdc, int mode) => _SetStretchBltMode(hdc, mode);

late final _SetStretchBltMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode),
    int Function(int hdc, int mode)>('SetStretchBltMode');

int SetSystemPaletteUse(int hdc, int use) => _SetSystemPaletteUse(hdc, use);

late final _SetSystemPaletteUse = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 use),
    int Function(int hdc, int use)>('SetSystemPaletteUse');

int SetTextAlign(int hdc, int align) => _SetTextAlign(hdc, align);

late final _SetTextAlign = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 align),
    int Function(int hdc, int align)>('SetTextAlign');

int SetTextCharacterExtra(int hdc, int extra) =>
    _SetTextCharacterExtra(hdc, extra);

late final _SetTextCharacterExtra = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 extra),
    int Function(int hdc, int extra)>('SetTextCharacterExtra');

int SetTextColor(int hdc, int color) => _SetTextColor(hdc, color);

late final _SetTextColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color),
    int Function(int hdc, int color)>('SetTextColor');

int SetTextJustification(int hdc, int extra, int count) =>
    _SetTextJustification(hdc, extra, count);

late final _SetTextJustification = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 extra, Int32 count),
    int Function(int hdc, int extra, int count)>('SetTextJustification');

int SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) =>
    _SetViewportExtEx(hdc, x, y, lpsz);

late final _SetViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(
        int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetViewportExtEx');

int SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _SetViewportOrgEx(hdc, x, y, lppt);

late final _SetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(
        int hdc, int x, int y, Pointer<POINT> lppt)>('SetViewportOrgEx');

int SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) =>
    _SetWindowExtEx(hdc, x, y, lpsz);

late final _SetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz),
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)>('SetWindowExtEx');

int SetWindowOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) =>
    _SetWindowOrgEx(hdc, x, y, lppt);

late final _SetWindowOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt),
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)>('SetWindowOrgEx');

int SetWorldTransform(int hdc, Pointer<XFORM> lpxf) =>
    _SetWorldTransform(hdc, lpxf);

late final _SetWorldTransform = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<XFORM> lpxf),
    int Function(int hdc, Pointer<XFORM> lpxf)>('SetWorldTransform');

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

int StrokeAndFillPath(int hdc) => _StrokeAndFillPath(hdc);

late final _StrokeAndFillPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'StrokeAndFillPath');

int StrokePath(int hdc) => _StrokePath(hdc);

late final _StrokePath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'StrokePath');

int TextOut(int hdc, int x, int y, Pointer<Utf16> lpString, int c) =>
    _TextOut(hdc, x, y, lpString, c);

late final _TextOut = _gdi32.lookupFunction<
    Int32 Function(
        IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c),
    int Function(
        int hdc, int x, int y, Pointer<Utf16> lpString, int c)>('TextOutW');

int UnrealizeObject(int h) => _UnrealizeObject(h);

late final _UnrealizeObject =
    _gdi32.lookupFunction<Int32 Function(IntPtr h), int Function(int h)>(
        'UnrealizeObject');

int UpdateColors(int hdc) => _UpdateColors(hdc);

late final _UpdateColors =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'UpdateColors');

int WidenPath(int hdc) => _WidenPath(hdc);

late final _WidenPath =
    _gdi32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'WidenPath');

// -----------------------------------------------------------------------
// MSIMG32.dll
// -----------------------------------------------------------------------
final _msimg32 = DynamicLibrary.open('MSIMG32.dll');

int AlphaBlend(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        BLENDFUNCTION ftn) =>
    _AlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc,
        xoriginSrc, yoriginSrc, wSrc, hSrc, ftn);

late final _AlphaBlend = _msimg32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Int32 xoriginDest,
        Int32 yoriginDest,
        Int32 wDest,
        Int32 hDest,
        IntPtr hdcSrc,
        Int32 xoriginSrc,
        Int32 yoriginSrc,
        Int32 wSrc,
        Int32 hSrc,
        BLENDFUNCTION ftn),
    int Function(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        BLENDFUNCTION ftn)>('AlphaBlend');

int GradientFill(int hdc, Pointer<TRIVERTEX> pVertex, int nVertex,
        Pointer pMesh, int nMesh, int ulMode) =>
    _GradientFill(hdc, pVertex, nVertex, pMesh, nMesh, ulMode);

late final _GradientFill = _msimg32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TRIVERTEX> pVertex, Uint32 nVertex,
        Pointer pMesh, Uint32 nMesh, Uint32 ulMode),
    int Function(int hdc, Pointer<TRIVERTEX> pVertex, int nVertex,
        Pointer pMesh, int nMesh, int ulMode)>('GradientFill');

int TransparentBlt(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        int crTransparent) =>
    _TransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc,
        xoriginSrc, yoriginSrc, wSrc, hSrc, crTransparent);

late final _TransparentBlt = _msimg32.lookupFunction<
    Int32 Function(
        IntPtr hdcDest,
        Int32 xoriginDest,
        Int32 yoriginDest,
        Int32 wDest,
        Int32 hDest,
        IntPtr hdcSrc,
        Int32 xoriginSrc,
        Int32 yoriginSrc,
        Int32 wSrc,
        Int32 hSrc,
        Uint32 crTransparent),
    int Function(
        int hdcDest,
        int xoriginDest,
        int yoriginDest,
        int wDest,
        int hDest,
        int hdcSrc,
        int xoriginSrc,
        int yoriginSrc,
        int wSrc,
        int hSrc,
        int crTransparent)>('TransparentBlt');

// -----------------------------------------------------------------------
// OPENGL32.dll
// -----------------------------------------------------------------------
final _opengl32 = DynamicLibrary.open('OPENGL32.dll');

int wglSwapMultipleBuffers(int param0, Pointer<WGLSWAP> param1) =>
    _wglSwapMultipleBuffers(param0, param1);

late final _wglSwapMultipleBuffers = _opengl32.lookupFunction<
    Uint32 Function(Uint32 param0, Pointer<WGLSWAP> param1),
    int Function(
        int param0, Pointer<WGLSWAP> param1)>('wglSwapMultipleBuffers');

// -----------------------------------------------------------------------
// FONTSUB.dll
// -----------------------------------------------------------------------
final _fontsub = DynamicLibrary.open('FONTSUB.dll');

int CreateFontPackage(
        Pointer<Uint8> puchSrcBuffer,
        int ulSrcBufferSize,
        Pointer<Pointer<Uint8>> ppuchFontPackageBuffer,
        Pointer<Uint32> pulFontPackageBufferSize,
        Pointer<Uint32> pulBytesWritten,
        int usFlag,
        int usTTCIndex,
        int usSubsetFormat,
        int usSubsetLanguage,
        int usSubsetPlatform,
        int usSubsetEncoding,
        Pointer<Uint16> pusSubsetKeepList,
        int usSubsetListCount,
        Pointer<NativeFunction<CFP_ALLOCPROC>> lpfnAllocate,
        Pointer<NativeFunction<CFP_REALLOCPROC>> lpfnReAllocate,
        Pointer<NativeFunction<CFP_FREEPROC>> lpfnFree,
        Pointer lpvReserved) =>
    _CreateFontPackage(
        puchSrcBuffer,
        ulSrcBufferSize,
        ppuchFontPackageBuffer,
        pulFontPackageBufferSize,
        pulBytesWritten,
        usFlag,
        usTTCIndex,
        usSubsetFormat,
        usSubsetLanguage,
        usSubsetPlatform,
        usSubsetEncoding,
        pusSubsetKeepList,
        usSubsetListCount,
        lpfnAllocate,
        lpfnReAllocate,
        lpfnFree,
        lpvReserved);

late final _CreateFontPackage = _fontsub.lookupFunction<
    Uint32 Function(
        Pointer<Uint8> puchSrcBuffer,
        Uint32 ulSrcBufferSize,
        Pointer<Pointer<Uint8>> ppuchFontPackageBuffer,
        Pointer<Uint32> pulFontPackageBufferSize,
        Pointer<Uint32> pulBytesWritten,
        Uint16 usFlag,
        Uint16 usTTCIndex,
        Uint16 usSubsetFormat,
        Uint16 usSubsetLanguage,
        Uint32 usSubsetPlatform,
        Uint32 usSubsetEncoding,
        Pointer<Uint16> pusSubsetKeepList,
        Uint16 usSubsetListCount,
        Pointer<NativeFunction<CFP_ALLOCPROC>> lpfnAllocate,
        Pointer<NativeFunction<CFP_REALLOCPROC>> lpfnReAllocate,
        Pointer<NativeFunction<CFP_FREEPROC>> lpfnFree,
        Pointer lpvReserved),
    int Function(
        Pointer<Uint8> puchSrcBuffer,
        int ulSrcBufferSize,
        Pointer<Pointer<Uint8>> ppuchFontPackageBuffer,
        Pointer<Uint32> pulFontPackageBufferSize,
        Pointer<Uint32> pulBytesWritten,
        int usFlag,
        int usTTCIndex,
        int usSubsetFormat,
        int usSubsetLanguage,
        int usSubsetPlatform,
        int usSubsetEncoding,
        Pointer<Uint16> pusSubsetKeepList,
        int usSubsetListCount,
        Pointer<NativeFunction<CFP_ALLOCPROC>> lpfnAllocate,
        Pointer<NativeFunction<CFP_REALLOCPROC>> lpfnReAllocate,
        Pointer<NativeFunction<CFP_FREEPROC>> lpfnFree,
        Pointer lpvReserved)>('CreateFontPackage');

int MergeFontPackage(
        Pointer<Uint8> puchMergeFontBuffer,
        int ulMergeFontBufferSize,
        Pointer<Uint8> puchFontPackageBuffer,
        int ulFontPackageBufferSize,
        Pointer<Pointer<Uint8>> ppuchDestBuffer,
        Pointer<Uint32> pulDestBufferSize,
        Pointer<Uint32> pulBytesWritten,
        int usMode,
        Pointer<NativeFunction<CFP_ALLOCPROC>> lpfnAllocate,
        Pointer<NativeFunction<CFP_REALLOCPROC>> lpfnReAllocate,
        Pointer<NativeFunction<CFP_FREEPROC>> lpfnFree,
        Pointer lpvReserved) =>
    _MergeFontPackage(
        puchMergeFontBuffer,
        ulMergeFontBufferSize,
        puchFontPackageBuffer,
        ulFontPackageBufferSize,
        ppuchDestBuffer,
        pulDestBufferSize,
        pulBytesWritten,
        usMode,
        lpfnAllocate,
        lpfnReAllocate,
        lpfnFree,
        lpvReserved);

late final _MergeFontPackage = _fontsub.lookupFunction<
    Uint32 Function(
        Pointer<Uint8> puchMergeFontBuffer,
        Uint32 ulMergeFontBufferSize,
        Pointer<Uint8> puchFontPackageBuffer,
        Uint32 ulFontPackageBufferSize,
        Pointer<Pointer<Uint8>> ppuchDestBuffer,
        Pointer<Uint32> pulDestBufferSize,
        Pointer<Uint32> pulBytesWritten,
        Uint16 usMode,
        Pointer<NativeFunction<CFP_ALLOCPROC>> lpfnAllocate,
        Pointer<NativeFunction<CFP_REALLOCPROC>> lpfnReAllocate,
        Pointer<NativeFunction<CFP_FREEPROC>> lpfnFree,
        Pointer lpvReserved),
    int Function(
        Pointer<Uint8> puchMergeFontBuffer,
        int ulMergeFontBufferSize,
        Pointer<Uint8> puchFontPackageBuffer,
        int ulFontPackageBufferSize,
        Pointer<Pointer<Uint8>> ppuchDestBuffer,
        Pointer<Uint32> pulDestBufferSize,
        Pointer<Uint32> pulBytesWritten,
        int usMode,
        Pointer<NativeFunction<CFP_ALLOCPROC>> lpfnAllocate,
        Pointer<NativeFunction<CFP_REALLOCPROC>> lpfnReAllocate,
        Pointer<NativeFunction<CFP_FREEPROC>> lpfnFree,
        Pointer lpvReserved)>('MergeFontPackage');

// -----------------------------------------------------------------------
// t2embed.dll
// -----------------------------------------------------------------------
final _t2embed = DynamicLibrary.open('t2embed.dll');

int TTCharToUnicode(int hDC, Pointer<Uint8> pucCharCodes, int ulCharCodeSize,
        Pointer<Uint16> pusShortCodes, int ulShortCodeSize, int ulFlags) =>
    _TTCharToUnicode(hDC, pucCharCodes, ulCharCodeSize, pusShortCodes,
        ulShortCodeSize, ulFlags);

late final _TTCharToUnicode = _t2embed.lookupFunction<
    Int32 Function(
        IntPtr hDC,
        Pointer<Uint8> pucCharCodes,
        Uint32 ulCharCodeSize,
        Pointer<Uint16> pusShortCodes,
        Uint32 ulShortCodeSize,
        Uint32 ulFlags),
    int Function(
        int hDC,
        Pointer<Uint8> pucCharCodes,
        int ulCharCodeSize,
        Pointer<Uint16> pusShortCodes,
        int ulShortCodeSize,
        int ulFlags)>('TTCharToUnicode');

int TTDeleteEmbeddedFont(
        int hFontReference, int ulFlags, Pointer<Uint32> pulStatus) =>
    _TTDeleteEmbeddedFont(hFontReference, ulFlags, pulStatus);

late final _TTDeleteEmbeddedFont = _t2embed.lookupFunction<
    Int32 Function(
        IntPtr hFontReference, Uint32 ulFlags, Pointer<Uint32> pulStatus),
    int Function(int hFontReference, int ulFlags,
        Pointer<Uint32> pulStatus)>('TTDeleteEmbeddedFont');

int TTEmbedFont(
        int hDC,
        int ulFlags,
        int ulCharSet,
        Pointer<Uint32> pulPrivStatus,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<WRITEEMBEDPROC>> lpfnWriteToStream,
        Pointer lpvWriteStream,
        Pointer<Uint16> pusCharCodeSet,
        int usCharCodeCount,
        int usLanguage,
        Pointer<TTEMBEDINFO> pTTEmbedInfo) =>
    _TTEmbedFont(
        hDC,
        ulFlags,
        ulCharSet,
        pulPrivStatus,
        pulStatus,
        lpfnWriteToStream,
        lpvWriteStream,
        pusCharCodeSet,
        usCharCodeCount,
        usLanguage,
        pTTEmbedInfo);

late final _TTEmbedFont = _t2embed.lookupFunction<
    Int32 Function(
        IntPtr hDC,
        Uint32 ulFlags,
        Uint32 ulCharSet,
        Pointer<Uint32> pulPrivStatus,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<WRITEEMBEDPROC>> lpfnWriteToStream,
        Pointer lpvWriteStream,
        Pointer<Uint16> pusCharCodeSet,
        Uint16 usCharCodeCount,
        Uint16 usLanguage,
        Pointer<TTEMBEDINFO> pTTEmbedInfo),
    int Function(
        int hDC,
        int ulFlags,
        int ulCharSet,
        Pointer<Uint32> pulPrivStatus,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<WRITEEMBEDPROC>> lpfnWriteToStream,
        Pointer lpvWriteStream,
        Pointer<Uint16> pusCharCodeSet,
        int usCharCodeCount,
        int usLanguage,
        Pointer<TTEMBEDINFO> pTTEmbedInfo)>('TTEmbedFont');

int TTEmbedFontEx(
        int hDC,
        int ulFlags,
        int ulCharSet,
        Pointer<Uint32> pulPrivStatus,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<WRITEEMBEDPROC>> lpfnWriteToStream,
        Pointer lpvWriteStream,
        Pointer<Uint32> pulCharCodeSet,
        int usCharCodeCount,
        int usLanguage,
        Pointer<TTEMBEDINFO> pTTEmbedInfo) =>
    _TTEmbedFontEx(
        hDC,
        ulFlags,
        ulCharSet,
        pulPrivStatus,
        pulStatus,
        lpfnWriteToStream,
        lpvWriteStream,
        pulCharCodeSet,
        usCharCodeCount,
        usLanguage,
        pTTEmbedInfo);

late final _TTEmbedFontEx = _t2embed.lookupFunction<
    Int32 Function(
        IntPtr hDC,
        Uint32 ulFlags,
        Uint32 ulCharSet,
        Pointer<Uint32> pulPrivStatus,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<WRITEEMBEDPROC>> lpfnWriteToStream,
        Pointer lpvWriteStream,
        Pointer<Uint32> pulCharCodeSet,
        Uint16 usCharCodeCount,
        Uint16 usLanguage,
        Pointer<TTEMBEDINFO> pTTEmbedInfo),
    int Function(
        int hDC,
        int ulFlags,
        int ulCharSet,
        Pointer<Uint32> pulPrivStatus,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<WRITEEMBEDPROC>> lpfnWriteToStream,
        Pointer lpvWriteStream,
        Pointer<Uint32> pulCharCodeSet,
        int usCharCodeCount,
        int usLanguage,
        Pointer<TTEMBEDINFO> pTTEmbedInfo)>('TTEmbedFontEx');

int TTEnableEmbeddingForFacename(Pointer<Utf8> lpszFacename, int bEnable) =>
    _TTEnableEmbeddingForFacename(lpszFacename, bEnable);

late final _TTEnableEmbeddingForFacename = _t2embed.lookupFunction<
    Int32 Function(Pointer<Utf8> lpszFacename, Int32 bEnable),
    int Function(Pointer<Utf8> lpszFacename,
        int bEnable)>('TTEnableEmbeddingForFacename');

int TTGetEmbeddedFontInfo(
        int ulFlags,
        Pointer<Uint32> pulPrivStatus,
        int ulPrivs,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<READEMBEDPROC>> lpfnReadFromStream,
        Pointer lpvReadStream,
        Pointer<TTLOADINFO> pTTLoadInfo) =>
    _TTGetEmbeddedFontInfo(ulFlags, pulPrivStatus, ulPrivs, pulStatus,
        lpfnReadFromStream, lpvReadStream, pTTLoadInfo);

late final _TTGetEmbeddedFontInfo = _t2embed.lookupFunction<
    Int32 Function(
        Uint32 ulFlags,
        Pointer<Uint32> pulPrivStatus,
        Uint32 ulPrivs,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<READEMBEDPROC>> lpfnReadFromStream,
        Pointer lpvReadStream,
        Pointer<TTLOADINFO> pTTLoadInfo),
    int Function(
        int ulFlags,
        Pointer<Uint32> pulPrivStatus,
        int ulPrivs,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<READEMBEDPROC>> lpfnReadFromStream,
        Pointer lpvReadStream,
        Pointer<TTLOADINFO> pTTLoadInfo)>('TTGetEmbeddedFontInfo');

int TTGetEmbeddingType(int hDC, Pointer<Uint32> pulEmbedType) =>
    _TTGetEmbeddingType(hDC, pulEmbedType);

late final _TTGetEmbeddingType = _t2embed.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<Uint32> pulEmbedType),
    int Function(int hDC, Pointer<Uint32> pulEmbedType)>('TTGetEmbeddingType');

int TTGetNewFontName(
        Pointer<IntPtr> phFontReference,
        Pointer<Utf16> wzWinFamilyName,
        int cchMaxWinName,
        Pointer<Utf8> szMacFamilyName,
        int cchMaxMacName) =>
    _TTGetNewFontName(phFontReference, wzWinFamilyName, cchMaxWinName,
        szMacFamilyName, cchMaxMacName);

late final _TTGetNewFontName = _t2embed.lookupFunction<
    Int32 Function(
        Pointer<IntPtr> phFontReference,
        Pointer<Utf16> wzWinFamilyName,
        Int32 cchMaxWinName,
        Pointer<Utf8> szMacFamilyName,
        Int32 cchMaxMacName),
    int Function(
        Pointer<IntPtr> phFontReference,
        Pointer<Utf16> wzWinFamilyName,
        int cchMaxWinName,
        Pointer<Utf8> szMacFamilyName,
        int cchMaxMacName)>('TTGetNewFontName');

int TTIsEmbeddingEnabled(int hDC, Pointer<Int32> pbEnabled) =>
    _TTIsEmbeddingEnabled(hDC, pbEnabled);

late final _TTIsEmbeddingEnabled = _t2embed.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<Int32> pbEnabled),
    int Function(int hDC, Pointer<Int32> pbEnabled)>('TTIsEmbeddingEnabled');

int TTIsEmbeddingEnabledForFacename(
        Pointer<Utf8> lpszFacename, Pointer<Int32> pbEnabled) =>
    _TTIsEmbeddingEnabledForFacename(lpszFacename, pbEnabled);

late final _TTIsEmbeddingEnabledForFacename = _t2embed.lookupFunction<
    Int32 Function(Pointer<Utf8> lpszFacename, Pointer<Int32> pbEnabled),
    int Function(Pointer<Utf8> lpszFacename,
        Pointer<Int32> pbEnabled)>('TTIsEmbeddingEnabledForFacename');

int TTLoadEmbeddedFont(
        Pointer<IntPtr> phFontReference,
        int ulFlags,
        Pointer<Uint32> pulPrivStatus,
        int ulPrivs,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<READEMBEDPROC>> lpfnReadFromStream,
        Pointer lpvReadStream,
        Pointer<Utf16> szWinFamilyName,
        Pointer<Utf8> szMacFamilyName,
        Pointer<TTLOADINFO> pTTLoadInfo) =>
    _TTLoadEmbeddedFont(
        phFontReference,
        ulFlags,
        pulPrivStatus,
        ulPrivs,
        pulStatus,
        lpfnReadFromStream,
        lpvReadStream,
        szWinFamilyName,
        szMacFamilyName,
        pTTLoadInfo);

late final _TTLoadEmbeddedFont = _t2embed.lookupFunction<
    Int32 Function(
        Pointer<IntPtr> phFontReference,
        Uint32 ulFlags,
        Pointer<Uint32> pulPrivStatus,
        Uint32 ulPrivs,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<READEMBEDPROC>> lpfnReadFromStream,
        Pointer lpvReadStream,
        Pointer<Utf16> szWinFamilyName,
        Pointer<Utf8> szMacFamilyName,
        Pointer<TTLOADINFO> pTTLoadInfo),
    int Function(
        Pointer<IntPtr> phFontReference,
        int ulFlags,
        Pointer<Uint32> pulPrivStatus,
        int ulPrivs,
        Pointer<Uint32> pulStatus,
        Pointer<NativeFunction<READEMBEDPROC>> lpfnReadFromStream,
        Pointer lpvReadStream,
        Pointer<Utf16> szWinFamilyName,
        Pointer<Utf8> szMacFamilyName,
        Pointer<TTLOADINFO> pTTLoadInfo)>('TTLoadEmbeddedFont');

int TTRunValidationTests(
        int hDC, Pointer<TTVALIDATIONTESTSPARAMS> pTestParam) =>
    _TTRunValidationTests(hDC, pTestParam);

late final _TTRunValidationTests = _t2embed.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<TTVALIDATIONTESTSPARAMS> pTestParam),
    int Function(int hDC,
        Pointer<TTVALIDATIONTESTSPARAMS> pTestParam)>('TTRunValidationTests');

int TTRunValidationTestsEx(
        int hDC, Pointer<TTVALIDATIONTESTSPARAMSEX> pTestParam) =>
    _TTRunValidationTestsEx(hDC, pTestParam);

late final _TTRunValidationTestsEx = _t2embed.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<TTVALIDATIONTESTSPARAMSEX> pTestParam),
    int Function(
        int hDC,
        Pointer<TTVALIDATIONTESTSPARAMSEX>
            pTestParam)>('TTRunValidationTestsEx');

// -----------------------------------------------------------------------
// USER32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('USER32.dll');

int BeginPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _BeginPaint(hWnd, lpPaint);

late final _BeginPaint = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('BeginPaint');

int ClientToScreen(int hWnd, Pointer<POINT> lpPoint) =>
    _ClientToScreen(hWnd, lpPoint);

late final _ClientToScreen = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd, Pointer<POINT> lpPoint)>('ClientToScreen');

int CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc) =>
    _CopyRect(lprcDst, lprcSrc);

late final _CopyRect = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc)>('CopyRect');

int DrawAnimatedRects(
        int hwnd, int idAni, Pointer<RECT> lprcFrom, Pointer<RECT> lprcTo) =>
    _DrawAnimatedRects(hwnd, idAni, lprcFrom, lprcTo);

late final _DrawAnimatedRects = _user32.lookupFunction<
    Int32 Function(
        IntPtr hwnd, Int32 idAni, Pointer<RECT> lprcFrom, Pointer<RECT> lprcTo),
    int Function(int hwnd, int idAni, Pointer<RECT> lprcFrom,
        Pointer<RECT> lprcTo)>('DrawAnimatedRects');

int DrawCaption(int hwnd, int hdc, Pointer<RECT> lprect, int flags) =>
    _DrawCaption(hwnd, hdc, lprect, flags);

late final _DrawCaption = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, IntPtr hdc, Pointer<RECT> lprect, Uint32 flags),
    int Function(
        int hwnd, int hdc, Pointer<RECT> lprect, int flags)>('DrawCaption');

int DrawEdge(int hdc, Pointer<RECT> qrc, int edge, int grfFlags) =>
    _DrawEdge(hdc, qrc, edge, grfFlags);

late final _DrawEdge = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<RECT> qrc, Uint32 edge, Uint32 grfFlags),
    int Function(
        int hdc, Pointer<RECT> qrc, int edge, int grfFlags)>('DrawEdge');

int DrawFocusRect(int hDC, Pointer<RECT> lprc) => _DrawFocusRect(hDC, lprc);

late final _DrawFocusRect = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<RECT> lprc),
    int Function(int hDC, Pointer<RECT> lprc)>('DrawFocusRect');

int DrawFrameControl(
        int param0, Pointer<RECT> param1, int param2, int param3) =>
    _DrawFrameControl(param0, param1, param2, param3);

late final _DrawFrameControl = _user32.lookupFunction<
    Int32 Function(
        IntPtr param0, Pointer<RECT> param1, Uint32 param2, Uint32 param3),
    int Function(int param0, Pointer<RECT> param1, int param2,
        int param3)>('DrawFrameControl');

int DrawState(
        int hdc,
        int hbrFore,
        Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
        int lData,
        int wData,
        int x,
        int y,
        int cx,
        int cy,
        int uFlags) =>
    _DrawState(hdc, hbrFore, qfnCallBack, lData, wData, x, y, cx, cy, uFlags);

late final _DrawState = _user32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        IntPtr hbrFore,
        Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
        IntPtr lData,
        IntPtr wData,
        Int32 x,
        Int32 y,
        Int32 cx,
        Int32 cy,
        Uint32 uFlags),
    int Function(
        int hdc,
        int hbrFore,
        Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
        int lData,
        int wData,
        int x,
        int y,
        int cx,
        int cy,
        int uFlags)>('DrawStateW');

int DrawTextEx(int hdc, Pointer<Utf16> lpchText, int cchText,
        Pointer<RECT> lprc, int format, Pointer<DRAWTEXTPARAMS> lpdtp) =>
    _DrawTextEx(hdc, lpchText, cchText, lprc, format, lpdtp);

late final _DrawTextEx = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
        Pointer<RECT> lprc, Uint32 format, Pointer<DRAWTEXTPARAMS> lpdtp),
    int Function(
        int hdc,
        Pointer<Utf16> lpchText,
        int cchText,
        Pointer<RECT> lprc,
        int format,
        Pointer<DRAWTEXTPARAMS> lpdtp)>('DrawTextExW');

int DrawText(int hdc, Pointer<Utf16> lpchText, int cchText, Pointer<RECT> lprc,
        int format) =>
    _DrawText(hdc, lpchText, cchText, lprc, format);

late final _DrawText = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
        Pointer<RECT> lprc, Uint32 format),
    int Function(int hdc, Pointer<Utf16> lpchText, int cchText,
        Pointer<RECT> lprc, int format)>('DrawTextW');

int EndPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _EndPaint(hWnd, lpPaint);

late final _EndPaint = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('EndPaint');

int EnumDisplayDevices(Pointer<Utf16> lpDevice, int iDevNum,
        Pointer<DISPLAY_DEVICE> lpDisplayDevice, int dwFlags) =>
    _EnumDisplayDevices(lpDevice, iDevNum, lpDisplayDevice, dwFlags);

late final _EnumDisplayDevices = _user32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpDevice, Uint32 iDevNum,
        Pointer<DISPLAY_DEVICE> lpDisplayDevice, Uint32 dwFlags),
    int Function(
        Pointer<Utf16> lpDevice,
        int iDevNum,
        Pointer<DISPLAY_DEVICE> lpDisplayDevice,
        int dwFlags)>('EnumDisplayDevicesW');

int EnumDisplayMonitors(int hdc, Pointer<RECT> lprcClip,
        Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum, int dwData) =>
    _EnumDisplayMonitors(hdc, lprcClip, lpfnEnum, dwData);

late final _EnumDisplayMonitors = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<RECT> lprcClip,
        Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum, IntPtr dwData),
    int Function(
        int hdc,
        Pointer<RECT> lprcClip,
        Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum,
        int dwData)>('EnumDisplayMonitors');

int EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2) =>
    _EqualRect(lprc1, lprc2);

late final _EqualRect = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2),
    int Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2)>('EqualRect');

int ExcludeUpdateRgn(int hDC, int hWnd) => _ExcludeUpdateRgn(hDC, hWnd);

late final _ExcludeUpdateRgn = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, IntPtr hWnd),
    int Function(int hDC, int hWnd)>('ExcludeUpdateRgn');

int FillRect(int hDC, Pointer<RECT> lprc, int hbr) => _FillRect(hDC, lprc, hbr);

late final _FillRect = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
    int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FillRect');

int FrameRect(int hDC, Pointer<RECT> lprc, int hbr) =>
    _FrameRect(hDC, lprc, hbr);

late final _FrameRect = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
    int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FrameRect');

int GetDC(int hWnd) => _GetDC(hWnd);

late final _GetDC = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('GetDC');

int GetDCEx(int hWnd, int hrgnClip, int flags) =>
    _GetDCEx(hWnd, hrgnClip, flags);

late final _GetDCEx = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, IntPtr hrgnClip, Uint32 flags),
    int Function(int hWnd, int hrgnClip, int flags)>('GetDCEx');

int GetMonitorInfo(int hMonitor, Pointer<MONITORINFO> lpmi) =>
    _GetMonitorInfo(hMonitor, lpmi);

late final _GetMonitorInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<MONITORINFO> lpmi),
    int Function(int hMonitor, Pointer<MONITORINFO> lpmi)>('GetMonitorInfoW');

int GetSysColorBrush(int nIndex) => _GetSysColorBrush(nIndex);

late final _GetSysColorBrush = _user32.lookupFunction<
    IntPtr Function(Int32 nIndex),
    int Function(int nIndex)>('GetSysColorBrush');

int GetTabbedTextExtent(int hdc, Pointer<Utf16> lpString, int chCount,
        int nTabPositions, Pointer<Int32> lpnTabStopPositions) =>
    _GetTabbedTextExtent(
        hdc, lpString, chCount, nTabPositions, lpnTabStopPositions);

late final _GetTabbedTextExtent = _user32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 chCount,
        Int32 nTabPositions, Pointer<Int32> lpnTabStopPositions),
    int Function(
        int hdc,
        Pointer<Utf16> lpString,
        int chCount,
        int nTabPositions,
        Pointer<Int32> lpnTabStopPositions)>('GetTabbedTextExtentW');

int GetUpdateRect(int hWnd, Pointer<RECT> lpRect, int bErase) =>
    _GetUpdateRect(hWnd, lpRect, bErase);

late final _GetUpdateRect = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
    int Function(int hWnd, Pointer<RECT> lpRect, int bErase)>('GetUpdateRect');

int GetUpdateRgn(int hWnd, int hRgn, int bErase) =>
    _GetUpdateRgn(hWnd, hRgn, bErase);

late final _GetUpdateRgn = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bErase),
    int Function(int hWnd, int hRgn, int bErase)>('GetUpdateRgn');

int GetWindowDC(int hWnd) => _GetWindowDC(hWnd);

late final _GetWindowDC = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('GetWindowDC');

int GetWindowRgn(int hWnd, int hRgn) => _GetWindowRgn(hWnd, hRgn);

late final _GetWindowRgn = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hRgn),
    int Function(int hWnd, int hRgn)>('GetWindowRgn');

int GetWindowRgnBox(int hWnd, Pointer<RECT> lprc) =>
    _GetWindowRgnBox(hWnd, lprc);

late final _GetWindowRgnBox = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<RECT> lprc),
    int Function(int hWnd, Pointer<RECT> lprc)>('GetWindowRgnBox');

int GrayString(
        int hDC,
        int hBrush,
        Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
        int lpData,
        int nCount,
        int X,
        int Y,
        int nWidth,
        int nHeight) =>
    _GrayString(
        hDC, hBrush, lpOutputFunc, lpData, nCount, X, Y, nWidth, nHeight);

late final _GrayString = _user32.lookupFunction<
    Int32 Function(
        IntPtr hDC,
        IntPtr hBrush,
        Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
        IntPtr lpData,
        Int32 nCount,
        Int32 X,
        Int32 Y,
        Int32 nWidth,
        Int32 nHeight),
    int Function(
        int hDC,
        int hBrush,
        Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
        int lpData,
        int nCount,
        int X,
        int Y,
        int nWidth,
        int nHeight)>('GrayStringW');

int InflateRect(Pointer<RECT> lprc, int dx, int dy) =>
    _InflateRect(lprc, dx, dy);

late final _InflateRect = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
    int Function(Pointer<RECT> lprc, int dx, int dy)>('InflateRect');

int IntersectRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2) =>
    _IntersectRect(lprcDst, lprcSrc1, lprcSrc2);

late final _IntersectRect = _user32.lookupFunction<
    Int32 Function(
        Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2)>('IntersectRect');

int InvalidateRect(int hWnd, Pointer<RECT> lpRect, int bErase) =>
    _InvalidateRect(hWnd, lpRect, bErase);

late final _InvalidateRect = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
    int Function(int hWnd, Pointer<RECT> lpRect, int bErase)>('InvalidateRect');

int InvalidateRgn(int hWnd, int hRgn, int bErase) =>
    _InvalidateRgn(hWnd, hRgn, bErase);

late final _InvalidateRgn = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bErase),
    int Function(int hWnd, int hRgn, int bErase)>('InvalidateRgn');

int InvertRect(int hDC, Pointer<RECT> lprc) => _InvertRect(hDC, lprc);

late final _InvertRect = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<RECT> lprc),
    int Function(int hDC, Pointer<RECT> lprc)>('InvertRect');

int IsRectEmpty(Pointer<RECT> lprc) => _IsRectEmpty(lprc);

late final _IsRectEmpty = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc),
    int Function(Pointer<RECT> lprc)>('IsRectEmpty');

int LoadBitmap(int hInstance, Pointer<Utf16> lpBitmapName) =>
    _LoadBitmap(hInstance, lpBitmapName);

late final _LoadBitmap = _user32.lookupFunction<
    IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpBitmapName),
    int Function(int hInstance, Pointer<Utf16> lpBitmapName)>('LoadBitmapW');

int LockWindowUpdate(int hWndLock) => _LockWindowUpdate(hWndLock);

late final _LockWindowUpdate = _user32.lookupFunction<
    Int32 Function(IntPtr hWndLock),
    int Function(int hWndLock)>('LockWindowUpdate');

int MapWindowPoints(
        int hWndFrom, int hWndTo, Pointer<POINT> lpPoints, int cPoints) =>
    _MapWindowPoints(hWndFrom, hWndTo, lpPoints, cPoints);

late final _MapWindowPoints = _user32.lookupFunction<
    Int32 Function(IntPtr hWndFrom, IntPtr hWndTo, Pointer<POINT> lpPoints,
        Uint32 cPoints),
    int Function(int hWndFrom, int hWndTo, Pointer<POINT> lpPoints,
        int cPoints)>('MapWindowPoints');

int MonitorFromPoint(POINT pt, int dwFlags) => _MonitorFromPoint(pt, dwFlags);

late final _MonitorFromPoint = _user32.lookupFunction<
    IntPtr Function(POINT pt, Uint32 dwFlags),
    int Function(POINT pt, int dwFlags)>('MonitorFromPoint');

int MonitorFromRect(Pointer<RECT> lprc, int dwFlags) =>
    _MonitorFromRect(lprc, dwFlags);

late final _MonitorFromRect = _user32.lookupFunction<
    IntPtr Function(Pointer<RECT> lprc, Uint32 dwFlags),
    int Function(Pointer<RECT> lprc, int dwFlags)>('MonitorFromRect');

int MonitorFromWindow(int hwnd, int dwFlags) =>
    _MonitorFromWindow(hwnd, dwFlags);

late final _MonitorFromWindow = _user32.lookupFunction<
    IntPtr Function(IntPtr hwnd, Uint32 dwFlags),
    int Function(int hwnd, int dwFlags)>('MonitorFromWindow');

int OffsetRect(Pointer<RECT> lprc, int dx, int dy) => _OffsetRect(lprc, dx, dy);

late final _OffsetRect = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
    int Function(Pointer<RECT> lprc, int dx, int dy)>('OffsetRect');

int PaintDesktop(int hdc) => _PaintDesktop(hdc);

late final _PaintDesktop =
    _user32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
        'PaintDesktop');

int PtInRect(Pointer<RECT> lprc, POINT pt) => _PtInRect(lprc, pt);

late final _PtInRect = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc, POINT pt),
    int Function(Pointer<RECT> lprc, POINT pt)>('PtInRect');

int RedrawWindow(
        int hWnd, Pointer<RECT> lprcUpdate, int hrgnUpdate, int flags) =>
    _RedrawWindow(hWnd, lprcUpdate, hrgnUpdate, flags);

late final _RedrawWindow = _user32.lookupFunction<
    Int32 Function(
        IntPtr hWnd, Pointer<RECT> lprcUpdate, IntPtr hrgnUpdate, Uint32 flags),
    int Function(int hWnd, Pointer<RECT> lprcUpdate, int hrgnUpdate,
        int flags)>('RedrawWindow');

int ReleaseDC(int hWnd, int hDC) => _ReleaseDC(hWnd, hDC);

late final _ReleaseDC = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hDC),
    int Function(int hWnd, int hDC)>('ReleaseDC');

int ScreenToClient(int hWnd, Pointer<POINT> lpPoint) =>
    _ScreenToClient(hWnd, lpPoint);

late final _ScreenToClient = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
    int Function(int hWnd, Pointer<POINT> lpPoint)>('ScreenToClient');

int SetRect(Pointer<RECT> lprc, int xLeft, int yTop, int xRight, int yBottom) =>
    _SetRect(lprc, xLeft, yTop, xRight, yBottom);

late final _SetRect = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc, Int32 xLeft, Int32 yTop, Int32 xRight,
        Int32 yBottom),
    int Function(Pointer<RECT> lprc, int xLeft, int yTop, int xRight,
        int yBottom)>('SetRect');

int SetRectEmpty(Pointer<RECT> lprc) => _SetRectEmpty(lprc);

late final _SetRectEmpty = _user32.lookupFunction<
    Int32 Function(Pointer<RECT> lprc),
    int Function(Pointer<RECT> lprc)>('SetRectEmpty');

int SetWindowRgn(int hWnd, int hRgn, int bRedraw) =>
    _SetWindowRgn(hWnd, hRgn, bRedraw);

late final _SetWindowRgn = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bRedraw),
    int Function(int hWnd, int hRgn, int bRedraw)>('SetWindowRgn');

int SubtractRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2) =>
    _SubtractRect(lprcDst, lprcSrc1, lprcSrc2);

late final _SubtractRect = _user32.lookupFunction<
    Int32 Function(
        Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2)>('SubtractRect');

int TabbedTextOut(
        int hdc,
        int x,
        int y,
        Pointer<Utf16> lpString,
        int chCount,
        int nTabPositions,
        Pointer<Int32> lpnTabStopPositions,
        int nTabOrigin) =>
    _TabbedTextOut(hdc, x, y, lpString, chCount, nTabPositions,
        lpnTabStopPositions, nTabOrigin);

late final _TabbedTextOut = _user32.lookupFunction<
    Int32 Function(
        IntPtr hdc,
        Int32 x,
        Int32 y,
        Pointer<Utf16> lpString,
        Int32 chCount,
        Int32 nTabPositions,
        Pointer<Int32> lpnTabStopPositions,
        Int32 nTabOrigin),
    int Function(
        int hdc,
        int x,
        int y,
        Pointer<Utf16> lpString,
        int chCount,
        int nTabPositions,
        Pointer<Int32> lpnTabStopPositions,
        int nTabOrigin)>('TabbedTextOutW');

int UnionRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2) =>
    _UnionRect(lprcDst, lprcSrc1, lprcSrc2);

late final _UnionRect = _user32.lookupFunction<
    Int32 Function(
        Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2),
    int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
        Pointer<RECT> lprcSrc2)>('UnionRect');

int UpdateWindow(int hWnd) => _UpdateWindow(hWnd);

late final _UpdateWindow =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'UpdateWindow');

int ValidateRect(int hWnd, Pointer<RECT> lpRect) => _ValidateRect(hWnd, lpRect);

late final _ValidateRect = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
    int Function(int hWnd, Pointer<RECT> lpRect)>('ValidateRect');

int ValidateRgn(int hWnd, int hRgn) => _ValidateRgn(hWnd, hRgn);

late final _ValidateRgn = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hRgn),
    int Function(int hWnd, int hRgn)>('ValidateRgn');

int WindowFromDC(int hDC) => _WindowFromDC(hDC);

late final _WindowFromDC =
    _user32.lookupFunction<IntPtr Function(IntPtr hDC), int Function(int hDC)>(
        'WindowFromDC');
