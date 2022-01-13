// IMbnConnectionEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnConnection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnConnectionEvents = '{DCBBBAB6-200E-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnConnectionEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMbnConnectionEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnConnectComplete(
    Pointer<COMObject> newConnection,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newConnection,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newConnection,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        newConnection,
        requestID,
        status,
      );

  int OnDisconnectComplete(
    Pointer<COMObject> newConnection,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newConnection,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newConnection,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        newConnection,
        requestID,
        status,
      );

  int OnConnectStateChange(
    Pointer<COMObject> newConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newConnection,
          )>()(
        ptr.ref.lpVtbl,
        newConnection,
      );

  int OnVoiceCallStateChange(
    Pointer<COMObject> newConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> newConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> newConnection,
          )>()(
        ptr.ref.lpVtbl,
        newConnection,
      );
}
