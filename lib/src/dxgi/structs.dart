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

class DXGI_RATIONAL extends Struct {
  @Uint32() external int Numerator;
  @Uint32() external int Denominator;
}

class DXGI_SAMPLE_DESC extends Struct {
  @Uint32() external int Count;
  @Uint32() external int Quality;
}

class DXGI_RGB extends Struct {
  @Float() external double Red;
  @Float() external double Green;
  @Float() external double Blue;
}

class DXGI_GAMMA_CONTROL extends Struct {
  external DXGI_RGB Scale;
  external DXGI_RGB Offset;
  @Array(132)
  external Array<DXGI_RGB> GammaCurve;
}

class DXGI_GAMMA_CONTROL_CAPABILITIES extends Struct {
  @Int32() external int ScaleAndOffsetSupported;
  @Float() external double MaxConvertedValue;
  @Float() external double MinConvertedValue;
  @Uint32() external int NumGammaControlPoints;
  @Array(132)
  external Array<Float> ControlPointPositions;
}

class DXGI_MODE_DESC extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  external DXGI_RATIONAL RefreshRate;
  @Uint32() external int Format;
  @Uint32() external int ScanlineOrdering;
  @Uint32() external int Scaling;
}

class DXGI_JPEG_DC_HUFFMAN_TABLE extends Struct {
  @Array(12)
  external Array<Uint8> CodeCounts;
  @Array(12)
  external Array<Uint8> CodeValues;
}

class DXGI_JPEG_AC_HUFFMAN_TABLE extends Struct {
  @Array(16)
  external Array<Uint8> CodeCounts;
  @Array(128)
  external Array<Uint8> CodeValues;
}

class DXGI_JPEG_QUANTIZATION_TABLE extends Struct {
  @Array(64)
  external Array<Uint8> Elements;
}

class DXGI_FRAME_STATISTICS extends Struct {
  @Uint32() external int PresentCount;
  @Uint32() external int PresentRefreshCount;
  @Uint32() external int SyncRefreshCount;
  @Int64() external int SyncQPCTime;
  @Int64() external int SyncGPUTime;
}

class DXGI_MAPPED_RECT extends Struct {
  @Int32() external int Pitch;
  external Pointer<Uint8> pBits;
}

class DXGI_ADAPTER_DESC extends Struct {
  @Array(128)
  external Array<Uint16> Description;
  @Uint32() external int VendorId;
  @Uint32() external int DeviceId;
  @Uint32() external int SubSysId;
  @Uint32() external int Revision;
  @IntPtr() external int DedicatedVideoMemory;
  @IntPtr() external int DedicatedSystemMemory;
  @IntPtr() external int SharedSystemMemory;
  external LUID AdapterLuid;
}

class DXGI_OUTPUT_DESC extends Struct {
  @Array(32)
  external Array<Uint16> DeviceName;
  external RECT DesktopCoordinates;
  @Int32() external int AttachedToDesktop;
  @Uint32() external int Rotation;
  @IntPtr() external int Monitor;
}

class DXGI_SHARED_RESOURCE extends Struct {
  @IntPtr() external int Handle;
}

class DXGI_SURFACE_DESC extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Format;
  external DXGI_SAMPLE_DESC SampleDesc;
}

class DXGI_SWAP_CHAIN_DESC extends Struct {
  external DXGI_MODE_DESC BufferDesc;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int BufferUsage;
  @Uint32() external int BufferCount;
  @IntPtr() external int OutputWindow;
  @Int32() external int Windowed;
  @Uint32() external int SwapEffect;
  @Uint32() external int Flags;
}

class DXGI_ADAPTER_DESC1 extends Struct {
  @Array(128)
  external Array<Uint16> Description;
  @Uint32() external int VendorId;
  @Uint32() external int DeviceId;
  @Uint32() external int SubSysId;
  @Uint32() external int Revision;
  @IntPtr() external int DedicatedVideoMemory;
  @IntPtr() external int DedicatedSystemMemory;
  @IntPtr() external int SharedSystemMemory;
  external LUID AdapterLuid;
  @Uint32() external int Flags;
}

class DXGI_DISPLAY_COLOR_SPACE extends Struct {
  @Array(16)
  external Array<Float> PrimaryCoordinates;
  @Array(32)
  external Array<Float> WhitePoints;
}

class DXGI_OUTDUPL_MOVE_RECT extends Struct {
  external POINT SourcePoint;
  external RECT DestinationRect;
}

class DXGI_OUTDUPL_DESC extends Struct {
  external DXGI_MODE_DESC ModeDesc;
  @Uint32() external int Rotation;
  @Int32() external int DesktopImageInSystemMemory;
}

class DXGI_OUTDUPL_POINTER_POSITION extends Struct {
  external POINT Position;
  @Int32() external int Visible;
}

class DXGI_OUTDUPL_POINTER_SHAPE_INFO extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Pitch;
  external POINT HotSpot;
}

class DXGI_OUTDUPL_FRAME_INFO extends Struct {
  @Int64() external int LastPresentTime;
  @Int64() external int LastMouseUpdateTime;
  @Uint32() external int AccumulatedFrames;
  @Int32() external int RectsCoalesced;
  @Int32() external int ProtectedContentMaskedOut;
  external DXGI_OUTDUPL_POINTER_POSITION PointerPosition;
  @Uint32() external int TotalMetadataBufferSize;
  @Uint32() external int PointerShapeBufferSize;
}

class DXGI_MODE_DESC1 extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  external DXGI_RATIONAL RefreshRate;
  @Uint32() external int Format;
  @Uint32() external int ScanlineOrdering;
  @Uint32() external int Scaling;
  @Int32() external int Stereo;
}

