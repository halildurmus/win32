// IWRdsProtocolConnectionCallback.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IWRdsProtocolConnectionCallback =
    '{F1D70332-D070-4EF1-A088-78313536C2D6}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolConnectionCallback extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWRdsProtocolConnectionCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnReady() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int BrokenConnection(
    int Reason,
    int Source,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Reason,
            Uint32 Source,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Reason,
            int Source,
          )>()(
        ptr.ref.lpVtbl,
        Reason,
        Source,
      );

  int StopScreenUpdates() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int RedrawWindow(
    Pointer<WTS_SMALL_RECT> rect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WTS_SMALL_RECT> rect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WTS_SMALL_RECT> rect,
          )>()(
        ptr.ref.lpVtbl,
        rect,
      );

  int GetConnectionId(
    Pointer<Uint32> pConnectionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pConnectionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pConnectionId,
          )>()(
        ptr.ref.lpVtbl,
        pConnectionId,
      );
}
