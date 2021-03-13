// INetworkListManagerEvents.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_NetworkListManagerEvents = '';

/// @nodoc
const IID_INetworkListManagerEvents = '{DCB00001-570F-4A9B-8D69-199FDBA5723B}';

typedef _ConnectivityChanged_Native = Int32 Function(
    Pointer obj, Uint32 newConnectivity);
typedef _ConnectivityChanged_Dart = int Function(
    Pointer obj, int newConnectivity);

/// {@category Interface}
/// {@category com}
class INetworkListManagerEvents extends IUnknown {
  // vtable begins at 3, ends at 3

  INetworkListManagerEvents(Pointer<COMObject> ptr) : super(ptr);

  int ConnectivityChanged(int newConnectivity) =>
      Pointer<NativeFunction<_ConnectivityChanged_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_ConnectivityChanged_Dart>()(
          ptr.ref.lpVtbl, newConnectivity);
}

/// {@category com}
class NetworkListManagerEvents extends INetworkListManagerEvents {
  NetworkListManagerEvents(Pointer<COMObject> ptr) : super(ptr);

  factory NetworkListManagerEvents.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_NetworkListManagerEvents);
    final iid = calloc<GUID>()..ref.setGUID(IID_INetworkListManagerEvents);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return NetworkListManagerEvents(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
