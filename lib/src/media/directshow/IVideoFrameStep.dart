// IVideoFrameStep.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IVideoFrameStep = '{E46A9787-2B71-444D-A4B5-1FAB7B708D6A}';

/// {@category Interface}
/// {@category com}
class IVideoFrameStep extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IVideoFrameStep(Pointer<COMObject> ptr) : super(ptr);

  int Step(
    int dwFrames,
    Pointer<COMObject> pStepObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFrames,
            Pointer<COMObject> pStepObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFrames,
            Pointer<COMObject> pStepObject,
          )>()(
        ptr.ref.lpVtbl,
        dwFrames,
        pStepObject,
      );

  int CanStep(
    int bMultiple,
    Pointer<COMObject> pStepObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMultiple,
            Pointer<COMObject> pStepObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMultiple,
            Pointer<COMObject> pStepObject,
          )>()(
        ptr.ref.lpVtbl,
        bMultiple,
        pStepObject,
      );

  int CancelStep() => ptr.ref.lpVtbl.value
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
