// IStreamBufferRecordControl.dart

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

/// @nodoc
const IID_IStreamBufferRecordControl = '{BA9B6C99-F3C7-4FF2-92DB-CFDD4851BF31}';

/// {@category Interface}
/// {@category com}
class IStreamBufferRecordControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IStreamBufferRecordControl(Pointer<COMObject> ptr) : super(ptr);

  int Start(
    Pointer<Int64> prtStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtStart,
          )>()(
        ptr.ref.lpVtbl,
        prtStart,
      );

  int Stop(
    int rtStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rtStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rtStop,
          )>()(
        ptr.ref.lpVtbl,
        rtStop,
      );

  int GetRecordingStatus(
    Pointer<Int32> phResult,
    Pointer<Int32> pbStarted,
    Pointer<Int32> pbStopped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phResult,
            Pointer<Int32> pbStarted,
            Pointer<Int32> pbStopped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phResult,
            Pointer<Int32> pbStarted,
            Pointer<Int32> pbStopped,
          )>()(
        ptr.ref.lpVtbl,
        phResult,
        pbStarted,
        pbStopped,
      );
}
