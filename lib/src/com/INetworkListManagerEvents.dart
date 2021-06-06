// INetworkListManagerEvents.dart

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

import 'IUnknown.dart';

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
