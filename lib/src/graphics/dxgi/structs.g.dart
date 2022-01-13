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
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// {@category Struct}
class DXGI_ADAPTER_DESC extends Struct {
  @Array(128)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int VendorId;

  @Uint32()
  external int DeviceId;

  @Uint32()
  external int SubSysId;

  @Uint32()
  external int Revision;

  @IntPtr()
  external int DedicatedVideoMemory;

  @IntPtr()
  external int DedicatedSystemMemory;

  @IntPtr()
  external int SharedSystemMemory;

  external LUID AdapterLuid;
}

/// {@category Struct}
class DXGI_ADAPTER_DESC1 extends Struct {
  @Array(128)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int VendorId;

  @Uint32()
  external int DeviceId;

  @Uint32()
  external int SubSysId;

  @Uint32()
  external int Revision;

  @IntPtr()
  external int DedicatedVideoMemory;

  @IntPtr()
  external int DedicatedSystemMemory;

  @IntPtr()
  external int SharedSystemMemory;

  external LUID AdapterLuid;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class DXGI_ADAPTER_DESC2 extends Struct {
  @Array(128)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int VendorId;

  @Uint32()
  external int DeviceId;

  @Uint32()
  external int SubSysId;

  @Uint32()
  external int Revision;

  @IntPtr()
  external int DedicatedVideoMemory;

  @IntPtr()
  external int DedicatedSystemMemory;

  @IntPtr()
  external int SharedSystemMemory;

  external LUID AdapterLuid;

  @Uint32()
  external int Flags;

  @Int32()
  external int GraphicsPreemptionGranularity;

  @Int32()
  external int ComputePreemptionGranularity;
}

/// {@category Struct}
class DXGI_ADAPTER_DESC3 extends Struct {
  @Array(128)
  external Array<Uint16> _Description;

