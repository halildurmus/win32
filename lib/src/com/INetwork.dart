// INetwork.dart

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
const IID_INetwork = '{DCB00002-570F-4A9B-8D69-199FDBA5723B}';

typedef _GetName_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pszNetworkName);
typedef _GetName_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pszNetworkName);

typedef _SetName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> szNetworkNewName);
typedef _SetName_Dart = int Function(
    Pointer obj, Pointer<Utf16> szNetworkNewName);

typedef _GetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pszDescription);
typedef _GetDescription_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pszDescription);

typedef _SetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> szDescription);
typedef _SetDescription_Dart = int Function(
    Pointer obj, Pointer<Utf16> szDescription);

typedef _GetNetworkId_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pgdGuidNetworkId);
typedef _GetNetworkId_Dart = int Function(
    Pointer obj, Pointer<GUID> pgdGuidNetworkId);

typedef _GetDomainType_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pNetworkType);
typedef _GetDomainType_Dart = int Function(
    Pointer obj, Pointer<Uint32> pNetworkType);

typedef _GetNetworkConnections_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppEnumNetworkConnection);
typedef _GetNetworkConnections_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppEnumNetworkConnection);

typedef _GetTimeCreatedAndConnected_Native = Int32 Function(
    Pointer obj,
    Pointer<Uint32> pdwLowDateTimeCreated,
    Pointer<Uint32> pdwHighDateTimeCreated,
    Pointer<Uint32> pdwLowDateTimeConnected,
    Pointer<Uint32> pdwHighDateTimeConnected);
typedef _GetTimeCreatedAndConnected_Dart = int Function(
    Pointer obj,
    Pointer<Uint32> pdwLowDateTimeCreated,
    Pointer<Uint32> pdwHighDateTimeCreated,
    Pointer<Uint32> pdwLowDateTimeConnected,
    Pointer<Uint32> pdwHighDateTimeConnected);

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

typedef _GetCategory_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pCategory);
typedef _GetCategory_Dart = int Function(
    Pointer obj, Pointer<Uint32> pCategory);

typedef _SetCategory_Native = Int32 Function(Pointer obj, Uint32 NewCategory);
typedef _SetCategory_Dart = int Function(Pointer obj, int NewCategory);

/// {@category Interface}
/// {@category com}
class INetwork extends IDispatch {
  // vtable begins at 7, ends at 19

  INetwork(Pointer<COMObject> ptr) : super(ptr);

  int GetName(Pointer<Pointer<Utf16>> pszNetworkName) =>
      Pointer<NativeFunction<_GetName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetName_Dart>()(ptr.ref.lpVtbl, pszNetworkName);

  int SetName(Pointer<Utf16> szNetworkNewName) =>
      Pointer<NativeFunction<_SetName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_SetName_Dart>()(ptr.ref.lpVtbl, szNetworkNewName);

  int GetDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      Pointer<NativeFunction<_GetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetDescription_Dart>()(ptr.ref.lpVtbl, pszDescription);

  int SetDescription(Pointer<Utf16> szDescription) =>
      Pointer<NativeFunction<_SetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_SetDescription_Dart>()(ptr.ref.lpVtbl, szDescription);

  int GetNetworkId(Pointer<GUID> pgdGuidNetworkId) =>
      Pointer<NativeFunction<_GetNetworkId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_GetNetworkId_Dart>()(ptr.ref.lpVtbl, pgdGuidNetworkId);

  int GetDomainType(Pointer<Uint32> pNetworkType) =>
      Pointer<NativeFunction<_GetDomainType_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_GetDomainType_Dart>()(ptr.ref.lpVtbl, pNetworkType);

  int GetNetworkConnections(Pointer<Pointer> ppEnumNetworkConnection) =>
      Pointer<NativeFunction<_GetNetworkConnections_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_GetNetworkConnections_Dart>()(
          ptr.ref.lpVtbl, ppEnumNetworkConnection);

  int GetTimeCreatedAndConnected(
          Pointer<Uint32> pdwLowDateTimeCreated,
          Pointer<Uint32> pdwHighDateTimeCreated,
          Pointer<Uint32> pdwLowDateTimeConnected,
          Pointer<Uint32> pdwHighDateTimeConnected) =>
      Pointer<NativeFunction<_GetTimeCreatedAndConnected_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_GetTimeCreatedAndConnected_Dart>()(
          ptr.ref.lpVtbl,
          pdwLowDateTimeCreated,
          pdwHighDateTimeCreated,
          pdwLowDateTimeConnected,
          pdwHighDateTimeConnected);

  int get IsConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    final hr =
        Pointer<NativeFunction<_get_IsConnectedToInternet_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(15).value)
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
            ptr.ref.vtable.elementAt(16).value)
        .asFunction<_get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) =>
      Pointer<NativeFunction<_GetConnectivity_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int GetCategory(Pointer<Uint32> pCategory) =>
      Pointer<NativeFunction<_GetCategory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<_GetCategory_Dart>()(ptr.ref.lpVtbl, pCategory);

  int SetCategory(int NewCategory) =>
      Pointer<NativeFunction<_SetCategory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_SetCategory_Dart>()(ptr.ref.lpVtbl, NewCategory);
}
