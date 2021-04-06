// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class HDC extends Struct {
  @IntPtr()
  external int Value;
}

class CreatedHDC extends Struct {
  @IntPtr()
  external int Value;
}

class HGDIOBJ extends Struct {
  @IntPtr()
  external int Value;
}

class HBITMAP extends Struct {
  @IntPtr()
  external int Value;
}

class HRGN extends Struct {
  @IntPtr()
  external int Value;
}

class HPEN extends Struct {
  @IntPtr()
  external int Value;
}

class HBRUSH extends Struct {
  @IntPtr()
  external int Value;
}

class HFONT extends Struct {
  @IntPtr()
  external int Value;
}

class HMETAFILE extends Struct {
  @IntPtr()
  external int Value;
}

class HENHMETAFILE extends Struct {
  @IntPtr()
  external int Value;
}

class HMONITOR extends Struct {
  @IntPtr()
  external int Value;
}

class HPALETTE extends Struct {
  @IntPtr()
  external int Value;
}

class HdcMetdataFileHandle extends Struct {
  @IntPtr()
  external int Value;
}

class HdcMetdataEnhFileHandle extends Struct {
  @IntPtr()
  external int Value;
}

class XFORM extends Struct {
  @Float()
  external double eM11;
  @Float()
  external double eM12;
  @Float()
  external double eM21;
  @Float()
  external double eM22;
  @Float()
  external double eDx;
  @Float()
  external double eDy;
}

class BITMAP extends Struct {
  @Int32()
  external int bmType;
  @Int32()
  external int bmWidth;
  @Int32()
  external int bmHeight;
  @Int32()
  external int bmWidthBytes;
  @Uint16()
  external int bmPlanes;
  @Uint16()
  external int bmBitsPixel;
  external Pointer bmBits;
}

class RGBTRIPLE extends Struct {
  @Uint8()
  external int rgbtBlue;
  @Uint8()
  external int rgbtGreen;
  @Uint8()
  external int rgbtRed;
}

class RGBQUAD extends Struct {
  @Uint8()
  external int rgbBlue;
  @Uint8()
  external int rgbGreen;
  @Uint8()
  external int rgbRed;
  @Uint8()
  external int rgbReserved;
}

class BITMAPCOREHEADER extends Struct {
  @Uint32()
  external int bcSize;
  @Uint16()
  external int bcWidth;
  @Uint16()
  external int bcHeight;
  @Uint16()
  external int bcPlanes;
  @Uint16()
  external int bcBitCount;
}

class BITMAPINFOHEADER extends Struct {
  @Uint32()
  external int biSize;
  @Int32()
  external int biWidth;
  @Int32()
  external int biHeight;
  @Uint16()
  external int biPlanes;
  @Uint16()
  external int biBitCount;
  @Uint32()
  external int biCompression;
  @Uint32()
  external int biSizeImage;
  @Int32()
  external int biXPelsPerMeter;
  @Int32()
  external int biYPelsPerMeter;
  @Uint32()
  external int biClrUsed;
  @Uint32()
  external int biClrImportant;
}

class BITMAPV4HEADER extends Struct {
  @Uint32()
  external int bV4Size;
  @Int32()
  external int bV4Width;
  @Int32()
  external int bV4Height;
  @Uint16()
  external int bV4Planes;
  @Uint16()
  external int bV4BitCount;
  @Uint32()
  external int bV4V4Compression;
  @Uint32()
  external int bV4SizeImage;
  @Int32()
  external int bV4XPelsPerMeter;
  @Int32()
  external int bV4YPelsPerMeter;
  @Uint32()
  external int bV4ClrUsed;
  @Uint32()
  external int bV4ClrImportant;
  @Uint32()
  external int bV4RedMask;
  @Uint32()
  external int bV4GreenMask;
  @Uint32()
  external int bV4BlueMask;
  @Uint32()
  external int bV4AlphaMask;
  @Uint32()
  external int bV4CSType;
  external CIEXYZTRIPLE bV4Endpoints;
  @Uint32()
  external int bV4GammaRed;
  @Uint32()
  external int bV4GammaGreen;
  @Uint32()
  external int bV4GammaBlue;
}

class BITMAPV5HEADER extends Struct {
  @Uint32()
  external int bV5Size;
  @Int32()
  external int bV5Width;
  @Int32()
  external int bV5Height;
  @Uint16()
  external int bV5Planes;
  @Uint16()
  external int bV5BitCount;
  @Uint32()
  external int bV5Compression;
  @Uint32()
  external int bV5SizeImage;
  @Int32()
  external int bV5XPelsPerMeter;
  @Int32()
  external int bV5YPelsPerMeter;
  @Uint32()
  external int bV5ClrUsed;
  @Uint32()
  external int bV5ClrImportant;
  @Uint32()
  external int bV5RedMask;
  @Uint32()
  external int bV5GreenMask;
  @Uint32()
  external int bV5BlueMask;
  @Uint32()
  external int bV5AlphaMask;
  @Uint32()
  external int bV5CSType;
  external CIEXYZTRIPLE bV5Endpoints;
  @Uint32()
  external int bV5GammaRed;
  @Uint32()
  external int bV5GammaGreen;
  @Uint32()
  external int bV5GammaBlue;
  @Uint32()
  external int bV5Intent;
  @Uint32()
  external int bV5ProfileData;
  @Uint32()
  external int bV5ProfileSize;
  @Uint32()
  external int bV5Reserved;
}

class BITMAPINFO extends Struct {
  external BITMAPINFOHEADER bmiHeader;
  @Array(1)
  external Array<RGBQUAD> bmiColors;
}

