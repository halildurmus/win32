// INetworkConnection.dart

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
const IID_INetworkConnection = '{DCB00005-570F-4A9B-8D69-199FDBA5723B}';

typedef _GetNetwork_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppNetwork);
typedef _GetNetwork_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppNetwork);

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

typedef _GetConnectionId_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pgdConnectionId);
typedef _GetConnectionId_Dart = int Function(
    Pointer obj, Pointer<GUID> pgdConnectionId);

typedef _GetAdapterId_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pgdAdapterId);
typedef _GetAdapterId_Dart = int Function(
    Pointer obj, Pointer<GUID> pgdAdapterId);

typedef _GetDomainType_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pDomainType);
typedef _GetDomainType_Dart = int Function(
    Pointer obj, Pointer<Uint32> pDomainType);

/// {@category Interface}
/// {@category com}
class INetworkConnection extends IDispatch {
  // vtable begins at 7, ends at 13

  INetworkConnection(Pointer<COMObject> ptr) : super(ptr);

  int GetNetwork(Pointer<Pointer> ppNetwork) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetNetwork_Native>>>()
      .value
      .asFunction<_GetNetwork_Dart>()(ptr.ref.lpVtbl, ppNetwork);

  int get IsConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = Pointer<
                      NativeFunction<
                          _get_IsConnectedToInternet_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
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
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_GetConnectivity_Native>>>()
      .value
      .asFunction<_GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int GetConnectionId(Pointer<GUID> pgdConnectionId) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_GetConnectionId_Native>>>()
      .value
      .asFunction<_GetConnectionId_Dart>()(ptr.ref.lpVtbl, pgdConnectionId);

  int GetAdapterId(Pointer<GUID> pgdAdapterId) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetAdapterId_Native>>>()
      .value
      .asFunction<_GetAdapterId_Dart>()(ptr.ref.lpVtbl, pgdAdapterId);

  int GetDomainType(Pointer<Uint32> pDomainType) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetDomainType_Native>>>()
      .value
      .asFunction<_GetDomainType_Dart>()(ptr.ref.lpVtbl, pDomainType);
}
