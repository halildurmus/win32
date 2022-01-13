// IMFTimer.dart

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
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTimer = '{E56E4CBD-8F70-49D8-A0F8-EDB3D6AB9BF2}';

/// {@category Interface}
/// {@category com}
class IMFTimer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFTimer(Pointer<COMObject> ptr) : super(ptr);

  int SetTimer(
    int dwFlags,
    int llClockTime,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
    Pointer<Pointer<COMObject>> ppunkKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int64 llClockTime,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
            Pointer<Pointer<COMObject>> ppunkKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int llClockTime,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
            Pointer<Pointer<COMObject>> ppunkKey,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        llClockTime,
        pCallback,
        punkState,
        ppunkKey,
      );

  int CancelTimer(
    Pointer<COMObject> punkKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkKey,
          )>()(
        ptr.ref.lpVtbl,
        punkKey,
      );
}
