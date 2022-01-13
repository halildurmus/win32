// IManipulationEvents.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IManipulationEvents = '{4F62C8DA-9C53-4B22-93DF-927A862BBB03}';

/// {@category Interface}
/// {@category com}
class IManipulationEvents extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IManipulationEvents(Pointer<COMObject> ptr) : super(ptr);

  int ManipulationStarted(
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
      );

  int ManipulationDelta(
    double x,
    double y,
    double translationDeltaX,
    double translationDeltaY,
    double scaleDelta,
    double expansionDelta,
    double rotationDelta,
    double cumulativeTranslationX,
    double cumulativeTranslationY,
    double cumulativeScale,
    double cumulativeExpansion,
    double cumulativeRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
            Float translationDeltaX,
            Float translationDeltaY,
            Float scaleDelta,
            Float expansionDelta,
            Float rotationDelta,
            Float cumulativeTranslationX,
            Float cumulativeTranslationY,
            Float cumulativeScale,
            Float cumulativeExpansion,
            Float cumulativeRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            double translationDeltaX,
            double translationDeltaY,
            double scaleDelta,
            double expansionDelta,
            double rotationDelta,
            double cumulativeTranslationX,
            double cumulativeTranslationY,
            double cumulativeScale,
            double cumulativeExpansion,
            double cumulativeRotation,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        translationDeltaX,
        translationDeltaY,
        scaleDelta,
        expansionDelta,
        rotationDelta,
        cumulativeTranslationX,
        cumulativeTranslationY,
        cumulativeScale,
        cumulativeExpansion,
        cumulativeRotation,
      );

  int ManipulationCompleted(
    double x,
    double y,
    double cumulativeTranslationX,
    double cumulativeTranslationY,
    double cumulativeScale,
    double cumulativeExpansion,
    double cumulativeRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
            Float cumulativeTranslationX,
            Float cumulativeTranslationY,
            Float cumulativeScale,
            Float cumulativeExpansion,
            Float cumulativeRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            double cumulativeTranslationX,
            double cumulativeTranslationY,
            double cumulativeScale,
            double cumulativeExpansion,
            double cumulativeRotation,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        cumulativeTranslationX,
        cumulativeTranslationY,
        cumulativeScale,
        cumulativeExpansion,
        cumulativeRotation,
      );
}
