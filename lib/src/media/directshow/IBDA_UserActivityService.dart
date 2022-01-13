// IBDA_UserActivityService.dart

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
const IID_IBDA_UserActivityService = '{53B14189-E478-4B7A-A1FF-506DB4B99DFE}';

/// {@category Interface}
/// {@category com}
class IBDA_UserActivityService extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBDA_UserActivityService(Pointer<COMObject> ptr) : super(ptr);

  int SetCurrentTunerUseReason(
    int dwUseReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUseReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUseReason,
          )>()(
        ptr.ref.lpVtbl,
        dwUseReason,
      );

  int GetUserActivityInterval(
    Pointer<Uint32> pdwActivityInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwActivityInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwActivityInterval,
          )>()(
        ptr.ref.lpVtbl,
        pdwActivityInterval,
      );

  int UserActivityDetected() => ptr.ref.lpVtbl.value
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
}
