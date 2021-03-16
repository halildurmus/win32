// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _api_ms_win_core_winrt_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-l1-1-0.dll');

/// Activates the specified Windows Runtime class.
///
/// ```c
/// HRESULT RoActivateInstance(
///   HSTRING      activatableClassId,
///   IInspectable **instance
/// );
/// ```
/// {@category winrt}
int RoActivateInstance(int activatableClassId, Pointer<Pointer> instance) {
  final _RoActivateInstance = _api_ms_win_core_winrt_l1_1_0.lookupFunction<
      Int32 Function(IntPtr activatableClassId, Pointer<Pointer> instance),
      int Function(int activatableClassId,
          Pointer<Pointer> instance)>('RoActivateInstance');
  return _RoActivateInstance(activatableClassId, instance);
}

/// Initializes the Windows Runtime on the current thread with the
/// specified concurrency model.
///
/// ```c
/// HRESULT RoInitialize(
///   RO_INIT_TYPE initType
/// );
/// ```
/// {@category winrt}
int RoInitialize(int initType) {
  final _RoInitialize = _api_ms_win_core_winrt_l1_1_0.lookupFunction<
      Int32 Function(Uint32 initType),
      int Function(int initType)>('RoInitialize');
  return _RoInitialize(initType);
}

/// Closes the Windows Runtime on the current thread.
///
/// ```c
/// void RoUninitialize();
/// ```
/// {@category winrt}
void RoUninitialize() {
  final _RoUninitialize = _api_ms_win_core_winrt_l1_1_0
      .lookupFunction<Void Function(), void Function()>('RoUninitialize');
  return _RoUninitialize();
}
