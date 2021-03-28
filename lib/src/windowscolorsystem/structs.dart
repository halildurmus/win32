// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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

class HCOLORSPACE extends Struct {
  @IntPtr() external int Value;
}

class CIEXYZ extends Struct {
  @Int32() external int ciexyzX;
  @Int32() external int ciexyzY;
  @Int32() external int ciexyzZ;
}

class CIEXYZTRIPLE extends Struct {
  external CIEXYZ ciexyzRed;
  external CIEXYZ ciexyzGreen;
  external CIEXYZ ciexyzBlue;
}

class LOGCOLORSPACEA extends Struct {
  @Uint32() external int lcsSignature;
  @Uint32() external int lcsVersion;
  @Uint32() external int lcsSize;
  @Int32() external int lcsCSType;
  @Int32() external int lcsIntent;
  external CIEXYZTRIPLE lcsEndpoints;
  @Uint32() external int lcsGammaRed;
  @Uint32() external int lcsGammaGreen;
  @Uint32() external int lcsGammaBlue;
  external __byte__ lcsFilename;
}

class LOGCOLORSPACEW extends Struct {
  @Uint32() external int lcsSignature;
  @Uint32() external int lcsVersion;
  @Uint32() external int lcsSize;
  @Int32() external int lcsCSType;
  @Int32() external int lcsIntent;
  external CIEXYZTRIPLE lcsEndpoints;
  @Uint32() external int lcsGammaRed;
  @Uint32() external int lcsGammaGreen;
  @Uint32() external int lcsGammaBlue;
  external __ushort__ lcsFilename;
}

class XYZColorF extends Struct {
  @Float() external double X;
  @Float() external double Y;
  @Float() external double Z;
}

class JChColorF extends Struct {
  @Float() external double J;
  @Float() external double C;
  @Float() external double h;
}

class JabColorF extends Struct {
  @Float() external double J;
  @Float() external double a;
  @Float() external double b;
}

class GamutShellTriangle extends Struct {
  external __uint__ aVertexIndex;
}

class GamutShell extends Struct {
  @Float() external double JMin;
  @Float() external double JMax;
  @Uint32() external int cVertices;
  @Uint32() external int cTriangles;
  external Pointer<JabColorF> pVertices;
  external Pointer<GamutShellTriangle> pTriangles;
}

class PrimaryJabColors extends Struct {
  external JabColorF red;
  external JabColorF yellow;
  external JabColorF green;
  external JabColorF cyan;
  external JabColorF blue;
  external JabColorF magenta;
  external JabColorF black;
  external JabColorF white;
}

class PrimaryXYZColors extends Struct {
  external XYZColorF red;
  external XYZColorF yellow;
  external XYZColorF green;
  external XYZColorF cyan;
  external XYZColorF blue;
  external XYZColorF magenta;
  external XYZColorF black;
  external XYZColorF white;
}

class GamutBoundaryDescription extends Struct {
  external Pointer<PrimaryJabColors> pPrimaries;
  @Uint32() external int cNeutralSamples;
  external Pointer<JabColorF> pNeutralSamples;
  external Pointer<GamutShell> pReferenceShell;
  external Pointer<GamutShell> pPlausibleShell;
  external Pointer<GamutShell> pPossibleShell;
}

class BlackInformation extends Struct {
  @Int32() external int fBlackOnly;
  @Float() external double blackWeight;
}

class NAMED_PROFILE_INFO extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwCount;
  @Uint32() external int dwCountDevCoordinates;
  external __byte__ szPrefix;
  external __byte__ szSuffix;
}

class GRAYCOLOR extends Struct {
  @Uint16() external int gray;
}

class RGBCOLOR extends Struct {
  @Uint16() external int red;
  @Uint16() external int green;
  @Uint16() external int blue;
}

class CMYKCOLOR extends Struct {
  @Uint16() external int cyan;
  @Uint16() external int magenta;
  @Uint16() external int yellow;
  @Uint16() external int black;
}

class XYZCOLOR extends Struct {
  @Uint16() external int X;
  @Uint16() external int Y;
  @Uint16() external int Z;
}

class YxyCOLOR extends Struct {
  @Uint16() external int Y;
  @Uint16() external int x;
  @Uint16() external int y;
}

class LabCOLOR extends Struct {
  @Uint16() external int L;
  @Uint16() external int a;
  @Uint16() external int b;
}

class GENERIC3CHANNEL extends Struct {
  @Uint16() external int ch1;
  @Uint16() external int ch2;
  @Uint16() external int ch3;
}

class NAMEDCOLOR extends Struct {
  @Uint32() external int dwIndex;
}

class HiFiCOLOR extends Struct {
  external __ubyte__ channel;
}

class COLOR extends Struct {
  external GRAYCOLOR gray;
  external RGBCOLOR rgb;
  external CMYKCOLOR cmyk;
  external XYZCOLOR XYZ;
  external YxyCOLOR Yxy;
  external LabCOLOR Lab;
  external GENERIC3CHANNEL gen3ch;
  external NAMEDCOLOR named;
  external HiFiCOLOR hifi;
  @Uint32() external int Anonymous;
}