class BITMAPCOREINFO extends Struct {
  external BITMAPCOREHEADER bmciHeader;
  @Array(1)
  external Array<RGBTRIPLE> bmciColors;
}

class BITMAPFILEHEADER extends Struct {
  @Uint16()
  external int bfType;
  @Uint32()
  external int bfSize;
  @Uint16()
  external int bfReserved1;
  @Uint16()
  external int bfReserved2;
  @Uint32()
  external int bfOffBits;
}

class HANDLETABLE extends Struct {
  @Array(1)
  external Array<IntPtr> objectHandle;
}

class METARECORD extends Struct {
  @Uint32()
  external int rdSize;
  @Uint16()
  external int rdFunction;
  @Array(1)
  external Array<Uint16> rdParm;
}

class METAHEADER extends Struct {
  @Uint16()
  external int mtType;
  @Uint16()
  external int mtHeaderSize;
  @Uint16()
  external int mtVersion;
  @Uint32()
  external int mtSize;
  @Uint16()
  external int mtNoObjects;
  @Uint32()
  external int mtMaxRecord;
  @Uint16()
  external int mtNoParameters;
}

class ENHMETARECORD extends Struct {
  @Uint32()
  external int iType;
  @Uint32()
  external int nSize;
  @Array(1)
  external Array<Uint32> dParm;
}

class ENHMETAHEADER extends Struct {
  @Uint32()
  external int iType;
  @Uint32()
  external int nSize;
  external RECTL rclBounds;
  external RECTL rclFrame;
  @Uint32()
  external int dSignature;
  @Uint32()
  external int nVersion;
  @Uint32()
  external int nBytes;
  @Uint32()
  external int nRecords;
  @Uint16()
  external int nHandles;
  @Uint16()
  external int sReserved;
  @Uint32()
  external int nDescription;
  @Uint32()
  external int offDescription;
  @Uint32()
  external int nPalEntries;
  external SIZE szlDevice;
  external SIZE szlMillimeters;
  @Uint32()
  external int cbPixelFormat;
  @Uint32()
  external int offPixelFormat;
  @Uint32()
  external int bOpenGL;
  external SIZE szlMicrometers;
}

class TEXTMETRICA extends Struct {
  @Int32()
  external int tmHeight;
  @Int32()
  external int tmAscent;
  @Int32()
  external int tmDescent;
  @Int32()
  external int tmInternalLeading;
  @Int32()
  external int tmExternalLeading;
  @Int32()
  external int tmAveCharWidth;
  @Int32()
  external int tmMaxCharWidth;
  @Int32()
  external int tmWeight;
  @Int32()
  external int tmOverhang;
  @Int32()
  external int tmDigitizedAspectX;
  @Int32()
  external int tmDigitizedAspectY;
  @Uint8()
  external int tmFirstChar;
  @Uint8()
  external int tmLastChar;
  @Uint8()
  external int tmDefaultChar;
  @Uint8()
  external int tmBreakChar;
  @Uint8()
  external int tmItalic;
  @Uint8()
  external int tmUnderlined;
  @Uint8()
  external int tmStruckOut;
  @Uint8()
  external int tmPitchAndFamily;
  @Uint8()
  external int tmCharSet;
}

class TEXTMETRICW extends Struct {
  @Int32()
  external int tmHeight;
  @Int32()
  external int tmAscent;
  @Int32()
  external int tmDescent;
  @Int32()
  external int tmInternalLeading;
  @Int32()
  external int tmExternalLeading;
  @Int32()
  external int tmAveCharWidth;
  @Int32()
  external int tmMaxCharWidth;
  @Int32()
  external int tmWeight;
  @Int32()
  external int tmOverhang;
  @Int32()
  external int tmDigitizedAspectX;
  @Int32()
  external int tmDigitizedAspectY;
  @Uint16()
  external int tmFirstChar;
  @Uint16()
  external int tmLastChar;
  @Uint16()
  external int tmDefaultChar;
  @Uint16()
  external int tmBreakChar;
  @Uint8()
  external int tmItalic;
  @Uint8()
  external int tmUnderlined;
  @Uint8()
  external int tmStruckOut;
  @Uint8()
  external int tmPitchAndFamily;
  @Uint8()
  external int tmCharSet;
}

class NEWTEXTMETRICA extends Struct {
  @Int32()
  external int tmHeight;
  @Int32()
  external int tmAscent;
  @Int32()
  external int tmDescent;
  @Int32()
  external int tmInternalLeading;
  @Int32()
  external int tmExternalLeading;
  @Int32()
  external int tmAveCharWidth;
  @Int32()
  external int tmMaxCharWidth;
  @Int32()
  external int tmWeight;
  @Int32()
  external int tmOverhang;
  @Int32()
  external int tmDigitizedAspectX;
  @Int32()
  external int tmDigitizedAspectY;
  @Uint8()
  external int tmFirstChar;
  @Uint8()
  external int tmLastChar;
  @Uint8()
  external int tmDefaultChar;
  @Uint8()
  external int tmBreakChar;
  @Uint8()
  external int tmItalic;
  @Uint8()
  external int tmUnderlined;
  @Uint8()
  external int tmStruckOut;
  @Uint8()
  external int tmPitchAndFamily;
  @Uint8()
  external int tmCharSet;
  @Uint32()
  external int ntmFlags;
  @Uint32()
  external int ntmSizeEM;
  @Uint32()
  external int ntmCellHeight;
  @Uint32()
  external int ntmAvgWidth;
}

