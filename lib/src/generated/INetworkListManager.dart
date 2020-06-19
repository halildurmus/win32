// INetworkListManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../ole32.dart';
import '../com/combase.dart';

import 'IDispatch.dart';

const CLSID_NetworkListManager = '{DCB00C01-570F-4A9B-8D69-199FDBA5723B}';
const IID_INetworkListManager = '{DCB00000-570F-4A9B-8D69-199FDBA5723B}';

typedef _GetNetworks_Native = Int32 Function(
    Pointer obj, Uint32 Flags, Pointer<IntPtr> ppEnumNetwork);
typedef _GetNetworks_Dart = int Function(
    Pointer obj, int Flags, Pointer<IntPtr> ppEnumNetwork);

// typedef _GetNetwork_Native = Int32 Function(
//     Pointer obj, GUID gdNetworkId, Pointer<IntPtr> ppNetwork);
// typedef _GetNetwork_Dart = int Function(
//     Pointer obj, GUID gdNetworkId, Pointer<IntPtr> ppNetwork);

typedef _GetNetworkConnections_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnum);
typedef _GetNetworkConnections_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppEnum);

// typedef _GetNetworkConnection_Native = Int32 Function(Pointer obj,
//     GUID gdNetworkConnectionId, Pointer<IntPtr> ppNetworkConnection);
// typedef _GetNetworkConnection_Dart = int Function(Pointer obj,
//     GUID gdNetworkConnectionId, Pointer<IntPtr> ppNetworkConnection);

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

class INetworkListManager extends IDispatch {
  // vtable begins at 7, ends at 15

  @override
  Pointer<COMObject> ptr;

  INetworkListManager(this.ptr) : super(ptr);

  int GetNetworks(int Flags, Pointer<IntPtr> ppEnumNetwork) =>
      Pointer<NativeFunction<_GetNetworks_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetNetworks_Dart>()(
          ptr.ref.lpVtbl, Flags, ppEnumNetwork);

  // int GetNetwork(GUID gdNetworkId, Pointer<IntPtr> ppNetwork) =>
  //     Pointer<NativeFunction<_GetNetwork_Native>>.fromAddress(
  //                 ptr.ref.vtable.elementAt(8).value)
  //             .asFunction<_GetNetwork_Dart>()(
  //         ptr.ref.lpVtbl, gdNetworkId, ppNetwork);

  int GetNetworkConnections(Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<_GetNetworkConnections_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetNetworkConnections_Dart>()(ptr.ref.lpVtbl, ppEnum);

  // int GetNetworkConnection(
  //         GUID gdNetworkConnectionId, Pointer<IntPtr> ppNetworkConnection) =>
  //     Pointer<NativeFunction<_GetNetworkConnection_Native>>.fromAddress(
  //                 ptr.ref.vtable.elementAt(10).value)
  //             .asFunction<_GetNetworkConnection_Dart>()(
  //         ptr.ref.lpVtbl, gdNetworkConnectionId, ppNetworkConnection);

  int get IsConnectedToInternet {
    final retValuePtr = allocate<Int16>();

    final hr =
        Pointer<NativeFunction<_get_IsConnectedToInternet_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(11).value)
                .asFunction<_get_IsConnectedToInternet_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get IsConnected {
    final retValuePtr = allocate<Int16>();

    final hr = Pointer<NativeFunction<_get_IsConnected_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(12).value)
        .asFunction<_get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) =>
      Pointer<NativeFunction<_GetConnectivity_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int SetSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      Pointer<NativeFunction<_SetSimulatedProfileInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_SetSimulatedProfileInfo_Dart>()(
          ptr.ref.lpVtbl, pSimulatedInfo);

  int ClearSimulatedProfileInfo() =>
      Pointer<NativeFunction<_ClearSimulatedProfileInfo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_ClearSimulatedProfileInfo_Dart>()(ptr.ref.lpVtbl);
}

class NetworkListManager extends INetworkListManager {
  @override
  Pointer<COMObject> ptr;

  factory NetworkListManager.createInstance() {
    final ptr = COMObject.allocate().addressOf;

    var hr = CoCreateInstance(
        GUID.fromString(CLSID_NetworkListManager).addressOf,
        nullptr,
        CLSCTX_ALL,
        GUID.fromString(IID_INetworkListManager).addressOf,
        ptr.cast());

    if (!SUCCEEDED(hr)) throw WindowsException(hr);
    return NetworkListManager(ptr);
  }

  NetworkListManager(this.ptr) : super(ptr);
}
