// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import 'enums.dart';
import 'structs.dart';

final _gdi32 = DynamicLibrary.open('GDI32.dll');

int AbortPath(int hdc) {
  final _AbortPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('AbortPath');
  return _AbortPath(hdc);
}

int AddFontMemResourceEx(Pointer pFileView, int cjSize, Pointer pvResrved, Pointer<Uint32> pNumFonts) {
  final _AddFontMemResourceEx = _gdi32.lookupFunction<
    IntPtr Function(Pointer pFileView, Uint32 cjSize, Pointer pvResrved, Pointer<Uint32> pNumFonts), 
    int Function(Pointer pFileView, int cjSize, Pointer pvResrved, Pointer<Uint32> pNumFonts)
  >('AddFontMemResourceEx');
  return _AddFontMemResourceEx(pFileView, cjSize, pvResrved, pNumFonts);
}

int AddFontResourceExW(Pointer<Utf16> name, int fl, Pointer res) {
  final _AddFontResourceExW = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer res), 
    int Function(Pointer<Utf16> name, int fl, Pointer res)
  >('AddFontResourceExW');
  return _AddFontResourceExW(name, fl, res);
}

int AddFontResourceW(Pointer<Utf16> param0) {
  final _AddFontResourceW = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> param0), 
    int Function(Pointer<Utf16> param0)
  >('AddFontResourceW');
  return _AddFontResourceW(param0);
}

int AngleArc(int hdc, int x, int y, int r, double StartAngle, double SweepAngle) {
  final _AngleArc = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 r, Float StartAngle, Float SweepAngle), 
    int Function(int hdc, int x, int y, int r, double StartAngle, double SweepAngle)
  >('AngleArc');
  return _AngleArc(hdc, x, y, r, StartAngle, SweepAngle);
}

int AnimatePalette(int hPal, int iStartIndex, int cEntries, Pointer<PALETTEENTRY> ppe) {
  final _AnimatePalette = _gdi32.lookupFunction<
    Int32 Function(IntPtr hPal, Uint32 iStartIndex, Uint32 cEntries, Pointer<PALETTEENTRY> ppe), 
    int Function(int hPal, int iStartIndex, int cEntries, Pointer<PALETTEENTRY> ppe)
  >('AnimatePalette');
  return _AnimatePalette(hPal, iStartIndex, cEntries, ppe);
}

int Arc(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  final _Arc = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3, Int32 y3, Int32 x4, Int32 y4), 
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4)
  >('Arc');
  return _Arc(hdc, x1, y1, x2, y2, x3, y3, x4, y4);
}

int ArcTo(int hdc, int left, int top, int right, int bottom, int xr1, int yr1, int xr2, int yr2) {
  final _ArcTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom, Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2), 
    int Function(int hdc, int left, int top, int right, int bottom, int xr1, int yr1, int xr2, int yr2)
  >('ArcTo');
  return _ArcTo(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);
}

int BeginPath(int hdc) {
  final _BeginPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('BeginPath');
  return _BeginPath(hdc);
}

int BitBlt(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1, int y1, int rop) {
  final _BitBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 cx, Int32 cy, IntPtr hdcSrc, Int32 x1, Int32 y1, Uint32 rop), 
    int Function(int hdc, int x, int y, int cx, int cy, int hdcSrc, int x1, int y1, int rop)
  >('BitBlt');
  return _BitBlt(hdc, x, y, cx, cy, hdcSrc, x1, y1, rop);
}

int CancelDC(int hdc) {
  final _CancelDC = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('CancelDC');
  return _CancelDC(hdc);
}

int Chord(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4) {
  final _Chord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 x3, Int32 y3, Int32 x4, Int32 y4), 
    int Function(int hdc, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4)
  >('Chord');
  return _Chord(hdc, x1, y1, x2, y2, x3, y3, x4, y4);
}

int CloseEnhMetaFile(int hdc) {
  final _CloseEnhMetaFile = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc), 
    int Function(int hdc)
  >('CloseEnhMetaFile');
  return _CloseEnhMetaFile(hdc);
}

int CloseFigure(int hdc) {
  final _CloseFigure = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('CloseFigure');
  return _CloseFigure(hdc);
}

int CloseMetaFile(int hdc) {
  final _CloseMetaFile = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc), 
    int Function(int hdc)
  >('CloseMetaFile');
  return _CloseMetaFile(hdc);
}

int CombineRgn(int hrgnDst, int hrgnSrc1, int hrgnSrc2, int iMode) {
  final _CombineRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgnDst, IntPtr hrgnSrc1, IntPtr hrgnSrc2, Uint32 iMode), 
    int Function(int hrgnDst, int hrgnSrc1, int hrgnSrc2, int iMode)
  >('CombineRgn');
  return _CombineRgn(hrgnDst, hrgnSrc1, hrgnSrc2, iMode);
}

int CombineTransform(Pointer<XFORM> lpxfOut, Pointer<XFORM> lpxf1, Pointer<XFORM> lpxf2) {
  final _CombineTransform = _gdi32.lookupFunction<
    Int32 Function(Pointer<XFORM> lpxfOut, Pointer<XFORM> lpxf1, Pointer<XFORM> lpxf2), 
    int Function(Pointer<XFORM> lpxfOut, Pointer<XFORM> lpxf1, Pointer<XFORM> lpxf2)
  >('CombineTransform');
  return _CombineTransform(lpxfOut, lpxf1, lpxf2);
}

int CopyEnhMetaFileW(int hEnh, Pointer<Utf16> lpFileName) {
  final _CopyEnhMetaFileW = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hEnh, Pointer<Utf16> lpFileName), 
    int Function(int hEnh, Pointer<Utf16> lpFileName)
  >('CopyEnhMetaFileW');
  return _CopyEnhMetaFileW(hEnh, lpFileName);
}

int CopyMetaFileW(int param0, Pointer<Utf16> param1) {
  final _CopyMetaFileW = _gdi32.lookupFunction<
    IntPtr Function(IntPtr param0, Pointer<Utf16> param1), 
    int Function(int param0, Pointer<Utf16> param1)
  >('CopyMetaFileW');
  return _CopyMetaFileW(param0, param1);
}

int CreateBitmap(int nWidth, int nHeight, int nPlanes, int nBitCount, Pointer lpBits) {
  final _CreateBitmap = _gdi32.lookupFunction<
    IntPtr Function(Int32 nWidth, Int32 nHeight, Uint32 nPlanes, Uint32 nBitCount, Pointer lpBits), 
    int Function(int nWidth, int nHeight, int nPlanes, int nBitCount, Pointer lpBits)
  >('CreateBitmap');
  return _CreateBitmap(nWidth, nHeight, nPlanes, nBitCount, lpBits);
}

int CreateBitmapIndirect(Pointer<BITMAP> pbm) {
  final _CreateBitmapIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<BITMAP> pbm), 
    int Function(Pointer<BITMAP> pbm)
  >('CreateBitmapIndirect');
  return _CreateBitmapIndirect(pbm);
}

int CreateBrushIndirect(Pointer<LOGBRUSH> plbrush) {
  final _CreateBrushIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGBRUSH> plbrush), 
    int Function(Pointer<LOGBRUSH> plbrush)
  >('CreateBrushIndirect');
  return _CreateBrushIndirect(plbrush);
}

int CreateCompatibleBitmap(int hdc, int cx, int cy) {
  final _CreateCompatibleBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Int32 cx, Int32 cy), 
    int Function(int hdc, int cx, int cy)
  >('CreateCompatibleBitmap');
  return _CreateCompatibleBitmap(hdc, cx, cy);
}

int CreateCompatibleDC(int hdc) {
  final _CreateCompatibleDC = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc), 
    int Function(int hdc)
  >('CreateCompatibleDC');
  return _CreateCompatibleDC(hdc);
}

int CreateDCW(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice, Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm) {
  final _CreateDCW = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice, Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm), 
    int Function(Pointer<Utf16> pwszDriver, Pointer<Utf16> pwszDevice, Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm)
  >('CreateDCW');
  return _CreateDCW(pwszDriver, pwszDevice, pszPort, pdm);
}

int CreateDIBPatternBrush(int h, int iUsage) {
  final _CreateDIBPatternBrush = _gdi32.lookupFunction<
    IntPtr Function(IntPtr h, Uint32 iUsage), 
    int Function(int h, int iUsage)
  >('CreateDIBPatternBrush');
  return _CreateDIBPatternBrush(h, iUsage);
}

int CreateDIBPatternBrushPt(Pointer lpPackedDIB, int iUsage) {
  final _CreateDIBPatternBrushPt = _gdi32.lookupFunction<
    IntPtr Function(Pointer lpPackedDIB, Uint32 iUsage), 
    int Function(Pointer lpPackedDIB, int iUsage)
  >('CreateDIBPatternBrushPt');
  return _CreateDIBPatternBrushPt(lpPackedDIB, iUsage);
}

int CreateDIBSection(int hdc, Pointer<BITMAPINFO> pbmi, int usage, Pointer<Pointer> ppvBits, int hSection, int offset) {
  final _CreateDIBSection = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Pointer<BITMAPINFO> pbmi, Uint32 usage, Pointer<Pointer> ppvBits, IntPtr hSection, Uint32 offset), 
    int Function(int hdc, Pointer<BITMAPINFO> pbmi, int usage, Pointer<Pointer> ppvBits, int hSection, int offset)
  >('CreateDIBSection');
  return _CreateDIBSection(hdc, pbmi, usage, ppvBits, hSection, offset);
}

int CreateDIBitmap(int hdc, Pointer<BITMAPINFOHEADER> pbmih, int flInit, Pointer pjBits, Pointer<BITMAPINFO> pbmi, int iUsage) {
  final _CreateDIBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Pointer<BITMAPINFOHEADER> pbmih, Uint32 flInit, Pointer pjBits, Pointer<BITMAPINFO> pbmi, Uint32 iUsage), 
    int Function(int hdc, Pointer<BITMAPINFOHEADER> pbmih, int flInit, Pointer pjBits, Pointer<BITMAPINFO> pbmi, int iUsage)
  >('CreateDIBitmap');
  return _CreateDIBitmap(hdc, pbmih, flInit, pjBits, pbmi, iUsage);
}

int CreateDiscardableBitmap(int hdc, int cx, int cy) {
  final _CreateDiscardableBitmap = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Int32 cx, Int32 cy), 
    int Function(int hdc, int cx, int cy)
  >('CreateDiscardableBitmap');
  return _CreateDiscardableBitmap(hdc, cx, cy);
}

int CreateEllipticRgn(int x1, int y1, int x2, int y2) {
  final _CreateEllipticRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2), 
    int Function(int x1, int y1, int x2, int y2)
  >('CreateEllipticRgn');
  return _CreateEllipticRgn(x1, y1, x2, y2);
}

