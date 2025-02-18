// inetworklistmanager.dart

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
const IID_INetworkListManager = '{dcb00000-570f-4a9b-8d69-199fdba5723b}';

/// The INetworkListManager interface provides a set of methods to perform
/// network list management functions.
///
/// {@category com}
class INetworkListManager extends IDispatch {
  // vtable begins at 7, is 9 entries long.
  INetworkListManager(super.ptr);

  factory INetworkListManager.from(IUnknown interface) =>
      INetworkListManager(interface.toInterface(IID_INetworkListManager));

  int getNetworks(int Flags, Pointer<Pointer<COMObject>> ppEnumNetwork) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 Flags,
                  Pointer<Pointer<COMObject>> ppEnumNetwork,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int Flags,
              Pointer<Pointer<COMObject>> ppEnumNetwork,
            )
          >()(ptr.ref.lpVtbl, Flags, ppEnumNetwork);

  int getNetwork(GUID gdNetworkId, Pointer<Pointer<COMObject>> ppNetwork) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  GUID gdNetworkId,
                  Pointer<Pointer<COMObject>> ppNetwork,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              GUID gdNetworkId,
              Pointer<Pointer<COMObject>> ppNetwork,
            )
          >()(ptr.ref.lpVtbl, gdNetworkId, ppNetwork);

  int getNetworkConnections(
    Pointer<Pointer<COMObject>> ppEnum,
  ) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
    ptr.ref.lpVtbl,
    ppEnum,
  );

  int getNetworkConnection(
    GUID gdNetworkConnectionId,
    Pointer<Pointer<COMObject>> ppNetworkConnection,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              GUID gdNetworkConnectionId,
              Pointer<Pointer<COMObject>> ppNetworkConnection,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          GUID gdNetworkConnectionId,
          Pointer<Pointer<COMObject>> ppNetworkConnection,
        )
      >()(ptr.ref.lpVtbl, gdNetworkConnectionId, ppNetworkConnection);

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 11)
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
      final hr = (ptr.ref.vtable + 12)
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

  int getConnectivity(Pointer<Int32> pConnectivity) => (ptr.ref.vtable + 13)
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

  int setSimulatedProfileInfo(
    Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo,
  ) => (ptr.ref.vtable + 14)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo,
        )
      >()(ptr.ref.lpVtbl, pSimulatedInfo);

  int clearSimulatedProfileInfo() => (ptr.ref.vtable + 15)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
const CLSID_NetworkListManager = '{dcb00c01-570f-4a9b-8d69-199fdba5723b}';

/// {@category com}
class NetworkListManager extends INetworkListManager {
  NetworkListManager(super.ptr);

  factory NetworkListManager.createInstance() => NetworkListManager(
    COMObject.createFromID(CLSID_NetworkListManager, IID_INetworkListManager),
  );
}
