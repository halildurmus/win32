// IScanningTuner.dart

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

import '../../media/directshow/ITuner.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IScanningTuner = '{1DFD0A5C-0284-11D3-9D8E-00C04F72D980}';

/// {@category Interface}
/// {@category com}
class IScanningTuner extends ITuner {
  // vtable begins at 13, is 5 entries long.
  IScanningTuner(Pointer<COMObject> ptr) : super(ptr);

  int SeekUp() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int SeekDown() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int ScanUp(
    int MillisecondsPause,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MillisecondsPause,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MillisecondsPause,
          )>()(
        ptr.ref.lpVtbl,
        MillisecondsPause,
      );

  int ScanDown(
    int MillisecondsPause,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MillisecondsPause,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MillisecondsPause,
          )>()(
        ptr.ref.lpVtbl,
        MillisecondsPause,
      );

  int AutoProgram() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
