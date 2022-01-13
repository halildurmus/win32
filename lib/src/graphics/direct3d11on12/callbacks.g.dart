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
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Device.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext.dart';

typedef PFN_D3D11ON12_CREATE_DEVICE = Int32 Function(
  Pointer<COMObject> param0,
  Uint32 param1,
  Pointer<Int32> param2,
  Uint32 FeatureLevels,
  Pointer<Pointer<COMObject>> param4,
  Uint32 NumQueues,
  Uint32 param6,
  Pointer<Pointer<COMObject>> param7,
  Pointer<Pointer<COMObject>> param8,
  Pointer<Int32> param9,
);