int CreateEllipticRgnIndirect(Pointer<RECT> lprect) {
  final _CreateEllipticRgnIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<RECT> lprect), 
    int Function(Pointer<RECT> lprect)
  >('CreateEllipticRgnIndirect');
  return _CreateEllipticRgnIndirect(lprect);
}

HdcMetdataEnhFileHandle CreateEnhMetaFileW(int hdc, Pointer<Utf16> lpFilename, Pointer<RECT> lprc, Pointer<Utf16> lpDesc) {
  final _CreateEnhMetaFileW = _gdi32.lookupFunction<
    HdcMetdataEnhFileHandle Function(IntPtr hdc, Pointer<Utf16> lpFilename, Pointer<RECT> lprc, Pointer<Utf16> lpDesc), 
    HdcMetdataEnhFileHandle Function(int hdc, Pointer<Utf16> lpFilename, Pointer<RECT> lprc, Pointer<Utf16> lpDesc)
  >('CreateEnhMetaFileW');
  return _CreateEnhMetaFileW(hdc, lpFilename, lprc, lpDesc);
}

int CreateFontIndirectExW(Pointer<ENUMLOGFONTEXDV> param0) {
  final _CreateFontIndirectExW = _gdi32.lookupFunction<
    IntPtr Function(Pointer<ENUMLOGFONTEXDV> param0), 
    int Function(Pointer<ENUMLOGFONTEXDV> param0)
  >('CreateFontIndirectExW');
  return _CreateFontIndirectExW(param0);
}

int CreateFontIndirectW(Pointer<LOGFONT> lplf) {
  final _CreateFontIndirectW = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGFONT> lplf), 
    int Function(Pointer<LOGFONT> lplf)
  >('CreateFontIndirectW');
  return _CreateFontIndirectW(lplf);
}

int CreateFontW(int cHeight, int cWidth, int cEscapement, int cOrientation, int cWeight, int bItalic, int bUnderline, int bStrikeOut, int iCharSet, int iOutPrecision, int iClipPrecision, int iQuality, int iPitchAndFamily, Pointer<Utf16> pszFaceName) {
  final _CreateFontW = _gdi32.lookupFunction<
    IntPtr Function(Int32 cHeight, Int32 cWidth, Int32 cEscapement, Int32 cOrientation, Int32 cWeight, Uint32 bItalic, Uint32 bUnderline, Uint32 bStrikeOut, Uint32 iCharSet, Uint32 iOutPrecision, Uint32 iClipPrecision, Uint32 iQuality, Uint32 iPitchAndFamily, Pointer<Utf16> pszFaceName), 
    int Function(int cHeight, int cWidth, int cEscapement, int cOrientation, int cWeight, int bItalic, int bUnderline, int bStrikeOut, int iCharSet, int iOutPrecision, int iClipPrecision, int iQuality, int iPitchAndFamily, Pointer<Utf16> pszFaceName)
  >('CreateFontW');
  return _CreateFontW(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, pszFaceName);
}

int CreateHalftonePalette(int hdc) {
  final _CreateHalftonePalette = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc), 
    int Function(int hdc)
  >('CreateHalftonePalette');
  return _CreateHalftonePalette(hdc);
}

int CreateHatchBrush(int iHatch, int color) {
  final _CreateHatchBrush = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iHatch, Uint32 color), 
    int Function(int iHatch, int color)
  >('CreateHatchBrush');
  return _CreateHatchBrush(iHatch, color);
}

int CreateICW(Pointer<Utf16> pszDriver, Pointer<Utf16> pszDevice, Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm) {
  final _CreateICW = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> pszDriver, Pointer<Utf16> pszDevice, Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm), 
    int Function(Pointer<Utf16> pszDriver, Pointer<Utf16> pszDevice, Pointer<Utf16> pszPort, Pointer<DEVMODE> pdm)
  >('CreateICW');
  return _CreateICW(pszDriver, pszDevice, pszPort, pdm);
}

HdcMetdataFileHandle CreateMetaFileW(Pointer<Utf16> pszFile) {
  final _CreateMetaFileW = _gdi32.lookupFunction<
    HdcMetdataFileHandle Function(Pointer<Utf16> pszFile), 
    HdcMetdataFileHandle Function(Pointer<Utf16> pszFile)
  >('CreateMetaFileW');
  return _CreateMetaFileW(pszFile);
}

int CreatePalette(Pointer<LOGPALETTE> plpal) {
  final _CreatePalette = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGPALETTE> plpal), 
    int Function(Pointer<LOGPALETTE> plpal)
  >('CreatePalette');
  return _CreatePalette(plpal);
}

int CreatePatternBrush(int hbm) {
  final _CreatePatternBrush = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hbm), 
    int Function(int hbm)
  >('CreatePatternBrush');
  return _CreatePatternBrush(hbm);
}

int CreatePen(int iStyle, int cWidth, int color) {
  final _CreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iStyle, Int32 cWidth, Uint32 color), 
    int Function(int iStyle, int cWidth, int color)
  >('CreatePen');
  return _CreatePen(iStyle, cWidth, color);
}

int CreatePenIndirect(Pointer<LOGPEN> plpen) {
  final _CreatePenIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<LOGPEN> plpen), 
    int Function(Pointer<LOGPEN> plpen)
  >('CreatePenIndirect');
  return _CreatePenIndirect(plpen);
}

int CreatePolyPolygonRgn(Pointer<POINT> pptl, Pointer<Int32> pc, int cPoly, int iMode) {
  final _CreatePolyPolygonRgn = _gdi32.lookupFunction<
    IntPtr Function(Pointer<POINT> pptl, Pointer<Int32> pc, Int32 cPoly, Uint32 iMode), 
    int Function(Pointer<POINT> pptl, Pointer<Int32> pc, int cPoly, int iMode)
  >('CreatePolyPolygonRgn');
  return _CreatePolyPolygonRgn(pptl, pc, cPoly, iMode);
}

int CreatePolygonRgn(Pointer<POINT> pptl, int cPoint, int iMode) {
  final _CreatePolygonRgn = _gdi32.lookupFunction<
    IntPtr Function(Pointer<POINT> pptl, Int32 cPoint, Uint32 iMode), 
    int Function(Pointer<POINT> pptl, int cPoint, int iMode)
  >('CreatePolygonRgn');
  return _CreatePolygonRgn(pptl, cPoint, iMode);
}

int CreateRectRgn(int x1, int y1, int x2, int y2) {
  final _CreateRectRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2), 
    int Function(int x1, int y1, int x2, int y2)
  >('CreateRectRgn');
  return _CreateRectRgn(x1, y1, x2, y2);
}

int CreateRectRgnIndirect(Pointer<RECT> lprect) {
  final _CreateRectRgnIndirect = _gdi32.lookupFunction<
    IntPtr Function(Pointer<RECT> lprect), 
    int Function(Pointer<RECT> lprect)
  >('CreateRectRgnIndirect');
  return _CreateRectRgnIndirect(lprect);
}

int CreateRoundRectRgn(int x1, int y1, int x2, int y2, int w, int h) {
  final _CreateRoundRectRgn = _gdi32.lookupFunction<
    IntPtr Function(Int32 x1, Int32 y1, Int32 x2, Int32 y2, Int32 w, Int32 h), 
    int Function(int x1, int y1, int x2, int y2, int w, int h)
  >('CreateRoundRectRgn');
  return _CreateRoundRectRgn(x1, y1, x2, y2, w, h);
}

int CreateScalableFontResourceW(int fdwHidden, Pointer<Utf16> lpszFont, Pointer<Utf16> lpszFile, Pointer<Utf16> lpszPath) {
  final _CreateScalableFontResourceW = _gdi32.lookupFunction<
    Int32 Function(Uint32 fdwHidden, Pointer<Utf16> lpszFont, Pointer<Utf16> lpszFile, Pointer<Utf16> lpszPath), 
    int Function(int fdwHidden, Pointer<Utf16> lpszFont, Pointer<Utf16> lpszFile, Pointer<Utf16> lpszPath)
  >('CreateScalableFontResourceW');
  return _CreateScalableFontResourceW(fdwHidden, lpszFont, lpszFile, lpszPath);
}

int CreateSolidBrush(int color) {
  final _CreateSolidBrush = _gdi32.lookupFunction<
    IntPtr Function(Uint32 color), 
    int Function(int color)
  >('CreateSolidBrush');
  return _CreateSolidBrush(color);
}

int DPtoLP(int hdc, Pointer<POINT> lppt, int c) {
  final _DPtoLP = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt, Int32 c), 
    int Function(int hdc, Pointer<POINT> lppt, int c)
  >('DPtoLP');
  return _DPtoLP(hdc, lppt, c);
}

int DeleteDC(int hdc) {
  final _DeleteDC = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('DeleteDC');
  return _DeleteDC(hdc);
}

int DeleteEnhMetaFile(int hmf) {
  final _DeleteEnhMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hmf), 
    int Function(int hmf)
  >('DeleteEnhMetaFile');
  return _DeleteEnhMetaFile(hmf);
}

int DeleteMetaFile(int hmf) {
  final _DeleteMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hmf), 
    int Function(int hmf)
  >('DeleteMetaFile');
  return _DeleteMetaFile(hmf);
}

int DeleteObject(int ho) {
  final _DeleteObject = _gdi32.lookupFunction<
    Int32 Function(IntPtr ho), 
    int Function(int ho)
  >('DeleteObject');
  return _DeleteObject(ho);
}

int DrawEscape(int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn) {
  final _DrawEscape = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 iEscape, Int32 cjIn, Pointer<Utf8> lpIn), 
    int Function(int hdc, int iEscape, int cjIn, Pointer<Utf8> lpIn)
  >('DrawEscape');
  return _DrawEscape(hdc, iEscape, cjIn, lpIn);
}

int Ellipse(int hdc, int left, int top, int right, int bottom) {
  final _Ellipse = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom), 
    int Function(int hdc, int left, int top, int right, int bottom)
  >('Ellipse');
  return _Ellipse(hdc, left, top, right, bottom);
}

int EndPath(int hdc) {
  final _EndPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('EndPath');
  return _EndPath(hdc);
}

int EnumEnhMetaFile(int hdc, int hmf, ENHMFENUMPROC proc, Pointer param3, Pointer<RECT> lpRect) {
  final _EnumEnhMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf, ENHMFENUMPROC proc, Pointer param3, Pointer<RECT> lpRect), 
    int Function(int hdc, int hmf, ENHMFENUMPROC proc, Pointer param3, Pointer<RECT> lpRect)
  >('EnumEnhMetaFile');
  return _EnumEnhMetaFile(hdc, hmf, proc, param3, lpRect);
}

int EnumFontFamiliesExW(int hdc, Pointer<LOGFONT> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, int lParam, int dwFlags) {
  final _EnumFontFamiliesExW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<LOGFONT> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, IntPtr lParam, Uint32 dwFlags), 
    int Function(int hdc, Pointer<LOGFONT> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, int lParam, int dwFlags)
  >('EnumFontFamiliesExW');
  return _EnumFontFamiliesExW(hdc, lpLogfont, lpProc, lParam, dwFlags);
}