class NEWTEXTMETRICW extends Struct {
  @Int32()
  external int tmHeight;
  @Int32()
  external int tmAscent;
  @Int32()
  external int tmDescent;
  @Int32()
  external int tmInternalLeading;
  @Int32()
  external int tmExternalLeading;
  @Int32()
  external int tmAveCharWidth;
  @Int32()
  external int tmMaxCharWidth;
  @Int32()
  external int tmWeight;
  @Int32()
  external int tmOverhang;
  @Int32()
  external int tmDigitizedAspectX;
  @Int32()
  external int tmDigitizedAspectY;
  @Uint16()
  external int tmFirstChar;
  @Uint16()
  external int tmLastChar;
  @Uint16()
  external int tmDefaultChar;
  @Uint16()
  external int tmBreakChar;
  @Uint8()
  external int tmItalic;
  @Uint8()
  external int tmUnderlined;
  @Uint8()
  external int tmStruckOut;
  @Uint8()
  external int tmPitchAndFamily;
  @Uint8()
  external int tmCharSet;
  @Uint32()
  external int ntmFlags;
  @Uint32()
  external int ntmSizeEM;
  @Uint32()
  external int ntmCellHeight;
  @Uint32()
  external int ntmAvgWidth;
}

class NEWTEXTMETRICEXA extends Struct {
  external NEWTEXTMETRICA ntmTm;
  external FONTSIGNATURE ntmFontSig;
}

class NEWTEXTMETRICEXW extends Struct {
  external NEWTEXTMETRICW ntmTm;
  external FONTSIGNATURE ntmFontSig;
}

class PELARRAY extends Struct {
  @Int32()
  external int paXCount;
  @Int32()
  external int paYCount;
  @Int32()
  external int paXExt;
  @Int32()
  external int paYExt;
  @Uint8()
  external int paRGBs;
}

class LOGBRUSH extends Struct {
  @Uint32()
  external int lbStyle;
  @Uint32()
  external int lbColor;
  @IntPtr()
  external int lbHatch;
}

class LOGBRUSH32 extends Struct {
  @Uint32()
  external int lbStyle;
  @Uint32()
  external int lbColor;
  @Uint32()
  external int lbHatch;
}

class LOGPEN extends Struct {
  @Uint32()
  external int lopnStyle;
  external POINT lopnWidth;
  @Uint32()
  external int lopnColor;
}

class EXTLOGPEN extends Struct {
  @Uint32()
  external int elpPenStyle;
  @Uint32()
  external int elpWidth;
  @Uint32()
  external int elpBrushStyle;
  @Uint32()
  external int elpColor;
  @IntPtr()
  external int elpHatch;
  @Uint32()
  external int elpNumEntries;
  @Array(1)
  external Array<Uint32> elpStyleEntry;
}

class EXTLOGPEN32 extends Struct {
  @Uint32()
  external int elpPenStyle;
  @Uint32()
  external int elpWidth;
  @Uint32()
  external int elpBrushStyle;
  @Uint32()
  external int elpColor;
  @Uint32()
  external int elpHatch;
  @Uint32()
  external int elpNumEntries;
  @Array(1)
  external Array<Uint32> elpStyleEntry;
}

class PALETTEENTRY extends Struct {
  @Uint8()
  external int peRed;
  @Uint8()
  external int peGreen;
  @Uint8()
  external int peBlue;
  @Uint8()
  external int peFlags;
}

class LOGPALETTE extends Struct {
  @Uint16()
  external int palVersion;
  @Uint16()
  external int palNumEntries;
  @Array(1)
  external Array<PALETTEENTRY> palPalEntry;
}

class ENUMLOGFONTA extends Struct {
  external LOGFONTA elfLogFont;
  @Array(64)
  external Array<Uint8> elfFullName;
  @Array(32)
  external Array<Uint8> elfStyle;
}

class ENUMLOGFONTW extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> elfFullName;
  @Array(32)
  external Array<Uint16> elfStyle;
}

class ENUMLOGFONTEXA extends Struct {
  external LOGFONTA elfLogFont;
  @Array(64)
  external Array<Uint8> elfFullName;
  @Array(32)
  external Array<Uint8> elfStyle;
  @Array(32)
  external Array<Uint8> elfScript;
}

class ENUMLOGFONTEXW extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> elfFullName;
  @Array(32)
  external Array<Uint16> elfStyle;
  @Array(32)
  external Array<Uint16> elfScript;
}

class PANOSE extends Struct {
  @Uint8()
  external int bFamilyType;
  @Uint8()
  external int bSerifStyle;
  @Uint8()
  external int bWeight;
  @Uint8()
  external int bProportion;
  @Uint8()
  external int bContrast;
  @Uint8()
  external int bStrokeVariation;
  @Uint8()
  external int bArmStyle;
  @Uint8()
  external int bLetterform;
  @Uint8()
  external int bMidline;
  @Uint8()
  external int bXHeight;
}

class EXTLOGFONTA extends Struct {
  external LOGFONTA elfLogFont;
  @Array(64)
  external Array<Uint8> elfFullName;
  @Array(32)
  external Array<Uint8> elfStyle;
  @Uint32()
  external int elfVersion;
  @Uint32()
  external int elfStyleSize;
  @Uint32()
  external int elfMatch;
  @Uint32()
  external int elfReserved;
  @Array(4)
  external Array<Uint8> elfVendorId;
  @Uint32()
  external int elfCulture;
  external PANOSE elfPanose;
}

class EXTLOGFONTW extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> elfFullName;
  @Array(32)
  external Array<Uint16> elfStyle;
  @Uint32()
  external int elfVersion;
  @Uint32()
  external int elfStyleSize;
  @Uint32()
  external int elfMatch;
  @Uint32()
  external int elfReserved;
  @Array(4)
  external Array<Uint8> elfVendorId;
  @Uint32()
  external int elfCulture;
  external PANOSE elfPanose;
}

