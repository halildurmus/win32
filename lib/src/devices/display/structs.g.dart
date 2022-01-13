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
import '../../devices/display/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/console/structs.g.dart';
import '../../devices/display/callbacks.g.dart';

/// {@category Struct}
class Adapter extends Struct {
  @Array(128)
  external Array<Uint16> _AdapterName;

  String get AdapterName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_AdapterName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set AdapterName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _AdapterName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int numSources;

  @Array(1)
  external Array<Sources> sources;
}

/// {@category Struct}
class Adapters extends Struct {
  @Int32()
  external int numAdapters;

  @Array(1)
  external Array<Adapter> adapter;
}

/// {@category Struct}
class BACKLIGHT_REDUCTION_GAMMA_RAMP extends Struct {
  @Array(256)
  external Array<Uint16> R;

  @Array(256)
  external Array<Uint16> G;

  @Array(256)
  external Array<Uint16> B;
}

/// {@category Struct}
class BANK_POSITION extends Struct {
  @Uint32()
  external int ReadBankPosition;

  @Uint32()
  external int WriteBankPosition;
}

/// {@category Struct}
class BLENDOBJ extends Struct {
  external BLENDFUNCTION BlendFunction;
}

/// {@category Struct}
class BRIGHTNESS_LEVEL extends Struct {
  @Uint8()
  external int Count;

  @Array(103)
  external Array<Uint8> Level;
}

/// {@category Struct}
class BRIGHTNESS_NIT_RANGE extends Struct {
  @Uint32()
  external int MinLevelInMillinit;

  @Uint32()
  external int MaxLevelInMillinit;

  @Uint32()
  external int StepSizeInMillinit;
}

/// {@category Struct}
class BRIGHTNESS_NIT_RANGES extends Struct {
  @Uint32()
  external int NormalRangeCount;

  @Uint32()
  external int RangeCount;

  @Uint32()
  external int PreferredMaximumBrightness;

  @Array(16)
  external Array<BRIGHTNESS_NIT_RANGE> SupportedRanges;
}

/// {@category Struct}
class BRUSHOBJ extends Struct {
  @Uint32()
  external int iSolidColor;

  external Pointer pvRbrush;

  @Uint32()
  external int flColorType;
}

/// {@category Struct}
class CDDDXGK_REDIRBITMAPPRESENTINFO extends Struct {
  @Uint32()
  external int NumDirtyRects;

  external Pointer<RECT> DirtyRect;

  @Uint32()
  external int NumContexts;

  @Array(65)
  external Array<IntPtr> hContext;

  @Uint8()
  external int bDoNotSynchronizeWithDxContent;
}

/// {@category Struct}
class CHAR_IMAGE_INFO extends Struct {
  external CHAR_INFO CharInfo;

  external FONT_IMAGE_INFO FontImageInfo;
}

/// {@category Struct}
class CHROMATICITY_COORDINATE extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class CIECHROMA extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;

  @Int32()
  external int Y;
}

/// {@category Struct}
class CLIPLINE extends Struct {
  external POINTFIX ptfxA;

  external POINTFIX ptfxB;

  @Int32()
  external int lStyleState;

  @Uint32()
  external int c;

  @Array(1)
  external Array<RUN> arun;
}

/// {@category Struct}
class CLIPOBJ extends Struct {
  @Uint32()
  external int iUniq;

  external RECTL rclBounds;

  @Uint8()
  external int iDComplexity;

  @Uint8()
  external int iFComplexity;

  @Uint8()
  external int iMode;

  @Uint8()
  external int fjOptions;
}

/// {@category Struct}
class COLORINFO extends Struct {
  external CIECHROMA Red;

  external CIECHROMA Green;

  external CIECHROMA Blue;

  external CIECHROMA Cyan;

  external CIECHROMA Magenta;

  external CIECHROMA Yellow;

  external CIECHROMA AlignmentWhite;

  @Int32()
  external int RedGamma;

  @Int32()
  external int GreenGamma;

  @Int32()
  external int BlueGamma;

  @Int32()
  external int MagentaInCyanDye;

  @Int32()
  external int YellowInCyanDye;

  @Int32()
  external int CyanInMagentaDye;

  @Int32()
  external int YellowInMagentaDye;

  @Int32()
  external int CyanInYellowDye;

  @Int32()
  external int MagentaInYellowDye;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM extends Struct {
  @Int32()
  external int Type;

  external _COLORSPACE_TRANSFORM__Data_e__Union Data;
}

/// {@category Struct}
class _COLORSPACE_TRANSFORM__Data_e__Union extends Union {
  external GAMMA_RAMP_RGB256x3x16 Rgb256x3x16;

  external GAMMA_RAMP_DXGI_1 Dxgi1;

  external COLORSPACE_TRANSFORM_3x4 T3x4;

  external COLORSPACE_TRANSFORM_MATRIX_V2 MatrixV2;
}

extension COLORSPACE_TRANSFORM_Extension on COLORSPACE_TRANSFORM {
  GAMMA_RAMP_RGB256x3x16 get Rgb256x3x16 => this.Data.Rgb256x3x16;
  set Rgb256x3x16(GAMMA_RAMP_RGB256x3x16 value) =>
      this.Data.Rgb256x3x16 = value;

  GAMMA_RAMP_DXGI_1 get Dxgi1 => this.Data.Dxgi1;
  set Dxgi1(GAMMA_RAMP_DXGI_1 value) => this.Data.Dxgi1 = value;

  COLORSPACE_TRANSFORM_3x4 get T3x4 => this.Data.T3x4;
  set T3x4(COLORSPACE_TRANSFORM_3x4 value) => this.Data.T3x4 = value;

