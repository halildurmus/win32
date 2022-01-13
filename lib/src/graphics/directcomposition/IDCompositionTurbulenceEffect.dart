// IDCompositionTurbulenceEffect.dart

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

import '../../graphics/directcomposition/IDCompositionFilterEffect.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionTurbulenceEffect =
    '{A6A55BDA-C09C-49F3-9193-A41922C89715}';

/// {@category Interface}
/// {@category com}
class IDCompositionTurbulenceEffect extends IDCompositionFilterEffect {
  // vtable begins at 4, is 7 entries long.
  IDCompositionTurbulenceEffect(Pointer<COMObject> ptr) : super(ptr);

  int SetOffset(
    Pointer<D2D_VECTOR_2F> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int SetBaseFrequency(
    Pointer<D2D_VECTOR_2F> frequency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> frequency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> frequency,
          )>()(
        ptr.ref.lpVtbl,
        frequency,
      );

  int SetSize(
    Pointer<D2D_VECTOR_2F> size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_VECTOR_2F> size,
          )>()(
        ptr.ref.lpVtbl,
        size,
      );

  int SetNumOctaves(
    int numOctaves,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 numOctaves,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int numOctaves,
          )>()(
        ptr.ref.lpVtbl,
        numOctaves,
      );

  int SetSeed(
    int seed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 seed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int seed,
          )>()(
        ptr.ref.lpVtbl,
        seed,
      );

  int SetNoise(
    int noise,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 noise,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int noise,
          )>()(
        ptr.ref.lpVtbl,
        noise,
      );

  int SetStitchable(
    int stitchable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 stitchable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stitchable,
          )>()(
        ptr.ref.lpVtbl,
        stitchable,
      );
}
