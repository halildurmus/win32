// INetworkListManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../prototypes.dart';
import '../com/combase.dart';

import 'IDispatch.dart';

const IID_INetworkListManager = '{DCB00000-570F-4A9B-8D69-199FDBA5723B}';

typedef GetNetworks_Native = Int32 Function(
    Pointer obj, Uint32 Flags, Pointer<IntPtr> ppEnumNetwork);
typedef GetNetworks_Dart = int Function(
    Pointer obj, int Flags, Pointer<IntPtr> ppEnumNetwork);

typedef GetNetwork_Native = Int32 Function(
    Pointer obj, GUID gdNetworkId, Pointer<IntPtr> ppNetwork);
typedef GetNetwork_Dart = int Function(
    Pointer obj, GUID gdNetworkId, Pointer<IntPtr> ppNetwork);

typedef GetNetworkConnections_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnum);
typedef GetNetworkConnections_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppEnum);

typedef GetNetworkConnection_Native = Int32 Function(Pointer obj,
    GUID gdNetworkConnectionId, Pointer<IntPtr> ppNetworkConnection);
typedef GetNetworkConnection_Dart = int Function(Pointer obj,
    GUID gdNetworkConnectionId, Pointer<IntPtr> ppNetworkConnection);

typedef get_IsConnectedToInternet_Native = Int32 Function(
    Pointer obj, Pointer<Int16> pbIsConnected);
typedef get_IsConnectedToInternet_Dart = int Function(
    Pointer obj, Pointer<Int16> pbIsConnected);

typedef get_IsConnected_Native = Int32 Function(
    Pointer obj, Pointer<Int16> pbIsConnected);
typedef get_IsConnected_Dart = int Function(
    Pointer obj, Pointer<Int16> pbIsConnected);

typedef GetConnectivity_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pConnectivity);
typedef GetConnectivity_Dart = int Function(
    Pointer obj, Pointer<Uint32> pConnectivity);

typedef SetSimulatedProfileInfo_Native = Int32 Function(
    Pointer obj, Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo);
typedef SetSimulatedProfileInfo_Dart = int Function(
    Pointer obj, Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo);

typedef ClearSimulatedProfileInfo_Native = Int32 Function(Pointer obj);
typedef ClearSimulatedProfileInfo_Dart = int Function(Pointer obj);

class INetworkListManager extends IDispatch {
  // vtable begins at 7, ends at 15

  @override
  Pointer<COMObject> ptr;

  INetworkListManager(this.ptr) : super(ptr);

  int GetNetworks(int Flags, Pointer<IntPtr> ppEnumNetwork) =>
      Pointer<NativeFunction<GetNetworks_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<GetNetworks_Dart>()(ptr.ref.lpVtbl, Flags, ppEnumNetwork);

  int GetNetwork(GUID gdNetworkId, Pointer<IntPtr> ppNetwork) =>
      Pointer<NativeFunction<GetNetwork_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<GetNetwork_Dart>()(
          ptr.ref.lpVtbl, gdNetworkId, ppNetwork);

  int GetNetworkConnections(Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<GetNetworkConnections_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<GetNetworkConnections_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int GetNetworkConnection(
          GUID gdNetworkConnectionId, Pointer<IntPtr> ppNetworkConnection) =>
      Pointer<NativeFunction<GetNetworkConnection_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<GetNetworkConnection_Dart>()(
          ptr.ref.lpVtbl, gdNetworkConnectionId, ppNetworkConnection);

  int get IsConnectedToInternet {
    final retValuePtr = allocate<Int16>();

    final hr =
        Pointer<NativeFunction<get_IsConnectedToInternet_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(11).value)
                .asFunction<get_IsConnectedToInternet_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get IsConnected {
    final retValuePtr = allocate<Int16>();

    final hr = Pointer<NativeFunction<get_IsConnected_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(12).value)
        .asFunction<get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) =>
      Pointer<NativeFunction<GetConnectivity_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int SetSimulatedProfileInfo(
          Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo) =>
      Pointer<NativeFunction<SetSimulatedProfileInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<SetSimulatedProfileInfo_Dart>()(
          ptr.ref.lpVtbl, pSimulatedInfo);

  int ClearSimulatedProfileInfo() =>
      Pointer<NativeFunction<ClearSimulatedProfileInfo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<ClearSimulatedProfileInfo_Dart>()(ptr.ref.lpVtbl);
}