int EnumFontFamiliesW(int hdc, Pointer<Utf16> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, int lParam) {
  final _EnumFontFamiliesW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, IntPtr lParam), 
    int Function(int hdc, Pointer<Utf16> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, int lParam)
  >('EnumFontFamiliesW');
  return _EnumFontFamiliesW(hdc, lpLogfont, lpProc, lParam);
}

int EnumFontsW(int hdc, Pointer<Utf16> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, int lParam) {
  final _EnumFontsW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, IntPtr lParam), 
    int Function(int hdc, Pointer<Utf16> lpLogfont, Pointer<NativeFunction<EnumFontFamExProc>> lpProc, int lParam)
  >('EnumFontsW');
  return _EnumFontsW(hdc, lpLogfont, lpProc, lParam);
}

int EnumMetaFile(int hdc, int hmf, MFENUMPROC proc, int param3) {
  final _EnumMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf, MFENUMPROC proc, IntPtr param3), 
    int Function(int hdc, int hmf, MFENUMPROC proc, int param3)
  >('EnumMetaFile');
  return _EnumMetaFile(hdc, hmf, proc, param3);
}

int EnumObjects(int hdc, int nType, GOBJENUMPROC lpFunc, int lParam) {
  final _EnumObjects = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 nType, GOBJENUMPROC lpFunc, IntPtr lParam), 
    int Function(int hdc, int nType, GOBJENUMPROC lpFunc, int lParam)
  >('EnumObjects');
  return _EnumObjects(hdc, nType, lpFunc, lParam);
}

int EqualRgn(int hrgn1, int hrgn2) {
  final _EqualRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn1, IntPtr hrgn2), 
    int Function(int hrgn1, int hrgn2)
  >('EqualRgn');
  return _EqualRgn(hrgn1, hrgn2);
}

int ExcludeClipRect(int hdc, int left, int top, int right, int bottom) {
  final _ExcludeClipRect = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom), 
    int Function(int hdc, int left, int top, int right, int bottom)
  >('ExcludeClipRect');
  return _ExcludeClipRect(hdc, left, top, right, bottom);
}

int ExtCreatePen(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush, int cStyle, Pointer<Uint32> pstyle) {
  final _ExtCreatePen = _gdi32.lookupFunction<
    IntPtr Function(Uint32 iPenStyle, Uint32 cWidth, Pointer<LOGBRUSH> plbrush, Uint32 cStyle, Pointer<Uint32> pstyle), 
    int Function(int iPenStyle, int cWidth, Pointer<LOGBRUSH> plbrush, int cStyle, Pointer<Uint32> pstyle)
  >('ExtCreatePen');
  return _ExtCreatePen(iPenStyle, cWidth, plbrush, cStyle, pstyle);
}

int ExtCreateRegion(Pointer<XFORM> lpx, int nCount, Pointer<RGNDATA> lpData) {
  final _ExtCreateRegion = _gdi32.lookupFunction<
    IntPtr Function(Pointer<XFORM> lpx, Uint32 nCount, Pointer<RGNDATA> lpData), 
    int Function(Pointer<XFORM> lpx, int nCount, Pointer<RGNDATA> lpData)
  >('ExtCreateRegion');
  return _ExtCreateRegion(lpx, nCount, lpData);
}

int ExtFloodFill(int hdc, int x, int y, int color, int type) {
  final _ExtFloodFill = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color, Uint32 type), 
    int Function(int hdc, int x, int y, int color, int type)
  >('ExtFloodFill');
  return _ExtFloodFill(hdc, x, y, color, type);
}

int ExtSelectClipRgn(int hdc, int hrgn, int mode) {
  final _ExtSelectClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, Uint32 mode), 
    int Function(int hdc, int hrgn, int mode)
  >('ExtSelectClipRgn');
  return _ExtSelectClipRgn(hdc, hrgn, mode);
}

int ExtTextOutW(int hdc, int x, int y, int options, Pointer<RECT> lprect, Pointer<Utf16> lpString, int c, Pointer<Int32> lpDx) {
  final _ExtTextOutW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 options, Pointer<RECT> lprect, Pointer<Utf16> lpString, Uint32 c, Pointer<Int32> lpDx), 
    int Function(int hdc, int x, int y, int options, Pointer<RECT> lprect, Pointer<Utf16> lpString, int c, Pointer<Int32> lpDx)
  >('ExtTextOutW');
  return _ExtTextOutW(hdc, x, y, options, lprect, lpString, c, lpDx);
}

int FillPath(int hdc) {
  final _FillPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('FillPath');
  return _FillPath(hdc);
}

int FillRgn(int hdc, int hrgn, int hbr) {
  final _FillRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, IntPtr hbr), 
    int Function(int hdc, int hrgn, int hbr)
  >('FillRgn');
  return _FillRgn(hdc, hrgn, hbr);
}

int FixBrushOrgEx(int hdc, int x, int y, Pointer<POINT> ptl) {
  final _FixBrushOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> ptl), 
    int Function(int hdc, int x, int y, Pointer<POINT> ptl)
  >('FixBrushOrgEx');
  return _FixBrushOrgEx(hdc, x, y, ptl);
}

int FlattenPath(int hdc) {
  final _FlattenPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('FlattenPath');
  return _FlattenPath(hdc);
}

int FloodFill(int hdc, int x, int y, int color) {
  final _FloodFill = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color), 
    int Function(int hdc, int x, int y, int color)
  >('FloodFill');
  return _FloodFill(hdc, x, y, color);
}

int FrameRgn(int hdc, int hrgn, int hbr, int w, int h) {
  final _FrameRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, IntPtr hbr, Int32 w, Int32 h), 
    int Function(int hdc, int hrgn, int hbr, int w, int h)
  >('FrameRgn');
  return _FrameRgn(hdc, hrgn, hbr, w, h);
}

int GdiAlphaBlend(int hdcDest, int xoriginDest, int yoriginDest, int wDest, int hDest, int hdcSrc, int xoriginSrc, int yoriginSrc, int wSrc, int hSrc, BLENDFUNCTION ftn) {
  final _GdiAlphaBlend = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdcDest, Int32 xoriginDest, Int32 yoriginDest, Int32 wDest, Int32 hDest, IntPtr hdcSrc, Int32 xoriginSrc, Int32 yoriginSrc, Int32 wSrc, Int32 hSrc, BLENDFUNCTION ftn), 
    int Function(int hdcDest, int xoriginDest, int yoriginDest, int wDest, int hDest, int hdcSrc, int xoriginSrc, int yoriginSrc, int wSrc, int hSrc, BLENDFUNCTION ftn)
  >('GdiAlphaBlend');
  return _GdiAlphaBlend(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc, ftn);
}

int GdiComment(int hdc, int nSize, Pointer<Uint8> lpData) {
  final _GdiComment = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 nSize, Pointer<Uint8> lpData), 
    int Function(int hdc, int nSize, Pointer<Uint8> lpData)
  >('GdiComment');
  return _GdiComment(hdc, nSize, lpData);
}

int GdiFlush() {
  final _GdiFlush = _gdi32.lookupFunction<
    Int32 Function(), 
    int Function()
  >('GdiFlush');
  return _GdiFlush();
}

int GdiGetBatchLimit() {
  final _GdiGetBatchLimit = _gdi32.lookupFunction<
    Uint32 Function(), 
    int Function()
  >('GdiGetBatchLimit');
  return _GdiGetBatchLimit();
}

int GdiGradientFill(int hdc, Pointer<TRIVERTEX> pVertex, int nVertex, Pointer pMesh, int nCount, int ulMode) {
  final _GdiGradientFill = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TRIVERTEX> pVertex, Uint32 nVertex, Pointer pMesh, Uint32 nCount, Uint32 ulMode), 
    int Function(int hdc, Pointer<TRIVERTEX> pVertex, int nVertex, Pointer pMesh, int nCount, int ulMode)
  >('GdiGradientFill');
  return _GdiGradientFill(hdc, pVertex, nVertex, pMesh, nCount, ulMode);
}

int GdiSetBatchLimit(int dw) {
  final _GdiSetBatchLimit = _gdi32.lookupFunction<
    Uint32 Function(Uint32 dw), 
    int Function(int dw)
  >('GdiSetBatchLimit');
  return _GdiSetBatchLimit(dw);
}

int GdiTransparentBlt(int hdcDest, int xoriginDest, int yoriginDest, int wDest, int hDest, int hdcSrc, int xoriginSrc, int yoriginSrc, int wSrc, int hSrc, int crTransparent) {
  final _GdiTransparentBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdcDest, Int32 xoriginDest, Int32 yoriginDest, Int32 wDest, Int32 hDest, IntPtr hdcSrc, Int32 xoriginSrc, Int32 yoriginSrc, Int32 wSrc, Int32 hSrc, Uint32 crTransparent), 
    int Function(int hdcDest, int xoriginDest, int yoriginDest, int wDest, int hDest, int hdcSrc, int xoriginSrc, int yoriginSrc, int wSrc, int hSrc, int crTransparent)
  >('GdiTransparentBlt');
  return _GdiTransparentBlt(hdcDest, xoriginDest, yoriginDest, wDest, hDest, hdcSrc, xoriginSrc, yoriginSrc, wSrc, hSrc, crTransparent);
}

int GetArcDirection(int hdc) {
  final _GetArcDirection = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetArcDirection');
  return _GetArcDirection(hdc);
}

int GetAspectRatioFilterEx(int hdc, Pointer<SIZE> lpsize) {
  final _GetAspectRatioFilterEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<SIZE> lpsize), 
    int Function(int hdc, Pointer<SIZE> lpsize)
  >('GetAspectRatioFilterEx');
  return _GetAspectRatioFilterEx(hdc, lpsize);
}

int GetBitmapBits(int hbit, int cb, Pointer lpvBits) {
  final _GetBitmapBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbit, Int32 cb, Pointer lpvBits), 
    int Function(int hbit, int cb, Pointer lpvBits)
  >('GetBitmapBits');
  return _GetBitmapBits(hbit, cb, lpvBits);
}

int GetBitmapDimensionEx(int hbit, Pointer<SIZE> lpsize) {
  final _GetBitmapDimensionEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbit, Pointer<SIZE> lpsize), 
    int Function(int hbit, Pointer<SIZE> lpsize)
  >('GetBitmapDimensionEx');
  return _GetBitmapDimensionEx(hbit, lpsize);
}

int GetBkColor(int hdc) {
  final _GetBkColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetBkColor');
  return _GetBkColor(hdc);
}

int GetBkMode(int hdc) {
  final _GetBkMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetBkMode');
  return _GetBkMode(hdc);
}

int GetBoundsRect(int hdc, Pointer<RECT> lprect, int flags) {
  final _GetBoundsRect = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<RECT> lprect, Uint32 flags), 
    int Function(int hdc, Pointer<RECT> lprect, int flags)
  >('GetBoundsRect');
  return _GetBoundsRect(hdc, lprect, flags);
}

