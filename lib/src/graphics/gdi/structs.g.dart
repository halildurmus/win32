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
import '../../combase.dart';
import '../../guid.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class ABC extends Struct {
  @Int32()
  external int abcA;

  @Uint32()
  external int abcB;

  @Int32()
  external int abcC;
}

/// {@category Struct}
class ABCFLOAT extends Struct {
  @Float()
  external double abcfA;

  @Float()
  external double abcfB;

  @Float()
  external double abcfC;
}

/// {@category Struct}
class ABORTPATH extends Struct {
  external EMR emr;
}

/// {@category Struct}
class AXESLIST extends Struct {
  @Uint32()
  external int axlReserved;

  @Uint32()
  external int axlNumAxes;

  @Array(16)
  external Array<AXISINFO> axlAxisInfo;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class BITMAPCOREINFO extends Struct {
  external BITMAPCOREHEADER bmciHeader;

  @Array(1)
  external Array<RGBTRIPLE> bmciColors;
}

/// {@category Struct}
@Packed(2)
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

/// {@category Struct}
class BITMAPINFO extends Struct {
  external BITMAPINFOHEADER bmiHeader;

  @Array(1)
  external Array<RGBQUAD> bmiColors;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class CIEXYZ extends Struct {
  @Int32()
  external int ciexyzX;

  @Int32()
  external int ciexyzY;

  @Int32()
  external int ciexyzZ;
}

/// {@category Struct}
class CIEXYZTRIPLE extends Struct {
  external CIEXYZ ciexyzRed;

  external CIEXYZ ciexyzGreen;

  external CIEXYZ ciexyzBlue;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DESIGNVECTOR extends Struct {
  @Uint32()
  external int dvReserved;

  @Uint32()
  external int dvNumAxes;

  @Array(16)
  external Array<Int32> dvValues;
}

/// {@category Struct}
class DEVMODE extends Struct {
  @Array(32)
  external Array<Uint16> _dmDeviceName;

  String get dmDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_dmDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmDeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _dmDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int dmSpecVersion;

  @Uint16()
  external int dmDriverVersion;

  @Uint16()
  external int dmSize;

  @Uint16()
  external int dmDriverExtra;

  @Uint32()
  external int dmFields;

  external _DEVMODEW__Anonymous1_e__Union Anonymous1;

  @Int16()
  external int dmColor;

  @Int16()
  external int dmDuplex;

  @Int16()
  external int dmYResolution;

  @Int16()
  external int dmTTOption;

  @Int16()
  external int dmCollate;

  @Array(32)
  external Array<Uint16> _dmFormName;

  String get dmFormName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_dmFormName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set dmFormName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _dmFormName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int dmLogPixels;

  @Uint32()
  external int dmBitsPerPel;

  @Uint32()
  external int dmPelsWidth;

  @Uint32()
  external int dmPelsHeight;

  external _DEVMODEW__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int dmDisplayFrequency;

  @Uint32()
  external int dmICMMethod;

  @Uint32()
  external int dmICMIntent;

  @Uint32()
  external int dmMediaType;

  @Uint32()
  external int dmDitherType;

  @Uint32()
  external int dmReserved1;

  @Uint32()
  external int dmReserved2;

  @Uint32()
  external int dmPanningWidth;

  @Uint32()
  external int dmPanningHeight;
}

/// {@category Struct}
class _DEVMODEW__Anonymous1_e__Union extends Union {
  external _DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct Anonymous1;

  external _DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct Anonymous2;
}

/// {@category Struct}
class _DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct extends Struct {
  @Int16()
  external int dmOrientation;

  @Int16()
  external int dmPaperSize;

  @Int16()
  external int dmPaperLength;

  @Int16()
  external int dmPaperWidth;

  @Int16()
  external int dmScale;

  @Int16()
  external int dmCopies;

  @Int16()
  external int dmDefaultSource;

  @Int16()
  external int dmPrintQuality;
}

extension DEVMODEW__Anonymous1_e__Union_Extension on DEVMODE {
  int get dmOrientation => this.Anonymous1.Anonymous1.dmOrientation;
  set dmOrientation(int value) =>
      this.Anonymous1.Anonymous1.dmOrientation = value;

  int get dmPaperSize => this.Anonymous1.Anonymous1.dmPaperSize;
  set dmPaperSize(int value) => this.Anonymous1.Anonymous1.dmPaperSize = value;

  int get dmPaperLength => this.Anonymous1.Anonymous1.dmPaperLength;
  set dmPaperLength(int value) =>
      this.Anonymous1.Anonymous1.dmPaperLength = value;

