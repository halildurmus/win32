// IUIAnimationStoryboard.dart

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
import '../../ui/animation/IUIAnimationVariable.dart';
import '../../ui/animation/IUIAnimationTransition.dart';
import '../../foundation/structs.g.dart';
import '../../ui/animation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/animation/IUIAnimationStoryboardEventHandler.dart';

/// @nodoc
const IID_IUIAnimationStoryboard = '{A8FF128F-9BF9-4AF1-9E67-E5E410DEFB84}';

/// {@category Interface}
/// {@category com}
class IUIAnimationStoryboard extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IUIAnimationStoryboard(Pointer<COMObject> ptr) : super(ptr);

  int AddTransition(
    Pointer<COMObject> variable,
    Pointer<COMObject> transition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
          )>()(
        ptr.ref.lpVtbl,
        variable,
        transition,
      );

  int AddKeyframeAtOffset(
    int existingKeyframe,
    double offset,
    Pointer<IntPtr> keyframe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr existingKeyframe,
            Double offset,
            Pointer<IntPtr> keyframe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int existingKeyframe,
            double offset,
            Pointer<IntPtr> keyframe,
          )>()(
        ptr.ref.lpVtbl,
        existingKeyframe,
        offset,
        keyframe,
      );

  int AddKeyframeAfterTransition(
    Pointer<COMObject> transition,
    Pointer<IntPtr> keyframe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> transition,
            Pointer<IntPtr> keyframe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> transition,
            Pointer<IntPtr> keyframe,
          )>()(
        ptr.ref.lpVtbl,
        transition,
        keyframe,
      );

  int AddTransitionAtKeyframe(
    Pointer<COMObject> variable,
    Pointer<COMObject> transition,
    int startKeyframe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
            IntPtr startKeyframe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
            int startKeyframe,
          )>()(
        ptr.ref.lpVtbl,
        variable,
        transition,
        startKeyframe,
      );

  int AddTransitionBetweenKeyframes(
    Pointer<COMObject> variable,
    Pointer<COMObject> transition,
    int startKeyframe,
    int endKeyframe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
            IntPtr startKeyframe,
            IntPtr endKeyframe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
            int startKeyframe,
            int endKeyframe,
          )>()(
        ptr.ref.lpVtbl,
        variable,
        transition,
        startKeyframe,
        endKeyframe,
      );

  int RepeatBetweenKeyframes(
    int startKeyframe,
    int endKeyframe,
    int repetitionCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr startKeyframe,
            IntPtr endKeyframe,
            Int32 repetitionCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int startKeyframe,
            int endKeyframe,
            int repetitionCount,
          )>()(
        ptr.ref.lpVtbl,
        startKeyframe,
        endKeyframe,
        repetitionCount,
      );

  int HoldVariable(
    Pointer<COMObject> variable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> variable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> variable,
          )>()(
        ptr.ref.lpVtbl,
        variable,
      );

  int SetLongestAcceptableDelay(
    double delay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double delay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double delay,
          )>()(
        ptr.ref.lpVtbl,
        delay,
      );

  int Schedule(
    double timeNow,
    Pointer<Int32> schedulingResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double timeNow,
            Pointer<Int32> schedulingResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double timeNow,
            Pointer<Int32> schedulingResult,
          )>()(
        ptr.ref.lpVtbl,
        timeNow,
        schedulingResult,
      );

  int Conclude() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int Finish(
    double completionDeadline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double completionDeadline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double completionDeadline,
          )>()(
        ptr.ref.lpVtbl,
        completionDeadline,
      );

  int Abandon() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetTag(
    Pointer<COMObject> object,
    int id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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
          .elementAt(16)
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

  int GetStatus(
    Pointer<Int32> status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );

  int GetElapsedTime(
    Pointer<Double> elapsedTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> elapsedTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> elapsedTime,
          )>()(
        ptr.ref.lpVtbl,
        elapsedTime,
      );

  int SetStoryboardEventHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
