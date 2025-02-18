// inetworkconnection.dart

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
const IID_INetworkConnection = '{dcb00005-570f-4a9b-8d69-199fdba5723b}';

/// The INetworkConnection interface represents a single network connection.
///
/// {@category com}
class INetworkConnection extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  INetworkConnection(super.ptr);

  factory INetworkConnection.from(IUnknown interface) =>
      INetworkConnection(interface.toInterface(IID_INetworkConnection));

  int getNetwork(Pointer<Pointer<COMObject>> ppNetwork) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppNetwork)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> ppNetwork)
      >()(ptr.ref.lpVtbl, ppNetwork);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Int16> pbIsConnected)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Int16> pbIsConnected)>()(
        ptr.ref.lpVtbl,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get isConnected {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Int16> pbIsConnected)
              >
            >
          >()
          .value
          .asFunction<int Function(Pointer, Pointer<Int16> pbIsConnected)>()(
        ptr.ref.lpVtbl,
        retValuePtr,
      );

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int getConnectivity(Pointer<Int32> pConnectivity) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pConnectivity)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pConnectivity)>()(
    ptr.ref.lpVtbl,
    pConnectivity,
  );

  int getConnectionId(Pointer<GUID> pgdConnectionId) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> pgdConnectionId)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pgdConnectionId)>()(
    ptr.ref.lpVtbl,
    pgdConnectionId,
  );

  int getAdapterId(Pointer<GUID> pgdAdapterId) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> pgdAdapterId)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pgdAdapterId)>()(
    ptr.ref.lpVtbl,
    pgdAdapterId,
  );

  int getDomainType(Pointer<Int32> pDomainType) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pDomainType)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pDomainType)>()(
    ptr.ref.lpVtbl,
    pDomainType,
  );
}