class PROFILEHEADER extends Struct {
  @Uint32() external int phSize;
  @Uint32() external int phCMMType;
  @Uint32() external int phVersion;
  @Uint32() external int phClass;
  @Uint32() external int phDataColorSpace;
  @Uint32() external int phConnectionSpace;
  external __uint__ phDateTime;
  @Uint32() external int phSignature;
  @Uint32() external int phPlatform;
  @Uint32() external int phProfileFlags;
  @Uint32() external int phManufacturer;
  @Uint32() external int phModel;
  external __uint__ phAttributes;
  @Uint32() external int phRenderingIntent;
  external CIEXYZ phIlluminant;
  @Uint32() external int phCreator;
  external __ubyte__ phReserved;
}

class PROFILE extends Struct {
  @Uint32() external int dwType;
  external Pointer pProfileData;
  @Uint32() external int cbDataSize;
}

class ENUMTYPEA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVersion;
  @Uint32() external int dwFields;
  external Pointer<Utf8> pDeviceName;
  @Uint32() external int dwMediaType;
  @Uint32() external int dwDitheringMode;
  external __uint__ dwResolution;
  @Uint32() external int dwCMMType;
  @Uint32() external int dwClass;
  @Uint32() external int dwDataColorSpace;
  @Uint32() external int dwConnectionSpace;
  @Uint32() external int dwSignature;
  @Uint32() external int dwPlatform;
  @Uint32() external int dwProfileFlags;
  @Uint32() external int dwManufacturer;
  @Uint32() external int dwModel;
  external __uint__ dwAttributes;
  @Uint32() external int dwRenderingIntent;
  @Uint32() external int dwCreator;
  @Uint32() external int dwDeviceClass;
}

class ENUMTYPEW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVersion;
  @Uint32() external int dwFields;
  external Pointer<Utf16> pDeviceName;
  @Uint32() external int dwMediaType;
  @Uint32() external int dwDitheringMode;
  external __uint__ dwResolution;
  @Uint32() external int dwCMMType;
  @Uint32() external int dwClass;
  @Uint32() external int dwDataColorSpace;
  @Uint32() external int dwConnectionSpace;
  @Uint32() external int dwSignature;
  @Uint32() external int dwPlatform;
  @Uint32() external int dwProfileFlags;
  @Uint32() external int dwManufacturer;
  @Uint32() external int dwModel;
  external __uint__ dwAttributes;
  @Uint32() external int dwRenderingIntent;
  @Uint32() external int dwCreator;
  @Uint32() external int dwDeviceClass;
}

class COLORMATCHSETUPW extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVersion;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndOwner;
  external Pointer<Utf16> pSourceName;
  external Pointer<Utf16> pDisplayName;
  external Pointer<Utf16> pPrinterName;
  @Uint32() external int dwRenderIntent;
  @Uint32() external int dwProofingIntent;
  external Pointer<Utf16> pMonitorProfile;
  @Uint32() external int ccMonitorProfile;
  external Pointer<Utf16> pPrinterProfile;
  @Uint32() external int ccPrinterProfile;
  external Pointer<Utf16> pTargetProfile;
  @Uint32() external int ccTargetProfile;
  external Pointer<NativeFunction<DlgProc>> lpfnHook;
  @IntPtr() external int lParam;
  external PCMSCALLBACKW lpfnApplyCallback;
  @IntPtr() external int lParamApplyCallback;
}

class COLORMATCHSETUPA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVersion;
  @Uint32() external int dwFlags;
  @IntPtr() external int hwndOwner;
  external Pointer<Utf8> pSourceName;
  external Pointer<Utf8> pDisplayName;
  external Pointer<Utf8> pPrinterName;
  @Uint32() external int dwRenderIntent;
  @Uint32() external int dwProofingIntent;
  external Pointer<Utf8> pMonitorProfile;
  @Uint32() external int ccMonitorProfile;
  external Pointer<Utf8> pPrinterProfile;
  @Uint32() external int ccPrinterProfile;
  external Pointer<Utf8> pTargetProfile;
  @Uint32() external int ccTargetProfile;
  external Pointer<NativeFunction<DlgProc>> lpfnHook;
  @IntPtr() external int lParam;
  external PCMSCALLBACKA lpfnApplyCallback;
  @IntPtr() external int lParamApplyCallback;
}

class XYYPoint extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double Y;
}

class WhitePoint extends Struct {
  @Int32() external int type;
  @Uint32() external int Anonymous;
  @Int32() external int CHROMATICITY;
  @Int32() external int TEMPERATURE;
  @Int32() external int D65;
}

class DisplayID extends Struct {
  external LUID targetAdapterID;
  @Uint32() external int sourceInfoID;
}

class DisplayStateID extends Struct {
  @Uint32() external int profileID;
  @Uint32() external int transformID;
  @Uint32() external int whitepointID;
}

class DisplayTransformLut extends Struct {
  external __ushort__ red;
  external __ushort__ green;
  external __ushort__ blue;
}

