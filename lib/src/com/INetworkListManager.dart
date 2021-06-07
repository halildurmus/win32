// INetworkListManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IDispatch.dart';

/// @nodoc
const CLSID_NetworkListManager = '{DCB00C01-570F-4A9B-8D69-199FDBA5723B}';

/// @nodoc
const IID_INetworkListManager = '{DCB00000-570F-4A9B-8D69-199FDBA5723B}';

typedef _GetNetworks_Native = Int32 Function(
    Pointer obj, Uint32 Flags, Pointer<Pointer> ppEnumNetwork);
typedef _GetNetworks_Dart = int Function(
    Pointer obj, int Flags, Pointer<Pointer> ppEnumNetwork);

typedef _GetNetwork_Native = Int32 Function(
    Pointer obj, GUID gdNetworkId, Pointer<Pointer> ppNetwork);
typedef _GetNetwork_Dart = int Function(
    Pointer obj, GUID gdNetworkId, Pointer<Pointer> ppNetwork);

typedef _GetNetworkConnections_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppEnum);
typedef _GetNetworkConnections_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppEnum);

typedef _GetNetworkConnection_Native = Int32 Function(Pointer obj,
    GUID gdNetworkConnectionId, Pointer<Pointer> ppNetworkConnection);
typedef _GetNetworkConnection_Dart = int Function(Pointer obj,
    GUID gdNetworkConnectionId, Pointer<Pointer> ppNetworkConnection);

typedef _get_IsConnectedToInternet_Native = Int32 Function(
    Pointer obj, Pointer<Int16> pbIsConnected);
typedef _get_IsConnectedToInternet_Dart = int Function(
    Pointer obj, Pointer<Int16> pbIsConnected);

typedef _get_IsConnected_Native = Int32 Function(
    Pointer obj, Pointer<Int16> pbIsConnected);
typedef _get_IsConnected_Dart = int Function(
    Pointer obj, Pointer<Int16> pbIsConnected);

typedef _GetConnectivity_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pConnectivity);
typedef _GetConnectivity_Dart = int Function(
    Pointer obj, Pointer<Uint32> pConnectivity);

typedef _SetSimulatedProfileInfo_Native = Int32 Function(
    Pointer obj, Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo);
typedef _SetSimulatedProfileInfo_Dart = int Function(
    Pointer obj, Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo);

typedef _ClearSimulatedProfileInfo_Native = Int32 Function(Pointer obj);
typedef _ClearSimulatedProfileInfo_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class INetworkListManager extends IDispatch {
  // vtable begins at 7, ends at 15

  INetworkListManager(Pointer<COMObject> ptr) : super(ptr);

  int GetNetworks(int Flags, Pointer<Pointer> ppEnumNetwork) => ptr
      .ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetNetworks_Native>>>()
      .value
      .asFunction<_GetNetworks_Dart>()(ptr.ref.lpVtbl, Flags, ppEnumNetwork);

  int GetNetwork(GUID gdNetworkId, Pointer<Pointer> ppNetwork) => ptr
      .ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetNetwork_Native>>>()
      .value
      .asFunction<_GetNetwork_Dart>()(ptr.ref.lpVtbl, gdNetworkId, ppNetwork);

  int GetNetworkConnections(Pointer<Pointer> ppEnum) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_GetNetworkConnections_Native>>>()
      .value
      .asFunction<_GetNetworkConnections_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int GetNetworkConnection(
          GUID gdNetworkConnectionId, Pointer<Pointer> ppNetworkConnection) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_GetNetworkConnection_Native>>>()
              .value
              .asFunction<_GetNetworkConnection_Dart>()(
          ptr.ref.lpVtbl, gdNetworkConnectionId, ppNetworkConnection);

  int get IsConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = Pointer<
                      NativeFunction<
                          _get_IsConnectedToInternet_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_get_IsConnectedToInternet_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsConnected {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = Pointer<NativeFunction<_get_IsConnected_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetConnectivity_Native>>>()
      .value
      .asFunction<_GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int SetSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      ptr.ref.lpVtbl.value
              .elementAt(14)
              .cast<Pointer<NativeFunction<_SetSimulatedProfileInfo_Native>>>()
              .value
              .asFunction<_SetSimulatedProfileInfo_Dart>()(
          ptr.ref.lpVtbl, pSimulatedInfo);

  int ClearSimulatedProfileInfo() => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_ClearSimulatedProfileInfo_Native>>>()
      .value
      .asFunction<_ClearSimulatedProfileInfo_Dart>()(ptr.ref.lpVtbl);
}

/// {@category com}
class NetworkListManager extends INetworkListManager {
  NetworkListManager(Pointer<COMObject> ptr) : super(ptr);

  factory NetworkListManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_NetworkListManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_INetworkListManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return NetworkListManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
