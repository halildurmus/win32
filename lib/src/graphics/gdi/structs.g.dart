// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'callbacks.g.dart';
import '../../guid.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

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

class ABORTPATH extends Struct {
  external EMR emr;
}

class AXESLIST extends Struct {
  @Uint32()
  external int axlReserved;
  @Uint32()
  external int axlNumAxes;
  @Array(16)
  external Array<AXISINFO> axlAxisInfo;
}

class AXISINFO extends Struct {
  @Int32()
  external int axMinValue;
  @Int32()
  external int axMaxValue;
  @Array(16)
  external Array<Uint16> _axAxisName;

  String get axAxisName {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_axAxisName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set axAxisName(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _axAxisName[i] = stringToStore.codeUnitAt(i);
    }
  }
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

class BITMAPINFO extends Struct {
  external BITMAPINFOHEADER bmiHeader;
  @Array(1)
  external Array<RGBQUAD> bmiColors;
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

class DESIGNVECTOR extends Struct {
  @Uint32()
  external int dvReserved;
  @Uint32()
  external int dvNumAxes;
  @Array(16)
  external Array<Int32> dvValues;
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

class DISPLAY_DEVICE extends Struct {
  @Uint32()
  external int cb;
  @Array(32)
  external Array<Uint16> _DeviceName;

  String get DeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_DeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _DeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _DeviceString;

