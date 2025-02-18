// ienumnetworkconnections.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'idispatch.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumNetworkConnections = '{dcb00006-570f-4a9b-8d69-199fdba5723b}';

/// The IEnumNetworkConnections interface provides a standard enumerator for
/// network connections. It enumerates active, disconnected, or all network
/// connections within a network. This interface can be obtained from the
/// INetwork interface.
///
/// {@category com}
class IEnumNetworkConnections extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IEnumNetworkConnections(super.ptr);

  factory IEnumNetworkConnections.from(IUnknown interface) =>
      IEnumNetworkConnections(
        interface.toInterface(IID_IEnumNetworkConnections),
      );

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<COMObject>();

    final hr = (ptr.ref.vtable + 7)
        .cast<
          Pointer<
            NativeFunction<
              Int32 Function(Pointer, Pointer<COMObject> ppEnumVar)
            >
          >
        >()
        .value
        .asFunction<int Function(Pointer, Pointer<COMObject> ppEnumVar)>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  int next(
    int celt,
    Pointer<Pointer<COMObject>> rgelt,
    Pointer<Uint32> pceltFetched,
  ) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<Pointer<COMObject>> rgelt,
              Pointer<Uint32> pceltFetched,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int celt,
          Pointer<Pointer<COMObject>> rgelt,
          Pointer<Uint32> pceltFetched,
        )
      >()(ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int skip(int celt) => (ptr.ref.vtable + 9)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>>>()
      .value
      .asFunction<int Function(Pointer, int celt)>()(ptr.ref.lpVtbl, celt);

  int reset() => (ptr.ref.vtable + 10)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppEnumNetwork) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnumNetwork)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> ppEnumNetwork)
      >()(ptr.ref.lpVtbl, ppEnumNetwork);
}
