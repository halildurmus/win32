// INetwork.dart

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

const IID_INetwork = '{DCB00002-570F-4A9B-8D69-199FDBA5723B}';

typedef GetName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszNetworkName);
typedef GetName_Dart = int Function(Pointer obj, Pointer<Utf16> pszNetworkName);

typedef SetName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> szNetworkNewName);
typedef SetName_Dart = int Function(
    Pointer obj, Pointer<Utf16> szNetworkNewName);

typedef GetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDescription);
typedef GetDescription_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDescription);

typedef SetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> szDescription);
typedef SetDescription_Dart = int Function(
    Pointer obj, Pointer<Utf16> szDescription);

typedef GetNetworkId_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pgdGuidNetworkId);
typedef GetNetworkId_Dart = int Function(
    Pointer obj, Pointer<GUID> pgdGuidNetworkId);

typedef GetDomainType_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pNetworkType);
typedef GetDomainType_Dart = int Function(
    Pointer obj, Pointer<Uint32> pNetworkType);

typedef GetNetworkConnections_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppEnumNetworkConnection);
typedef GetNetworkConnections_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppEnumNetworkConnection);

typedef GetTimeCreatedAndConnected_Native = Int32 Function(
    Pointer obj,
    Pointer<Uint32> pdwLowDateTimeCreated,
    Pointer<Uint32> pdwHighDateTimeCreated,
    Pointer<Uint32> pdwLowDateTimeConnected,
    Pointer<Uint32> pdwHighDateTimeConnected);
typedef GetTimeCreatedAndConnected_Dart = int Function(
    Pointer obj,
    Pointer<Uint32> pdwLowDateTimeCreated,
    Pointer<Uint32> pdwHighDateTimeCreated,
    Pointer<Uint32> pdwLowDateTimeConnected,
    Pointer<Uint32> pdwHighDateTimeConnected);

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

typedef GetCategory_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pCategory);
typedef GetCategory_Dart = int Function(Pointer obj, Pointer<Uint32> pCategory);

typedef SetCategory_Native = Int32 Function(Pointer obj, Uint32 NewCategory);
typedef SetCategory_Dart = int Function(Pointer obj, int NewCategory);

class INetwork extends IDispatch {
  // vtable begins at 7, ends at 19

  @override
  Pointer<COMObject> ptr;

  INetwork(this.ptr) : super(ptr);

  int GetName(Pointer<Utf16> pszNetworkName) =>
      Pointer<NativeFunction<GetName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<GetName_Dart>()(ptr.ref.lpVtbl, pszNetworkName);

  int SetName(Pointer<Utf16> szNetworkNewName) =>
      Pointer<NativeFunction<SetName_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<SetName_Dart>()(ptr.ref.lpVtbl, szNetworkNewName);

  int GetDescription(Pointer<Utf16> pszDescription) =>
      Pointer<NativeFunction<GetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<GetDescription_Dart>()(ptr.ref.lpVtbl, pszDescription);

  int SetDescription(Pointer<Utf16> szDescription) =>
      Pointer<NativeFunction<SetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<SetDescription_Dart>()(ptr.ref.lpVtbl, szDescription);

  int GetNetworkId(Pointer<GUID> pgdGuidNetworkId) =>
      Pointer<NativeFunction<GetNetworkId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<GetNetworkId_Dart>()(ptr.ref.lpVtbl, pgdGuidNetworkId);

  int GetDomainType(Pointer<Uint32> pNetworkType) =>
      Pointer<NativeFunction<GetDomainType_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<GetDomainType_Dart>()(ptr.ref.lpVtbl, pNetworkType);

  int GetNetworkConnections(Pointer<IntPtr> ppEnumNetworkConnection) =>
      Pointer<NativeFunction<GetNetworkConnections_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<GetNetworkConnections_Dart>()(
          ptr.ref.lpVtbl, ppEnumNetworkConnection);

  int GetTimeCreatedAndConnected(
          Pointer<Uint32> pdwLowDateTimeCreated,
          Pointer<Uint32> pdwHighDateTimeCreated,
          Pointer<Uint32> pdwLowDateTimeConnected,
          Pointer<Uint32> pdwHighDateTimeConnected) =>
      Pointer<NativeFunction<GetTimeCreatedAndConnected_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<GetTimeCreatedAndConnected_Dart>()(
          ptr.ref.lpVtbl,
          pdwLowDateTimeCreated,
          pdwHighDateTimeCreated,
          pdwLowDateTimeConnected,
          pdwHighDateTimeConnected);

  int get IsConnectedToInternet {
    final retValuePtr = allocate<Int16>();

    final hr =
        Pointer<NativeFunction<get_IsConnectedToInternet_Native>>.fromAddress(
                    ptr.ref.vtable.elementAt(15).value)
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
            ptr.ref.vtable.elementAt(16).value)
        .asFunction<get_IsConnected_Dart>()(ptr.ref.lpVtbl, retValuePtr);
    if (FAILED(hr)) throw WindowsException(hr);

    final retValue = retValuePtr.value;
    free(retValuePtr);
    return retValue;
  }

  int GetConnectivity(Pointer<Uint32> pConnectivity) =>
      Pointer<NativeFunction<GetConnectivity_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<GetConnectivity_Dart>()(ptr.ref.lpVtbl, pConnectivity);

  int GetCategory(Pointer<Uint32> pCategory) =>
      Pointer<NativeFunction<GetCategory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<GetCategory_Dart>()(ptr.ref.lpVtbl, pCategory);

  int SetCategory(int NewCategory) =>
      Pointer<NativeFunction<SetCategory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<SetCategory_Dart>()(ptr.ref.lpVtbl, NewCategory);
}
