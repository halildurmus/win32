// inetwork.dart

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
const IID_INetwork = '{dcb00002-570f-4a9b-8d69-199fdba5723b}';

/// The INetwork interface represents a network on the local machine. It can
/// also represent a collection of network connections with a similar
/// network signature.
///
/// {@category com}
class INetwork extends IDispatch {
  // vtable begins at 7, is 13 entries long.
  INetwork(super.ptr);

  factory INetwork.from(IUnknown interface) =>
      INetwork(interface.toInterface(IID_INetwork));

  int getName(Pointer<Pointer<Utf16>> pszNetworkName) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> pszNetworkName)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<Utf16>> pszNetworkName)
      >()(ptr.ref.lpVtbl, pszNetworkName);

  int setName(Pointer<Utf16> szNetworkNewName) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Utf16> szNetworkNewName)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> szNetworkNewName)>()(
    ptr.ref.lpVtbl,
    szNetworkNewName,
  );

  int getDescription(Pointer<Pointer<Utf16>> pszDescription) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> pszDescription)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<Utf16>> pszDescription)
          >()(ptr.ref.lpVtbl, pszDescription);

  int setDescription(Pointer<Utf16> szDescription) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Utf16> szDescription)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> szDescription)>()(
    ptr.ref.lpVtbl,
    szDescription,
  );

  int getNetworkId(Pointer<GUID> pgdGuidNetworkId) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<GUID> pgdGuidNetworkId)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pgdGuidNetworkId)>()(
    ptr.ref.lpVtbl,
    pgdGuidNetworkId,
  );

  int getDomainType(Pointer<Int32> pNetworkType) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pNetworkType)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pNetworkType)>()(
    ptr.ref.lpVtbl,
    pNetworkType,
  );

  int getNetworkConnections(
    Pointer<Pointer<COMObject>> ppEnumNetworkConnection,
  ) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Pointer<COMObject>> ppEnumNetworkConnection,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Pointer<COMObject>> ppEnumNetworkConnection,
        )
      >()(ptr.ref.lpVtbl, ppEnumNetworkConnection);

  int getTimeCreatedAndConnected(
    Pointer<Uint32> pdwLowDateTimeCreated,
    Pointer<Uint32> pdwHighDateTimeCreated,
    Pointer<Uint32> pdwLowDateTimeConnected,
    Pointer<Uint32> pdwHighDateTimeConnected,
  ) => (ptr.ref.vtable + 14)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Uint32> pdwLowDateTimeCreated,
              Pointer<Uint32> pdwHighDateTimeCreated,
              Pointer<Uint32> pdwLowDateTimeConnected,
              Pointer<Uint32> pdwHighDateTimeConnected,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Uint32> pdwLowDateTimeCreated,
          Pointer<Uint32> pdwHighDateTimeCreated,
          Pointer<Uint32> pdwLowDateTimeConnected,
          Pointer<Uint32> pdwHighDateTimeConnected,
        )
      >()(
    ptr.ref.lpVtbl,
    pdwLowDateTimeCreated,
    pdwHighDateTimeCreated,
    pdwLowDateTimeConnected,
    pdwHighDateTimeConnected,
  );

  int get isConnectedToInternet {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = (ptr.ref.vtable + 15)
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
      final hr = (ptr.ref.vtable + 16)
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

  int getConnectivity(Pointer<Int32> pConnectivity) => (ptr.ref.vtable + 17)
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

  int getCategory(Pointer<Int32> pCategory) => (ptr.ref.vtable + 18)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> pCategory)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pCategory)>()(
    ptr.ref.lpVtbl,
    pCategory,
  );

  int setCategory(int NewCategory) => (ptr.ref.vtable + 19)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Int32 NewCategory)>>
      >()
      .value
      .asFunction<int Function(Pointer, int NewCategory)>()(
    ptr.ref.lpVtbl,
    NewCategory,
  );
}
