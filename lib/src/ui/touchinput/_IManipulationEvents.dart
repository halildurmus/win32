// _IManipulationEvents.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';

/// @nodoc
const IID__IManipulationEvents = '{4F62C8DA-9C53-4B22-93DF-927A862BBB03}';

typedef _ManipulationStarted_Native = Int32 Function(
    Pointer obj, Float x, Float y);
typedef _ManipulationStarted_Dart = int Function(
    Pointer obj, double x, double y);

typedef _ManipulationDelta_Native = Int32 Function(
    Pointer obj,
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
    Float cumulativeRotation);
typedef _ManipulationDelta_Dart = int Function(
    Pointer obj,
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
    double cumulativeRotation);

typedef _ManipulationCompleted_Native = Int32 Function(
    Pointer obj,
    Float x,
    Float y,
    Float cumulativeTranslationX,
    Float cumulativeTranslationY,
    Float cumulativeScale,
    Float cumulativeExpansion,
    Float cumulativeRotation);
typedef _ManipulationCompleted_Dart = int Function(
    Pointer obj,
    double x,
    double y,
    double cumulativeTranslationX,
    double cumulativeTranslationY,
    double cumulativeScale,
    double cumulativeExpansion,
    double cumulativeRotation);

/// {@category Interface}
/// {@category com}
class _IManipulationEvents extends IUnknown {
  // vtable begins at 3, ends at 5

  _IManipulationEvents(Pointer<COMObject> ptr) : super(ptr);

  int ManipulationStarted(double x, double y) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_ManipulationStarted_Native>>>()
      .value
      .asFunction<_ManipulationStarted_Dart>()(ptr.ref.lpVtbl, x, y);

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
          double cumulativeRotation) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_ManipulationDelta_Native>>>()
              .value
              .asFunction<_ManipulationDelta_Dart>()(
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
          cumulativeRotation);

  int ManipulationCompleted(
          double x,
          double y,
          double cumulativeTranslationX,
          double cumulativeTranslationY,
          double cumulativeScale,
          double cumulativeExpansion,
          double cumulativeRotation) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_ManipulationCompleted_Native>>>()
              .value
              .asFunction<_ManipulationCompleted_Dart>()(
          ptr.ref.lpVtbl,
          x,
          y,
          cumulativeTranslationX,
          cumulativeTranslationY,
          cumulativeScale,
          cumulativeExpansion,
          cumulativeRotation);
}