  int get dmPaperWidth => this.Anonymous1.Anonymous1.dmPaperWidth;
  set dmPaperWidth(int value) =>
      this.Anonymous1.Anonymous1.dmPaperWidth = value;

  int get dmScale => this.Anonymous1.Anonymous1.dmScale;
  set dmScale(int value) => this.Anonymous1.Anonymous1.dmScale = value;

  int get dmCopies => this.Anonymous1.Anonymous1.dmCopies;
  set dmCopies(int value) => this.Anonymous1.Anonymous1.dmCopies = value;

  int get dmDefaultSource => this.Anonymous1.Anonymous1.dmDefaultSource;
  set dmDefaultSource(int value) =>
      this.Anonymous1.Anonymous1.dmDefaultSource = value;

  int get dmPrintQuality => this.Anonymous1.Anonymous1.dmPrintQuality;
  set dmPrintQuality(int value) =>
      this.Anonymous1.Anonymous1.dmPrintQuality = value;
}

/// {@category Struct}
class _DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct extends Struct {
  external POINTL dmPosition;

  @Uint32()
  external int dmDisplayOrientation;

  @Uint32()
  external int dmDisplayFixedOutput;
}

extension DEVMODEW__Anonymous1_e__Union_Extension_1 on DEVMODE {
  POINTL get dmPosition => this.Anonymous1.Anonymous2.dmPosition;
  set dmPosition(POINTL value) => this.Anonymous1.Anonymous2.dmPosition = value;

  int get dmDisplayOrientation =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation;
  set dmDisplayOrientation(int value) =>
      this.Anonymous1.Anonymous2.dmDisplayOrientation = value;

  int get dmDisplayFixedOutput =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput;
  set dmDisplayFixedOutput(int value) =>
      this.Anonymous1.Anonymous2.dmDisplayFixedOutput = value;
}

extension DEVMODEW_Extension on DEVMODE {
  _DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Anonymous1.Anonymous1;
  set Anonymous1(_DEVMODEW__Anonymous1_e__Union__Anonymous1_e__Struct value) =>
      this.Anonymous1.Anonymous1 = value;

  _DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Anonymous1.Anonymous2;
  set Anonymous2(_DEVMODEW__Anonymous1_e__Union__Anonymous2_e__Struct value) =>
      this.Anonymous1.Anonymous2 = value;
}

/// {@category Struct}
class _DEVMODEW__Anonymous2_e__Union extends Union {
  @Uint32()
  external int dmDisplayFlags;

  @Uint32()
  external int dmNup;
}

extension DEVMODEW_Extension_1 on DEVMODE {
  int get dmDisplayFlags => this.Anonymous2.dmDisplayFlags;
  set dmDisplayFlags(int value) => this.Anonymous2.dmDisplayFlags = value;

