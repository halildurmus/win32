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
import '../../graphics/direct3d9on12/structs.g.dart';
import '../../graphics/direct3d9/IDirect3D9Ex.dart';

typedef PFN_Direct3DCreate9On12 = Pointer<COMObject> Function(
  Uint32 SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  Uint32 NumOverrideEntries,
);
typedef PFN_Direct3DCreate9On12Ex = Int32 Function(
  Uint32 SDKVersion,
  Pointer<D3D9ON12_ARGS> pOverrideList,
  Uint32 NumOverrideEntries,
  Pointer<Pointer<COMObject>> ppOutputInterface,
);