class DISPLAY_DEVICEA extends Struct {
  @Uint32()
  external int cb;
  @Array(32)
  external Array<Int8> DeviceName;
  @Array(128)
  external Array<Int8> DeviceString;
  @Uint32()
  external int StateFlags;
  @Array(128)
  external Array<Int8> DeviceID;
  @Array(128)
  external Array<Int8> DeviceKey;
}

class DISPLAY_DEVICEW extends Struct {
  @Uint32()
  external int cb;
  @Array(32)
  external Array<Uint16> DeviceName;
  @Array(128)
  external Array<Uint16> DeviceString;
  @Uint32()
  external int StateFlags;
  @Array(128)
  external Array<Uint16> DeviceID;
  @Array(128)
  external Array<Uint16> DeviceKey;
}

class DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int colorEncoding;
  @Uint32()
  external int bitsPerColorChannel;
}

class DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int Anonymous;
}

class DISPLAYCONFIG_SDR_WHITE_LEVEL extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;
  @Uint32()
  external int SDRWhiteLevel;
}

class RGNDATAHEADER extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int iType;
  @Uint32()
  external int nCount;
  @Uint32()
  external int nRgnSize;
  external RECT rcBound;
}

class RGNDATA extends Struct {
  external RGNDATAHEADER rdh;
  @Array(1)
  external Array<Int8> Buffer;
}

class ABC extends Struct {
  @Int32()
  external int abcA;
  @Uint32()
  external int abcB;
  @Int32()
  external int abcC;
}

class ABCFLOAT extends Struct {
  @Float()
  external double abcfA;
  @Float()
  external double abcfB;
  @Float()
  external double abcfC;
}

class OUTLINETEXTMETRICA extends Struct {
  @Uint32()
  external int otmSize;
  external TEXTMETRICA otmTextMetrics;
  @Uint8()
  external int otmFiller;
  external PANOSE otmPanoseNumber;
  @Uint32()
  external int otmfsSelection;
  @Uint32()
  external int otmfsType;
  @Int32()
  external int otmsCharSlopeRise;
  @Int32()
  external int otmsCharSlopeRun;
  @Int32()
  external int otmItalicAngle;
  @Uint32()
  external int otmEMSquare;
  @Int32()
  external int otmAscent;
  @Int32()
  external int otmDescent;
  @Uint32()
  external int otmLineGap;
  @Uint32()
  external int otmsCapEmHeight;
  @Uint32()
  external int otmsXHeight;
  external RECT otmrcFontBox;
  @Int32()
  external int otmMacAscent;
  @Int32()
  external int otmMacDescent;
  @Uint32()
  external int otmMacLineGap;
  @Uint32()
  external int otmusMinimumPPEM;
  external POINT otmptSubscriptSize;
  external POINT otmptSubscriptOffset;
  external POINT otmptSuperscriptSize;
  external POINT otmptSuperscriptOffset;
  @Uint32()
  external int otmsStrikeoutSize;
  @Int32()
  external int otmsStrikeoutPosition;
  @Int32()
  external int otmsUnderscoreSize;
  @Int32()
  external int otmsUnderscorePosition;
  external Pointer<Utf8> otmpFamilyName;
  external Pointer<Utf8> otmpFaceName;
  external Pointer<Utf8> otmpStyleName;
  external Pointer<Utf8> otmpFullName;
}

class OUTLINETEXTMETRICW extends Struct {
  @Uint32()
  external int otmSize;
  external TEXTMETRICW otmTextMetrics;
  @Uint8()
  external int otmFiller;
  external PANOSE otmPanoseNumber;
  @Uint32()
  external int otmfsSelection;
  @Uint32()
  external int otmfsType;
  @Int32()
  external int otmsCharSlopeRise;
  @Int32()
  external int otmsCharSlopeRun;
  @Int32()
  external int otmItalicAngle;
  @Uint32()
  external int otmEMSquare;
  @Int32()
  external int otmAscent;
  @Int32()
  external int otmDescent;
  @Uint32()
  external int otmLineGap;
  @Uint32()
  external int otmsCapEmHeight;
  @Uint32()
  external int otmsXHeight;
  external RECT otmrcFontBox;
  @Int32()
  external int otmMacAscent;
  @Int32()
  external int otmMacDescent;
  @Uint32()
  external int otmMacLineGap;
  @Uint32()
  external int otmusMinimumPPEM;
  external POINT otmptSubscriptSize;
  external POINT otmptSubscriptOffset;
  external POINT otmptSuperscriptSize;
  external POINT otmptSuperscriptOffset;
  @Uint32()
  external int otmsStrikeoutSize;
  @Int32()
  external int otmsStrikeoutPosition;
  @Int32()
  external int otmsUnderscoreSize;
  @Int32()
  external int otmsUnderscorePosition;
  external Pointer<Utf8> otmpFamilyName;
  external Pointer<Utf8> otmpFaceName;
  external Pointer<Utf8> otmpStyleName;
  external Pointer<Utf8> otmpFullName;
}

class POLYTEXTA extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Uint32()
  external int n;
  external Pointer<Utf8> lpstr;
  @Uint32()
  external int uiFlags;
  external RECT rcl;
  external Pointer<Int32> pdx;
}

class POLYTEXTW extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Uint32()
  external int n;
  external Pointer<Utf16> lpstr;
  @Uint32()
  external int uiFlags;
  external RECT rcl;
  external Pointer<Int32> pdx;
}

class FIXED extends Struct {
  @Uint16()
  external int fract;
  @Int16()
  external int value;
}

class MAT2 extends Struct {
  external FIXED eM11;
  external FIXED eM12;
  external FIXED eM21;
  external FIXED eM22;
}

