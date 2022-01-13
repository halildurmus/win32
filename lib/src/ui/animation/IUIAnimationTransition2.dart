// IUIAnimationTransition2.dart

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
const IID_IUIAnimationTransition2 = '{62FF9123-A85A-4E9B-A218-435A93E268FD}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTransition2 extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IUIAnimationTransition2(Pointer<COMObject> ptr) : super(ptr);

  int GetDimension(
    Pointer<Uint32> dimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dimension,
          )>()(
        ptr.ref.lpVtbl,
        dimension,
      );

  int SetInitialValue(
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int SetInitialVectorValue(
    Pointer<Double> value,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> value,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> value,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        value,
        cDimension,
      );

  int SetInitialVelocity(
    double velocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double velocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double velocity,
          )>()(
        ptr.ref.lpVtbl,
        velocity,
      );

  int SetInitialVectorVelocity(
    Pointer<Double> velocity,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> velocity,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> velocity,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        velocity,
        cDimension,
      );

  int IsDurationKnown() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetDuration(
    Pointer<Double> duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> duration,
          )>()(
        ptr.ref.lpVtbl,
        duration,
      );
}