int GetBrushOrgEx(int hdc, Pointer<POINT> lppt) {
  final _GetBrushOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt), 
    int Function(int hdc, Pointer<POINT> lppt)
  >('GetBrushOrgEx');
  return _GetBrushOrgEx(hdc, lppt);
}

int GetCharABCWidthsFloatW(int hdc, int iFirst, int iLast, Pointer<ABCFLOAT> lpABC) {
  final _GetCharABCWidthsFloatW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<ABCFLOAT> lpABC), 
    int Function(int hdc, int iFirst, int iLast, Pointer<ABCFLOAT> lpABC)
  >('GetCharABCWidthsFloatW');
  return _GetCharABCWidthsFloatW(hdc, iFirst, iLast, lpABC);
}

int GetCharABCWidthsI(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi, Pointer<ABC> pabc) {
  final _GetCharABCWidthsI = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 giFirst, Uint32 cgi, Pointer<Uint16> pgi, Pointer<ABC> pabc), 
    int Function(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi, Pointer<ABC> pabc)
  >('GetCharABCWidthsI');
  return _GetCharABCWidthsI(hdc, giFirst, cgi, pgi, pabc);
}

int GetCharABCWidthsW(int hdc, int wFirst, int wLast, Pointer<ABC> lpABC) {
  final _GetCharABCWidthsW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 wFirst, Uint32 wLast, Pointer<ABC> lpABC), 
    int Function(int hdc, int wFirst, int wLast, Pointer<ABC> lpABC)
  >('GetCharABCWidthsW');
  return _GetCharABCWidthsW(hdc, wFirst, wLast, lpABC);
}

int GetCharWidth32W(int hdc, int iFirst, int iLast, Pointer<Int32> lpBuffer) {
  final _GetCharWidth32W = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<Int32> lpBuffer), 
    int Function(int hdc, int iFirst, int iLast, Pointer<Int32> lpBuffer)
  >('GetCharWidth32W');
  return _GetCharWidth32W(hdc, iFirst, iLast, lpBuffer);
}

int GetCharWidthFloatW(int hdc, int iFirst, int iLast, Pointer<Float> lpBuffer) {
  final _GetCharWidthFloatW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<Float> lpBuffer), 
    int Function(int hdc, int iFirst, int iLast, Pointer<Float> lpBuffer)
  >('GetCharWidthFloatW');
  return _GetCharWidthFloatW(hdc, iFirst, iLast, lpBuffer);
}

int GetCharWidthI(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi, Pointer<Int32> piWidths) {
  final _GetCharWidthI = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 giFirst, Uint32 cgi, Pointer<Uint16> pgi, Pointer<Int32> piWidths), 
    int Function(int hdc, int giFirst, int cgi, Pointer<Uint16> pgi, Pointer<Int32> piWidths)
  >('GetCharWidthI');
  return _GetCharWidthI(hdc, giFirst, cgi, pgi, piWidths);
}

int GetCharWidthW(int hdc, int iFirst, int iLast, Pointer<Int32> lpBuffer) {
  final _GetCharWidthW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iFirst, Uint32 iLast, Pointer<Int32> lpBuffer), 
    int Function(int hdc, int iFirst, int iLast, Pointer<Int32> lpBuffer)
  >('GetCharWidthW');
  return _GetCharWidthW(hdc, iFirst, iLast, lpBuffer);
}

int GetCharacterPlacementW(int hdc, Pointer<Utf16> lpString, int nCount, int nMexExtent, Pointer<GCP_RESULTS> lpResults, int dwFlags) {
  final _GetCharacterPlacementW = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 nCount, Int32 nMexExtent, Pointer<GCP_RESULTS> lpResults, Uint32 dwFlags), 
    int Function(int hdc, Pointer<Utf16> lpString, int nCount, int nMexExtent, Pointer<GCP_RESULTS> lpResults, int dwFlags)
  >('GetCharacterPlacementW');
  return _GetCharacterPlacementW(hdc, lpString, nCount, nMexExtent, lpResults, dwFlags);
}

int GetClipBox(int hdc, Pointer<RECT> lprect) {
  final _GetClipBox = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<RECT> lprect), 
    int Function(int hdc, Pointer<RECT> lprect)
  >('GetClipBox');
  return _GetClipBox(hdc, lprect);
}

int GetClipRgn(int hdc, int hrgn) {
  final _GetClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn), 
    int Function(int hdc, int hrgn)
  >('GetClipRgn');
  return _GetClipRgn(hdc, hrgn);
}

int GetColorAdjustment(int hdc, Pointer<COLORADJUSTMENT> lpca) {
  final _GetColorAdjustment = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<COLORADJUSTMENT> lpca), 
    int Function(int hdc, Pointer<COLORADJUSTMENT> lpca)
  >('GetColorAdjustment');
  return _GetColorAdjustment(hdc, lpca);
}

int GetCurrentObject(int hdc, int type) {
  final _GetCurrentObject = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Uint32 type), 
    int Function(int hdc, int type)
  >('GetCurrentObject');
  return _GetCurrentObject(hdc, type);
}

int GetCurrentPositionEx(int hdc, Pointer<POINT> lppt) {
  final _GetCurrentPositionEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt), 
    int Function(int hdc, Pointer<POINT> lppt)
  >('GetCurrentPositionEx');
  return _GetCurrentPositionEx(hdc, lppt);
}

int GetDCBrushColor(int hdc) {
  final _GetDCBrushColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetDCBrushColor');
  return _GetDCBrushColor(hdc);
}

int GetDCOrgEx(int hdc, Pointer<POINT> lppt) {
  final _GetDCOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt), 
    int Function(int hdc, Pointer<POINT> lppt)
  >('GetDCOrgEx');
  return _GetDCOrgEx(hdc, lppt);
}

int GetDCPenColor(int hdc) {
  final _GetDCPenColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetDCPenColor');
  return _GetDCPenColor(hdc);
}

int GetDIBColorTable(int hdc, int iStart, int cEntries, Pointer<RGBQUAD> prgbq) {
  final _GetDIBColorTable = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 iStart, Uint32 cEntries, Pointer<RGBQUAD> prgbq), 
    int Function(int hdc, int iStart, int cEntries, Pointer<RGBQUAD> prgbq)
  >('GetDIBColorTable');
  return _GetDIBColorTable(hdc, iStart, cEntries, prgbq);
}

int GetDIBits(int hdc, int hbm, int start, int cLines, Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, int usage) {
  final _GetDIBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hbm, Uint32 start, Uint32 cLines, Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, Uint32 usage), 
    int Function(int hdc, int hbm, int start, int cLines, Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, int usage)
  >('GetDIBits');
  return _GetDIBits(hdc, hbm, start, cLines, lpvBits, lpbmi, usage);
}

int GetDeviceCaps(int hdc, int index) {
  final _GetDeviceCaps = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 index), 
    int Function(int hdc, int index)
  >('GetDeviceCaps');
  return _GetDeviceCaps(hdc, index);
}

int GetEnhMetaFileBits(int hEMF, int nSize, Pointer<Uint8> lpData) {
  final _GetEnhMetaFileBits = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hEMF, Uint32 nSize, Pointer<Uint8> lpData), 
    int Function(int hEMF, int nSize, Pointer<Uint8> lpData)
  >('GetEnhMetaFileBits');
  return _GetEnhMetaFileBits(hEMF, nSize, lpData);
}

int GetEnhMetaFileDescriptionW(int hemf, int cchBuffer, Pointer<Utf16> lpDescription) {
  final _GetEnhMetaFileDescriptionW = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hemf, Uint32 cchBuffer, Pointer<Utf16> lpDescription), 
    int Function(int hemf, int cchBuffer, Pointer<Utf16> lpDescription)
  >('GetEnhMetaFileDescriptionW');
  return _GetEnhMetaFileDescriptionW(hemf, cchBuffer, lpDescription);
}

int GetEnhMetaFileHeader(int hemf, int nSize, Pointer<ENHMETAHEADER> lpEnhMetaHeader) {
  final _GetEnhMetaFileHeader = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hemf, Uint32 nSize, Pointer<ENHMETAHEADER> lpEnhMetaHeader), 
    int Function(int hemf, int nSize, Pointer<ENHMETAHEADER> lpEnhMetaHeader)
  >('GetEnhMetaFileHeader');
  return _GetEnhMetaFileHeader(hemf, nSize, lpEnhMetaHeader);
}

int GetEnhMetaFilePaletteEntries(int hemf, int nNumEntries, Pointer<PALETTEENTRY> lpPaletteEntries) {
  final _GetEnhMetaFilePaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hemf, Uint32 nNumEntries, Pointer<PALETTEENTRY> lpPaletteEntries), 
    int Function(int hemf, int nNumEntries, Pointer<PALETTEENTRY> lpPaletteEntries)
  >('GetEnhMetaFilePaletteEntries');
  return _GetEnhMetaFilePaletteEntries(hemf, nNumEntries, lpPaletteEntries);
}

int GetEnhMetaFileW(Pointer<Utf16> lpName) {
  final _GetEnhMetaFileW = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpName), 
    int Function(Pointer<Utf16> lpName)
  >('GetEnhMetaFileW');
  return _GetEnhMetaFileW(lpName);
}

int GetFontData(int hdc, int dwTable, int dwOffset, Pointer pvBuffer, int cjBuffer) {
  final _GetFontData = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 dwTable, Uint32 dwOffset, Pointer pvBuffer, Uint32 cjBuffer), 
    int Function(int hdc, int dwTable, int dwOffset, Pointer pvBuffer, int cjBuffer)
  >('GetFontData');
  return _GetFontData(hdc, dwTable, dwOffset, pvBuffer, cjBuffer);
}

int GetFontLanguageInfo(int hdc) {
  final _GetFontLanguageInfo = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetFontLanguageInfo');
  return _GetFontLanguageInfo(hdc);
}

int GetFontUnicodeRanges(int hdc, Pointer<GLYPHSET> lpgs) {
  final _GetFontUnicodeRanges = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<GLYPHSET> lpgs), 
    int Function(int hdc, Pointer<GLYPHSET> lpgs)
  >('GetFontUnicodeRanges');
  return _GetFontUnicodeRanges(hdc, lpgs);
}

int GetGlyphIndicesW(int hdc, Pointer<Utf16> lpstr, int c, Pointer<Uint16> pgi, int fl) {
  final _GetGlyphIndicesW = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<Utf16> lpstr, Int32 c, Pointer<Uint16> pgi, Uint32 fl), 
    int Function(int hdc, Pointer<Utf16> lpstr, int c, Pointer<Uint16> pgi, int fl)
  >('GetGlyphIndicesW');
  return _GetGlyphIndicesW(hdc, lpstr, c, pgi, fl);
}

