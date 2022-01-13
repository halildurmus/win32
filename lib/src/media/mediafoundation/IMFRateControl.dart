// IMFRateControl.dart

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
const IID_IMFRateControl = '{88DDCD21-03C3-4275-91ED-55EE3929328F}';

/// {@category Interface}
/// {@category com}
class IMFRateControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFRateControl(Pointer<COMObject> ptr) : super(ptr);

  int SetRate(
    int fThin,
    double flRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fThin,
            Float flRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fThin,
            double flRate,
          )>()(
        ptr.ref.lpVtbl,
        fThin,
        flRate,
      );

  int GetRate(
    Pointer<Int32> pfThin,
    Pointer<Float> pflRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfThin,
            Pointer<Float> pflRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfThin,
            Pointer<Float> pflRate,
          )>()(
        ptr.ref.lpVtbl,
        pfThin,
        pflRate,
      );
}
