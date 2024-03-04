// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/iinspectable.dart';
import 'combase.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'types.dart';
import 'utils.dart';
import 'win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';

extension WinRTStringConversion on Pointer<HSTRING> {
  /// Gets the Dart string at the handle pointed to by this object.
  String toDartString() => convertFromHString(value);
}

/// Represents the trust level of an activatable class.
///
/// {@category enum}
enum TrustLevel {
  /// The component has access to resources that are not protected.
  baseTrust(0),

  /// The component has access to resources requested in the app manifest and
  /// approved by the user.
  partialTrust(1),

  /// The component requires the full privileges of the user.
  fullTrust(2);

  final int value;

  const TrustLevel(this.value);

  factory TrustLevel.from(int value) =>
      TrustLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Returns the interface IDs that are implemented by the Windows Runtime
/// [object].
///
/// The `IUnknown` and `IInspectable` interfaces are excluded.
List<String> getInterfaces(IInspectable object) {
  final pIIDCount = calloc<Uint32>();
  final pIIDs = calloc<Pointer<GUID>>();

  try {
    final hr = (object.ptr.ref.vtable + 3)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(
                            VTablePointer lpVtbl,
                            Pointer<Uint32> iidCount,
                            Pointer<Pointer<GUID>> iids)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<Uint32> iidCount,
                    Pointer<Pointer<GUID>> iids)>()(
        object.ptr.ref.lpVtbl, pIIDCount, pIIDs);

    if (FAILED(hr)) throw WindowsException(hr);

    return [
      for (var i = 0; i < pIIDCount.value; i++) pIIDs.value[i].toString()
    ];
  } finally {
    free(pIIDCount);
    free(pIIDs);
  }
}

/// Gets the fully qualified name of the Windows Runtime [object].
String getClassName(IInspectable object) {
  final hClassName = calloc<HSTRING>();

  try {
    final hr = (object.ptr.ref.vtable + 4)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(VTablePointer lpVtbl,
                            Pointer<IntPtr> className)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, Pointer<IntPtr> className)>()(
        object.ptr.ref.lpVtbl, hClassName);

    if (FAILED(hr)) throw WindowsException(hr);

    return hClassName.toDartString();
  } finally {
    WindowsDeleteString(hClassName.value);
    free(hClassName);
  }
}

/// Gets the trust level of the Windows Runtime [object].
TrustLevel getTrustLevel(IInspectable object) {
  final pTrustLevel = calloc<Int32>();

  try {
    final hr = (object.ptr.ref.vtable + 5)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(VTablePointer lpVtbl,
                            Pointer<Int32> trustLevel)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, Pointer<Int32> trustLevel)>()(
        object.ptr.ref.lpVtbl, pTrustLevel);

    if (FAILED(hr)) throw WindowsException(hr);

    return TrustLevel.from(pTrustLevel.value);
  } finally {
    free(pTrustLevel);
  }
}
