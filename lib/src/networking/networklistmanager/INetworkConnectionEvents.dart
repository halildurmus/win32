// INetworkConnectionEvents.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../networking/networklistmanager/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetworkConnectionEvents = '{DCB00007-570F-4A9B-8D69-199FDBA5723B}';

/// {@category Interface}
/// {@category com}
class INetworkConnectionEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INetworkConnectionEvents(Pointer<COMObject> ptr) : super(ptr);

  int NetworkConnectionConnectivityChanged(
    GUID connectionId,
    int newConnectivity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID connectionId,
            Int32 newConnectivity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID connectionId,
            int newConnectivity,
          )>()(
        ptr.ref.lpVtbl,
        connectionId,
        newConnectivity,
      );

  int NetworkConnectionPropertyChanged(
    GUID connectionId,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID connectionId,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID connectionId,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        connectionId,
        flags,
      );
}
