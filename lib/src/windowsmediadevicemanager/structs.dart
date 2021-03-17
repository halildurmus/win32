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

class __MACINFO extends Struct {
  @Int32() external int fUsed;
  external __ubyte__ abMacState;
}

class MediaDevMgrClassFactory extends Struct {
}

class MediaDevMgr extends Struct {
}

class WMDMDevice extends Struct {
}

class WMDMStorage extends Struct {
}

class WMDMStorageGlobal extends Struct {
}

class WMDMDeviceEnum extends Struct {
}

class WMDMStorageEnum extends Struct {
}

class _WAVEFORMATEX extends Struct {
  @Uint16() external int wFormatTag;
  @Uint16() external int nChannels;
  @Uint32() external int nSamplesPerSec;
  @Uint32() external int nAvgBytesPerSec;
  @Uint16() external int nBlockAlign;
  @Uint16() external int wBitsPerSample;
  @Uint16() external int cbSize;
}

class _BITMAPINFOHEADER extends Struct {
  @Uint32() external int biSize;
  @Int32() external int biWidth;
  @Int32() external int biHeight;
  @Uint16() external int biPlanes;
  @Uint16() external int biBitCount;
  @Uint32() external int biCompression;
  @Uint32() external int biSizeImage;
  @Int32() external int biXPelsPerMeter;
  @Int32() external int biYPelsPerMeter;
  @Uint32() external int biClrUsed;
  @Uint32() external int biClrImportant;
}

class _VIDEOINFOHEADER extends Struct {
  external RECT rcSource;
  external RECT rcTarget;
  @Uint32() external int dwBitRate;
  @Uint32() external int dwBitErrorRate;
  @Int64() external int AvgTimePerFrame;
  external _BITMAPINFOHEADER bmiHeader;
}

class WMFILECAPABILITIES extends Struct {
  external Pointer<Utf16> pwszMimeType;
  @Uint32() external int dwReserved;
}

class OPAQUECOMMAND extends Struct {
  external GUID guidCommand;
  @Uint32() external int dwDataLen;
  external Pointer<Uint8> pData;
  external __ubyte__ abMAC;
}

class WMDMID extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwVendorID;
  external __ubyte__ pID;
  @Uint32() external int SerialNumberLength;
}

class WMDMDATETIME extends Struct {
  @Uint16() external int wYear;
  @Uint16() external int wMonth;
  @Uint16() external int wDay;
  @Uint16() external int wHour;
  @Uint16() external int wMinute;
  @Uint16() external int wSecond;
}

class WMDMRIGHTS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwContentType;
  @Uint32() external int fuFlags;
  @Uint32() external int fuRights;
  @Uint32() external int dwAppSec;
  @Uint32() external int dwPlaybackCount;
  external WMDMDATETIME ExpirationDate;
}

class WMDMMetadataView extends Struct {
  external Pointer<Utf16> pwszViewName;
  @Uint32() external int nDepth;
  external Pointer<Pointer<Uint16>> ppwszTags;
}

class WMDM_PROP_VALUES_RANGE extends Struct {
  external PROPVARIANT rangeMin;
  external PROPVARIANT rangeMax;
  external PROPVARIANT rangeStep;
}

class WMDM_PROP_VALUES_ENUM extends Struct {
  @Uint32() external int cEnumValues;
  external Pointer<PROPVARIANT> pValues;
}

class WMDM_PROP_CONFIG extends Struct {
  @Uint32() external int nPreference;
  @Uint32() external int nPropDesc;
  external Pointer<WMDM_PROP_DESC> pPropDesc;
}

class WMDM_FORMAT_CAPABILITY extends Struct {
  @Uint32() external int nPropConfig;
  external Pointer<WMDM_PROP_CONFIG> pConfigs;
}

class WMDMDetermineMaxPropStringLen extends Struct {
  external __ushort__ sz001;
  external __ushort__ sz002;
  external __ushort__ sz003;
  external __ushort__ sz004;
  external __ushort__ sz005;
  external __ushort__ sz006;
  external __ushort__ sz007;
  external __ushort__ sz008;
  external __ushort__ sz009;
  external __ushort__ sz010;
  external __ushort__ sz011;
  external __ushort__ sz012;
  external __ushort__ sz013;
  external __ushort__ sz014;
  external __ushort__ sz015;
  external __ushort__ sz016;
  external __ushort__ sz017;
  external __ushort__ sz018;
  external __ushort__ sz019;
  external __ushort__ sz020;
  external __ushort__ sz021;
  external __ushort__ sz022;
  external __ushort__ sz023;
  external __ushort__ sz024;
  external __ushort__ sz025;
  external __ushort__ sz026;
  external __ushort__ sz027;
  external __ushort__ sz028;
  external __ushort__ sz029;
  external __ushort__ sz030;
  external __ushort__ sz031;
  external __ushort__ sz032;
  external __ushort__ sz033;
  external __ushort__ sz034;
  external __ushort__ sz035;
  external __ushort__ sz036;
  external __ushort__ sz037;
  external __ushort__ sz041;
  external __ushort__ sz043;
  external __ushort__ sz044;
  external __ushort__ sz045;
  external __ushort__ sz046;
  external __ushort__ sz047;
  external __ushort__ sz048;
  external __ushort__ sz049;
  external __ushort__ sz050;
  external __ushort__ sz051;
  external __ushort__ sz052;
  external __ushort__ sz053;
  external __ushort__ sz054;
  external __ushort__ sz055;
  external __ushort__ sz056;
  external __ushort__ sz057;
  external __ushort__ sz058;
  external __ushort__ sz059;
  external __ushort__ sz060;
  external __ushort__ sz061;
  external __ushort__ sz062;
  external __ushort__ sz063;
  external __ushort__ sz064;
  external __ushort__ sz065;
  external __ushort__ sz066;
  external __ushort__ sz067;
  external __ushort__ sz068;
  external __ushort__ sz069;
  external __ushort__ sz070;
  external __ushort__ sz071;
  external __ushort__ sz072;
  external __ushort__ sz073;
  external __ushort__ sz074;
  external __ushort__ sz075;
  external __ushort__ sz076;
  external __ushort__ sz077;
  external __ushort__ sz078;
  external __ushort__ sz079;
  external __ushort__ sz080;
  external __ushort__ sz081;
  external __ushort__ sz082;
  external __ushort__ sz083;
  external __ushort__ sz084;
  external __ushort__ sz085;
  external __ushort__ sz086;
}

class WMDMLogger extends Struct {
}

class MTP_COMMAND_DATA_IN extends Struct {
  @Uint16() external int OpCode;
  @Uint32() external int NumParams;
  external __uint__ Params;
  @Uint32() external int NextPhase;
  @Uint32() external int CommandWriteDataSize;
  external __ubyte__ CommandWriteData;
}

class MTP_COMMAND_DATA_OUT extends Struct {
  @Uint16() external int ResponseCode;
  @Uint32() external int NumParams;
  external __uint__ Params;
  @Uint32() external int CommandReadDataSize;
  external __ubyte__ CommandReadData;
}

