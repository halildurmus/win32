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

  int GetNetwork(Pointer<Pointer> ppNetwork) =>
      Pointer<NativeFunction<_GetNetwork_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetNetwork_Dart>()(ptr.ref.lpVtbl, ppNetwork);

  int get IsConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    final hr =
        Pointer<NativeFunction<_get_IsConnectedToInternet_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(8).value)
                .asFunction<_get_IsConnectedToInternet_Dart>()(
            ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int get IsConnected {
    final retValuePtr = calloc<Int16>();

    final hr = Pointer<NativeFunction<_get_IsConnected_Native>>.fromAddress(
            ptr.ref.vtable.elementAt(9).value)
        .asFunction<_get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) =>
      Pointer<NativeFunction<_GetConnectivity_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int GetConnectionId(Pointer<GUID> pgdConnectionId) =>
      Pointer<NativeFunction<_GetConnectionId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_GetConnectionId_Dart>()(ptr.ref.lpVtbl, pgdConnectionId);

  int GetAdapterId(Pointer<GUID> pgdAdapterId) =>
      Pointer<NativeFunction<_GetAdapterId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_GetAdapterId_Dart>()(ptr.ref.lpVtbl, pgdAdapterId);

  int GetDomainType(Pointer<Uint32> pDomainType) =>
      Pointer<NativeFunction<_GetDomainType_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_GetDomainType_Dart>()(ptr.ref.lpVtbl, pDomainType);
}