  String get DeviceString {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_DeviceString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceString(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _DeviceString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int StateFlags;
  @Array(128)
  external Array<Uint16> _DeviceID;

  String get DeviceID {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_DeviceID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceID(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _DeviceID[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _DeviceKey;

  String get DeviceKey {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_DeviceKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceKey(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _DeviceKey[i] = stringToStore.codeUnitAt(i);
    }
  }
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

class EMR extends Struct {
  @Uint32()
  external int iType;
  @Uint32()
  external int nSize;
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

class EMRARC extends Struct {
  external EMR emr;
  external RECTL rclBox;
  external POINTL ptlStart;
  external POINTL ptlEnd;
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

class EMRCREATEBRUSHINDIRECT extends Struct {
  external EMR emr;
  @Uint32()
  external int ihBrush;
  external LOGBRUSH32 lb;
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

class EMRELLIPSE extends Struct {
  external EMR emr;
  external RECTL rclBox;
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

class EMREXCLUDECLIPRECT extends Struct {
  external EMR emr;
  external RECTL rclClip;
}

class EMREXTCREATEFONTINDIRECT extends Struct {
  external EMR emr;
  @Uint32()
  external int ihFont;
  external EXTLOGFONT elfw;
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

class EMREXTESCAPE extends Struct {
  external EMR emr;
  @Int32()
  external int iEscape;
  @Int32()
  external int cbEscData;
  @Array(1)
  external Array<Uint8> EscData;
}

class EMREXTFLOODFILL extends Struct {
  external EMR emr;
  external POINTL ptlStart;
  @Uint32()
  external int crColor;
  @Uint32()
  external int iMode;
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

class EMRFILLPATH extends Struct {
  external EMR emr;
  external RECTL rclBounds;
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

class EMRGDICOMMENT extends Struct {
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

class EMRGLSRECORD extends Struct {
  external EMR emr;
  @Uint32()
  external int cbData;
  @Array(1)
  external Array<Uint8> Data;
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

class EMRINVERTRGN extends Struct {
  external EMR emr;
  external RECTL rclBounds;
  @Uint32()
  external int cbRgnData;
  @Array(1)
  external Array<Uint8> RgnData;
}

class EMRLINETO extends Struct {
  external EMR emr;
  external POINTL ptl;
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

class EMRMODIFYWORLDTRANSFORM extends Struct {
  external EMR emr;
  external XFORM xform;
  @Uint32()
  external int iMode;
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

class EMROFFSETCLIPRGN extends Struct {
  external EMR emr;
  external POINTL ptlOffset;
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

class EMRPOLYDRA extends Struct {
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

class EMRRESIZEPALETTE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihPal;
  @Uint32()
  external int cEntries;
}

class EMRRESTOREDC extends Struct {
  external EMR emr;
  @Int32()
  external int iRelative;
}

class EMRROUNDRECT extends Struct {
  external EMR emr;
  external RECTL rclBox;
  external SIZE szlCorner;
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

class EMRSELECTCLIPPATH extends Struct {
  external EMR emr;
  @Uint32()
  external int iMode;
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

class EMRSETARCDIRECTION extends Struct {
  external EMR emr;
  @Uint32()
  external int iArcDirection;
}

class EMRSETCOLORADJUSTMENT extends Struct {
  external EMR emr;
  external COLORADJUSTMENT ColorAdjustment;
}

class EMRSETCOLORSPACE extends Struct {
  external EMR emr;
  @Uint32()
  external int ihCS;
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

class EMRSETMAPPERFLAGS extends Struct {
  external EMR emr;
  @Uint32()
  external int dwFlags;
}

class EMRSETMITERLIMIT extends Struct {
  external EMR emr;
  @Float()
  external double eMiterLimit;
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

class EMRSETPIXELV extends Struct {
  external EMR emr;
  external POINTL ptlPixel;
  @Uint32()
  external int crColor;
}

class EMRSETTEXTCOLOR extends Struct {
  external EMR emr;
  @Uint32()
  external int crColor;
}

class EMRSETVIEWPORTEXTEX extends Struct {
  external EMR emr;
  external SIZE szlExtent;
}

class EMRSETVIEWPORTORGEX extends Struct {
  external EMR emr;
  external POINTL ptlOrigin;
}

class EMRSETWORLDTRANSFORM extends Struct {
  external EMR emr;
  external XFORM xform;
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

class ENHMETARECORD extends Struct {
  @Uint32()
  external int iType;
  @Uint32()
  external int nSize;
  @Array(1)
  external Array<Uint32> dParm;
}

class ENUMLOGFONTEXDV extends Struct {
  external ENUMLOGFONTEX elfEnumLogfontEx;
  external DESIGNVECTOR elfDesignVector;
}

class ENUMLOGFONTEX extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> _elfFullName;

  String get elfFullName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_elfFullName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfFullName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _elfFullName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfStyle;

  String get elfStyle {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfStyle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfStyle(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfStyle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfScript;

  String get elfScript {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfScript[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfScript(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfScript[i] = stringToStore.codeUnitAt(i);
    }
  }
}

class ENUMLOGFONT extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> _elfFullName;

  String get elfFullName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_elfFullName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfFullName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _elfFullName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfStyle;

  String get elfStyle {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfStyle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfStyle(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfStyle[i] = stringToStore.codeUnitAt(i);
    }
  }
}

class EXTLOGFONT extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> _elfFullName;

  String get elfFullName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_elfFullName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfFullName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _elfFullName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfStyle;

  String get elfStyle {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfStyle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfStyle(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfStyle[i] = stringToStore.codeUnitAt(i);
    }
  }

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

class FIXED extends Struct {
  @Uint16()
  external int fract;
  @Int16()
  external int value;
}

class GCP_RESULTS extends Struct {
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

class GRADIENT_RECT extends Struct {
  @Uint32()
  external int UpperLeft;
  @Uint32()
  external int LowerRight;
}

class GRADIENT_TRIANGLE extends Struct {
  @Uint32()
  external int Vertex1;
  @Uint32()
  external int Vertex2;
  @Uint32()
  external int Vertex3;
}

class HANDLETABLE extends Struct {
  @Array(1)
  external Array<IntPtr> objectHandle;
}

class KERNINGPAIR extends Struct {
  @Uint16()
  external int wFirst;
  @Uint16()
  external int wSecond;
  @Int32()
  external int iKernAmount;
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

class LOGFONT extends Struct {
  @Int32()
  external int lfHeight;
  @Int32()
  external int lfWidth;
  @Int32()
  external int lfEscapement;
  @Int32()
  external int lfOrientation;
  @Int32()
  external int lfWeight;
  @Uint8()
  external int lfItalic;
  @Uint8()
  external int lfUnderline;
  @Uint8()
  external int lfStrikeOut;
  @Uint8()
  external int lfCharSet;
  @Uint8()
  external int lfOutPrecision;
  @Uint8()
  external int lfClipPrecision;
  @Uint8()
  external int lfQuality;
  @Uint8()
  external int lfPitchAndFamily;
  @Array(32)
  external Array<Uint16> _lfFaceName;

  String get lfFaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_lfFaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set lfFaceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _lfFaceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

class LOGPALETTE extends Struct {
  @Uint16()
  external int palVersion;
  @Uint16()
  external int palNumEntries;
  @Array(1)
  external Array<PALETTEENTRY> palPalEntry;
}

class LOGPEN extends Struct {
  @Uint32()
  external int lopnStyle;
  external POINT lopnWidth;
  @Uint32()
  external int lopnColor;
}

class MAT2 extends Struct {
  external FIXED eM11;
  external FIXED eM12;
  external FIXED eM21;
  external FIXED eM22;
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

class METARECORD extends Struct {
  @Uint32()
  external int rdSize;
  @Uint16()
  external int rdFunction;
  @Array(1)
  external Array<Uint16> rdParm;
}

class MONITORINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcMonitor;
  external RECT rcWork;
  @Uint32()
  external int dwFlags;
}

class MONITORINFOEX extends Struct {
  external MONITORINFO __AnonymousBase_winuser_L13558_C43;
  @Array(32)
  external Array<Uint16> _szDevice;

  String get szDevice {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szDevice[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDevice(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szDevice[i] = stringToStore.codeUnitAt(i);
    }
  }
}

class NEWTEXTMETRIC extends Struct {
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

class OUTLINETEXTMETRIC extends Struct {
  @Uint32()
  external int otmSize;
  external TEXTMETRIC otmTextMetrics;
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

class POINTFX extends Struct {
  external FIXED x;
  external FIXED y;
}

class POLYTEXT extends Struct {
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

class RASTERIZER_STATUS extends Struct {
  @Int16()
  external int nSize;
  @Int16()
  external int wFlags;
  @Int16()
  external int nLanguageID;
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

class RGBTRIPLE extends Struct {
  @Uint8()
  external int rgbtBlue;
  @Uint8()
  external int rgbtGreen;
  @Uint8()
  external int rgbtRed;
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

class TEXTMETRIC extends Struct {
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

class TTEMBEDINFO extends Struct {
  @Uint16()
  external int usStructSize;
  @Uint16()
  external int usRootStrSize;
  external Pointer<Uint16> pusRootStr;
}

class TTLOADINFO extends Struct {
  @Uint16()
  external int usStructSize;
  @Uint16()
  external int usRefStrSize;
  external Pointer<Uint16> pusRefStr;
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

class WCRANGE extends Struct {
  @Uint16()
  external int wcLow;
  @Uint16()
  external int cGlyphs;
}

class WGLSWAP extends Struct {
  @IntPtr()
  external int hdc;
  @Uint32()
  external int uiFlags;
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