  COLORSPACE_TRANSFORM_MATRIX_V2 get MatrixV2 => this.Data.MatrixV2;
  set MatrixV2(COLORSPACE_TRANSFORM_MATRIX_V2 value) =>
      this.Data.MatrixV2 = value;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_1DLUT_CAP extends Struct {
  @Uint32()
  external int NumberOfLUTEntries;

  external COLORSPACE_TRANSFORM_DATA_CAP DataCap;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_3x4 extends Struct {
  @Array(12)
  external Array<Float> ColorMatrix3x4;

  @Float()
  external double ScalarMultiplier;

  @Array(4096)
  external Array<GAMMA_RAMP_RGB> LookupTable1D;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_DATA_CAP extends Struct {
  @Int32()
  external int DataType;

  external _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union Anonymous;

  @Float()
  external double NumericRangeMin;

  @Float()
  external double NumericRangeMax;
}

/// {@category Struct}
class _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union extends Union {
  external _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous2_e__Struct
      Anonymous2;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union_Extension
    on COLORSPACE_TRANSFORM_DATA_CAP {
  int get bitfield => this.Anonymous.Anonymous1.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous1.bitfield = value;
}

/// {@category Struct}
class _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union_Extension_1
    on COLORSPACE_TRANSFORM_DATA_CAP {
  int get bitfield => this.Anonymous.Anonymous2.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous2.bitfield = value;
}

extension COLORSPACE_TRANSFORM_DATA_CAP_Extension
    on COLORSPACE_TRANSFORM_DATA_CAP {
  _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous.Anonymous1;
  set Anonymous1(
          _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous.Anonymous1 = value;

  _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous.Anonymous2;
  set Anonymous2(
          _COLORSPACE_TRANSFORM_DATA_CAP__Anonymous_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous.Anonymous2 = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_MATRIX_CAP extends Struct {
  external _COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union Anonymous;

  external COLORSPACE_TRANSFORM_DATA_CAP DataCap;
}

/// {@category Struct}
class _COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union extends Union {
  external _COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union_Extension
    on COLORSPACE_TRANSFORM_MATRIX_CAP {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension COLORSPACE_TRANSFORM_MATRIX_CAP_Extension
    on COLORSPACE_TRANSFORM_MATRIX_CAP {
  _COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _COLORSPACE_TRANSFORM_MATRIX_CAP__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_MATRIX_V2 extends Struct {
  @Int32()
  external int StageControlLookupTable1DDegamma;

  @Array(4096)
  external Array<GAMMA_RAMP_RGB> LookupTable1DDegamma;

  @Int32()
  external int StageControlColorMatrix3x3;

  @Array(9)
  external Array<Float> ColorMatrix3x3;

  @Int32()
  external int StageControlLookupTable1DRegamma;

  @Array(4096)
  external Array<GAMMA_RAMP_RGB> LookupTable1DRegamma;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_SET_INPUT extends Struct {
  @Int32()
  external int OutputWireColorSpaceExpected;

  external OUTPUT_WIRE_FORMAT OutputWireFormatExpected;

  external COLORSPACE_TRANSFORM ColorSpaceTransform;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_TARGET_CAPS extends Struct {
  @Int32()
  external int Version;

  external COLORSPACE_TRANSFORM_1DLUT_CAP LookupTable1DDegammaCap;

  external COLORSPACE_TRANSFORM_MATRIX_CAP ColorMatrix3x3Cap;

  external COLORSPACE_TRANSFORM_1DLUT_CAP LookupTable1DRegammaCap;
}

/// {@category Struct}
class DEVHTADJDATA extends Struct {
  @Uint32()
  external int DeviceFlags;

  @Uint32()
  external int DeviceXDPI;

  @Uint32()
  external int DeviceYDPI;

  external Pointer<DEVHTINFO> pDefHTInfo;

  external Pointer<DEVHTINFO> pAdjHTInfo;
}

/// {@category Struct}
class DEVHTINFO extends Struct {
  @Uint32()
  external int HTFlags;

  @Uint32()
  external int HTPatternSize;

  @Uint32()
  external int DevPelsDPI;

  external COLORINFO ColorInfo;
}

/// {@category Struct}
class DEVINFO extends Struct {
  @Uint32()
  external int flGraphicsCaps;

  external LOGFONT lfDefaultFont;

  external LOGFONT lfAnsiVarFont;

  external LOGFONT lfAnsiFixFont;

  @Uint32()
  external int cFonts;

  @Uint32()
  external int iDitherFormat;

  @Uint16()
  external int cxDither;

  @Uint16()
  external int cyDither;

  @IntPtr()
  external int hpalDefault;

  @Uint32()
  external int flGraphicsCaps2;
}

/// {@category Struct}
class DISPLAYCONFIG_2DREGION extends Struct {
  @Uint32()
  external int cx;

  @Uint32()
  external int cy;
}

/// {@category Struct}
class DISPLAYCONFIG_ADAPTER_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  @Array(128)
  external Array<Uint16> _adapterDevicePath;

  String get adapterDevicePath {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_adapterDevicePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set adapterDevicePath(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _adapterDevicePath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISPLAYCONFIG_DESKTOP_IMAGE_INFO extends Struct {
  external POINTL PathSourceSize;

  external RECTL DesktopImageRegion;

  external RECTL DesktopImageClip;
}

/// {@category Struct}
class DISPLAYCONFIG_DEVICE_INFO_HEADER extends Struct {
  @Int32()
  external int type;

  @Uint32()
  external int size;

  external LUID adapterId;

  @Uint32()
  external int id;
}

/// {@category Struct}
class DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external _DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union Anonymous;

  @Int32()
  external int colorEncoding;

  @Uint32()
  external int bitsPerColorChannel;
}

/// {@category Struct}
class _DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union extends Union {
  external _DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO_Extension
    on DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO {
  _DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external _DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union
    extends Union {
  external _DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION_Extension
    on DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION {
  _DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_GET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_MODE_INFO extends Struct {
  @Int32()
  external int infoType;

  @Uint32()
  external int id;

  external LUID adapterId;

  external _DISPLAYCONFIG_MODE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_MODE_INFO__Anonymous_e__Union extends Union {
  external DISPLAYCONFIG_TARGET_MODE targetMode;

  external DISPLAYCONFIG_SOURCE_MODE sourceMode;

  external DISPLAYCONFIG_DESKTOP_IMAGE_INFO desktopImageInfo;
}

extension DISPLAYCONFIG_MODE_INFO_Extension on DISPLAYCONFIG_MODE_INFO {
  DISPLAYCONFIG_TARGET_MODE get targetMode => this.Anonymous.targetMode;
  set targetMode(DISPLAYCONFIG_TARGET_MODE value) =>
      this.Anonymous.targetMode = value;

  DISPLAYCONFIG_SOURCE_MODE get sourceMode => this.Anonymous.sourceMode;
  set sourceMode(DISPLAYCONFIG_SOURCE_MODE value) =>
      this.Anonymous.sourceMode = value;

  DISPLAYCONFIG_DESKTOP_IMAGE_INFO get desktopImageInfo =>
      this.Anonymous.desktopImageInfo;
  set desktopImageInfo(DISPLAYCONFIG_DESKTOP_IMAGE_INFO value) =>
      this.Anonymous.desktopImageInfo = value;
}

/// {@category Struct}
class DISPLAYCONFIG_PATH_INFO extends Struct {
  external DISPLAYCONFIG_PATH_SOURCE_INFO sourceInfo;

  external DISPLAYCONFIG_PATH_TARGET_INFO targetInfo;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class DISPLAYCONFIG_PATH_SOURCE_INFO extends Struct {
  external LUID adapterId;

  @Uint32()
  external int id;

  external _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int statusFlags;
}

/// {@category Struct}
class _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int modeInfoIdx;

  external _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_PATH_SOURCE_INFO_Extension
    on DISPLAYCONFIG_PATH_SOURCE_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_PATH_SOURCE_INFO__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DISPLAYCONFIG_PATH_TARGET_INFO extends Struct {
  external LUID adapterId;

  @Uint32()
  external int id;

  external _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union Anonymous;

  @Int32()
  external int outputTechnology;

  @Int32()
  external int rotation;

  @Int32()
  external int scaling;

  external DISPLAYCONFIG_RATIONAL refreshRate;

  @Int32()
  external int scanLineOrdering;

  @Int32()
  external int targetAvailable;

  @Uint32()
  external int statusFlags;
}

/// {@category Struct}
class _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int modeInfoIdx;

  external _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_PATH_TARGET_INFO_Extension
    on DISPLAYCONFIG_PATH_TARGET_INFO {
  int get modeInfoIdx => this.Anonymous.modeInfoIdx;
  set modeInfoIdx(int value) => this.Anonymous.modeInfoIdx = value;

  _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_PATH_TARGET_INFO__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class DISPLAYCONFIG_RATIONAL extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
class DISPLAYCONFIG_SDR_WHITE_LEVEL extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  @Uint32()
  external int SDRWhiteLevel;
}

/// {@category Struct}
class DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external _DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union
    extends Union {
  external _DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE_Extension
    on DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE {
  _DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external _DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union
      Anonymous;

  external GUID specializationType;

  external GUID specializationSubType;

  @Array(128)
  external Array<Uint16> _specializationApplicationName;

  String get specializationApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_specializationApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set specializationApplicationName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _specializationApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class _DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union
    extends Union {
  external _DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION_Extension
    on DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION {
  _DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_SET_MONITOR_SPECIALIZATION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_SET_TARGET_PERSISTENCE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external _DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union extends Union {
  external _DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_SET_TARGET_PERSISTENCE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_SET_TARGET_PERSISTENCE_Extension
    on DISPLAYCONFIG_SET_TARGET_PERSISTENCE {
  _DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_SET_TARGET_PERSISTENCE__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_SOURCE_DEVICE_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  @Array(32)
  external Array<Uint16> _viewGdiDeviceName;

  String get viewGdiDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_viewGdiDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set viewGdiDeviceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _viewGdiDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISPLAYCONFIG_SOURCE_MODE extends Struct {
  @Uint32()
  external int width;

  @Uint32()
  external int height;

  @Int32()
  external int pixelFormat;

  external POINTL position;
}

/// {@category Struct}
class DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external _DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union
    extends Union {
  external _DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION_Extension
    on DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION {
  _DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_SUPPORT_VIRTUAL_RESOLUTION__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_BASE_TYPE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  @Int32()
  external int baseOutputTechnology;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_DEVICE_NAME extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  external DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS flags;

  @Int32()
  external int outputTechnology;

  @Uint16()
  external int edidManufactureId;

  @Uint16()
  external int edidProductCodeId;

  @Uint32()
  external int connectorInstance;

  @Array(64)
  external Array<Uint16> _monitorFriendlyDeviceName;

  String get monitorFriendlyDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_monitorFriendlyDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set monitorFriendlyDeviceName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _monitorFriendlyDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _monitorDevicePath;

  String get monitorDevicePath {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_monitorDevicePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set monitorDevicePath(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _monitorDevicePath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS extends Struct {
  external _DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union
    extends Union {
  external _DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS_Extension
    on DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS {
  _DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DISPLAYCONFIG_TARGET_DEVICE_NAME_FLAGS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_MODE extends Struct {
  external DISPLAYCONFIG_VIDEO_SIGNAL_INFO targetVideoSignalInfo;
}

/// {@category Struct}
class DISPLAYCONFIG_TARGET_PREFERRED_MODE extends Struct {
  external DISPLAYCONFIG_DEVICE_INFO_HEADER header;

  @Uint32()
  external int width;

  @Uint32()
  external int height;

  external DISPLAYCONFIG_TARGET_MODE targetMode;
}

/// {@category Struct}
class DISPLAYCONFIG_VIDEO_SIGNAL_INFO extends Struct {
  @Uint64()
  external int pixelRate;

  external DISPLAYCONFIG_RATIONAL hSyncFreq;

  external DISPLAYCONFIG_RATIONAL vSyncFreq;

  external DISPLAYCONFIG_2DREGION activeSize;

  external DISPLAYCONFIG_2DREGION totalSize;

  external _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union Anonymous;

  @Int32()
  external int scanLineOrdering;
}

/// {@category Struct}
class _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union extends Union {
  external _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
      AdditionalSignalInfo;

  @Uint32()
  external int videoStandard;
}

/// {@category Struct}
class _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  int get bitfield => this.Anonymous.AdditionalSignalInfo.bitfield;
  set bitfield(int value) =>
      this.Anonymous.AdditionalSignalInfo.bitfield = value;
}

extension DISPLAYCONFIG_VIDEO_SIGNAL_INFO_Extension
    on DISPLAYCONFIG_VIDEO_SIGNAL_INFO {
  _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
      get AdditionalSignalInfo => this.Anonymous.AdditionalSignalInfo;
  set AdditionalSignalInfo(
          _DISPLAYCONFIG_VIDEO_SIGNAL_INFO__Anonymous_e__Union__AdditionalSignalInfo_e__Struct
              value) =>
      this.Anonymous.AdditionalSignalInfo = value;

  int get videoStandard => this.Anonymous.videoStandard;
  set videoStandard(int value) => this.Anonymous.videoStandard = value;
}

/// {@category Struct}
class DISPLAY_BRIGHTNESS extends Struct {
  @Uint8()
  external int ucDisplayPolicy;

  @Uint8()
  external int ucACBrightness;

  @Uint8()
  external int ucDCBrightness;
}

/// {@category Struct}
class DRH_APIBITMAPDATA extends Struct {
  external Pointer<SURFOBJ> pso;

  @Int32()
  external int b;
}

/// {@category Struct}
class DRIVEROBJ extends Struct {
  external Pointer pvObj;

  external Pointer<NativeFunction<FREEOBJPROC>> pFreeProc;

  @IntPtr()
  external int hdev;

  @IntPtr()
  external int dhpdev;
}

/// {@category Struct}
class DRVENABLEDATA extends Struct {
  @Uint32()
  external int iDriverVersion;

  @Uint32()
  external int c;

  external Pointer<DRVFN> pdrvfn;
}

/// {@category Struct}
class DRVFN extends Struct {
  @Uint32()
  external int iFunc;

  external Pointer<NativeFunction<PFN>> pfn;
}

/// {@category Struct}
class DXGK_WIN32K_PARAM_DATA extends Struct {
  external Pointer PathsArray;

  external Pointer ModesArray;

  @Uint32()
  external int NumPathArrayElements;

  @Uint32()
  external int NumModeArrayElements;

  @Uint32()
  external int SDCFlags;
}

/// {@category Struct}
class DisplayMode extends Struct {
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

  external DEVMODE devMode;
}

/// {@category Struct}
class DisplayModes extends Struct {
  @Int32()
  external int numDisplayModes;

  @Array(1)
  external Array<DisplayMode> displayMode;
}

/// {@category Struct}
class EMFINFO extends Struct {
  @Uint32()
  external int nSize;

  @IntPtr()
  external int hdc;

  external Pointer<Uint8> pvEMF;

  external Pointer<Uint8> pvCurrentRecord;
}

/// {@category Struct}
class ENGSAFESEMAPHORE extends Struct {
  @IntPtr()
  external int hsem;

  @Int32()
  external int lCount;
}

/// {@category Struct}
class ENG_EVENT extends Struct {
  external Pointer pKEvent;

  @Uint32()
  external int fFlags;
}

/// {@category Struct}
class ENG_TIME_FIELDS extends Struct {
  @Uint16()
  external int usYear;

  @Uint16()
  external int usMonth;

  @Uint16()
  external int usDay;

  @Uint16()
  external int usHour;

  @Uint16()
  external int usMinute;

  @Uint16()
  external int usSecond;

  @Uint16()
  external int usMilliseconds;

  @Uint16()
  external int usWeekday;
}

/// {@category Struct}
class ENUMRECTS extends Struct {
  @Uint32()
  external int c;

  @Array(1)
  external Array<RECTL> arcl;
}

/// {@category Struct}
class FD_DEVICEMETRICS extends Struct {
  @Uint32()
  external int flRealizedType;

  external POINTE pteBase;

  external POINTE pteSide;

  @Int32()
  external int lD;

  @Int32()
  external int fxMaxAscender;

  @Int32()
  external int fxMaxDescender;

  external POINTL ptlUnderline1;

  external POINTL ptlStrikeOut;

  external POINTL ptlULThickness;

  external POINTL ptlSOThickness;

  @Uint32()
  external int cxMax;

  @Uint32()
  external int cyMax;

  @Uint32()
  external int cjGlyphMax;

  external FD_XFORM fdxQuantized;

  @Int32()
  external int lNonLinearExtLeading;

  @Int32()
  external int lNonLinearIntLeading;

  @Int32()
  external int lNonLinearMaxCharWidth;

  @Int32()
  external int lNonLinearAvgCharWidth;

  @Int32()
  external int lMinA;

  @Int32()
  external int lMinC;

  @Int32()
  external int lMinD;

  @Array(1)
  external Array<Int32> alReserved;
}

/// {@category Struct}
class FD_GLYPHATTR extends Struct {
  @Uint32()
  external int cjThis;

  @Uint32()
  external int cGlyphs;

  @Uint32()
  external int iMode;

  @Array(1)
  external Array<Uint8> aGlyphAttr;
}

/// {@category Struct}
class FD_GLYPHSET extends Struct {
  @Uint32()
  external int cjThis;

  @Uint32()
  external int flAccel;

  @Uint32()
  external int cGlyphsSupported;

  @Uint32()
  external int cRuns;

  @Array(1)
  external Array<WCRUN> awcrun;
}

/// {@category Struct}
class FD_KERNINGPAIR extends Struct {
  @Uint16()
  external int wcFirst;

  @Uint16()
  external int wcSecond;

  @Int16()
  external int fwdKern;
}

/// {@category Struct}
class FD_LIGATURE extends Struct {
  @Uint32()
  external int culThis;

  @Uint32()
  external int ulType;

  @Uint32()
  external int cLigatures;

  @Array(1)
  external Array<LIGATURE> alig;
}

/// {@category Struct}
class FD_XFORM extends Struct {
  @Float()
  external double eXX;

  @Float()
  external double eXY;

  @Float()
  external double eYX;

  @Float()
  external double eYY;
}

/// {@category Struct}
class FLOATOBJ_XFORM extends Struct {
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

/// {@category Struct}
class FLOAT_LONG extends Union {
  @Float()
  external double e;

  @Int32()
  external int l;
}

/// {@category Struct}
class FONTDIFF extends Struct {
  @Uint8()
  external int jReserved1;

  @Uint8()
  external int jReserved2;

  @Uint8()
  external int jReserved3;

  @Uint8()
  external int bWeight;

  @Uint16()
  external int usWinWeight;

  @Uint16()
  external int fsSelection;

  @Int16()
  external int fwdAveCharWidth;

  @Int16()
  external int fwdMaxCharInc;

  external POINTL ptlCaret;
}

/// {@category Struct}
class FONTINFO extends Struct {
  @Uint32()
  external int cjThis;

  @Uint32()
  external int flCaps;

  @Uint32()
  external int cGlyphsSupported;

  @Uint32()
  external int cjMaxGlyph1;

  @Uint32()
  external int cjMaxGlyph4;

  @Uint32()
  external int cjMaxGlyph8;

  @Uint32()
  external int cjMaxGlyph32;
}

/// {@category Struct}
class FONTOBJ extends Struct {
  @Uint32()
  external int iUniq;

  @Uint32()
  external int iFace;

  @Uint32()
  external int cxMax;

  @Uint32()
  external int flFontType;

  @IntPtr()
  external int iTTUniq;

  @IntPtr()
  external int iFile;

  external SIZE sizLogResPpi;

  @Uint32()
  external int ulStyleSize;

  external Pointer pvConsumer;

  external Pointer pvProducer;
}

/// {@category Struct}
class FONTSIM extends Struct {
  @Int32()
  external int dpBold;

  @Int32()
  external int dpItalic;

  @Int32()
  external int dpBoldItalic;
}

/// {@category Struct}
class FONT_IMAGE_INFO extends Struct {
  external COORD FontSize;

  external Pointer<Uint8> ImageBits;
}

/// {@category Struct}
class FSCNTL_SCREEN_INFO extends Struct {
  external COORD Position;

  external COORD ScreenSize;

  @Uint32()
  external int nNumberOfChars;
}

/// {@category Struct}
class FSVIDEO_COPY_FRAME_BUFFER extends Struct {
  external FSCNTL_SCREEN_INFO SrcScreen;

  external FSCNTL_SCREEN_INFO DestScreen;
}

/// {@category Struct}
class FSVIDEO_CURSOR_POSITION extends Struct {
  external VIDEO_CURSOR_POSITION Coord;

  @Uint32()
  external int dwType;
}

/// {@category Struct}
class FSVIDEO_MODE_INFORMATION extends Struct {
  external VIDEO_MODE_INFORMATION VideoMode;

  external VIDEO_MEMORY_INFORMATION VideoMemory;
}

/// {@category Struct}
class FSVIDEO_REVERSE_MOUSE_POINTER extends Struct {
  external FSCNTL_SCREEN_INFO Screen;

  @Uint32()
  external int dwType;
}

/// {@category Struct}
class FSVIDEO_SCREEN_INFORMATION extends Struct {
  external COORD ScreenSize;

  external COORD FontSize;
}

/// {@category Struct}
class FSVIDEO_WRITE_TO_FRAME_BUFFER extends Struct {
  external Pointer<CHAR_IMAGE_INFO> SrcBuffer;

  external FSCNTL_SCREEN_INFO DestScreen;
}

/// {@category Struct}
class GAMMARAMP extends Struct {
  @Array(256)
  external Array<Uint16> Red;

  @Array(256)
  external Array<Uint16> Green;

  @Array(256)
  external Array<Uint16> Blue;
}

/// {@category Struct}
class GAMMA_RAMP_DXGI_1 extends Struct {
  external GAMMA_RAMP_RGB Scale;

  external GAMMA_RAMP_RGB Offset;

  @Array(1025)
  external Array<GAMMA_RAMP_RGB> GammaCurve;
}

/// {@category Struct}
class GAMMA_RAMP_RGB extends Struct {
  @Float()
  external double Red;

  @Float()
  external double Green;

  @Float()
  external double Blue;
}

/// {@category Struct}
class GAMMA_RAMP_RGB256x3x16 extends Struct {
  @Array(256)
  external Array<Uint16> Red;

  @Array(256)
  external Array<Uint16> Green;

  @Array(256)
  external Array<Uint16> Blue;
}

/// {@category Struct}
class GDIINFO extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int ulTechnology;

  @Uint32()
  external int ulHorzSize;

  @Uint32()
  external int ulVertSize;

  @Uint32()
  external int ulHorzRes;

  @Uint32()
  external int ulVertRes;

  @Uint32()
  external int cBitsPixel;

  @Uint32()
  external int cPlanes;

  @Uint32()
  external int ulNumColors;

  @Uint32()
  external int flRaster;

  @Uint32()
  external int ulLogPixelsX;

  @Uint32()
  external int ulLogPixelsY;

  @Uint32()
  external int flTextCaps;

  @Uint32()
  external int ulDACRed;

  @Uint32()
  external int ulDACGreen;

  @Uint32()
  external int ulDACBlue;

  @Uint32()
  external int ulAspectX;

  @Uint32()
  external int ulAspectY;

  @Uint32()
  external int ulAspectXY;

  @Int32()
  external int xStyleStep;

  @Int32()
  external int yStyleStep;

  @Int32()
  external int denStyleStep;

  external POINTL ptlPhysOffset;

  external SIZE szlPhysSize;

  @Uint32()
  external int ulNumPalReg;

  external COLORINFO ciDevice;

  @Uint32()
  external int ulDevicePelsDPI;

  @Uint32()
  external int ulPrimaryOrder;

  @Uint32()
  external int ulHTPatternSize;

  @Uint32()
  external int ulHTOutputFormat;

  @Uint32()
  external int flHTFlags;

  @Uint32()
  external int ulVRefresh;

  @Uint32()
  external int ulBltAlignment;

  @Uint32()
  external int ulPanningHorzRes;

  @Uint32()
  external int ulPanningVertRes;

  @Uint32()
  external int xPanningAlignment;

  @Uint32()
  external int yPanningAlignment;

  @Uint32()
  external int cxHTPat;

  @Uint32()
  external int cyHTPat;

  external Pointer<Uint8> pHTPatA;

  external Pointer<Uint8> pHTPatB;

  external Pointer<Uint8> pHTPatC;

  @Uint32()
  external int flShadeBlend;

  @Uint32()
  external int ulPhysicalPixelCharacteristics;

  @Uint32()
  external int ulPhysicalPixelGamma;
}

/// {@category Struct}
class GLYPHBITS extends Struct {
  external POINTL ptlOrigin;

  external SIZE sizlBitmap;

  @Array(1)
  external Array<Uint8> aj;
}

/// {@category Struct}
class GLYPHDATA extends Struct {
  external GLYPHDEF gdf;

  @Uint32()
  external int hg;

  @Int32()
  external int fxD;

  @Int32()
  external int fxA;

  @Int32()
  external int fxAB;

  @Int32()
  external int fxInkTop;

  @Int32()
  external int fxInkBottom;

  external RECTL rclInk;

  external POINTQF ptqD;
}

/// {@category Struct}
class GLYPHDEF extends Union {
  external Pointer<GLYPHBITS> pgb;

  external Pointer<PATHOBJ> ppo;
}

/// {@category Struct}
class GLYPHPOS extends Struct {
  @Uint32()
  external int hg;

  external Pointer<GLYPHDEF> pgdf;

  external POINTL ptl;
}

/// {@category Struct}
class IFIMETRICS extends Struct {
  @Uint32()
  external int cjThis;

  @Uint32()
  external int cjIfiExtra;

  @Int32()
  external int dpwszFamilyName;

  @Int32()
  external int dpwszStyleName;

  @Int32()
  external int dpwszFaceName;

  @Int32()
  external int dpwszUniqueName;

  @Int32()
  external int dpFontSim;

  @Int32()
  external int lEmbedId;

  @Int32()
  external int lItalicAngle;

  @Int32()
  external int lCharBias;

  @Int32()
  external int dpCharSets;

  @Uint8()
  external int jWinCharSet;

  @Uint8()
  external int jWinPitchAndFamily;

  @Uint16()
  external int usWinWeight;

  @Uint32()
  external int flInfo;

  @Uint16()
  external int fsSelection;

  @Uint16()
  external int fsType;

  @Int16()
  external int fwdUnitsPerEm;

  @Int16()
  external int fwdLowestPPEm;

  @Int16()
  external int fwdWinAscender;

  @Int16()
  external int fwdWinDescender;

  @Int16()
  external int fwdMacAscender;

  @Int16()
  external int fwdMacDescender;

  @Int16()
  external int fwdMacLineGap;

  @Int16()
  external int fwdTypoAscender;

  @Int16()
  external int fwdTypoDescender;

  @Int16()
  external int fwdTypoLineGap;

  @Int16()
  external int fwdAveCharWidth;

  @Int16()
  external int fwdMaxCharInc;

  @Int16()
  external int fwdCapHeight;

  @Int16()
  external int fwdXHeight;

  @Int16()
  external int fwdSubscriptXSize;

  @Int16()
  external int fwdSubscriptYSize;

  @Int16()
  external int fwdSubscriptXOffset;

  @Int16()
  external int fwdSubscriptYOffset;

  @Int16()
  external int fwdSuperscriptXSize;

  @Int16()
  external int fwdSuperscriptYSize;

  @Int16()
  external int fwdSuperscriptXOffset;

  @Int16()
  external int fwdSuperscriptYOffset;

  @Int16()
  external int fwdUnderscoreSize;

  @Int16()
  external int fwdUnderscorePosition;

  @Int16()
  external int fwdStrikeoutSize;

  @Int16()
  external int fwdStrikeoutPosition;

  @Uint8()
  external int chFirstChar;

  @Uint8()
  external int chLastChar;

  @Uint8()
  external int chDefaultChar;

  @Uint8()
  external int chBreakChar;

  @Uint16()
  external int wcFirstChar;

  @Uint16()
  external int wcLastChar;

  @Uint16()
  external int wcDefaultChar;

  @Uint16()
  external int wcBreakChar;

  external POINTL ptlBaseline;

  external POINTL ptlAspect;

  external POINTL ptlCaret;

  external RECTL rclFontBox;

  @Array(4)
  external Array<Uint8> achVendId;

  @Uint32()
  external int cKerningPairs;

  @Uint32()
  external int ulPanoseCulture;

  external PANOSE panose;

  external Pointer Align;
}

/// {@category Struct}
class INDIRECT_DISPLAY_INFO extends Struct {
  external LUID DisplayAdapterLuid;

  @Uint32()
  external int Flags;

  @Uint32()
  external int NumMonitors;

  @Uint32()
  external int DisplayAdapterTargetBase;
}

/// {@category Struct}
class LIGATURE extends Struct {
  @Uint32()
  external int culSize;

  external Pointer<Utf16> pwsz;

  @Uint32()
  external int chglyph;

  @Array(1)
  external Array<Uint32> ahglyph;
}

/// {@category Struct}
class LINEATTRS extends Struct {
  @Uint32()
  external int fl;

  @Uint32()
  external int iJoin;

  @Uint32()
  external int iEndCap;

  external FLOAT_LONG elWidth;

  @Float()
  external double eMiterLimit;

  @Uint32()
  external int cstyle;

  external Pointer<FLOAT_LONG> pstyle;

  external FLOAT_LONG elStyleState;
}

/// {@category Struct}
@Packed(1)
class MC_TIMING_REPORT extends Struct {
  @Uint32()
  external int dwHorizontalFrequencyInHZ;

  @Uint32()
  external int dwVerticalFrequencyInHZ;

  @Uint8()
  external int bTimingStatusByte;
}

/// {@category Struct}
class MIPI_DSI_CAPS extends Struct {
  @Uint8()
  external int DSITypeMajor;

  @Uint8()
  external int DSITypeMinor;

  @Uint8()
  external int SpecVersionMajor;

  @Uint8()
  external int SpecVersionMinor;

  @Uint8()
  external int SpecVersionPatch;

  @Uint16()
  external int TargetMaximumReturnPacketSize;

  @Uint8()
  external int ResultCodeFlags;

  @Uint8()
  external int ResultCodeStatus;

  @Uint8()
  external int Revision;

  @Uint8()
  external int Level;

  @Uint8()
  external int DeviceClassHi;

  @Uint8()
  external int DeviceClassLo;

  @Uint8()
  external int ManufacturerHi;

  @Uint8()
  external int ManufacturerLo;

  @Uint8()
  external int ProductHi;

  @Uint8()
  external int ProductLo;

  @Uint8()
  external int LengthHi;

  @Uint8()
  external int LengthLo;
}

/// {@category Struct}
class MIPI_DSI_PACKET extends Struct {
  external _MIPI_DSI_PACKET__Anonymous1_e__Union Anonymous1;

  external _MIPI_DSI_PACKET__Anonymous2_e__Union Anonymous2;

  @Uint8()
  external int EccFiller;

  @Array(8)
  external Array<Uint8> Payload;
}

/// {@category Struct}
class _MIPI_DSI_PACKET__Anonymous1_e__Union extends Union {
  @Uint8()
  external int DataId;

  external _MIPI_DSI_PACKET__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _MIPI_DSI_PACKET__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension MIPI_DSI_PACKET__Anonymous1_e__Union_Extension on MIPI_DSI_PACKET {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension MIPI_DSI_PACKET_Extension on MIPI_DSI_PACKET {
  int get DataId => this.Anonymous1.DataId;
  set DataId(int value) => this.Anonymous1.DataId = value;

  _MIPI_DSI_PACKET__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(
          _MIPI_DSI_PACKET__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _MIPI_DSI_PACKET__Anonymous2_e__Union extends Union {
  external _MIPI_DSI_PACKET__Anonymous2_e__Union__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int LongWriteWordCount;
}

/// {@category Struct}
class _MIPI_DSI_PACKET__Anonymous2_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int Data0;

  @Uint8()
  external int Data1;
}

extension MIPI_DSI_PACKET__Anonymous2_e__Union_Extension on MIPI_DSI_PACKET {
  int get Data0 => this.Anonymous2.Anonymous.Data0;
  set Data0(int value) => this.Anonymous2.Anonymous.Data0 = value;

  int get Data1 => this.Anonymous2.Anonymous.Data1;
  set Data1(int value) => this.Anonymous2.Anonymous.Data1 = value;
}

extension MIPI_DSI_PACKET_Extension_1 on MIPI_DSI_PACKET {
  _MIPI_DSI_PACKET__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(
          _MIPI_DSI_PACKET__Anonymous2_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous2.Anonymous = value;

  int get LongWriteWordCount => this.Anonymous2.LongWriteWordCount;
  set LongWriteWordCount(int value) =>
      this.Anonymous2.LongWriteWordCount = value;
}

/// {@category Struct}
class MIPI_DSI_RESET extends Struct {
  @Uint32()
  external int Flags;

  external _MIPI_DSI_RESET__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MIPI_DSI_RESET__Anonymous_e__Union extends Union {
  external _MIPI_DSI_RESET__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Uint32()
  external int Results;
}

/// {@category Struct}
class _MIPI_DSI_RESET__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension MIPI_DSI_RESET__Anonymous_e__Union_Extension on MIPI_DSI_RESET {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension MIPI_DSI_RESET_Extension on MIPI_DSI_RESET {
  _MIPI_DSI_RESET__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _MIPI_DSI_RESET__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get Results => this.Anonymous.Results;
  set Results(int value) => this.Anonymous.Results = value;
}

/// {@category Struct}
class MIPI_DSI_TRANSMISSION extends Struct {
  @Uint32()
  external int TotalBufferSize;

  @Uint8()
  external int PacketCount;

  @Uint8()
  external int FailedPacket;

  external _MIPI_DSI_TRANSMISSION__Anonymous_e__Struct Anonymous;

  @Uint16()
  external int ReadWordCount;

  @Uint16()
  external int FinalCommandExtraPayload;

  @Uint16()
  external int MipiErrors;

  @Uint16()
  external int HostErrors;

  @Array(1)
  external Array<MIPI_DSI_PACKET> Packets;
}

/// {@category Struct}
class _MIPI_DSI_TRANSMISSION__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension MIPI_DSI_TRANSMISSION_Extension on MIPI_DSI_TRANSMISSION {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class OUTPUT_WIRE_FORMAT extends Struct {
  @Int32()
  external int ColorEncoding;

  @Uint32()
  external int BitsPerPixel;
}

/// {@category Struct}
class PALOBJ extends Struct {
  @Uint32()
  external int ulReserved;
}

/// {@category Struct}
class PANEL_BRIGHTNESS_SENSOR_DATA extends Struct {
  external _PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union Anonymous;

  @Float()
  external double AlsReading;

  external CHROMATICITY_COORDINATE ChromaticityCoordinate;

  @Float()
  external double ColorTemperature;
}

/// {@category Struct}
class _PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union extends Union {
  external _PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union_Extension
    on PANEL_BRIGHTNESS_SENSOR_DATA {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PANEL_BRIGHTNESS_SENSOR_DATA_Extension
    on PANEL_BRIGHTNESS_SENSOR_DATA {
  _PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PANEL_BRIGHTNESS_SENSOR_DATA__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class PANEL_GET_BACKLIGHT_REDUCTION extends Struct {
  @Uint16()
  external int BacklightUsersetting;

  @Uint16()
  external int BacklightEffective;

  external BACKLIGHT_REDUCTION_GAMMA_RAMP GammaRamp;
}

/// {@category Struct}
class PANEL_GET_BRIGHTNESS extends Struct {
  @Int32()
  external int Version;

  external _PANEL_GET_BRIGHTNESS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PANEL_GET_BRIGHTNESS__Anonymous_e__Union extends Union {
  @Uint8()
  external int Level;

  external _PANEL_GET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PANEL_GET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int CurrentInMillinits;

  @Uint32()
  external int TargetInMillinits;
}

extension PANEL_GET_BRIGHTNESS__Anonymous_e__Union_Extension
    on PANEL_GET_BRIGHTNESS {
  int get CurrentInMillinits => this.Anonymous.Anonymous.CurrentInMillinits;
  set CurrentInMillinits(int value) =>
      this.Anonymous.Anonymous.CurrentInMillinits = value;

  int get TargetInMillinits => this.Anonymous.Anonymous.TargetInMillinits;
  set TargetInMillinits(int value) =>
      this.Anonymous.Anonymous.TargetInMillinits = value;
}

extension PANEL_GET_BRIGHTNESS_Extension on PANEL_GET_BRIGHTNESS {
  int get Level => this.Anonymous.Level;
  set Level(int value) => this.Anonymous.Level = value;

  _PANEL_GET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PANEL_GET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PANEL_QUERY_BRIGHTNESS_CAPS extends Struct {
  @Int32()
  external int Version;

  external _PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union extends Union {
  external _PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union_Extension
    on PANEL_QUERY_BRIGHTNESS_CAPS {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PANEL_QUERY_BRIGHTNESS_CAPS_Extension on PANEL_QUERY_BRIGHTNESS_CAPS {
  _PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PANEL_QUERY_BRIGHTNESS_CAPS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class PANEL_QUERY_BRIGHTNESS_RANGES extends Struct {
  @Int32()
  external int Version;

  external _PANEL_QUERY_BRIGHTNESS_RANGES__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PANEL_QUERY_BRIGHTNESS_RANGES__Anonymous_e__Union extends Union {
  external BRIGHTNESS_LEVEL BrightnessLevel;

  external BRIGHTNESS_NIT_RANGES NitRanges;
}

extension PANEL_QUERY_BRIGHTNESS_RANGES_Extension
    on PANEL_QUERY_BRIGHTNESS_RANGES {
  BRIGHTNESS_LEVEL get BrightnessLevel => this.Anonymous.BrightnessLevel;
  set BrightnessLevel(BRIGHTNESS_LEVEL value) =>
      this.Anonymous.BrightnessLevel = value;

  BRIGHTNESS_NIT_RANGES get NitRanges => this.Anonymous.NitRanges;
  set NitRanges(BRIGHTNESS_NIT_RANGES value) =>
      this.Anonymous.NitRanges = value;
}

/// {@category Struct}
class PANEL_SET_BACKLIGHT_OPTIMIZATION extends Struct {
  @Int32()
  external int Level;
}

/// {@category Struct}
class PANEL_SET_BRIGHTNESS extends Struct {
  @Int32()
  external int Version;

  external _PANEL_SET_BRIGHTNESS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PANEL_SET_BRIGHTNESS__Anonymous_e__Union extends Union {
  @Uint8()
  external int Level;

  external _PANEL_SET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _PANEL_SET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int Millinits;

  @Uint32()
  external int TransitionTimeInMs;

  external PANEL_BRIGHTNESS_SENSOR_DATA SensorData;
}

extension PANEL_SET_BRIGHTNESS__Anonymous_e__Union_Extension
    on PANEL_SET_BRIGHTNESS {
  int get Millinits => this.Anonymous.Anonymous.Millinits;
  set Millinits(int value) => this.Anonymous.Anonymous.Millinits = value;

  int get TransitionTimeInMs => this.Anonymous.Anonymous.TransitionTimeInMs;
  set TransitionTimeInMs(int value) =>
      this.Anonymous.Anonymous.TransitionTimeInMs = value;

  PANEL_BRIGHTNESS_SENSOR_DATA get SensorData =>
      this.Anonymous.Anonymous.SensorData;
  set SensorData(PANEL_BRIGHTNESS_SENSOR_DATA value) =>
      this.Anonymous.Anonymous.SensorData = value;
}

extension PANEL_SET_BRIGHTNESS_Extension on PANEL_SET_BRIGHTNESS {
  int get Level => this.Anonymous.Level;
  set Level(int value) => this.Anonymous.Level = value;

  _PANEL_SET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PANEL_SET_BRIGHTNESS__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PANEL_SET_BRIGHTNESS_STATE extends Struct {
  external _PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union extends Union {
  external _PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union_Extension
    on PANEL_SET_BRIGHTNESS_STATE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension PANEL_SET_BRIGHTNESS_STATE_Extension on PANEL_SET_BRIGHTNESS_STATE {
  _PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _PANEL_SET_BRIGHTNESS_STATE__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class PATHDATA extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int count;

  external Pointer<POINTFIX> pptfx;
}

/// {@category Struct}
class PATHOBJ extends Struct {
  @Uint32()
  external int fl;

  @Uint32()
  external int cCurves;
}

/// {@category Struct}
class PERBANDINFO extends Struct {
  @Int32()
  external int bRepeatThisBand;

  external SIZE szlBand;

  @Uint32()
  external int ulHorzRes;

  @Uint32()
  external int ulVertRes;
}

/// {@category Struct}
class PHYSICAL_MONITOR extends Struct {
  @IntPtr()
  external int hPhysicalMonitor;

  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  String get szPhysicalMonitorDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szPhysicalMonitorDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPhysicalMonitorDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szPhysicalMonitorDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class POINTE extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class POINTFIX extends Struct {
  @Int32()
  external int x;

  @Int32()
  external int y;
}

/// {@category Struct}
class POINTQF extends Struct {
  @Int64()
  external int x;

  @Int64()
  external int y;
}

/// {@category Struct}
class RECTFX extends Struct {
  @Int32()
  external int xLeft;

  @Int32()
  external int yTop;

  @Int32()
  external int xRight;

  @Int32()
  external int yBottom;
}

/// {@category Struct}
class RUN extends Struct {
  @Int32()
  external int iStart;

  @Int32()
  external int iStop;
}

/// {@category Struct}
class SET_ACTIVE_COLOR_PROFILE_NAME extends Struct {
  @Array(1)
  external Array<Uint16> _ColorProfileName;

  String get ColorProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_ColorProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ColorProfileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _ColorProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class STROBJ extends Struct {
  @Uint32()
  external int cGlyphs;

  @Uint32()
  external int flAccel;

  @Uint32()
  external int ulCharInc;

  external RECTL rclBkGround;

  external Pointer<GLYPHPOS> pgp;

  external Pointer<Utf16> pwszOrg;
}

/// {@category Struct}
class SURFOBJ extends Struct {
  @IntPtr()
  external int dhsurf;

  @IntPtr()
  external int hsurf;

  @IntPtr()
  external int dhpdev;

  @IntPtr()
  external int hdev;

  external SIZE sizlBitmap;

  @Uint32()
  external int cjBits;

  external Pointer pvBits;

  external Pointer pvScan0;

  @Int32()
  external int lDelta;

  @Uint32()
  external int iUniq;

  @Uint32()
  external int iBitmapFormat;

  @Uint16()
  external int iType;

  @Uint16()
  external int fjBitmap;
}

/// {@category Struct}
class Sources extends Struct {
  @Uint32()
  external int sourceId;

  @Int32()
  external int numTargets;

  @Array(1)
  external Array<Uint32> aTargets;
}

/// {@category Struct}
class TYPE1_FONT extends Struct {
  @IntPtr()
  external int hPFM;

  @IntPtr()
  external int hPFB;

  @Uint32()
  external int ulIdentifier;
}

/// {@category Struct}
class VGA_CHAR extends Struct {
  @Uint8()
  external int Char;

  @Uint8()
  external int Attributes;
}

/// {@category Struct}
class VIDEOPARAMETERS extends Struct {
  external GUID Guid;

  @Uint32()
  external int dwOffset;

  @Uint32()
  external int dwCommand;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwMode;

  @Uint32()
  external int dwTVStandard;

  @Uint32()
  external int dwAvailableModes;

  @Uint32()
  external int dwAvailableTVStandard;

  @Uint32()
  external int dwFlickerFilter;

  @Uint32()
  external int dwOverScanX;

  @Uint32()
  external int dwOverScanY;

  @Uint32()
  external int dwMaxUnscaledX;

  @Uint32()
  external int dwMaxUnscaledY;

  @Uint32()
  external int dwPositionX;

  @Uint32()
  external int dwPositionY;

  @Uint32()
  external int dwBrightness;

  @Uint32()
  external int dwContrast;

  @Uint32()
  external int dwCPType;

  @Uint32()
  external int dwCPCommand;

  @Uint32()
  external int dwCPStandard;

  @Uint32()
  external int dwCPKey;

  @Uint32()
  external int bCP_APSTriggerBits;

  @Array(256)
  external Array<Uint8> bOEMCopyProtection;
}

/// {@category Struct}
class VIDEO_BANK_SELECT extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int Size;

  @Uint32()
  external int BankingFlags;

  @Uint32()
  external int BankingType;

  @Uint32()
  external int PlanarHCBankingType;

  @Uint32()
  external int BitmapWidthInBytes;

  @Uint32()
  external int BitmapSize;

  @Uint32()
  external int Granularity;

  @Uint32()
  external int PlanarHCGranularity;

  @Uint32()
  external int CodeOffset;

  @Uint32()
  external int PlanarHCBankCodeOffset;

  @Uint32()
  external int PlanarHCEnableCodeOffset;

  @Uint32()
  external int PlanarHCDisableCodeOffset;
}

/// {@category Struct}
class VIDEO_BRIGHTNESS_POLICY extends Struct {
  @Uint8()
  external int DefaultToBiosPolicy;

  @Uint8()
  external int LevelCount;

  @Array(1)
  external Array<_VIDEO_BRIGHTNESS_POLICY__Anonymous_e__Struct> Level;
}

/// {@category Struct}
class _VIDEO_BRIGHTNESS_POLICY__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int BatteryLevel;

  @Uint8()
  external int Brightness;
}

/// {@category Struct}
class VIDEO_CLUT extends Struct {
  @Uint16()
  external int NumEntries;

  @Uint16()
  external int FirstEntry;

  @Array(1)
  external Array<_VIDEO_CLUT__Anonymous_e__Union> LookupTable;
}

/// {@category Struct}
class _VIDEO_CLUT__Anonymous_e__Union extends Union {
  external VIDEO_CLUTDATA RgbArray;

  @Uint32()
  external int RgbLong;
}

/// {@category Struct}
class VIDEO_CLUTDATA extends Struct {
  @Uint8()
  external int Red;

  @Uint8()
  external int Green;

  @Uint8()
  external int Blue;

  @Uint8()
  external int Unused;
}

/// {@category Struct}
class VIDEO_COLOR_CAPABILITIES extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int AttributeFlags;

  @Int32()
  external int RedPhosphoreDecay;

  @Int32()
  external int GreenPhosphoreDecay;

  @Int32()
  external int BluePhosphoreDecay;

  @Int32()
  external int WhiteChromaticity_x;

  @Int32()
  external int WhiteChromaticity_y;

  @Int32()
  external int WhiteChromaticity_Y;

  @Int32()
  external int RedChromaticity_x;

  @Int32()
  external int RedChromaticity_y;

  @Int32()
  external int GreenChromaticity_x;

  @Int32()
  external int GreenChromaticity_y;

  @Int32()
  external int BlueChromaticity_x;

  @Int32()
  external int BlueChromaticity_y;

  @Int32()
  external int WhiteGamma;

  @Int32()
  external int RedGamma;

  @Int32()
  external int GreenGamma;

  @Int32()
  external int BlueGamma;
}

/// {@category Struct}
class VIDEO_COLOR_LUT_DATA extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int LutDataFormat;

  @Array(1)
  external Array<Uint8> LutData;
}

/// {@category Struct}
class VIDEO_CURSOR_ATTRIBUTES extends Struct {
  @Uint16()
  external int Width;

  @Uint16()
  external int Height;

  @Int16()
  external int Column;

  @Int16()
  external int Row;

  @Uint8()
  external int Rate;

  @Uint8()
  external int Enable;
}

/// {@category Struct}
class VIDEO_CURSOR_POSITION extends Struct {
  @Int16()
  external int Column;

  @Int16()
  external int Row;
}

/// {@category Struct}
class VIDEO_DEVICE_SESSION_STATUS extends Struct {
  @Uint32()
  external int bEnable;

  @Uint32()
  external int bSuccess;
}

/// {@category Struct}
class VIDEO_HARDWARE_STATE extends Struct {
  external Pointer<VIDEO_HARDWARE_STATE_HEADER> StateHeader;

  @Uint32()
  external int StateLength;
}

/// {@category Struct}
class VIDEO_HARDWARE_STATE_HEADER extends Struct {
  @Uint32()
  external int Length;

  @Array(48)
  external Array<Uint8> PortValue;

  @Uint32()
  external int AttribIndexDataState;

  @Uint32()
  external int BasicSequencerOffset;

  @Uint32()
  external int BasicCrtContOffset;

  @Uint32()
  external int BasicGraphContOffset;

  @Uint32()
  external int BasicAttribContOffset;

  @Uint32()
  external int BasicDacOffset;

  @Uint32()
  external int BasicLatchesOffset;

  @Uint32()
  external int ExtendedSequencerOffset;

  @Uint32()
  external int ExtendedCrtContOffset;

  @Uint32()
  external int ExtendedGraphContOffset;

  @Uint32()
  external int ExtendedAttribContOffset;

  @Uint32()
  external int ExtendedDacOffset;

  @Uint32()
  external int ExtendedValidatorStateOffset;

  @Uint32()
  external int ExtendedMiscDataOffset;

  @Uint32()
  external int PlaneLength;

  @Uint32()
  external int Plane1Offset;

  @Uint32()
  external int Plane2Offset;

  @Uint32()
  external int Plane3Offset;

  @Uint32()
  external int Plane4Offset;

  @Uint32()
  external int VGAStateFlags;

  @Uint32()
  external int DIBOffset;

  @Uint32()
  external int DIBBitsPerPixel;

  @Uint32()
  external int DIBXResolution;

  @Uint32()
  external int DIBYResolution;

  @Uint32()
  external int DIBXlatOffset;

  @Uint32()
  external int DIBXlatLength;

  @Uint32()
  external int VesaInfoOffset;

  external Pointer FrameBufferData;
}

/// {@category Struct}
class VIDEO_LOAD_FONT_INFORMATION extends Struct {
  @Uint16()
  external int WidthInPixels;

  @Uint16()
  external int HeightInPixels;

  @Uint32()
  external int FontSize;

  @Array(1)
  external Array<Uint8> Font;
}

/// {@category Struct}
class VIDEO_LUT_RGB256WORDS extends Struct {
  @Array(256)
  external Array<Uint16> Red;

  @Array(256)
  external Array<Uint16> Green;

  @Array(256)
  external Array<Uint16> Blue;
}

/// {@category Struct}
class VIDEO_MEMORY extends Struct {
  external Pointer RequestedVirtualAddress;
}

/// {@category Struct}
class VIDEO_MEMORY_INFORMATION extends Struct {
  external Pointer VideoRamBase;

  @Uint32()
  external int VideoRamLength;

  external Pointer FrameBufferBase;

  @Uint32()
  external int FrameBufferLength;
}

/// {@category Struct}
class VIDEO_MODE extends Struct {
  @Uint32()
  external int RequestedMode;
}

/// {@category Struct}
class VIDEO_MODE_INFORMATION extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int ModeIndex;

  @Uint32()
  external int VisScreenWidth;

  @Uint32()
  external int VisScreenHeight;

  @Uint32()
  external int ScreenStride;

  @Uint32()
  external int NumberOfPlanes;

  @Uint32()
  external int BitsPerPlane;

  @Uint32()
  external int Frequency;

  @Uint32()
  external int XMillimeter;

  @Uint32()
  external int YMillimeter;

  @Uint32()
  external int NumberRedBits;

  @Uint32()
  external int NumberGreenBits;

  @Uint32()
  external int NumberBlueBits;

  @Uint32()
  external int RedMask;

  @Uint32()
  external int GreenMask;

  @Uint32()
  external int BlueMask;

  @Uint32()
  external int AttributeFlags;

  @Uint32()
  external int VideoMemoryBitmapWidth;

  @Uint32()
  external int VideoMemoryBitmapHeight;

  @Uint32()
  external int DriverSpecificAttributeFlags;
}

/// {@category Struct}
class VIDEO_MONITOR_DESCRIPTOR extends Struct {
  @Uint32()
  external int DescriptorSize;

  @Array(1)
  external Array<Uint8> Descriptor;
}

/// {@category Struct}
class VIDEO_NUM_MODES extends Struct {
  @Uint32()
  external int NumModes;

  @Uint32()
  external int ModeInformationLength;
}

/// {@category Struct}
class VIDEO_PALETTE_DATA extends Struct {
  @Uint16()
  external int NumEntries;

  @Uint16()
  external int FirstEntry;

  @Array(1)
  external Array<Uint16> Colors;
}

/// {@category Struct}
class VIDEO_PERFORMANCE_COUNTER extends Struct {
  @Array(10)
  external Array<Uint64> NbOfAllocationEvicted;

  @Array(10)
  external Array<Uint64> NbOfAllocationMarked;

  @Array(10)
  external Array<Uint64> NbOfAllocationRestored;

  @Array(10)
  external Array<Uint64> KBytesEvicted;

  @Array(10)
  external Array<Uint64> KBytesMarked;

  @Array(10)
  external Array<Uint64> KBytesRestored;

  @Uint64()
  external int NbProcessCommited;

  @Uint64()
  external int NbAllocationCommited;

  @Uint64()
  external int NbAllocationMarked;

  @Uint64()
  external int KBytesAllocated;

  @Uint64()
  external int KBytesAvailable;

  @Uint64()
  external int KBytesCurMarked;

  @Uint64()
  external int Reference;

  @Uint64()
  external int Unreference;

  @Uint64()
  external int TrueReference;

  @Uint64()
  external int NbOfPageIn;

  @Uint64()
  external int KBytesPageIn;

  @Uint64()
  external int NbOfPageOut;

  @Uint64()
  external int KBytesPageOut;

  @Uint64()
  external int NbOfRotateOut;

  @Uint64()
  external int KBytesRotateOut;
}

/// {@category Struct}
class VIDEO_POINTER_ATTRIBUTES extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int WidthInBytes;

  @Uint32()
  external int Enable;

  @Int16()
  external int Column;

  @Int16()
  external int Row;

  @Array(1)
  external Array<Uint8> Pixels;
}

/// {@category Struct}
class VIDEO_POINTER_CAPABILITIES extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int MaxWidth;

  @Uint32()
  external int MaxHeight;

  @Uint32()
  external int HWPtrBitmapStart;

  @Uint32()
  external int HWPtrBitmapEnd;
}

/// {@category Struct}
class VIDEO_POINTER_POSITION extends Struct {
  @Int16()
  external int Column;

  @Int16()
  external int Row;
}

/// {@category Struct}
class VIDEO_POWER_MANAGEMENT extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int DPMSVersion;

  @Uint32()
  external int PowerState;
}

/// {@category Struct}
class VIDEO_PUBLIC_ACCESS_RANGES extends Struct {
  @Uint32()
  external int InIoSpace;

  @Uint32()
  external int MappedInIoSpace;

  external Pointer VirtualAddress;
}

/// {@category Struct}
class VIDEO_QUERY_PERFORMANCE_COUNTER extends Struct {
  @Uint32()
  external int BufferSize;

  external Pointer<VIDEO_PERFORMANCE_COUNTER> Buffer;
}

/// {@category Struct}
class VIDEO_REGISTER_VDM extends Struct {
  @Uint32()
  external int MinimumStateSize;
}

/// {@category Struct}
class VIDEO_SHARE_MEMORY extends Struct {
  @IntPtr()
  external int ProcessHandle;

  @Uint32()
  external int ViewOffset;

  @Uint32()
  external int ViewSize;

  external Pointer RequestedVirtualAddress;
}

/// {@category Struct}
class VIDEO_SHARE_MEMORY_INFORMATION extends Struct {
  @Uint32()
  external int SharedViewOffset;

  @Uint32()
  external int SharedViewSize;

  external Pointer VirtualAddress;
}

/// {@category Struct}
class VIDEO_VDM extends Struct {
  @IntPtr()
  external int ProcessHandle;
}

/// {@category Struct}
class VIDEO_WIN32K_CALLBACKS extends Struct {
  external Pointer PhysDisp;

  external Pointer<NativeFunction<PVIDEO_WIN32K_CALLOUT>> Callout;

  @Uint32()
  external int bACPI;

  @IntPtr()
  external int pPhysDeviceObject;

  @Uint32()
  external int DualviewFlags;
}

/// {@category Struct}
class VIDEO_WIN32K_CALLBACKS_PARAMS extends Struct {
  @Int32()
  external int CalloutType;

  external Pointer PhysDisp;

  @IntPtr()
  external int Param;

  @Int32()
  external int Status;

  @Uint8()
  external int LockUserSession;

  @Uint8()
  external int IsPostDevice;

  @Uint8()
  external int SurpriseRemoval;

  @Uint8()
  external int WaitForQueueReady;
}

/// {@category Struct}
class WCRUN extends Struct {
  @Uint16()
  external int wcLow;

  @Uint16()
  external int cGlyphs;

  external Pointer<Uint32> phg;
}

/// {@category Struct}
class WNDOBJ extends Struct {
  external CLIPOBJ coClient;

  external Pointer pvConsumer;

  external RECTL rclClient;

  external Pointer<SURFOBJ> psoOwner;
}

/// {@category Struct}
class XFORML extends Struct {
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

/// {@category Struct}
class XFORMOBJ extends Struct {
  @Uint32()
  external int ulReserved;
}

/// {@category Struct}
class XLATEOBJ extends Struct {
  @Uint32()
  external int iUniq;

  @Uint32()
  external int flXlate;

  @Uint16()
  external int iSrcType;

  @Uint16()
  external int iDstType;

  @Uint32()
  external int cEntries;

  external Pointer<Uint32> pulXlate;
}
