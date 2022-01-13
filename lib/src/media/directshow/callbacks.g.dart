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
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

typedef AMGETERRORTEXTPROCW = Int32 Function(
  Int32 param0,
  Pointer<Utf16> param1,
  Uint32 param2,
);
typedef PDXVA2SW_CREATEVIDEOPROCESSDEVICE = Int32 Function(
  Pointer<COMObject> pD3DD9,
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 RenderTargetFormat,
  Uint32 MaxSubStreams,
  Pointer<IntPtr> phDevice,
);
typedef PDXVA2SW_DESTROYVIDEOPROCESSDEVICE = Int32 Function(
  IntPtr hDevice,
);
typedef PDXVA2SW_GETFILTERPROPERTYRANGE = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 RenderTargetFormat,
  Uint32 FilterSetting,
  Pointer<DXVA2_ValueRange> pRange,
);
typedef PDXVA2SW_GETPROCAMPRANGE = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 RenderTargetFormat,
  Uint32 ProcAmpCap,
  Pointer<DXVA2_ValueRange> pRange,
);
typedef PDXVA2SW_GETVIDEOPROCESSORCAPS = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 RenderTargetFormat,
  Pointer<DXVA2_VideoProcessorCaps> pCaps,
);
typedef PDXVA2SW_GETVIDEOPROCESSORRENDERTARGETCOUNT = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Pointer<Uint32> pCount,
);
typedef PDXVA2SW_GETVIDEOPROCESSORRENDERTARGETS = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 Count,
  Pointer<Uint32> pFormats,
);
typedef PDXVA2SW_GETVIDEOPROCESSORSUBSTREAMFORMATCOUNT = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 RenderTargetFormat,
  Pointer<Uint32> pCount,
);
typedef PDXVA2SW_GETVIDEOPROCESSORSUBSTREAMFORMATS = Int32 Function(
  Pointer<DXVA2_VideoDesc> pVideoDesc,
  Uint32 RenderTargetFormat,
  Uint32 Count,
  Pointer<Uint32> pFormats,
);
typedef PDXVA2SW_VIDEOPROCESSBEGINFRAME = Int32 Function(
  IntPtr hDevice,
);
typedef PDXVA2SW_VIDEOPROCESSBLT = Int32 Function(
  IntPtr hDevice,
  Pointer<DXVA2_VIDEOPROCESSBLT> pBlt,
);
typedef PDXVA2SW_VIDEOPROCESSENDFRAME = Int32 Function(
  IntPtr hDevice,
  Pointer<IntPtr> pHandleComplete,
);
typedef PDXVA2SW_VIDEOPROCESSSETRENDERTARGET = Int32 Function(
  IntPtr hDevice,
  Pointer<COMObject> pRenderTarget,
);
