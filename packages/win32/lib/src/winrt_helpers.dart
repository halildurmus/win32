// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/iinspectable.dart';
import 'combase.dart';
import 'enums.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'types.dart';
import 'utils.dart';
import 'win32/api_ms_win_core_winrt_string_l1_1_0.g.dart';

@Deprecated('No replacement')
extension WinRTStringConversion on Pointer<HSTRING> {
  /// Gets the Dart string at the handle pointed to by this object.
  @Deprecated('No replacement')
  String toDartString() => convertFromHString(value);
}

/// Returns the interface IDs that are implemented by the Windows Runtime
/// [object].
///
/// The `IUnknown` and `IInspectable` interfaces are excluded.
@Deprecated('No replacement')
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
@Deprecated('No replacement')
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
@Deprecated('No replacement')
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
