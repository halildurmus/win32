// IUIAnimationVariable2.dart

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
import '../../graphics/directcomposition/IDCompositionAnimation.dart';
import '../../ui/animation/IUIAnimationStoryboard2.dart';
import '../../ui/animation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/animation/IUIAnimationVariableChangeHandler2.dart';
import '../../ui/animation/IUIAnimationVariableIntegerChangeHandler2.dart';
import '../../ui/animation/IUIAnimationVariableCurveChangeHandler2.dart';

/// @nodoc
const IID_IUIAnimationVariable2 = '{4914B304-96AB-44D9-9E77-D5109B7E7466}';

/// {@category Interface}
/// {@category com}
class IUIAnimationVariable2 extends IUnknown {
  // vtable begins at 3, is 26 entries long.
  IUIAnimationVariable2(Pointer<COMObject> ptr) : super(ptr);

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

  int GetValue(
    Pointer<Double> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetVectorValue(
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

  int GetCurve(
    Pointer<COMObject> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );

  int GetVectorCurve(
    Pointer<Pointer<COMObject>> animation,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> animation,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> animation,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        animation,
        cDimension,
      );

  int GetFinalValue(
    Pointer<Double> finalValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> finalValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> finalValue,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
      );

  int GetFinalVectorValue(
    Pointer<Double> finalValue,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> finalValue,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> finalValue,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
        cDimension,
      );

  int GetPreviousValue(
    Pointer<Double> previousValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> previousValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> previousValue,
          )>()(
        ptr.ref.lpVtbl,
        previousValue,
      );

  int GetPreviousVectorValue(
    Pointer<Double> previousValue,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> previousValue,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> previousValue,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        previousValue,
        cDimension,
      );

  int GetIntegerValue(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetIntegerVectorValue(
    Pointer<Int32> value,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        value,
        cDimension,
      );

  int GetFinalIntegerValue(
    Pointer<Int32> finalValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> finalValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> finalValue,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
      );

  int GetFinalIntegerVectorValue(
    Pointer<Int32> finalValue,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> finalValue,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> finalValue,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        finalValue,
        cDimension,
      );

  int GetPreviousIntegerValue(
    Pointer<Int32> previousValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> previousValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> previousValue,
          )>()(
        ptr.ref.lpVtbl,
        previousValue,
      );

  int GetPreviousIntegerVectorValue(
    Pointer<Int32> previousValue,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> previousValue,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> previousValue,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        previousValue,
        cDimension,
      );

  int GetCurrentStoryboard(
    Pointer<Pointer<COMObject>> storyboard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> storyboard,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> storyboard,
          )>()(
        ptr.ref.lpVtbl,
        storyboard,
      );

  int SetLowerBound(
    double bound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double bound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double bound,
          )>()(
        ptr.ref.lpVtbl,
        bound,
      );

  int SetLowerBoundVector(
    Pointer<Double> bound,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> bound,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> bound,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        bound,
        cDimension,
      );

  int SetUpperBound(
    double bound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double bound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double bound,
          )>()(
        ptr.ref.lpVtbl,
        bound,
      );

  int SetUpperBoundVector(
    Pointer<Double> bound,
    int cDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> bound,
            Uint32 cDimension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> bound,
            int cDimension,
          )>()(
        ptr.ref.lpVtbl,
        bound,
        cDimension,
      );

  int SetRoundingMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );

  int SetTag(
    Pointer<COMObject> object,
    int id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Uint32 id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            int id,
          )>()(
        ptr.ref.lpVtbl,
        object,
        id,
      );

  int GetTag(
    Pointer<Pointer<COMObject>> object,
    Pointer<Uint32> id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Pointer<Uint32> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> object,
            Pointer<Uint32> id,
          )>()(
        ptr.ref.lpVtbl,
        object,
        id,
      );

  int SetVariableChangeHandler(
    Pointer<COMObject> handler,
    int fRegisterForNextAnimationEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> handler,
            Int32 fRegisterForNextAnimationEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> handler,
            int fRegisterForNextAnimationEvent,
          )>()(
        ptr.ref.lpVtbl,
        handler,
        fRegisterForNextAnimationEvent,
      );

  int SetVariableIntegerChangeHandler(
    Pointer<COMObject> handler,
    int fRegisterForNextAnimationEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> handler,
            Int32 fRegisterForNextAnimationEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> handler,
            int fRegisterForNextAnimationEvent,
          )>()(
        ptr.ref.lpVtbl,
        handler,
        fRegisterForNextAnimationEvent,
      );

  int SetVariableCurveChangeHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> handler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> handler,
          )>()(
        ptr.ref.lpVtbl,
        handler,
      );
}