class GLYPHMETRICS extends Struct {
  @Uint32()
  external int gmBlackBoxX;
  @Uint32()
  external int gmBlackBoxY;
  external POINT gmptGlyphOrigin;
  @Int16()
  external int gmCellIncX;
  @Int16()
  external int gmCellIncY;
}

class POINTFX extends Struct {
  external FIXED x;
  external FIXED y;
}

class TTPOLYCURVE extends Struct {
  @Uint16()
  external int wType;
  @Uint16()
  external int cpfx;
  @Array(1)
  external Array<POINTFX> apfx;
}

class TTPOLYGONHEADER extends Struct {
  @Uint32()
  external int cb;
  @Uint32()
  external int dwType;
  external POINTFX pfxStart;
}

class GCP_RESULTSA extends Struct {
  @Uint32()
  external int lStructSize;
  external Pointer<Utf8> lpOutString;
  external Pointer<Uint32> lpOrder;
  external Pointer<Int32> lpDx;
  external Pointer<Int32> lpCaretPos;
  external Pointer<Utf8> lpClass;
  external Pointer<Utf16> lpGlyphs;
  @Uint32()
  external int nGlyphs;
  @Int32()
  external int nMaxFit;
}

class GCP_RESULTSW extends Struct {
  @Uint32()
  external int lStructSize;
  external Pointer<Utf16> lpOutString;
  external Pointer<Uint32> lpOrder;
  external Pointer<Int32> lpDx;
  external Pointer<Int32> lpCaretPos;
  external Pointer<Utf8> lpClass;
  external Pointer<Utf16> lpGlyphs;
  @Uint32()
  external int nGlyphs;
  @Int32()
  external int nMaxFit;
}

class RASTERIZER_STATUS extends Struct {
  @Int16()
  external int nSize;
  @Int16()
  external int wFlags;
  @Int16()
  external int nLanguageID;
}

class WCRANGE extends Struct {
  @Uint16()
  external int wcLow;
  @Uint16()
  external int cGlyphs;
}

class GLYPHSET extends Struct {
  @Uint32()
  external int cbThis;
  @Uint32()
  external int flAccel;
  @Uint32()
  external int cGlyphsSupported;
  @Uint32()
  external int cRanges;
  @Array(1)
  external Array<WCRANGE> ranges;
}

class DESIGNVECTOR extends Struct {
  @Uint32()
  external int dvReserved;
  @Uint32()
  external int dvNumAxes;
  @Array(16)
  external Array<Int32> dvValues;
}

class AXISINFOA extends Struct {
  @Int32()
  external int axMinValue;
  @Int32()
  external int axMaxValue;
  @Array(16)
  external Array<Uint8> axAxisName;
}

class AXISINFOW extends Struct {
  @Int32()
  external int axMinValue;
  @Int32()
  external int axMaxValue;
  @Array(16)
  external Array<Uint16> axAxisName;
}

class AXESLISTA extends Struct {
  @Uint32()
  external int axlReserved;
  @Uint32()
  external int axlNumAxes;
  @Array(16)
  external Array<AXISINFOA> axlAxisInfo;
}

class AXESLISTW extends Struct {
  @Uint32()
  external int axlReserved;
  @Uint32()
  external int axlNumAxes;
  @Array(16)
  external Array<AXISINFOW> axlAxisInfo;
}

class ENUMLOGFONTEXDVA extends Struct {
  external ENUMLOGFONTEXA elfEnumLogfontEx;
  external DESIGNVECTOR elfDesignVector;
}

class ENUMLOGFONTEXDVW extends Struct {
  external ENUMLOGFONTEXW elfEnumLogfontEx;
  external DESIGNVECTOR elfDesignVector;
}

class ENUMTEXTMETRICA extends Struct {
  external NEWTEXTMETRICEXA etmNewTextMetricEx;
  external AXESLISTA etmAxesList;
}

class ENUMTEXTMETRICW extends Struct {
  external NEWTEXTMETRICEXW etmNewTextMetricEx;
  external AXESLISTW etmAxesList;
}

class TRIVERTEX extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Uint16()
  external int Red;
  @Uint16()
  external int Green;
  @Uint16()
  external int Blue;
  @Uint16()
  external int Alpha;
}

class GRADIENT_TRIANGLE extends Struct {
  @Uint32()
  external int Vertex1;
  @Uint32()
  external int Vertex2;
  @Uint32()
  external int Vertex3;
}

class GRADIENT_RECT extends Struct {
  @Uint32()
  external int UpperLeft;
  @Uint32()
  external int LowerRight;
}

class BLENDFUNCTION extends Struct {
  @Uint8()
  external int BlendOp;
  @Uint8()
  external int BlendFlags;
  @Uint8()
  external int SourceConstantAlpha;
  @Uint8()
  external int AlphaFormat;
}

class DIBSECTION extends Struct {
  external BITMAP dsBm;
  external BITMAPINFOHEADER dsBmih;
  @Array(3)
  external Array<Uint32> dsBitfields;
  @IntPtr()
  external int dshSection;
  @Uint32()
  external int dsOffset;
}

class COLORADJUSTMENT extends Struct {
  @Uint16()
  external int caSize;
  @Uint16()
  external int caFlags;
  @Uint16()
  external int caIlluminantIndex;
  @Uint16()
  external int caRedGamma;
  @Uint16()
  external int caGreenGamma;
  @Uint16()
  external int caBlueGamma;
  @Uint16()
  external int caReferenceBlack;
  @Uint16()
  external int caReferenceWhite;
  @Int16()
  external int caContrast;
  @Int16()
  external int caBrightness;
  @Int16()
  external int caColorfulness;
  @Int16()
  external int caRedGreenTint;
}

