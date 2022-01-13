// IDCompositionDelegatedInkTrail.dart

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
import '../../graphics/directcomposition/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_IDCompositionDelegatedInkTrail =
    '{C2448E9B-547D-4057-8CF5-8144EDE1C2DA}';

/// {@category Interface}
/// {@category com}
class IDCompositionDelegatedInkTrail extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDCompositionDelegatedInkTrail(Pointer<COMObject> ptr) : super(ptr);

  int AddTrailPoints(
    Pointer<DCompositionInkTrailPoint> inkPoints,
    int inkPointsCount,
    Pointer<Uint32> generationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DCompositionInkTrailPoint> inkPoints,
            Uint32 inkPointsCount,
            Pointer<Uint32> generationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DCompositionInkTrailPoint> inkPoints,
            int inkPointsCount,
            Pointer<Uint32> generationId,
          )>()(
        ptr.ref.lpVtbl,
        inkPoints,
        inkPointsCount,
        generationId,
      );

  int AddTrailPointsWithPrediction(
    Pointer<DCompositionInkTrailPoint> inkPoints,
    int inkPointsCount,
    Pointer<DCompositionInkTrailPoint> predictedInkPoints,
    int predictedInkPointsCount,
    Pointer<Uint32> generationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DCompositionInkTrailPoint> inkPoints,
            Uint32 inkPointsCount,
            Pointer<DCompositionInkTrailPoint> predictedInkPoints,
            Uint32 predictedInkPointsCount,
            Pointer<Uint32> generationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DCompositionInkTrailPoint> inkPoints,
            int inkPointsCount,
            Pointer<DCompositionInkTrailPoint> predictedInkPoints,
            int predictedInkPointsCount,
            Pointer<Uint32> generationId,
          )>()(
        ptr.ref.lpVtbl,
        inkPoints,
        inkPointsCount,
        predictedInkPoints,
        predictedInkPointsCount,
        generationId,
      );

  int RemoveTrailPoints(
    int generationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 generationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int generationId,
          )>()(
        ptr.ref.lpVtbl,
        generationId,
      );

  int StartNewTrail(
    Pointer<D2D1_COLOR_F> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );
}
