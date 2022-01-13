// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/IDirect3DDevice9Ex.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../media/mediafoundation/callbacks.g.dart';
import '../../media/mediafoundation/IDXVAHD_Device.dart';

typedef MFPERIODICCALLBACK = Void Function(
  Pointer<COMObject> pContext,
);
typedef PDXVAHDSW_CreateDevice = Int32 Function(
  Pointer<COMObject> pD3DDevice,
  Pointer<IntPtr> phDevice,
);
typedef PDXVAHDSW_CreateVideoProcessor = Int32 Function(
  IntPtr hDevice,
  Pointer<GUID> pVPGuid,
  Pointer<IntPtr> phVideoProcessor,
);
typedef PDXVAHDSW_DestroyDevice = Int32 Function(
  IntPtr hDevice,
);
typedef PDXVAHDSW_DestroyVideoProcessor = Int32 Function(
  IntPtr hVideoProcessor,
);
typedef PDXVAHDSW_GetVideoProcessBltStatePrivate = Int32 Function(
  IntPtr hVideoProcessor,
  Pointer<DXVAHD_BLT_STATE_PRIVATE_DATA> pData,
);
typedef PDXVAHDSW_GetVideoProcessStreamStatePrivate = Int32 Function(
  IntPtr hVideoProcessor,
  Uint32 StreamNumber,
  Pointer<DXVAHD_STREAM_STATE_PRIVATE_DATA> pData,
);
typedef PDXVAHDSW_GetVideoProcessorCaps = Int32 Function(
  IntPtr hDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  Int32 Usage,
  Uint32 Count,
  Pointer<DXVAHD_VPCAPS> pCaps,
);
typedef PDXVAHDSW_GetVideoProcessorCustomRates = Int32 Function(
  IntPtr hDevice,
  Pointer<GUID> pVPGuid,
  Uint32 Count,
  Pointer<DXVAHD_CUSTOM_RATE_DATA> pRates,
);
typedef PDXVAHDSW_GetVideoProcessorDeviceCaps = Int32 Function(
  IntPtr hDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  Int32 Usage,
  Pointer<DXVAHD_VPDEVCAPS> pCaps,
);
typedef PDXVAHDSW_GetVideoProcessorFilterRange = Int32 Function(
  IntPtr hDevice,
  Int32 Filter,
  Pointer<DXVAHD_FILTER_RANGE_DATA> pRange,
);
typedef PDXVAHDSW_GetVideoProcessorInputFormats = Int32 Function(
  IntPtr hDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  Int32 Usage,
  Uint32 Count,
  Pointer<Uint32> pFormats,
);
typedef PDXVAHDSW_GetVideoProcessorOutputFormats = Int32 Function(
  IntPtr hDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  Int32 Usage,
  Uint32 Count,
  Pointer<Uint32> pFormats,
);
typedef PDXVAHDSW_Plugin = Int32 Function(
  Uint32 Size,
  Pointer pCallbacks,
);
typedef PDXVAHDSW_ProposeVideoPrivateFormat = Int32 Function(
  IntPtr hDevice,
  Pointer<Uint32> pFormat,
);
typedef PDXVAHDSW_SetVideoProcessBltState = Int32 Function(
  IntPtr hVideoProcessor,
  Int32 State,
  Uint32 DataSize,
  Pointer pData,
);
typedef PDXVAHDSW_SetVideoProcessStreamState = Int32 Function(
  IntPtr hVideoProcessor,
  Uint32 StreamNumber,
  Int32 State,
  Uint32 DataSize,
  Pointer pData,
);
typedef PDXVAHDSW_VideoProcessBltHD = Int32 Function(
  IntPtr hVideoProcessor,
  Pointer<COMObject> pOutputSurface,
  Uint32 OutputFrame,
  Uint32 StreamCount,
  Pointer<DXVAHD_STREAM_DATA> pStreams,
);
typedef PDXVAHD_CreateDevice = Int32 Function(
  Pointer<COMObject> pD3DDevice,
  Pointer<DXVAHD_CONTENT_DESC> pContentDesc,
  Int32 Usage,
  Pointer<NativeFunction<PDXVAHDSW_Plugin>> pPlugin,
  Pointer<Pointer<COMObject>> ppDevice,
);
