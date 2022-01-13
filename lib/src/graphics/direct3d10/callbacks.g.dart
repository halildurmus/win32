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
import '../../graphics/dxgi/IDXGIAdapter.dart';
import '../../graphics/direct3d10/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d10/ID3D10Device1.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGISwapChain.dart';

typedef PFN_D3D10_CREATE_DEVICE1 = Int32 Function(
  Pointer<COMObject> param0,
  Int32 param1,
  IntPtr param2,
  Uint32 param3,
  Int32 param4,
  Uint32 param5,
  Pointer<Pointer<COMObject>> param6,
);
typedef PFN_D3D10_CREATE_DEVICE_AND_SWAP_CHAIN1 = Int32 Function(
  Pointer<COMObject> param0,
  Int32 param1,
  IntPtr param2,
  Uint32 param3,
  Int32 param4,
  Uint32 param5,
  Pointer<DXGI_SWAP_CHAIN_DESC> param6,
  Pointer<Pointer<COMObject>> param7,
  Pointer<Pointer<COMObject>> param8,
);