class KERNINGPAIR extends Struct {
  @Uint16()
  external int wFirst;
  @Uint16()
  external int wSecond;
  @Int32()
  external int iKernAmount;
}

class EMR extends Struct {
  @Uint32()
  external int iType;
  @Uint32()
  external int nSize;
}

class EMRTEXT extends Struct {
  external POINTL ptlReference;
  @Uint32()
  external int nChars;
  @Uint32()
  external int offString;
  @Uint32()
  external int fOptions;
  external RECTL rcl;
  @Uint32()
  external int offDx;
}

class ABORTPATH extends Struct {
  external EMR emr;
}

class EMRSELECTCLIPPATH extends Struct {
  external EMR emr;
  @Uint32()
  external int iMode;
}

class EMRSETMITERLIMIT extends Struct {
  external EMR emr;
  @Float()
  external double eMiterLimit;
}

class EMRRESTOREDC extends Struct {
  external EMR emr;
  @Int32()
  external int iRelative;
}

class EMRSETARCDIRECTION extends Struct {
  external EMR emr;
  @Uint32()
  external int iArcDirection;
}

class EMRSETMAPPERFLAGS extends Struct {
  external EMR emr;
  @Uint32()
  external int dwFlags;
}

class EMRSETTEXTCOLOR extends Struct {
  external EMR emr;
  @Uint32()
  external int crColor;
}

class EMRSELECTOBJECT extends Struct {
  external EMR emr;
  @Uint32()
  external int ihObject;
}

class EMRSELECTPALETTE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPal;
}

class EMRRESIZEPALETTE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPal;
  @Uint32()
  external int cEntries;
}

class EMRSETPALETTEENTRIES extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPal;
  @Uint32()
  external int iStart;
  @Uint32()
  external int cEntries;
  @Array(1)
  external Array<PALETTEENTRY> aPalEntries;
}

class EMRSETCOLORADJUSTMENT extends Struct {
  external EMR emr;
  external COLORADJUSTMENT ColorAdjustment;
}

class EMRGDICOMMENT extends Struct {
  external EMR emr;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
}

class EMREOF extends Struct {
  external EMR emr;
  @Uint32()
  external int nPalEntries;
  @Uint32()
  external int offPalEntries;
  @Uint32()
  external int nSizeLast;
}

class EMRLINETO extends Struct {
  external EMR emr;
  external POINTL ptl;
}

class EMROFFSETCLIPRGN extends Struct {
  external EMR emr;
  external POINTL ptlOffset;
}

class EMRFILLPATH extends Struct {
  external EMR emr;
  external RECTL rclBounds;
}

class EMREXCLUDECLIPRECT extends Struct {
  external EMR emr;
  external RECTL rclClip;
}

class EMRSETVIEWPORTORGEX extends Struct {
  external EMR emr;
  external POINTL ptlOrigin;
}

class EMRSETVIEWPORTEXTEX extends Struct {
  external EMR emr;
  external SIZE szlExtent;
}

class EMRSCALEVIEWPORTEXTEX extends Struct {
  external EMR emr;
  @Int32()
  external int xNum;
  @Int32()
  external int xDenom;
  @Int32()
  external int yNum;
  @Int32()
  external int yDenom;
}

class EMRSETWORLDTRANSFORM extends Struct {
  external EMR emr;
  external XFORM xform;
}

class EMRMODIFYWORLDTRANSFORM extends Struct {
  external EMR emr;
  external XFORM xform;
  @Uint32()
  external int iMode;
}

class EMRSETPIXELV extends Struct {
  external EMR emr;
  external POINTL ptlPixel;
  @Uint32()
  external int crColor;
}

class EMREXTFLOODFILL extends Struct {
  external EMR emr;
  external POINTL ptlStart;
  @Uint32()
  external int crColor;
  @Uint32()
  external int iMode;
}

class EMRELLIPSE extends Struct {
  external EMR emr;
  external RECTL rclBox;
}

class EMRROUNDRECT extends Struct {
  external EMR emr;
  external RECTL rclBox;
  external SIZE szlCorner;
}

class EMRARC extends Struct {
  external EMR emr;
  external RECTL rclBox;
  external POINTL ptlStart;
  external POINTL ptlEnd;
}

class EMRANGLEARC extends Struct {
  external EMR emr;
  external POINTL ptlCenter;
  @Uint32()
  external int nRadius;
  @Float()
  external double eStartAngle;
  @Float()
  external double eSweepAngle;
}

class EMRPOLYLINE extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cptl;
  @Array(1)
  external Array<POINTL> aptl;
}

class EMRPOLYLINE16 extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cpts;
  @Array(1)
  external Array<POINTS> apts;
}

class EMRPOLYDRAW extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cptl;
  @Array(1)
  external Array<POINTL> aptl;
  @Array(1)
  external Array<Uint8> abTypes;
}

class EMRPOLYDRAW16 extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cpts;
  @Array(1)
  external Array<POINTS> apts;
  @Array(1)
  external Array<Uint8> abTypes;
}

class EMRPOLYPOLYLINE extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int nPolys;
  @Uint32()
  external int cptl;
  @Array(1)
  external Array<Uint32> aPolyCounts;
  @Array(1)
  external Array<POINTL> aptl;
}

class EMRPOLYPOLYLINE16 extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int nPolys;
  @Uint32()
  external int cpts;
  @Array(1)
  external Array<Uint32> aPolyCounts;
  @Array(1)
  external Array<POINTS> apts;
}

