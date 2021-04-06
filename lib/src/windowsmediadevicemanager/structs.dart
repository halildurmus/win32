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
  @Array(36)
  external Array<Uint8> abMacState;
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
  @Array(20)
  external Array<Uint8> abMAC;
}

class WMDMID extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwVendorID;
  @Array(128)
  external Array<Uint8> pID;
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

class WMDM_PROP_DESC extends Struct {
  external Pointer<Utf16> pwszPropName;
  @Uint32() external int ValidValuesForm;
  @Uint32() external int ValidValues;
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
  @Array(27)
  external Array<Uint16> sz001;
  @Array(31)
  external Array<Uint16> sz002;
  @Array(14)
  external Array<Uint16> sz003;
  @Array(16)
  external Array<Uint16> sz004;
  @Array(22)
  external Array<Uint16> sz005;
  @Array(14)
  external Array<Uint16> sz006;
  @Array(20)
  external Array<Uint16> sz007;
  @Array(20)
  external Array<Uint16> sz008;
  @Array(22)
  external Array<Uint16> sz009;
  @Array(11)
  external Array<Uint16> sz010;
  @Array(12)
  external Array<Uint16> sz011;
  @Array(17)
  external Array<Uint16> sz012;
  @Array(17)
  external Array<Uint16> sz013;
  @Array(16)
  external Array<Uint16> sz014;
  @Array(17)
  external Array<Uint16> sz015;
  @Array(11)
  external Array<Uint16> sz016;
  @Array(11)
  external Array<Uint16> sz017;
  @Array(15)
  external Array<Uint16> sz018;
  @Array(22)
  external Array<Uint16> sz019;
  @Array(20)
  external Array<Uint16> sz020;
  @Array(22)
  external Array<Uint16> sz021;
  @Array(21)
  external Array<Uint16> sz022;
  @Array(24)
  external Array<Uint16> sz023;
  @Array(20)
  external Array<Uint16> sz024;
  @Array(10)
  external Array<Uint16> sz025;
  @Array(14)
  external Array<Uint16> sz026;
  @Array(11)
  external Array<Uint16> sz027;
  @Array(11)
  external Array<Uint16> sz028;
  @Array(13)
  external Array<Uint16> sz029;
  @Array(17)
  external Array<Uint16> sz030;
  @Array(16)
  external Array<Uint16> sz031;
  @Array(17)
  external Array<Uint16> sz032;
  @Array(20)
  external Array<Uint16> sz033;
  @Array(19)
  external Array<Uint16> sz034;
  @Array(18)
  external Array<Uint16> sz035;
  @Array(18)
  external Array<Uint16> sz036;
  @Array(15)
  external Array<Uint16> sz037;
  @Array(14)
  external Array<Uint16> sz041;
  @Array(22)
  external Array<Uint16> sz043;
  @Array(16)
  external Array<Uint16> sz044;
  @Array(20)
  external Array<Uint16> sz045;
  @Array(14)
  external Array<Uint16> sz046;
  @Array(14)
  external Array<Uint16> sz047;
  @Array(12)
  external Array<Uint16> sz048;
  @Array(25)
  external Array<Uint16> sz049;
  @Array(26)
  external Array<Uint16> sz050;
  @Array(25)
  external Array<Uint16> sz051;
  @Array(16)
  external Array<Uint16> sz052;
  @Array(24)
  external Array<Uint16> sz053;
  @Array(15)
  external Array<Uint16> sz054;
  @Array(21)
  external Array<Uint16> sz055;
  @Array(16)
  external Array<Uint16> sz056;
  @Array(22)
  external Array<Uint16> sz057;
  @Array(14)
  external Array<Uint16> sz058;
  @Array(25)
  external Array<Uint16> sz059;
  @Array(18)
  external Array<Uint16> sz060;
  @Array(22)
  external Array<Uint16> sz061;
  @Array(26)
  external Array<Uint16> sz062;
  @Array(36)
  external Array<Uint16> sz063;
  @Array(23)
  external Array<Uint16> sz064;
  @Array(12)
  external Array<Uint16> sz065;
  @Array(24)
  external Array<Uint16> sz066;
  @Array(11)
  external Array<Uint16> sz067;
  @Array(12)
  external Array<Uint16> sz068;
  @Array(14)
  external Array<Uint16> sz069;
  @Array(20)
  external Array<Uint16> sz070;
  @Array(15)
  external Array<Uint16> sz071;
  @Array(14)
  external Array<Uint16> sz072;
  @Array(31)
  external Array<Uint16> sz073;
  @Array(24)
  external Array<Uint16> sz074;
  @Array(22)
  external Array<Uint16> sz075;
  @Array(24)
  external Array<Uint16> sz076;
  @Array(21)
  external Array<Uint16> sz077;
  @Array(27)
  external Array<Uint16> sz078;
  @Array(27)
  external Array<Uint16> sz079;
  @Array(20)
  external Array<Uint16> sz080;
  @Array(33)
  external Array<Uint16> sz081;
  @Array(21)
  external Array<Uint16> sz082;
  @Array(32)
  external Array<Uint16> sz083;
  @Array(26)
  external Array<Uint16> sz084;
  @Array(18)
  external Array<Uint16> sz085;
  @Array(30)
  external Array<Uint16> sz086;
}

class WMDMLogger extends Struct {
}

class MTP_COMMAND_DATA_IN extends Struct {
  @Uint16() external int OpCode;
  @Uint32() external int NumParams;
  @Array(5)
  external Array<Uint32> Params;
  @Uint32() external int NextPhase;
  @Uint32() external int CommandWriteDataSize;
  @Array(1)
  external Array<Uint8> CommandWriteData;
}

class MTP_COMMAND_DATA_OUT extends Struct {
  @Uint16() external int ResponseCode;
  @Uint32() external int NumParams;
  @Array(5)
  external Array<Uint32> Params;
  @Uint32() external int CommandReadDataSize;
  @Array(1)
  external Array<Uint8> CommandReadData;
}