int GetGlyphOutlineW(int hdc, int uChar, int fuFormat, Pointer<GLYPHMETRICS> lpgm, int cjBuffer, Pointer pvBuffer, Pointer<MAT2> lpmat2) {
  final _GetGlyphOutlineW = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 uChar, Uint32 fuFormat, Pointer<GLYPHMETRICS> lpgm, Uint32 cjBuffer, Pointer pvBuffer, Pointer<MAT2> lpmat2), 
    int Function(int hdc, int uChar, int fuFormat, Pointer<GLYPHMETRICS> lpgm, int cjBuffer, Pointer pvBuffer, Pointer<MAT2> lpmat2)
  >('GetGlyphOutlineW');
  return _GetGlyphOutlineW(hdc, uChar, fuFormat, lpgm, cjBuffer, pvBuffer, lpmat2);
}

int GetGraphicsMode(int hdc) {
  final _GetGraphicsMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetGraphicsMode');
  return _GetGraphicsMode(hdc);
}

int GetKerningPairsW(int hdc, int nPairs, Pointer<KERNINGPAIR> lpKernPair) {
  final _GetKerningPairsW = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 nPairs, Pointer<KERNINGPAIR> lpKernPair), 
    int Function(int hdc, int nPairs, Pointer<KERNINGPAIR> lpKernPair)
  >('GetKerningPairsW');
  return _GetKerningPairsW(hdc, nPairs, lpKernPair);
}

int GetLayout(int hdc) {
  final _GetLayout = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetLayout');
  return _GetLayout(hdc);
}

int GetMapMode(int hdc) {
  final _GetMapMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetMapMode');
  return _GetMapMode(hdc);
}

int GetMetaFileBitsEx(int hMF, int cbBuffer, Pointer lpData) {
  final _GetMetaFileBitsEx = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hMF, Uint32 cbBuffer, Pointer lpData), 
    int Function(int hMF, int cbBuffer, Pointer lpData)
  >('GetMetaFileBitsEx');
  return _GetMetaFileBitsEx(hMF, cbBuffer, lpData);
}

int GetMetaFileW(Pointer<Utf16> lpName) {
  final _GetMetaFileW = _gdi32.lookupFunction<
    IntPtr Function(Pointer<Utf16> lpName), 
    int Function(Pointer<Utf16> lpName)
  >('GetMetaFileW');
  return _GetMetaFileW(lpName);
}

int GetMetaRgn(int hdc, int hrgn) {
  final _GetMetaRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn), 
    int Function(int hdc, int hrgn)
  >('GetMetaRgn');
  return _GetMetaRgn(hdc, hrgn);
}

int GetMiterLimit(int hdc, Pointer<Float> plimit) {
  final _GetMiterLimit = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Float> plimit), 
    int Function(int hdc, Pointer<Float> plimit)
  >('GetMiterLimit');
  return _GetMiterLimit(hdc, plimit);
}

int GetNearestColor(int hdc, int color) {
  final _GetNearestColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color), 
    int Function(int hdc, int color)
  >('GetNearestColor');
  return _GetNearestColor(hdc, color);
}

int GetNearestPaletteIndex(int h, int color) {
  final _GetNearestPaletteIndex = _gdi32.lookupFunction<
    Uint32 Function(IntPtr h, Uint32 color), 
    int Function(int h, int color)
  >('GetNearestPaletteIndex');
  return _GetNearestPaletteIndex(h, color);
}

int GetObjectType(int h) {
  final _GetObjectType = _gdi32.lookupFunction<
    Uint32 Function(IntPtr h), 
    int Function(int h)
  >('GetObjectType');
  return _GetObjectType(h);
}

int GetObjectW(int h, int c, Pointer pv) {
  final _GetObjectW = _gdi32.lookupFunction<
    Int32 Function(IntPtr h, Int32 c, Pointer pv), 
    int Function(int h, int c, Pointer pv)
  >('GetObjectW');
  return _GetObjectW(h, c, pv);
}

int GetOutlineTextMetricsW(int hdc, int cjCopy, Pointer<OUTLINETEXTMETRIC> potm) {
  final _GetOutlineTextMetricsW = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 cjCopy, Pointer<OUTLINETEXTMETRIC> potm), 
    int Function(int hdc, int cjCopy, Pointer<OUTLINETEXTMETRIC> potm)
  >('GetOutlineTextMetricsW');
  return _GetOutlineTextMetricsW(hdc, cjCopy, potm);
}

int GetPaletteEntries(int hpal, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries) {
  final _GetPaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hpal, Uint32 iStart, Uint32 cEntries, Pointer<PALETTEENTRY> pPalEntries), 
    int Function(int hpal, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries)
  >('GetPaletteEntries');
  return _GetPaletteEntries(hpal, iStart, cEntries, pPalEntries);
}

int GetPath(int hdc, Pointer<POINT> apt, int aj, int cpt) {
  final _GetPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 aj, Int32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int aj, int cpt)
  >('GetPath');
  return _GetPath(hdc, apt, aj, cpt);
}

int GetPixel(int hdc, int x, int y) {
  final _GetPixel = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Int32 x, Int32 y), 
    int Function(int hdc, int x, int y)
  >('GetPixel');
  return _GetPixel(hdc, x, y);
}

int GetPolyFillMode(int hdc) {
  final _GetPolyFillMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetPolyFillMode');
  return _GetPolyFillMode(hdc);
}

int GetROP2(int hdc) {
  final _GetROP2 = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetROP2');
  return _GetROP2(hdc);
}

int GetRandomRgn(int hdc, int hrgn, int i) {
  final _GetRandomRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn, Int32 i), 
    int Function(int hdc, int hrgn, int i)
  >('GetRandomRgn');
  return _GetRandomRgn(hdc, hrgn, i);
}

int GetRasterizerCaps(Pointer<RASTERIZER_STATUS> lpraststat, int cjBytes) {
  final _GetRasterizerCaps = _gdi32.lookupFunction<
    Int32 Function(Pointer<RASTERIZER_STATUS> lpraststat, Uint32 cjBytes), 
    int Function(Pointer<RASTERIZER_STATUS> lpraststat, int cjBytes)
  >('GetRasterizerCaps');
  return _GetRasterizerCaps(lpraststat, cjBytes);
}

int GetRegionData(int hrgn, int nCount, Pointer<RGNDATA> lpRgnData) {
  final _GetRegionData = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hrgn, Uint32 nCount, Pointer<RGNDATA> lpRgnData), 
    int Function(int hrgn, int nCount, Pointer<RGNDATA> lpRgnData)
  >('GetRegionData');
  return _GetRegionData(hrgn, nCount, lpRgnData);
}

int GetRgnBox(int hrgn, Pointer<RECT> lprc) {
  final _GetRgnBox = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Pointer<RECT> lprc), 
    int Function(int hrgn, Pointer<RECT> lprc)
  >('GetRgnBox');
  return _GetRgnBox(hrgn, lprc);
}

int GetStockObject(int i) {
  final _GetStockObject = _gdi32.lookupFunction<
    IntPtr Function(Uint32 i), 
    int Function(int i)
  >('GetStockObject');
  return _GetStockObject(i);
}

int GetStretchBltMode(int hdc) {
  final _GetStretchBltMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetStretchBltMode');
  return _GetStretchBltMode(hdc);
}

int GetSystemPaletteEntries(int hdc, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries) {
  final _GetSystemPaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 iStart, Uint32 cEntries, Pointer<PALETTEENTRY> pPalEntries), 
    int Function(int hdc, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries)
  >('GetSystemPaletteEntries');
  return _GetSystemPaletteEntries(hdc, iStart, cEntries, pPalEntries);
}

int GetSystemPaletteUse(int hdc) {
  final _GetSystemPaletteUse = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetSystemPaletteUse');
  return _GetSystemPaletteUse(hdc);
}

int GetTextAlign(int hdc) {
  final _GetTextAlign = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetTextAlign');
  return _GetTextAlign(hdc);
}

int GetTextCharacterExtra(int hdc) {
  final _GetTextCharacterExtra = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetTextCharacterExtra');
  return _GetTextCharacterExtra(hdc);
}

int GetTextColor(int hdc) {
  final _GetTextColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('GetTextColor');
  return _GetTextColor(hdc);
}

int GetTextExtentExPointI(int hdc, Pointer<Uint16> lpwszString, int cwchString, int nMaxExtent, Pointer<Int32> lpnFit, Pointer<Int32> lpnDx, Pointer<SIZE> lpSize) {
  final _GetTextExtentExPointI = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Uint16> lpwszString, Int32 cwchString, Int32 nMaxExtent, Pointer<Int32> lpnFit, Pointer<Int32> lpnDx, Pointer<SIZE> lpSize), 
    int Function(int hdc, Pointer<Uint16> lpwszString, int cwchString, int nMaxExtent, Pointer<Int32> lpnFit, Pointer<Int32> lpnDx, Pointer<SIZE> lpSize)
  >('GetTextExtentExPointI');
  return _GetTextExtentExPointI(hdc, lpwszString, cwchString, nMaxExtent, lpnFit, lpnDx, lpSize);
}

int GetTextExtentExPointW(int hdc, Pointer<Utf16> lpszString, int cchString, int nMaxExtent, Pointer<Int32> lpnFit, Pointer<Int32> lpnDx, Pointer<SIZE> lpSize) {
  final _GetTextExtentExPointW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpszString, Int32 cchString, Int32 nMaxExtent, Pointer<Int32> lpnFit, Pointer<Int32> lpnDx, Pointer<SIZE> lpSize), 
    int Function(int hdc, Pointer<Utf16> lpszString, int cchString, int nMaxExtent, Pointer<Int32> lpnFit, Pointer<Int32> lpnDx, Pointer<SIZE> lpSize)
  >('GetTextExtentExPointW');
  return _GetTextExtentExPointW(hdc, lpszString, cchString, nMaxExtent, lpnFit, lpnDx, lpSize);
}

int GetTextExtentPoint32W(int hdc, Pointer<Utf16> lpString, int c, Pointer<SIZE> psizl) {
  final _GetTextExtentPoint32W = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 c, Pointer<SIZE> psizl), 
    int Function(int hdc, Pointer<Utf16> lpString, int c, Pointer<SIZE> psizl)
  >('GetTextExtentPoint32W');
  return _GetTextExtentPoint32W(hdc, lpString, c, psizl);
}

int GetTextExtentPointI(int hdc, Pointer<Uint16> pgiIn, int cgi, Pointer<SIZE> psize) {
  final _GetTextExtentPointI = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Uint16> pgiIn, Int32 cgi, Pointer<SIZE> psize), 
    int Function(int hdc, Pointer<Uint16> pgiIn, int cgi, Pointer<SIZE> psize)
  >('GetTextExtentPointI');
  return _GetTextExtentPointI(hdc, pgiIn, cgi, psize);
}

