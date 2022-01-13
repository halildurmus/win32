// IUIAnimationVariable.dart

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
import '../../ui/animation/IUIAnimationStoryboard.dart';
import '../../ui/animation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/animation/IUIAnimationVariableChangeHandler.dart';
import '../../ui/animation/IUIAnimationVariableIntegerChangeHandler.dart';

/// @nodoc
const IID_IUIAnimationVariable = '{8CEEB155-2849-4CE5-9448-91FF70E1E4D9}';

/// {@category Interface}
/// {@category com}
class IUIAnimationVariable extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IUIAnimationVariable(Pointer<COMObject> ptr) : super(ptr);

  int GetValue(
    Pointer<Double> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetFinalValue(
    Pointer<Double> finalValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetPreviousValue(
    Pointer<Double> previousValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetIntegerValue(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetFinalIntegerValue(
    Pointer<Int32> finalValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetPreviousIntegerValue(
    Pointer<Int32> previousValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetCurrentStoryboard(
    Pointer<Pointer<COMObject>> storyboard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
          .elementAt(10)
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

  int SetUpperBound(
    double bound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetRoundingMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
          .elementAt(13)
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
          .elementAt(14)
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int SetVariableIntegerChangeHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
