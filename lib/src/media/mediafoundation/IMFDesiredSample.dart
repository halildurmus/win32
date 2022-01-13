// IMFDesiredSample.dart

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
const IID_IMFDesiredSample = '{56C294D0-753E-4260-8D61-A3D8820B1D54}';

/// {@category Interface}
/// {@category com}
class IMFDesiredSample extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFDesiredSample(Pointer<COMObject> ptr) : super(ptr);

  int GetDesiredSampleTimeAndDuration(
    Pointer<Int64> phnsSampleTime,
    Pointer<Int64> phnsSampleDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> phnsSampleTime,
            Pointer<Int64> phnsSampleDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> phnsSampleTime,
            Pointer<Int64> phnsSampleDuration,
          )>()(
        ptr.ref.lpVtbl,
        phnsSampleTime,
        phnsSampleDuration,
      );

  void SetDesiredSampleTimeAndDuration(
    int hnsSampleTime,
    int hnsSampleDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int64 hnsSampleTime,
            Int64 hnsSampleDuration,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int hnsSampleTime,
            int hnsSampleDuration,
          )>()(
        ptr.ref.lpVtbl,
        hnsSampleTime,
        hnsSampleDuration,
      );

  void Clear() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