class EMRINVERTRGN extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cbRgnData;
  @Array(1)
  external Array<Uint8> RgnData;
}

class EMRFILLRGN extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cbRgnData;
  @Uint32()
  external int ihBrush;
  @Array(1)
  external Array<Uint8> RgnData;
}

class EMRFRAMERGN extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cbRgnData;
  @Uint32()
  external int ihBrush;
  external SIZE szlStroke;
  @Array(1)
  external Array<Uint8> RgnData;
}

class EMREXTSELECTCLIPRGN extends Struct {
  external EMR emr;
  @Uint32()
  external int cbRgnData;
  @Uint32()
  external int iMode;
  @Array(1)
  external Array<Uint8> RgnData;
}

class EMREXTTEXTOUTA extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int iGraphicsMode;
  @Float()
  external double exScale;
  @Float()
  external double eyScale;
  external EMRTEXT emrtext;
}

class EMRPOLYTEXTOUTA extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int iGraphicsMode;
  @Float()
  external double exScale;
  @Float()
  external double eyScale;
  @Int32()
  external int cStrings;
  @Array(1)
  external Array<EMRTEXT> aemrtext;
}

class EMRBITBLT extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int cxDest;
  @Int32()
  external int cyDest;
  @Uint32()
  external int dwRop;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  external XFORM xformSrc;
  @Uint32()
  external int crBkColorSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
}

class EMRSTRETCHBLT extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int cxDest;
  @Int32()
  external int cyDest;
  @Uint32()
  external int dwRop;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  external XFORM xformSrc;
  @Uint32()
  external int crBkColorSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Int32()
  external int cxSrc;
  @Int32()
  external int cySrc;
}

class EMRMASKBLT extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int cxDest;
  @Int32()
  external int cyDest;
  @Uint32()
  external int dwRop;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  external XFORM xformSrc;
  @Uint32()
  external int crBkColorSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Int32()
  external int xMask;
  @Int32()
  external int yMask;
  @Uint32()
  external int iUsageMask;
  @Uint32()
  external int offBmiMask;
  @Uint32()
  external int cbBmiMask;
  @Uint32()
  external int offBitsMask;
  @Uint32()
  external int cbBitsMask;
}

class EMRPLGBLT extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Array(3)
  external Array<POINTL> aptlDest;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  @Int32()
  external int cxSrc;
  @Int32()
  external int cySrc;
  external XFORM xformSrc;
  @Uint32()
  external int crBkColorSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Int32()
  external int xMask;
  @Int32()
  external int yMask;
  @Uint32()
  external int iUsageMask;
  @Uint32()
  external int offBmiMask;
  @Uint32()
  external int cbBmiMask;
  @Uint32()
  external int offBitsMask;
  @Uint32()
  external int cbBitsMask;
}

class EMRSETDIBITSTODEVICE extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  @Int32()
  external int cxSrc;
  @Int32()
  external int cySrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int iStartScan;
  @Uint32()
  external int cScans;
}

class EMRSTRETCHDIBITS extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  @Int32()
  external int cxSrc;
  @Int32()
  external int cySrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int dwRop;
  @Int32()
  external int cxDest;
  @Int32()
  external int cyDest;
}

class EMREXTCREATEFONTINDIRECTW extends Struct {
  external EMR emr;
  @Uint32()
  external int ihFont;
  external EXTLOGFONTW elfw;
}

class EMRCREATEPALETTE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPal;
  external LOGPALETTE lgpl;
}

class EMRCREATEPEN extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPen;
  external LOGPEN lopn;
}

class EMREXTCREATEPEN extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPen;
  @Uint32()
  external int offBmi;
  @Uint32()
  external int cbBmi;
  @Uint32()
  external int offBits;
  @Uint32()
  external int cbBits;
  external EXTLOGPEN32 elp;
}

class EMRCREATEBRUSHINDIRECT extends Struct {
  external EMR emr;
  @Uint32()
  external int ihBrush;
  external LOGBRUSH32 lb;
}

class EMRCREATEMONOBRUSH extends Struct {
  external EMR emr;
  @Uint32()
  external int ihBrush;
  @Uint32()
  external int iUsage;
  @Uint32()
  external int offBmi;
  @Uint32()
  external int cbBmi;
  @Uint32()
  external int offBits;
  @Uint32()
  external int cbBits;
}

class EMRCREATEDIBPATTERNBRUSHPT extends Struct {
  external EMR emr;
  @Uint32()
  external int ihBrush;
  @Uint32()
  external int iUsage;
  @Uint32()
  external int offBmi;
  @Uint32()
  external int cbBmi;
  @Uint32()
  external int offBits;
  @Uint32()
  external int cbBits;
}

class EMRFORMAT extends Struct {
  @Uint32()
  external int dSignature;
  @Uint32()
  external int nVersion;
  @Uint32()
  external int cbData;
  @Uint32()
  external int offData;
}

class EMRGLSRECORD extends Struct {
  external EMR emr;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
}

class EMRGLSBOUNDEDRECORD extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
}

class EMRPIXELFORMAT extends Struct {
  external EMR emr;
  external PIXELFORMATDESCRIPTOR pfd;
}

class EMRCREATECOLORSPACE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihCS;
  external LOGCOLORSPACEA lcs;
}

class EMRSETCOLORSPACE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihCS;
}

class EMREXTESCAPE extends Struct {
  external EMR emr;
  @Int32()
  external int iEscape;
  @Int32()
  external int cbEscData;
  @Array(1)
  external Array<Uint8> EscData;
}

class EMRNAMEDESCAPE extends Struct {
  external EMR emr;
  @Int32()
  external int iEscape;
  @Int32()
  external int cbDriver;
  @Int32()
  external int cbEscData;
  @Array(1)
  external Array<Uint8> EscData;
}

