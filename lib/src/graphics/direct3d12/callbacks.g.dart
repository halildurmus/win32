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
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d/ID3DBlob.dart';

typedef D3D12MessageFunc = Void Function(
  Int32 Category,
  Int32 Severity,
  Int32 ID,
  Pointer<Utf8> pDescription,
  Pointer pContext,
);
typedef PFN_D3D12_CREATE_DEVICE = Int32 Function(
  Pointer<COMObject> param0,
  Int32 param1,
  Pointer<GUID> param2,
  Pointer<Pointer> param3,
);
typedef PFN_D3D12_CREATE_ROOT_SIGNATURE_DESERIALIZER = Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
);
typedef PFN_D3D12_CREATE_VERSIONED_ROOT_SIGNATURE_DESERIALIZER = Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
);
typedef PFN_D3D12_GET_DEBUG_INTERFACE = Int32 Function(
  Pointer<GUID> param0,
  Pointer<Pointer> param1,
);
typedef PFN_D3D12_GET_INTERFACE = Int32 Function(
  Pointer<GUID> param0,
  Pointer<GUID> param1,
  Pointer<Pointer> param2,
);
typedef PFN_D3D12_SERIALIZE_ROOT_SIGNATURE = Int32 Function(
  Pointer<D3D12_ROOT_SIGNATURE_DESC> pRootSignature,
  Int32 Version,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
);
typedef PFN_D3D12_SERIALIZE_VERSIONED_ROOT_SIGNATURE = Int32 Function(
  Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC> pRootSignature,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
);