int GetTextExtentPointW(int hdc, Pointer<Utf16> lpString, int c, Pointer<SIZE> lpsz) {
  final _GetTextExtentPointW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 c, Pointer<SIZE> lpsz), 
    int Function(int hdc, Pointer<Utf16> lpString, int c, Pointer<SIZE> lpsz)
  >('GetTextExtentPointW');
  return _GetTextExtentPointW(hdc, lpString, c, lpsz);
}

int GetTextFaceW(int hdc, int c, Pointer<Utf16> lpName) {
  final _GetTextFaceW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 c, Pointer<Utf16> lpName), 
    int Function(int hdc, int c, Pointer<Utf16> lpName)
  >('GetTextFaceW');
  return _GetTextFaceW(hdc, c, lpName);
}

int GetTextMetricsW(int hdc, Pointer<TEXTMETRIC> lptm) {
  final _GetTextMetricsW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<TEXTMETRIC> lptm), 
    int Function(int hdc, Pointer<TEXTMETRIC> lptm)
  >('GetTextMetricsW');
  return _GetTextMetricsW(hdc, lptm);
}

int GetViewportExtEx(int hdc, Pointer<SIZE> lpsize) {
  final _GetViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<SIZE> lpsize), 
    int Function(int hdc, Pointer<SIZE> lpsize)
  >('GetViewportExtEx');
  return _GetViewportExtEx(hdc, lpsize);
}

int GetViewportOrgEx(int hdc, Pointer<POINT> lppoint) {
  final _GetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppoint), 
    int Function(int hdc, Pointer<POINT> lppoint)
  >('GetViewportOrgEx');
  return _GetViewportOrgEx(hdc, lppoint);
}

int GetWinMetaFileBits(int hemf, int cbData16, Pointer<Uint8> pData16, int iMapMode, int hdcRef) {
  final _GetWinMetaFileBits = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hemf, Uint32 cbData16, Pointer<Uint8> pData16, Int32 iMapMode, IntPtr hdcRef), 
    int Function(int hemf, int cbData16, Pointer<Uint8> pData16, int iMapMode, int hdcRef)
  >('GetWinMetaFileBits');
  return _GetWinMetaFileBits(hemf, cbData16, pData16, iMapMode, hdcRef);
}

int GetWindowExtEx(int hdc, Pointer<SIZE> lpsize) {
  final _GetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<SIZE> lpsize), 
    int Function(int hdc, Pointer<SIZE> lpsize)
  >('GetWindowExtEx');
  return _GetWindowExtEx(hdc, lpsize);
}

int GetWindowOrgEx(int hdc, Pointer<POINT> lppoint) {
  final _GetWindowOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppoint), 
    int Function(int hdc, Pointer<POINT> lppoint)
  >('GetWindowOrgEx');
  return _GetWindowOrgEx(hdc, lppoint);
}

int GetWorldTransform(int hdc, Pointer<XFORM> lpxf) {
  final _GetWorldTransform = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<XFORM> lpxf), 
    int Function(int hdc, Pointer<XFORM> lpxf)
  >('GetWorldTransform');
  return _GetWorldTransform(hdc, lpxf);
}

int IntersectClipRect(int hdc, int left, int top, int right, int bottom) {
  final _IntersectClipRect = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom), 
    int Function(int hdc, int left, int top, int right, int bottom)
  >('IntersectClipRect');
  return _IntersectClipRect(hdc, left, top, right, bottom);
}

int InvertRgn(int hdc, int hrgn) {
  final _InvertRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn), 
    int Function(int hdc, int hrgn)
  >('InvertRgn');
  return _InvertRgn(hdc, hrgn);
}

int LPtoDP(int hdc, Pointer<POINT> lppt, int c) {
  final _LPtoDP = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> lppt, Int32 c), 
    int Function(int hdc, Pointer<POINT> lppt, int c)
  >('LPtoDP');
  return _LPtoDP(hdc, lppt, c);
}

int LineTo(int hdc, int x, int y) {
  final _LineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y), 
    int Function(int hdc, int x, int y)
  >('LineTo');
  return _LineTo(hdc, x, y);
}

int MaskBlt(int hdcDest, int xDest, int yDest, int width, int height, int hdcSrc, int xSrc, int ySrc, int hbmMask, int xMask, int yMask, int rop) {
  final _MaskBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdcDest, Int32 xDest, Int32 yDest, Int32 width, Int32 height, IntPtr hdcSrc, Int32 xSrc, Int32 ySrc, IntPtr hbmMask, Int32 xMask, Int32 yMask, Uint32 rop), 
    int Function(int hdcDest, int xDest, int yDest, int width, int height, int hdcSrc, int xSrc, int ySrc, int hbmMask, int xMask, int yMask, int rop)
  >('MaskBlt');
  return _MaskBlt(hdcDest, xDest, yDest, width, height, hdcSrc, xSrc, ySrc, hbmMask, xMask, yMask, rop);
}

int ModifyWorldTransform(int hdc, Pointer<XFORM> lpxf, int mode) {
  final _ModifyWorldTransform = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<XFORM> lpxf, Uint32 mode), 
    int Function(int hdc, Pointer<XFORM> lpxf, int mode)
  >('ModifyWorldTransform');
  return _ModifyWorldTransform(hdc, lpxf, mode);
}

int MoveToEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _MoveToEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt), 
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)
  >('MoveToEx');
  return _MoveToEx(hdc, x, y, lppt);
}

int OffsetClipRgn(int hdc, int x, int y) {
  final _OffsetClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y), 
    int Function(int hdc, int x, int y)
  >('OffsetClipRgn');
  return _OffsetClipRgn(hdc, x, y);
}

int OffsetRgn(int hrgn, int x, int y) {
  final _OffsetRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Int32 x, Int32 y), 
    int Function(int hrgn, int x, int y)
  >('OffsetRgn');
  return _OffsetRgn(hrgn, x, y);
}

int OffsetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _OffsetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt), 
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)
  >('OffsetViewportOrgEx');
  return _OffsetViewportOrgEx(hdc, x, y, lppt);
}

int OffsetWindowOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _OffsetWindowOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt), 
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)
  >('OffsetWindowOrgEx');
  return _OffsetWindowOrgEx(hdc, x, y, lppt);
}

int PaintRgn(int hdc, int hrgn) {
  final _PaintRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn), 
    int Function(int hdc, int hrgn)
  >('PaintRgn');
  return _PaintRgn(hdc, hrgn);
}

int PatBlt(int hdc, int x, int y, int w, int h, int rop) {
  final _PatBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Int32 w, Int32 h, Uint32 rop), 
    int Function(int hdc, int x, int y, int w, int h, int rop)
  >('PatBlt');
  return _PatBlt(hdc, x, y, w, h, rop);
}

int PathToRegion(int hdc) {
  final _PathToRegion = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc), 
    int Function(int hdc)
  >('PathToRegion');
  return _PathToRegion(hdc);
}

int Pie(int hdc, int left, int top, int right, int bottom, int xr1, int yr1, int xr2, int yr2) {
  final _Pie = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom, Int32 xr1, Int32 yr1, Int32 xr2, Int32 yr2), 
    int Function(int hdc, int left, int top, int right, int bottom, int xr1, int yr1, int xr2, int yr2)
  >('Pie');
  return _Pie(hdc, left, top, right, bottom, xr1, yr1, xr2, yr2);
}

int PlayEnhMetaFile(int hdc, int hmf, Pointer<RECT> lprect) {
  final _PlayEnhMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf, Pointer<RECT> lprect), 
    int Function(int hdc, int hmf, Pointer<RECT> lprect)
  >('PlayEnhMetaFile');
  return _PlayEnhMetaFile(hdc, hmf, lprect);
}

int PlayEnhMetaFileRecord(int hdc, Pointer<HANDLETABLE> pht, Pointer<ENHMETARECORD> pmr, int cht) {
  final _PlayEnhMetaFileRecord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<HANDLETABLE> pht, Pointer<ENHMETARECORD> pmr, Uint32 cht), 
    int Function(int hdc, Pointer<HANDLETABLE> pht, Pointer<ENHMETARECORD> pmr, int cht)
  >('PlayEnhMetaFileRecord');
  return _PlayEnhMetaFileRecord(hdc, pht, pmr, cht);
}

int PlayMetaFile(int hdc, int hmf) {
  final _PlayMetaFile = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hmf), 
    int Function(int hdc, int hmf)
  >('PlayMetaFile');
  return _PlayMetaFile(hdc, hmf);
}

int PlayMetaFileRecord(int hdc, Pointer<HANDLETABLE> lpHandleTable, Pointer<METARECORD> lpMR, int noObjs) {
  final _PlayMetaFileRecord = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<HANDLETABLE> lpHandleTable, Pointer<METARECORD> lpMR, Uint32 noObjs), 
    int Function(int hdc, Pointer<HANDLETABLE> lpHandleTable, Pointer<METARECORD> lpMR, int noObjs)
  >('PlayMetaFileRecord');
  return _PlayMetaFileRecord(hdc, lpHandleTable, lpMR, noObjs);
}

int PlgBlt(int hdcDest, Pointer<POINT> lpPoint, int hdcSrc, int xSrc, int ySrc, int width, int height, int hbmMask, int xMask, int yMask) {
  final _PlgBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdcDest, Pointer<POINT> lpPoint, IntPtr hdcSrc, Int32 xSrc, Int32 ySrc, Int32 width, Int32 height, IntPtr hbmMask, Int32 xMask, Int32 yMask), 
    int Function(int hdcDest, Pointer<POINT> lpPoint, int hdcSrc, int xSrc, int ySrc, int width, int height, int hbmMask, int xMask, int yMask)
  >('PlgBlt');
  return _PlgBlt(hdcDest, lpPoint, hdcSrc, xSrc, ySrc, width, height, hbmMask, xMask, yMask);
}

int PolyBezier(int hdc, Pointer<POINT> apt, int cpt) {
  final _PolyBezier = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int cpt)
  >('PolyBezier');
  return _PolyBezier(hdc, apt, cpt);
}

int PolyBezierTo(int hdc, Pointer<POINT> apt, int cpt) {
  final _PolyBezierTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int cpt)
  >('PolyBezierTo');
  return _PolyBezierTo(hdc, apt, cpt);
}

int PolyDraw(int hdc, Pointer<POINT> apt, int aj, int cpt) {
  final _PolyDraw = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 aj, Int32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int aj, int cpt)
  >('PolyDraw');
  return _PolyDraw(hdc, apt, aj, cpt);
}

int PolyPolygon(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz) {
  final _PolyPolygon = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Pointer<Int32> asz, Int32 csz), 
    int Function(int hdc, Pointer<POINT> apt, Pointer<Int32> asz, int csz)
  >('PolyPolygon');
  return _PolyPolygon(hdc, apt, asz, csz);
}

int PolyPolyline(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz) {
  final _PolyPolyline = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Pointer<Uint32> asz, Uint32 csz), 
    int Function(int hdc, Pointer<POINT> apt, Pointer<Uint32> asz, int csz)
  >('PolyPolyline');
  return _PolyPolyline(hdc, apt, asz, csz);
}