  String get Description {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_Description[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Description(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _Description[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int VendorId;

  @Uint32()
  external int DeviceId;

  @Uint32()
  external int SubSysId;

  @Uint32()
  external int Revision;

  @IntPtr()
  external int DedicatedVideoMemory;

  @IntPtr()
  external int DedicatedSystemMemory;

  @IntPtr()
  external int SharedSystemMemory;

  external LUID AdapterLuid;

  @Uint32()
  external int Flags;

  @Int32()
  external int GraphicsPreemptionGranularity;

  @Int32()
  external int ComputePreemptionGranularity;
}

/// {@category Struct}
class DXGI_DECODE_SWAP_CHAIN_DESC extends Struct {
  @Uint32()
  external int Flags;
}

/// {@category Struct}
class DXGI_DISPLAY_COLOR_SPACE extends Struct {
  @Array(16)
  external Array<Float> PrimaryCoordinates;

  @Array(32)
  external Array<Float> WhitePoints;
}

/// {@category Struct}
class DXGI_FRAME_STATISTICS extends Struct {
  @Uint32()
  external int PresentCount;

  @Uint32()
  external int PresentRefreshCount;

  @Uint32()
  external int SyncRefreshCount;

  @Int64()
  external int SyncQPCTime;

  @Int64()
  external int SyncGPUTime;
}

/// {@category Struct}
class DXGI_FRAME_STATISTICS_MEDIA extends Struct {
  @Uint32()
  external int PresentCount;

  @Uint32()
  external int PresentRefreshCount;

  @Uint32()
  external int SyncRefreshCount;

  @Int64()
  external int SyncQPCTime;

  @Int64()
  external int SyncGPUTime;

  @Int32()
  external int CompositionMode;

  @Uint32()
  external int ApprovedPresentDuration;
}

/// {@category Struct}
class DXGI_HDR_METADATA_HDR10 extends Struct {
  @Array(2)
  external Array<Uint16> RedPrimary;

  @Array(2)
  external Array<Uint16> GreenPrimary;

  @Array(2)
  external Array<Uint16> BluePrimary;

  @Array(2)
  external Array<Uint16> WhitePoint;

  @Uint32()
  external int MaxMasteringLuminance;

  @Uint32()
  external int MinMasteringLuminance;

  @Uint16()
  external int MaxContentLightLevel;

  @Uint16()
  external int MaxFrameAverageLightLevel;
}

/// {@category Struct}
class DXGI_HDR_METADATA_HDR10PLUS extends Struct {
  @Array(72)
  external Array<Uint8> Data;
}

/// {@category Struct}
class DXGI_INFO_QUEUE_FILTER extends Struct {
  external DXGI_INFO_QUEUE_FILTER_DESC AllowList;

  external DXGI_INFO_QUEUE_FILTER_DESC DenyList;
}

/// {@category Struct}
class DXGI_INFO_QUEUE_FILTER_DESC extends Struct {
  @Uint32()
  external int NumCategories;

  external Pointer<Int32> pCategoryList;

  @Uint32()
  external int NumSeverities;

  external Pointer<Int32> pSeverityList;

  @Uint32()
  external int NumIDs;

  external Pointer<Int32> pIDList;
}

/// {@category Struct}
class DXGI_INFO_QUEUE_MESSAGE extends Struct {
  external GUID Producer;

  @Int32()
  external int Category;

  @Int32()
  external int Severity;

  @Int32()
  external int ID;

  external Pointer<Uint8> pDescription;

  @IntPtr()
  external int DescriptionByteLength;
}

/// {@category Struct}
class DXGI_MAPPED_RECT extends Struct {
  @Int32()
  external int Pitch;

  external Pointer<Uint8> pBits;
}

/// {@category Struct}
class DXGI_MATRIX_3X2_F extends Struct {
  @Float()
  external double x11;

  @Float()
  external double x12;

  @Float()
  external double x21;

  @Float()
  external double x22;

  @Float()
  external double x31;

  @Float()
  external double x32;
}

/// {@category Struct}
class DXGI_MODE_DESC1 extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  external DXGI_RATIONAL RefreshRate;

  @Uint32()
  external int Format;

  @Int32()
  external int ScanlineOrdering;

  @Int32()
  external int Scaling;

  @Int32()
  external int Stereo;
}

/// {@category Struct}
class DXGI_OUTDUPL_DESC extends Struct {
  external DXGI_MODE_DESC ModeDesc;

  @Int32()
  external int Rotation;

  @Int32()
  external int DesktopImageInSystemMemory;
}

/// {@category Struct}
class DXGI_OUTDUPL_FRAME_INFO extends Struct {
  @Int64()
  external int LastPresentTime;

  @Int64()
  external int LastMouseUpdateTime;

  @Uint32()
  external int AccumulatedFrames;

  @Int32()
  external int RectsCoalesced;

  @Int32()
  external int ProtectedContentMaskedOut;

  external DXGI_OUTDUPL_POINTER_POSITION PointerPosition;

  @Uint32()
  external int TotalMetadataBufferSize;

  @Uint32()
  external int PointerShapeBufferSize;
}

/// {@category Struct}
class DXGI_OUTDUPL_MOVE_RECT extends Struct {
  external POINT SourcePoint;

  external RECT DestinationRect;
}

/// {@category Struct}
class DXGI_OUTDUPL_POINTER_POSITION extends Struct {
  external POINT Position;

  @Int32()
  external int Visible;
}

/// {@category Struct}
class DXGI_OUTDUPL_POINTER_SHAPE_INFO extends Struct {
  @Uint32()
  external int Type;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Pitch;

  external POINT HotSpot;
}

/// {@category Struct}
class DXGI_OUTPUT_DESC extends Struct {
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

  external RECT DesktopCoordinates;

  @Int32()
  external int AttachedToDesktop;

  @Int32()
  external int Rotation;

  @IntPtr()
  external int Monitor;
}

/// {@category Struct}
class DXGI_OUTPUT_DESC1 extends Struct {
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

  external RECT DesktopCoordinates;

  @Int32()
  external int AttachedToDesktop;

  @Int32()
  external int Rotation;

  @IntPtr()
  external int Monitor;

  @Uint32()
  external int BitsPerColor;

  @Int32()
  external int ColorSpace;

  @Array(2)
  external Array<Float> RedPrimary;

  @Array(2)
  external Array<Float> GreenPrimary;

  @Array(2)
  external Array<Float> BluePrimary;

  @Array(2)
  external Array<Float> WhitePoint;

  @Float()
  external double MinLuminance;

  @Float()
  external double MaxLuminance;

  @Float()
  external double MaxFullFrameLuminance;
}

/// {@category Struct}
class DXGI_PRESENT_PARAMETERS extends Struct {
  @Uint32()
  external int DirtyRectsCount;

  external Pointer<RECT> pDirtyRects;

  external Pointer<RECT> pScrollRect;

  external Pointer<POINT> pScrollOffset;
}

/// {@category Struct}
class DXGI_QUERY_VIDEO_MEMORY_INFO extends Struct {
  @Uint64()
  external int Budget;

  @Uint64()
  external int CurrentUsage;

  @Uint64()
  external int AvailableForReservation;

  @Uint64()
  external int CurrentReservation;
}

/// {@category Struct}
class DXGI_RGBA extends Struct {
  @Float()
  external double r;

  @Float()
  external double g;

  @Float()
  external double b;

  @Float()
  external double a;
}

/// {@category Struct}
class DXGI_SHARED_RESOURCE extends Struct {
  @IntPtr()
  external int $Handle;
}

/// {@category Struct}
class DXGI_SURFACE_DESC extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Format;

  external DXGI_SAMPLE_DESC SampleDesc;
}

/// {@category Struct}
class DXGI_SWAP_CHAIN_DESC extends Struct {
  external DXGI_MODE_DESC BufferDesc;

  external DXGI_SAMPLE_DESC SampleDesc;

  @Uint32()
  external int BufferUsage;

  @Uint32()
  external int BufferCount;

  @IntPtr()
  external int OutputWindow;

  @Int32()
  external int Windowed;

  @Int32()
  external int SwapEffect;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class DXGI_SWAP_CHAIN_DESC1 extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Format;

  @Int32()
  external int Stereo;

  external DXGI_SAMPLE_DESC SampleDesc;

  @Uint32()
  external int BufferUsage;

  @Uint32()
  external int BufferCount;

  @Int32()
  external int Scaling;

  @Int32()
  external int SwapEffect;

  @Uint32()
  external int AlphaMode;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class DXGI_SWAP_CHAIN_FULLSCREEN_DESC extends Struct {
  external DXGI_RATIONAL RefreshRate;

  @Int32()
  external int ScanlineOrdering;

  @Int32()
  external int Scaling;

  @Int32()
  external int Windowed;
}