class DXGI_SWAP_CHAIN_DESC1 extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Format;
  @Int32() external int Stereo;
  external DXGI_SAMPLE_DESC SampleDesc;
  @Uint32() external int BufferUsage;
  @Uint32() external int BufferCount;
  @Uint32() external int Scaling;
  @Uint32() external int SwapEffect;
  @Uint32() external int AlphaMode;
  @Uint32() external int Flags;
}

class DXGI_SWAP_CHAIN_FULLSCREEN_DESC extends Struct {
  external DXGI_RATIONAL RefreshRate;
  @Uint32() external int ScanlineOrdering;
  @Uint32() external int Scaling;
  @Int32() external int Windowed;
}

class DXGI_PRESENT_PARAMETERS extends Struct {
  @Uint32() external int DirtyRectsCount;
  external Pointer<RECT> pDirtyRects;
  external Pointer<RECT> pScrollRect;
  external Pointer<POINT> pScrollOffset;
}

class DXGI_ADAPTER_DESC2 extends Struct {
  @Array(128)
  external Array<Uint16> Description;
  @Uint32() external int VendorId;
  @Uint32() external int DeviceId;
  @Uint32() external int SubSysId;
  @Uint32() external int Revision;
  @IntPtr() external int DedicatedVideoMemory;
  @IntPtr() external int DedicatedSystemMemory;
  @IntPtr() external int SharedSystemMemory;
  external LUID AdapterLuid;
  @Uint32() external int Flags;
  @Uint32() external int GraphicsPreemptionGranularity;
  @Uint32() external int ComputePreemptionGranularity;
}

class DXGI_MATRIX_3X2_F extends Struct {
  @Float() external double _11;
  @Float() external double _12;
  @Float() external double _21;
  @Float() external double _22;
  @Float() external double _31;
  @Float() external double _32;
}

class DXGI_DECODE_SWAP_CHAIN_DESC extends Struct {
  @Uint32() external int Flags;
}

class DXGI_FRAME_STATISTICS_MEDIA extends Struct {
  @Uint32() external int PresentCount;
  @Uint32() external int PresentRefreshCount;
  @Uint32() external int SyncRefreshCount;
  @Int64() external int SyncQPCTime;
  @Int64() external int SyncGPUTime;
  @Uint32() external int CompositionMode;
  @Uint32() external int ApprovedPresentDuration;
}

class DXGI_QUERY_VIDEO_MEMORY_INFO extends Struct {
  @Uint64() external int Budget;
  @Uint64() external int CurrentUsage;
  @Uint64() external int AvailableForReservation;
  @Uint64() external int CurrentReservation;
}

class DXGI_HDR_METADATA_HDR10 extends Struct {
  @Array(2)
  external Array<Uint16> RedPrimary;
  @Array(2)
  external Array<Uint16> GreenPrimary;
  @Array(2)
  external Array<Uint16> BluePrimary;
  @Array(2)
  external Array<Uint16> WhitePoint;
  @Uint32() external int MaxMasteringLuminance;
  @Uint32() external int MinMasteringLuminance;
  @Uint16() external int MaxContentLightLevel;
  @Uint16() external int MaxFrameAverageLightLevel;
}

class DXGI_HDR_METADATA_HDR10PLUS extends Struct {
  @Array(72)
  external Array<Uint8> Data;
}

class DXGI_ADAPTER_DESC3 extends Struct {
  @Array(128)
  external Array<Uint16> Description;
  @Uint32() external int VendorId;
  @Uint32() external int DeviceId;
  @Uint32() external int SubSysId;
  @Uint32() external int Revision;
  @IntPtr() external int DedicatedVideoMemory;
  @IntPtr() external int DedicatedSystemMemory;
  @IntPtr() external int SharedSystemMemory;
  external LUID AdapterLuid;
  @Uint32() external int Flags;
  @Uint32() external int GraphicsPreemptionGranularity;
  @Uint32() external int ComputePreemptionGranularity;
}

class DXGI_OUTPUT_DESC1 extends Struct {
  @Array(32)
  external Array<Uint16> DeviceName;
  external RECT DesktopCoordinates;
  @Int32() external int AttachedToDesktop;
  @Uint32() external int Rotation;
  @IntPtr() external int Monitor;
  @Uint32() external int BitsPerColor;
  @Uint32() external int ColorSpace;
  @Array(2)
  external Array<Float> RedPrimary;
  @Array(2)
  external Array<Float> GreenPrimary;
  @Array(2)
  external Array<Float> BluePrimary;
  @Array(2)
  external Array<Float> WhitePoint;
  @Float() external double MinLuminance;
  @Float() external double MaxLuminance;
  @Float() external double MaxFullFrameLuminance;
}

class DXGI_INFO_QUEUE_MESSAGE extends Struct {
  external GUID Producer;
  @Uint32() external int Category;
  @Uint32() external int Severity;
  @Int32() external int ID;
  external Pointer<Uint8> pDescription;
  @IntPtr() external int DescriptionByteLength;
}

class DXGI_INFO_QUEUE_FILTER_DESC extends Struct {
  @Uint32() external int NumCategories;
  external Pointer<Uint32> pCategoryList;
  @Uint32() external int NumSeverities;
  external Pointer<Uint32> pSeverityList;
  @Uint32() external int NumIDs;
  external Pointer<Int32> pIDList;
}

class DXGI_INFO_QUEUE_FILTER extends Struct {
  external DXGI_INFO_QUEUE_FILTER_DESC AllowList;
  external DXGI_INFO_QUEUE_FILTER_DESC DenyList;
}

class DXGI_RGBA extends Struct {
  @Float() external double r;
  @Float() external double g;
  @Float() external double b;
  @Float() external double a;
}