int PolyTextOutW(int hdc, Pointer<POLYTEXT> ppt, int nstrings) {
  final _PolyTextOutW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POLYTEXT> ppt, Int32 nstrings), 
    int Function(int hdc, Pointer<POLYTEXT> ppt, int nstrings)
  >('PolyTextOutW');
  return _PolyTextOutW(hdc, ppt, nstrings);
}

int Polygon(int hdc, Pointer<POINT> apt, int cpt) {
  final _Polygon = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int cpt)
  >('Polygon');
  return _Polygon(hdc, apt, cpt);
}

int Polyline(int hdc, Pointer<POINT> apt, int cpt) {
  final _Polyline = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Int32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int cpt)
  >('Polyline');
  return _Polyline(hdc, apt, cpt);
}

int PolylineTo(int hdc, Pointer<POINT> apt, int cpt) {
  final _PolylineTo = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<POINT> apt, Uint32 cpt), 
    int Function(int hdc, Pointer<POINT> apt, int cpt)
  >('PolylineTo');
  return _PolylineTo(hdc, apt, cpt);
}

int PtInRegion(int hrgn, int x, int y) {
  final _PtInRegion = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Int32 x, Int32 y), 
    int Function(int hrgn, int x, int y)
  >('PtInRegion');
  return _PtInRegion(hrgn, x, y);
}

int PtVisible(int hdc, int x, int y) {
  final _PtVisible = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y), 
    int Function(int hdc, int x, int y)
  >('PtVisible');
  return _PtVisible(hdc, x, y);
}

int RealizePalette(int hdc) {
  final _RealizePalette = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('RealizePalette');
  return _RealizePalette(hdc);
}

int RectInRegion(int hrgn, Pointer<RECT> lprect) {
  final _RectInRegion = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Pointer<RECT> lprect), 
    int Function(int hrgn, Pointer<RECT> lprect)
  >('RectInRegion');
  return _RectInRegion(hrgn, lprect);
}

int RectVisible(int hdc, Pointer<RECT> lprect) {
  final _RectVisible = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<RECT> lprect), 
    int Function(int hdc, Pointer<RECT> lprect)
  >('RectVisible');
  return _RectVisible(hdc, lprect);
}

int Rectangle(int hdc, int left, int top, int right, int bottom) {
  final _Rectangle = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom), 
    int Function(int hdc, int left, int top, int right, int bottom)
  >('Rectangle');
  return _Rectangle(hdc, left, top, right, bottom);
}

int RemoveFontMemResourceEx(int h) {
  final _RemoveFontMemResourceEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr h), 
    int Function(int h)
  >('RemoveFontMemResourceEx');
  return _RemoveFontMemResourceEx(h);
}

int RemoveFontResourceExW(Pointer<Utf16> name, int fl, Pointer pdv) {
  final _RemoveFontResourceExW = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> name, Uint32 fl, Pointer pdv), 
    int Function(Pointer<Utf16> name, int fl, Pointer pdv)
  >('RemoveFontResourceExW');
  return _RemoveFontResourceExW(name, fl, pdv);
}

int RemoveFontResourceW(Pointer<Utf16> lpFileName) {
  final _RemoveFontResourceW = _gdi32.lookupFunction<
    Int32 Function(Pointer<Utf16> lpFileName), 
    int Function(Pointer<Utf16> lpFileName)
  >('RemoveFontResourceW');
  return _RemoveFontResourceW(lpFileName);
}

int ResetDCW(int hdc, Pointer<DEVMODE> lpdm) {
  final _ResetDCW = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, Pointer<DEVMODE> lpdm), 
    int Function(int hdc, Pointer<DEVMODE> lpdm)
  >('ResetDCW');
  return _ResetDCW(hdc, lpdm);
}

int ResizePalette(int hpal, int n) {
  final _ResizePalette = _gdi32.lookupFunction<
    Int32 Function(IntPtr hpal, Uint32 n), 
    int Function(int hpal, int n)
  >('ResizePalette');
  return _ResizePalette(hpal, n);
}

int RestoreDC(int hdc, int nSavedDC) {
  final _RestoreDC = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 nSavedDC), 
    int Function(int hdc, int nSavedDC)
  >('RestoreDC');
  return _RestoreDC(hdc, nSavedDC);
}

int RoundRect(int hdc, int left, int top, int right, int bottom, int width, int height) {
  final _RoundRect = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 left, Int32 top, Int32 right, Int32 bottom, Int32 width, Int32 height), 
    int Function(int hdc, int left, int top, int right, int bottom, int width, int height)
  >('RoundRect');
  return _RoundRect(hdc, left, top, right, bottom, width, height);
}

int SaveDC(int hdc) {
  final _SaveDC = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('SaveDC');
  return _SaveDC(hdc);
}

int ScaleViewportExtEx(int hdc, int xn, int dx, int yn, int yd, Pointer<SIZE> lpsz) {
  final _ScaleViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 xn, Int32 dx, Int32 yn, Int32 yd, Pointer<SIZE> lpsz), 
    int Function(int hdc, int xn, int dx, int yn, int yd, Pointer<SIZE> lpsz)
  >('ScaleViewportExtEx');
  return _ScaleViewportExtEx(hdc, xn, dx, yn, yd, lpsz);
}

int ScaleWindowExtEx(int hdc, int xn, int xd, int yn, int yd, Pointer<SIZE> lpsz) {
  final _ScaleWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 xn, Int32 xd, Int32 yn, Int32 yd, Pointer<SIZE> lpsz), 
    int Function(int hdc, int xn, int xd, int yn, int yd, Pointer<SIZE> lpsz)
  >('ScaleWindowExtEx');
  return _ScaleWindowExtEx(hdc, xn, xd, yn, yd, lpsz);
}

int SelectClipPath(int hdc, int mode) {
  final _SelectClipPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode), 
    int Function(int hdc, int mode)
  >('SelectClipPath');
  return _SelectClipPath(hdc, mode);
}

int SelectClipRgn(int hdc, int hrgn) {
  final _SelectClipRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hrgn), 
    int Function(int hdc, int hrgn)
  >('SelectClipRgn');
  return _SelectClipRgn(hdc, hrgn);
}

int SelectObject(int hdc, int h) {
  final _SelectObject = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, IntPtr h), 
    int Function(int hdc, int h)
  >('SelectObject');
  return _SelectObject(hdc, h);
}

int SelectPalette(int hdc, int hPal, int bForceBkgd) {
  final _SelectPalette = _gdi32.lookupFunction<
    IntPtr Function(IntPtr hdc, IntPtr hPal, Int32 bForceBkgd), 
    int Function(int hdc, int hPal, int bForceBkgd)
  >('SelectPalette');
  return _SelectPalette(hdc, hPal, bForceBkgd);
}

int SetArcDirection(int hdc, int dir) {
  final _SetArcDirection = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 dir), 
    int Function(int hdc, int dir)
  >('SetArcDirection');
  return _SetArcDirection(hdc, dir);
}

int SetBitmapBits(int hbm, int cb, Pointer pvBits) {
  final _SetBitmapBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbm, Uint32 cb, Pointer pvBits), 
    int Function(int hbm, int cb, Pointer pvBits)
  >('SetBitmapBits');
  return _SetBitmapBits(hbm, cb, pvBits);
}

int SetBitmapDimensionEx(int hbm, int w, int h, Pointer<SIZE> lpsz) {
  final _SetBitmapDimensionEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hbm, Int32 w, Int32 h, Pointer<SIZE> lpsz), 
    int Function(int hbm, int w, int h, Pointer<SIZE> lpsz)
  >('SetBitmapDimensionEx');
  return _SetBitmapDimensionEx(hbm, w, h, lpsz);
}

int SetBkColor(int hdc, int color) {
  final _SetBkColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color), 
    int Function(int hdc, int color)
  >('SetBkColor');
  return _SetBkColor(hdc, color);
}

int SetBkMode(int hdc, int mode) {
  final _SetBkMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode), 
    int Function(int hdc, int mode)
  >('SetBkMode');
  return _SetBkMode(hdc, mode);
}

int SetBoundsRect(int hdc, Pointer<RECT> lprect, int flags) {
  final _SetBoundsRect = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Pointer<RECT> lprect, Uint32 flags), 
    int Function(int hdc, Pointer<RECT> lprect, int flags)
  >('SetBoundsRect');
  return _SetBoundsRect(hdc, lprect, flags);
}

int SetBrushOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _SetBrushOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt), 
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)
  >('SetBrushOrgEx');
  return _SetBrushOrgEx(hdc, x, y, lppt);
}

int SetColorAdjustment(int hdc, Pointer<COLORADJUSTMENT> lpca) {
  final _SetColorAdjustment = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<COLORADJUSTMENT> lpca), 
    int Function(int hdc, Pointer<COLORADJUSTMENT> lpca)
  >('SetColorAdjustment');
  return _SetColorAdjustment(hdc, lpca);
}

int SetDCBrushColor(int hdc, int color) {
  final _SetDCBrushColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color), 
    int Function(int hdc, int color)
  >('SetDCBrushColor');
  return _SetDCBrushColor(hdc, color);
}

int SetDCPenColor(int hdc, int color) {
  final _SetDCPenColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color), 
    int Function(int hdc, int color)
  >('SetDCPenColor');
  return _SetDCPenColor(hdc, color);
}

int SetDIBColorTable(int hdc, int iStart, int cEntries, Pointer<RGBQUAD> prgbq) {
  final _SetDIBColorTable = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 iStart, Uint32 cEntries, Pointer<RGBQUAD> prgbq), 
    int Function(int hdc, int iStart, int cEntries, Pointer<RGBQUAD> prgbq)
  >('SetDIBColorTable');
  return _SetDIBColorTable(hdc, iStart, cEntries, prgbq);
}

int SetDIBits(int hdc, int hbm, int start, int cLines, Pointer lpBits, Pointer<BITMAPINFO> lpbmi, int ColorUse) {
  final _SetDIBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, IntPtr hbm, Uint32 start, Uint32 cLines, Pointer lpBits, Pointer<BITMAPINFO> lpbmi, Uint32 ColorUse), 
    int Function(int hdc, int hbm, int start, int cLines, Pointer lpBits, Pointer<BITMAPINFO> lpbmi, int ColorUse)
  >('SetDIBits');
  return _SetDIBits(hdc, hbm, start, cLines, lpBits, lpbmi, ColorUse);
}

int SetDIBitsToDevice(int hdc, int xDest, int yDest, int w, int h, int xSrc, int ySrc, int StartScan, int cLines, Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, int ColorUse) {
  final _SetDIBitsToDevice = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 xDest, Int32 yDest, Uint32 w, Uint32 h, Int32 xSrc, Int32 ySrc, Uint32 StartScan, Uint32 cLines, Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, Uint32 ColorUse), 
    int Function(int hdc, int xDest, int yDest, int w, int h, int xSrc, int ySrc, int StartScan, int cLines, Pointer lpvBits, Pointer<BITMAPINFO> lpbmi, int ColorUse)
  >('SetDIBitsToDevice');
  return _SetDIBitsToDevice(hdc, xDest, yDest, w, h, xSrc, ySrc, StartScan, cLines, lpvBits, lpbmi, ColorUse);
}