  int get dmNup => this.Anonymous2.dmNup;
  set dmNup(int value) => this.Anonymous2.dmNup = value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMR extends Struct {
  @Uint32()
  external int iType;

  @Uint32()
  external int nSize;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMRARC extends Struct {
  external EMR emr;

  external RECTL rclBox;

  external POINTL ptlStart;

  external POINTL ptlEnd;
}

/// {@category Struct}
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

/// {@category Struct}
class EMRCREATEBRUSHINDIRECT extends Struct {
  external EMR emr;

  @Uint32()
  external int ihBrush;

  external LOGBRUSH32 lb;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMRCREATEPALETTE extends Struct {
  external EMR emr;

  @Uint32()
  external int ihPal;

  external LOGPALETTE lgpl;
}

/// {@category Struct}
class EMRCREATEPEN extends Struct {
  external EMR emr;

  @Uint32()
  external int ihPen;

  external LOGPEN lopn;
}

/// {@category Struct}
class EMRELLIPSE extends Struct {
  external EMR emr;

  external RECTL rclBox;
}

/// {@category Struct}
class EMREOF extends Struct {
  external EMR emr;

  @Uint32()
  external int nPalEntries;

  @Uint32()
  external int offPalEntries;

  @Uint32()
  external int nSizeLast;
}

/// {@category Struct}
class EMREXCLUDECLIPRECT extends Struct {
  external EMR emr;

  external RECTL rclClip;
}

/// {@category Struct}
class EMREXTCREATEFONTINDIRECT extends Struct {
  external EMR emr;

  @Uint32()
  external int ihFont;

  external EXTLOGFONT elfw;
}

/// {@category Struct}
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

/// {@category Struct}
class EMREXTESCAPE extends Struct {
  external EMR emr;

  @Int32()
  external int iEscape;

  @Int32()
  external int cbEscData;

  @Array(1)
  external Array<Uint8> EscData;
}

/// {@category Struct}
class EMREXTFLOODFILL extends Struct {
  external EMR emr;

  external POINTL ptlStart;

  @Uint32()
  external int crColor;

  @Uint32()
  external int iMode;
}

/// {@category Struct}
class EMREXTSELECTCLIPRGN extends Struct {
  external EMR emr;

  @Uint32()
  external int cbRgnData;

  @Uint32()
  external int iMode;

  @Array(1)
  external Array<Uint8> RgnData;
}

/// {@category Struct}
class EMRFILLPATH extends Struct {
  external EMR emr;

  external RECTL rclBounds;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMRGDICOMMENT extends Struct {
  external EMR emr;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class EMRGLSBOUNDEDRECORD extends Struct {
  external EMR emr;

  external RECTL rclBounds;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
class EMRGLSRECORD extends Struct {
  external EMR emr;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> Data;
}

/// {@category Struct}
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

/// {@category Struct}
class EMRINVERTRGN extends Struct {
  external EMR emr;

  external RECTL rclBounds;

  @Uint32()
  external int cbRgnData;

  @Array(1)
  external Array<Uint8> RgnData;
}

/// {@category Struct}
class EMRLINETO extends Struct {
  external EMR emr;

  external POINTL ptl;
}

/// {@category Struct}
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

/// {@category Struct}
class EMRMODIFYWORLDTRANSFORM extends Struct {
  external EMR emr;

  external XFORM xform;

  @Uint32()
  external int iMode;
}

/// {@category Struct}
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

/// {@category Struct}
class EMROFFSETCLIPRGN extends Struct {
  external EMR emr;

  external POINTL ptlOffset;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMRPOLYLINE extends Struct {
  external EMR emr;

  external RECTL rclBounds;

  @Uint32()
  external int cptl;

  @Array(1)
  external Array<POINTL> aptl;
}

/// {@category Struct}
class EMRPOLYLINE16 extends Struct {
  external EMR emr;

  external RECTL rclBounds;

  @Uint32()
  external int cpts;

  @Array(1)
  external Array<POINTS> apts;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMRRESIZEPALETTE extends Struct {
  external EMR emr;

  @Uint32()
  external int ihPal;

  @Uint32()
  external int cEntries;
}

/// {@category Struct}
class EMRRESTOREDC extends Struct {
  external EMR emr;

  @Int32()
  external int iRelative;
}

/// {@category Struct}
class EMRROUNDRECT extends Struct {
  external EMR emr;

  external RECTL rclBox;

  external SIZE szlCorner;
}

/// {@category Struct}
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

/// {@category Struct}
class EMRSELECTCLIPPATH extends Struct {
  external EMR emr;

  @Uint32()
  external int iMode;
}

/// {@category Struct}
class EMRSELECTOBJECT extends Struct {
  external EMR emr;

  @Uint32()
  external int ihObject;
}

/// {@category Struct}
class EMRSELECTPALETTE extends Struct {
  external EMR emr;

  @Uint32()
  external int ihPal;
}

/// {@category Struct}
class EMRSETARCDIRECTION extends Struct {
  external EMR emr;

  @Uint32()
  external int iArcDirection;
}

/// {@category Struct}
class EMRSETCOLORADJUSTMENT extends Struct {
  external EMR emr;

  external COLORADJUSTMENT ColorAdjustment;
}

/// {@category Struct}
class EMRSETCOLORSPACE extends Struct {
  external EMR emr;

  @Uint32()
  external int ihCS;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class EMRSETMAPPERFLAGS extends Struct {
  external EMR emr;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class EMRSETMITERLIMIT extends Struct {
  external EMR emr;

  @Float()
  external double eMiterLimit;
}

/// {@category Struct}
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

/// {@category Struct}
class EMRSETPIXELV extends Struct {
  external EMR emr;

  external POINTL ptlPixel;

  @Uint32()
  external int crColor;
}

/// {@category Struct}
class EMRSETTEXTCOLOR extends Struct {
  external EMR emr;

  @Uint32()
  external int crColor;
}

/// {@category Struct}
class EMRSETVIEWPORTEXTEX extends Struct {
  external EMR emr;

  external SIZE szlExtent;
}

/// {@category Struct}
class EMRSETVIEWPORTORGEX extends Struct {
  external EMR emr;

  external POINTL ptlOrigin;
}

/// {@category Struct}
class EMRSETWORLDTRANSFORM extends Struct {
  external EMR emr;

  external XFORM xform;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class ENHMETARECORD extends Struct {
  @Uint32()
  external int iType;

  @Uint32()
  external int nSize;

  @Array(1)
  external Array<Uint32> dParm;
}

/// {@category Struct}
class ENUMLOGFONTEXDV extends Struct {
  external ENUMLOGFONTEX elfEnumLogfontEx;

  external DESIGNVECTOR elfDesignVector;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class FIXED extends Struct {
  @Uint16()
  external int fract;

  @Int16()
  external int value;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class GRADIENT_RECT extends Struct {
  @Uint32()
  external int UpperLeft;

  @Uint32()
  external int LowerRight;
}

/// {@category Struct}
class GRADIENT_TRIANGLE extends Struct {
  @Uint32()
  external int Vertex1;

  @Uint32()
  external int Vertex2;

  @Uint32()
  external int Vertex3;
}

/// {@category Struct}
class HANDLETABLE extends Struct {
  @Array(1)
  external Array<IntPtr> objectHandle;
}

/// {@category Struct}
class KERNINGPAIR extends Struct {
  @Uint16()
  external int wFirst;

  @Uint16()
  external int wSecond;

  @Int32()
  external int iKernAmount;
}

/// {@category Struct}
class LOGBRUSH extends Struct {
  @Uint32()
  external int lbStyle;

  @Uint32()
  external int lbColor;

  @IntPtr()
  external int lbHatch;
}

/// {@category Struct}
class LOGBRUSH32 extends Struct {
  @Uint32()
  external int lbStyle;

  @Uint32()
  external int lbColor;

  @Uint32()
  external int lbHatch;
}

/// {@category Struct}
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

/// {@category Struct}
class LOGPALETTE extends Struct {
  @Uint16()
  external int palVersion;

  @Uint16()
  external int palNumEntries;

  @Array(1)
  external Array<PALETTEENTRY> palPalEntry;
}

/// {@category Struct}
class LOGPEN extends Struct {
  @Uint32()
  external int lopnStyle;

  external POINT lopnWidth;

  @Uint32()
  external int lopnColor;
}

/// {@category Struct}
class MAT2 extends Struct {
  external FIXED eM11;

  external FIXED eM12;

  external FIXED eM21;

  external FIXED eM22;
}

/// {@category Struct}
@Packed(2)
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

/// {@category Struct}
class METARECORD extends Struct {
  @Uint32()
  external int rdSize;

  @Uint16()
  external int rdFunction;

  @Array(1)
  external Array<Uint16> rdParm;
}

/// {@category Struct}
class MONITORINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcMonitor;

  external RECT rcWork;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class MONITORINFOEX extends Struct {
  external MONITORINFO monitorInfo;

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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class POINTFX extends Struct {
  external FIXED x;

  external FIXED y;
}

/// {@category Struct}
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

/// {@category Struct}
class RASTERIZER_STATUS extends Struct {
  @Int16()
  external int nSize;

  @Int16()
  external int wFlags;

  @Int16()
  external int nLanguageID;
}

/// {@category Struct}
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

/// {@category Struct}
class RGBTRIPLE extends Struct {
  @Uint8()
  external int rgbtBlue;

  @Uint8()
  external int rgbtGreen;

  @Uint8()
  external int rgbtRed;
}

/// {@category Struct}
class RGNDATA extends Struct {
  external RGNDATAHEADER rdh;

  @Array(1)
  external Array<Uint8> Buffer;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class TTEMBEDINFO extends Struct {
  @Uint16()
  external int usStructSize;

  @Uint16()
  external int usRootStrSize;

  external Pointer<Uint16> pusRootStr;
}

/// {@category Struct}
class TTLOADINFO extends Struct {
  @Uint16()
  external int usStructSize;

  @Uint16()
  external int usRefStrSize;

  external Pointer<Uint16> pusRefStr;
}

/// {@category Struct}
class TTPOLYCURVE extends Struct {
  @Uint16()
  external int wType;

  @Uint16()
  external int cpfx;

  @Array(1)
  external Array<POINTFX> apfx;
}

/// {@category Struct}
class TTPOLYGONHEADER extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int dwType;

  external POINTFX pfxStart;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class WCRANGE extends Struct {
  @Uint16()
  external int wcLow;

  @Uint16()
  external int cGlyphs;
}

/// {@category Struct}
class WGLSWAP extends Struct {
  @IntPtr()
  external int hdc;

  @Uint32()
  external int uiFlags;
}

/// {@category Struct}
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
