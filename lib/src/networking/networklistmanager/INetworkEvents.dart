// INetworkEvents.dart

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
import '../../foundation/structs.g.dart';
import '../../networking/networklistmanager/structs.g.dart';

/// @nodoc
const IID_INetworkEvents = '{DCB00004-570F-4A9B-8D69-199FDBA5723B}';

/// {@category Interface}
/// {@category com}
class INetworkEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INetworkEvents(Pointer<COMObject> ptr) : super(ptr);

  int NetworkAdded(
    GUID networkId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID networkId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID networkId,
          )>()(
        ptr.ref.lpVtbl,
        networkId,
      );

  int NetworkDeleted(
    GUID networkId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID networkId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID networkId,
          )>()(
        ptr.ref.lpVtbl,
        networkId,
      );

  int NetworkConnectivityChanged(
    GUID networkId,
    int newConnectivity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID networkId,
            Int32 newConnectivity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID networkId,
            int newConnectivity,
          )>()(
        ptr.ref.lpVtbl,
        networkId,
        newConnectivity,
      );

  int NetworkPropertyChanged(
    GUID networkId,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID networkId,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID networkId,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        networkId,
        flags,
      );
}