int SetEnhMetaFileBits(int nSize, Pointer<Uint8> pb) {
  final _SetEnhMetaFileBits = _gdi32.lookupFunction<
    IntPtr Function(Uint32 nSize, Pointer<Uint8> pb), 
    int Function(int nSize, Pointer<Uint8> pb)
  >('SetEnhMetaFileBits');
  return _SetEnhMetaFileBits(nSize, pb);
}

int SetGraphicsMode(int hdc, int iMode) {
  final _SetGraphicsMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iMode), 
    int Function(int hdc, int iMode)
  >('SetGraphicsMode');
  return _SetGraphicsMode(hdc, iMode);
}

int SetLayout(int hdc, int l) {
  final _SetLayout = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 l), 
    int Function(int hdc, int l)
  >('SetLayout');
  return _SetLayout(hdc, l);
}

int SetMapMode(int hdc, int iMode) {
  final _SetMapMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 iMode), 
    int Function(int hdc, int iMode)
  >('SetMapMode');
  return _SetMapMode(hdc, iMode);
}

int SetMapperFlags(int hdc, int flags) {
  final _SetMapperFlags = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 flags), 
    int Function(int hdc, int flags)
  >('SetMapperFlags');
  return _SetMapperFlags(hdc, flags);
}

int SetMetaFileBitsEx(int cbBuffer, Pointer<Uint8> lpData) {
  final _SetMetaFileBitsEx = _gdi32.lookupFunction<
    IntPtr Function(Uint32 cbBuffer, Pointer<Uint8> lpData), 
    int Function(int cbBuffer, Pointer<Uint8> lpData)
  >('SetMetaFileBitsEx');
  return _SetMetaFileBitsEx(cbBuffer, lpData);
}

int SetMetaRgn(int hdc) {
  final _SetMetaRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('SetMetaRgn');
  return _SetMetaRgn(hdc);
}

int SetMiterLimit(int hdc, double limit, Pointer<Float> old) {
  final _SetMiterLimit = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Float limit, Pointer<Float> old), 
    int Function(int hdc, double limit, Pointer<Float> old)
  >('SetMiterLimit');
  return _SetMiterLimit(hdc, limit, old);
}

int SetPaletteEntries(int hpal, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries) {
  final _SetPaletteEntries = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hpal, Uint32 iStart, Uint32 cEntries, Pointer<PALETTEENTRY> pPalEntries), 
    int Function(int hpal, int iStart, int cEntries, Pointer<PALETTEENTRY> pPalEntries)
  >('SetPaletteEntries');
  return _SetPaletteEntries(hpal, iStart, cEntries, pPalEntries);
}

int SetPixel(int hdc, int x, int y, int color) {
  final _SetPixel = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color), 
    int Function(int hdc, int x, int y, int color)
  >('SetPixel');
  return _SetPixel(hdc, x, y, color);
}

int SetPixelV(int hdc, int x, int y, int color) {
  final _SetPixelV = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Uint32 color), 
    int Function(int hdc, int x, int y, int color)
  >('SetPixelV');
  return _SetPixelV(hdc, x, y, color);
}

int SetPolyFillMode(int hdc, int mode) {
  final _SetPolyFillMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode), 
    int Function(int hdc, int mode)
  >('SetPolyFillMode');
  return _SetPolyFillMode(hdc, mode);
}

int SetROP2(int hdc, int rop2) {
  final _SetROP2 = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 rop2), 
    int Function(int hdc, int rop2)
  >('SetROP2');
  return _SetROP2(hdc, rop2);
}

int SetRectRgn(int hrgn, int left, int top, int right, int bottom) {
  final _SetRectRgn = _gdi32.lookupFunction<
    Int32 Function(IntPtr hrgn, Int32 left, Int32 top, Int32 right, Int32 bottom), 
    int Function(int hrgn, int left, int top, int right, int bottom)
  >('SetRectRgn');
  return _SetRectRgn(hrgn, left, top, right, bottom);
}

int SetStretchBltMode(int hdc, int mode) {
  final _SetStretchBltMode = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Uint32 mode), 
    int Function(int hdc, int mode)
  >('SetStretchBltMode');
  return _SetStretchBltMode(hdc, mode);
}

int SetSystemPaletteUse(int hdc, int use) {
  final _SetSystemPaletteUse = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 use), 
    int Function(int hdc, int use)
  >('SetSystemPaletteUse');
  return _SetSystemPaletteUse(hdc, use);
}

int SetTextAlign(int hdc, int align) {
  final _SetTextAlign = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 align), 
    int Function(int hdc, int align)
  >('SetTextAlign');
  return _SetTextAlign(hdc, align);
}

int SetTextCharacterExtra(int hdc, int extra) {
  final _SetTextCharacterExtra = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 extra), 
    int Function(int hdc, int extra)
  >('SetTextCharacterExtra');
  return _SetTextCharacterExtra(hdc, extra);
}

int SetTextColor(int hdc, int color) {
  final _SetTextColor = _gdi32.lookupFunction<
    Uint32 Function(IntPtr hdc, Uint32 color), 
    int Function(int hdc, int color)
  >('SetTextColor');
  return _SetTextColor(hdc, color);
}

int SetTextJustification(int hdc, int extra, int count) {
  final _SetTextJustification = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 extra, Int32 count), 
    int Function(int hdc, int extra, int count)
  >('SetTextJustification');
  return _SetTextJustification(hdc, extra, count);
}

int SetViewportExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) {
  final _SetViewportExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz), 
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)
  >('SetViewportExtEx');
  return _SetViewportExtEx(hdc, x, y, lpsz);
}

int SetViewportOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _SetViewportOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt), 
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)
  >('SetViewportOrgEx');
  return _SetViewportOrgEx(hdc, x, y, lppt);
}

int SetWinMetaFileBits(int nSize, Pointer<Uint8> lpMeta16Data, int hdcRef, Pointer<METAFILEPICT> lpMFP) {
  final _SetWinMetaFileBits = _gdi32.lookupFunction<
    IntPtr Function(Uint32 nSize, Pointer<Uint8> lpMeta16Data, IntPtr hdcRef, Pointer<METAFILEPICT> lpMFP), 
    int Function(int nSize, Pointer<Uint8> lpMeta16Data, int hdcRef, Pointer<METAFILEPICT> lpMFP)
  >('SetWinMetaFileBits');
  return _SetWinMetaFileBits(nSize, lpMeta16Data, hdcRef, lpMFP);
}

int SetWindowExtEx(int hdc, int x, int y, Pointer<SIZE> lpsz) {
  final _SetWindowExtEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<SIZE> lpsz), 
    int Function(int hdc, int x, int y, Pointer<SIZE> lpsz)
  >('SetWindowExtEx');
  return _SetWindowExtEx(hdc, x, y, lpsz);
}

int SetWindowOrgEx(int hdc, int x, int y, Pointer<POINT> lppt) {
  final _SetWindowOrgEx = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<POINT> lppt), 
    int Function(int hdc, int x, int y, Pointer<POINT> lppt)
  >('SetWindowOrgEx');
  return _SetWindowOrgEx(hdc, x, y, lppt);
}

int SetWorldTransform(int hdc, Pointer<XFORM> lpxf) {
  final _SetWorldTransform = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<XFORM> lpxf), 
    int Function(int hdc, Pointer<XFORM> lpxf)
  >('SetWorldTransform');
  return _SetWorldTransform(hdc, lpxf);
}

int StretchBlt(int hdcDest, int xDest, int yDest, int wDest, int hDest, int hdcSrc, int xSrc, int ySrc, int wSrc, int hSrc, int rop) {
  final _StretchBlt = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdcDest, Int32 xDest, Int32 yDest, Int32 wDest, Int32 hDest, IntPtr hdcSrc, Int32 xSrc, Int32 ySrc, Int32 wSrc, Int32 hSrc, Uint32 rop), 
    int Function(int hdcDest, int xDest, int yDest, int wDest, int hDest, int hdcSrc, int xSrc, int ySrc, int wSrc, int hSrc, int rop)
  >('StretchBlt');
  return _StretchBlt(hdcDest, xDest, yDest, wDest, hDest, hdcSrc, xSrc, ySrc, wSrc, hSrc, rop);
}

int StretchDIBits(int hdc, int xDest, int yDest, int DestWidth, int DestHeight, int xSrc, int ySrc, int SrcWidth, int SrcHeight, Pointer lpBits, Pointer<BITMAPINFO> lpbmi, int iUsage, int rop) {
  final _StretchDIBits = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 xDest, Int32 yDest, Int32 DestWidth, Int32 DestHeight, Int32 xSrc, Int32 ySrc, Int32 SrcWidth, Int32 SrcHeight, Pointer lpBits, Pointer<BITMAPINFO> lpbmi, Uint32 iUsage, Uint32 rop), 
    int Function(int hdc, int xDest, int yDest, int DestWidth, int DestHeight, int xSrc, int ySrc, int SrcWidth, int SrcHeight, Pointer lpBits, Pointer<BITMAPINFO> lpbmi, int iUsage, int rop)
  >('StretchDIBits');
  return _StretchDIBits(hdc, xDest, yDest, DestWidth, DestHeight, xSrc, ySrc, SrcWidth, SrcHeight, lpBits, lpbmi, iUsage, rop);
}

int StrokeAndFillPath(int hdc) {
  final _StrokeAndFillPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('StrokeAndFillPath');
  return _StrokeAndFillPath(hdc);
}

int StrokePath(int hdc) {
  final _StrokePath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('StrokePath');
  return _StrokePath(hdc);
}

int TextOutW(int hdc, int x, int y, Pointer<Utf16> lpString, int c) {
  final _TextOutW = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc, Int32 x, Int32 y, Pointer<Utf16> lpString, Int32 c), 
    int Function(int hdc, int x, int y, Pointer<Utf16> lpString, int c)
  >('TextOutW');
  return _TextOutW(hdc, x, y, lpString, c);
}

int UnrealizeObject(int h) {
  final _UnrealizeObject = _gdi32.lookupFunction<
    Int32 Function(IntPtr h), 
    int Function(int h)
  >('UnrealizeObject');
  return _UnrealizeObject(h);
}

int UpdateColors(int hdc) {
  final _UpdateColors = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('UpdateColors');
  return _UpdateColors(hdc);
}

int WidenPath(int hdc) {
  final _WidenPath = _gdi32.lookupFunction<
    Int32 Function(IntPtr hdc), 
    int Function(int hdc)
  >('WidenPath');
  return _WidenPath(hdc);
}

