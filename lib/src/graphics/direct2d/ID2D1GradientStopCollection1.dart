// ID2D1GradientStopCollection1.dart

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

import '../../graphics/direct2d/ID2D1GradientStopCollection.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1GradientStopCollection1 =
    '{AE1572F4-5DD0-4777-998B-9279472AE63B}';

/// {@category Interface}
/// {@category com}
class ID2D1GradientStopCollection1 extends ID2D1GradientStopCollection {
  // vtable begins at 8, is 5 entries long.
  ID2D1GradientStopCollection1(Pointer<COMObject> ptr) : super(ptr);

  void GetGradientStops1(
    Pointer<D2D1_GRADIENT_STOP> gradientStops,
    int gradientStopsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_GRADIENT_STOP> gradientStops,
            Uint32 gradientStopsCount,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_GRADIENT_STOP> gradientStops,
            int gradientStopsCount,
          )>()(
        ptr.ref.lpVtbl,
        gradientStops,
        gradientStopsCount,
      );

  int GetPreInterpolationSpace() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetPostInterpolationSpace() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetBufferPrecision() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetColorInterpolationMode() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
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
