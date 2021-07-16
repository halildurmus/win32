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
import '../../system/console/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../system/systemservices/structs.g.dart';
import '../../devices/display/callbacks.g.dart';

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
class COLORSPACE_TRANSFORM extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int Data;
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
  @Uint32()
  external int DataType;
  @Uint32()
  external int Anonymous;
  @Float()
  external double NumericRangeMin;
  @Float()
  external double NumericRangeMax;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_MATRIX_CAP extends Struct {
  @Uint32()
  external int Anonymous;
  external COLORSPACE_TRANSFORM_DATA_CAP DataCap;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_MATRIX_V2 extends Struct {
  @Uint32()
  external int StageControlLookupTable1DDegamma;
  @Array(4096)
  external Array<GAMMA_RAMP_RGB> LookupTable1DDegamma;
  @Uint32()
  external int StageControlColorMatrix3x3;
  @Array(9)
  external Array<Float> ColorMatrix3x3;
  @Uint32()
  external int StageControlLookupTable1DRegamma;
  @Array(4096)
  external Array<GAMMA_RAMP_RGB> LookupTable1DRegamma;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_SET_INPUT extends Struct {
  @Uint32()
  external int OutputWireColorSpaceExpected;
  external OUTPUT_WIRE_FORMAT OutputWireFormatExpected;
  external COLORSPACE_TRANSFORM ColorSpaceTransform;
}

/// {@category Struct}
class COLORSPACE_TRANSFORM_TARGET_CAPS extends Struct {
  @Uint32()
  external int Version;
  external COLORSPACE_TRANSFORM_1DLUT_CAP LookupTable1DDegammaCap;
  external COLORSPACE_TRANSFORM_MATRIX_CAP ColorMatrix3x3Cap;
  external COLORSPACE_TRANSFORM_1DLUT_CAP LookupTable1DRegammaCap;
}

/// {@category Struct}
class DD_GETHEAPALIGNMENTDATA extends Struct {
  @IntPtr()
  external int dwInstance;
  @Uint32()
  external int dwHeap;
  @Int32()
  external int ddRVal;
  external Pointer GetHeapAlignment;
  external HEAPALIGNMENT Alignment;
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
class ENG_EVENT extends Struct {
  external Pointer pKEvent;
  @Uint32()
  external int fFlags;
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
class HEAPALIGNMENT extends Struct {
  @Uint32()
  external int dwSize;
  external DDSCAPS ddsCaps;
  @Uint32()
  external int dwReserved;
  external SURFACEALIGNMENT ExecuteBuffer;
  external SURFACEALIGNMENT Overlay;
  external SURFACEALIGNMENT Texture;
  external SURFACEALIGNMENT ZBuffer;
  external SURFACEALIGNMENT AlphaBuffer;
  external SURFACEALIGNMENT Offscreen;
  external SURFACEALIGNMENT FlipTarget;
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
  @Uint32()
  external int Anonymous1;
  @Uint32()
  external int Anonymous2;
  @Uint8()
  external int EccFiller;
  @Array(8)
  external Array<Uint8> Payload;
}

/// {@category Struct}
class MIPI_DSI_RESET extends Struct {
  @Uint32()
  external int Flags;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class MIPI_DSI_TRANSMISSION extends Struct {
  @Uint32()
  external int TotalBufferSize;
  @Uint8()
  external int PacketCount;
  @Uint8()
  external int FailedPacket;
  @Uint32()
  external int Anonymous;
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
class OUTPUT_WIRE_FORMAT extends Struct {
  @Uint32()
  external int ColorEncoding;
  @Uint32()
  external int BitsPerPixel;
}

/// {@category Struct}
class PANEL_BRIGHTNESS_SENSOR_DATA extends Struct {
  @Uint32()
  external int Anonymous;
  @Float()
  external double AlsReading;
  external CHROMATICITY_COORDINATE ChromaticityCoordinate;
  @Float()
  external double ColorTemperature;
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
  @Uint32()
  external int Version;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class PANEL_QUERY_BRIGHTNESS_CAPS extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class PANEL_QUERY_BRIGHTNESS_RANGES extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class PANEL_SET_BACKLIGHT_OPTIMIZATION extends Struct {
  @Uint32()
  external int Level;
}

/// {@category Struct}
class PANEL_SET_BRIGHTNESS extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class PANEL_SET_BRIGHTNESS_STATE extends Struct {
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
@Packed(1)
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
class SURFACEALIGNMENT extends Struct {
  @Uint32()
  external int Anonymous;
}

/// {@category Struct}
class VGA_CHAR extends Struct {
  @Uint8()
  external int Char;
  @Uint8()
  external int Attributes;
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
  external Array<Uint32> Level;
}

/// {@category Struct}
class VIDEO_CLUT extends Struct {
  @Uint16()
  external int NumEntries;
  @Uint16()
  external int FirstEntry;
  @Array(1)
  external Array<Uint32> LookupTable;
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
  @Uint32()
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
class VMEMHEAP extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int stride;
  external Pointer freeList;
  external Pointer allocList;
  @Uint32()
  external int dwTotalSize;
  @IntPtr()
  external int fpGARTLin;
  @IntPtr()
  external int fpGARTDev;
  @Uint32()
  external int dwCommitedSize;
  @Uint32()
  external int dwCoalesceCount;
  external HEAPALIGNMENT Alignment;
  external DDSCAPSEX ddsCapsEx;
  external DDSCAPSEX ddsCapsExAlt;
  @Int64()
  external int liPhysAGPBase;
  @IntPtr()
  external int hdevAGP;
  external Pointer pvPhysRsrv;
  external Pointer<Uint8> pAgpCommitMask;
  @Uint32()
  external int dwAgpCommitMaskSize;
}

/// {@category Struct}
class VMEML extends Struct {
  external Pointer<VMEML> next;
  @IntPtr()
  external int ptr;
  @Uint32()
  external int size;
  @Int32()
  external int bDiscardable;
}

/// {@category Struct}
class VMEMR extends Struct {
  external Pointer<VMEMR> next;
  external Pointer<VMEMR> prev;
  external Pointer<VMEMR> pUp;
  external Pointer<VMEMR> pDown;
  external Pointer<VMEMR> pLeft;
  external Pointer<VMEMR> pRight;
  @IntPtr()
  external int ptr;
  @Uint32()
  external int size;
  @Uint32()
  external int x;
  @Uint32()
  external int y;
  @Uint32()
  external int cx;
  @Uint32()
  external int cy;
  @Uint32()
  external int flags;
  @IntPtr()
  external int pBits;
  @Int32()
  external int bDiscardable;
}