class EMRSETICMPROFILE extends Struct {
  external EMR emr;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cbName;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
}

class EMRCREATECOLORSPACEW extends Struct {
  external EMR emr;
  @Uint32()
  external int ihCS;
  external LOGCOLORSPACEW lcs;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
}

class COLORMATCHTOTARGET extends Struct {
  external EMR emr;
  @Uint32()
  external int dwAction;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cbName;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
}

class COLORCORRECTPALETTE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPalette;
  @Uint32()
  external int nFirstEntry;
  @Uint32()
  external int nPalEntries;
  @Uint32()
  external int nReserved;
}

class EMRALPHABLEND extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int cxDest;
  @Int32()
  external int cyDest;
  @Uint32()
  external int dwRop;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  external XFORM xformSrc;
  @Uint32()
  external int crBkColorSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Int32()
  external int cxSrc;
  @Int32()
  external int cySrc;
}

class EMRGRADIENTFILL extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int nVer;
  @Uint32()
  external int nTri;
  @Uint32()
  external int ulMode;
  @Array(1)
  external Array<TRIVERTEX> Ver;
}

class EMRTRANSPARENTBLT extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Int32()
  external int xDest;
  @Int32()
  external int yDest;
  @Int32()
  external int cxDest;
  @Int32()
  external int cyDest;
  @Uint32()
  external int dwRop;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  external XFORM xformSrc;
  @Uint32()
  external int crBkColorSrc;
  @Uint32()
  external int iUsageSrc;
  @Uint32()
  external int offBmiSrc;
  @Uint32()
  external int cbBmiSrc;
  @Uint32()
  external int offBitsSrc;
  @Uint32()
  external int cbBitsSrc;
  @Int32()
  external int cxSrc;
  @Int32()
  external int cySrc;
}

class WGLSWAP extends Struct {
  @IntPtr()
  external int hdc;
  @Uint32()
  external int uiFlags;
}

class TTLOADINFO extends Struct {
  @Uint16()
  external int usStructSize;
  @Uint16()
  external int usRefStrSize;
  external Pointer<Uint16> pusRefStr;
}

class TTEMBEDINFO extends Struct {
  @Uint16()
  external int usStructSize;
  @Uint16()
  external int usRootStrSize;
  external Pointer<Uint16> pusRootStr;
}

class TTVALIDATIONTESTSPARAMS extends Struct {
  @Uint32()
  external int ulStructSize;
  @Int32()
  external int lTestFromSize;
  @Int32()
  external int lTestToSize;
  @Uint32()
  external int ulCharSet;
  @Uint16()
  external int usReserved1;
  @Uint16()
  external int usCharCodeCount;
  external Pointer<Uint16> pusCharCodeSet;
}

class TTVALIDATIONTESTSPARAMSEX extends Struct {
  @Uint32()
  external int ulStructSize;
  @Int32()
  external int lTestFromSize;
  @Int32()
  external int lTestToSize;
  @Uint32()
  external int ulCharSet;
  @Uint16()
  external int usReserved1;
  @Uint16()
  external int usCharCodeCount;
  external Pointer<Uint32> pulCharCodeSet;
}

class MxdcEscapeHeader extends Struct {
  @Uint32()
  external int cbInput;
  @Uint32()
  external int cbOutput;
  @Uint32()
  external int opCode;
}

class MxdcGetFileNameData extends Struct {
  @Uint32()
  external int cbOutput;
  @Array(1)
  external Array<Uint16> wszData;
}

class MxdcS0PageData extends Struct {
  @Uint32()
  external int dwSize;
  @Array(1)
  external Array<Uint8> bData;
}

class MxdcXpsS0PageResource extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwResourceType;
  @Array(129)
  external Array<Uint8> szUri;
  @Uint32()
  external int dwDataSize;
  @Array(1)
  external Array<Uint8> bData;
}

class MxdcPrintTicketPassthrough extends Struct {
  @Uint32()
  external int dwDataSize;
  @Array(1)
  external Array<Uint8> bData;
}

class MxdcPrintTicketEscape extends Struct {
  external MxdcEscapeHeader mxdcEscape;
  external MxdcPrintTicketPassthrough printTicketData;
}

class MxdcS0PagePassthroughEscape extends Struct {
  external MxdcEscapeHeader mxdcEscape;
  external MxdcS0PageData xpsS0PageData;
}

class MxdcS0PageResourceEscape extends Struct {
  external MxdcEscapeHeader mxdcEscape;
  external MxdcXpsS0PageResource xpsS0PageResourcePassthrough;
}

class PAINTSTRUCT extends Struct {
  @IntPtr()
  external int hdc;
  @Int32()
  external int fErase;
  external RECT rcPaint;
  @Int32()
  external int fRestore;
  @Int32()
  external int fIncUpdate;
  @Array(32)
  external Array<Uint8> rgbReserved;
}

class DRAWTEXTPARAMS extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iTabLength;
  @Int32()
  external int iLeftMargin;
  @Int32()
  external int iRightMargin;
  @Uint32()
  external int uiLengthDrawn;
}

class MONITORINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcMonitor;
  external RECT rcWork;
  @Uint32()
  external int dwFlags;
}

class MONITORINFOEXA extends Struct {
  external MONITORINFO __AnonymousBase_winuser_L13554_C43;
  @Array(32)
  external Array<Int8> szDevice;
}

class MONITORINFOEXW extends Struct {
  external MONITORINFO __AnonymousBase_winuser_L13558_C43;
  @Array(32)
  external Array<Uint16> szDevice;
}
