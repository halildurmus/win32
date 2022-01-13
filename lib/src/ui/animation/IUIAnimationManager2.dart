// IUIAnimationManager2.dart

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
import '../../ui/animation/IUIAnimationVariable2.dart';
import '../../foundation/structs.g.dart';
import '../../ui/animation/IUIAnimationTransition2.dart';
import '../../ui/animation/IUIAnimationStoryboard2.dart';
import '../../ui/animation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/animation/IUIAnimationManagerEventHandler2.dart';
import '../../ui/animation/IUIAnimationPriorityComparison2.dart';

/// @nodoc
const IID_IUIAnimationManager2 = '{D8B6F7D4-4109-4D3F-ACEE-879926968CB1}';

/// {@category Interface}
/// {@category com}
class IUIAnimationManager2 extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IUIAnimationManager2(Pointer<COMObject> ptr) : super(ptr);

  int CreateAnimationVectorVariable(
    Pointer<Double> initialValue,
    int cDimension,
    Pointer<Pointer<COMObject>> variable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> initialValue,
            Uint32 cDimension,
            Pointer<Pointer<COMObject>> variable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> initialValue,
            int cDimension,
            Pointer<Pointer<COMObject>> variable,
          )>()(
        ptr.ref.lpVtbl,
        initialValue,
        cDimension,
        variable,
      );

  int CreateAnimationVariable(
    double initialValue,
    Pointer<Pointer<COMObject>> variable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double initialValue,
            Pointer<Pointer<COMObject>> variable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double initialValue,
            Pointer<Pointer<COMObject>> variable,
          )>()(
        ptr.ref.lpVtbl,
        initialValue,
        variable,
      );

  int ScheduleTransition(
    Pointer<COMObject> variable,
    Pointer<COMObject> transition,
    double timeNow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
            Double timeNow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> variable,
            Pointer<COMObject> transition,
            double timeNow,
          )>()(
        ptr.ref.lpVtbl,
        variable,
        transition,
        timeNow,
      );

  int CreateStoryboard(
    Pointer<Pointer<COMObject>> storyboard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int FinishAllStoryboards(
    double completionDeadline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int AbandonAllStoryboards() => ptr.ref.lpVtbl.value
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

  int Update(
    double timeNow,
    Pointer<Int32> updateResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double timeNow,
            Pointer<Int32> updateResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double timeNow,
            Pointer<Int32> updateResult,
          )>()(
        ptr.ref.lpVtbl,
        timeNow,
        updateResult,
      );

  int GetVariableFromTag(
    Pointer<COMObject> object,
    int id,
    Pointer<Pointer<COMObject>> variable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Uint32 id,
            Pointer<Pointer<COMObject>> variable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            int id,
            Pointer<Pointer<COMObject>> variable,
          )>()(
        ptr.ref.lpVtbl,
        object,
        id,
        variable,
      );

  int GetStoryboardFromTag(
    Pointer<COMObject> object,
    int id,
    Pointer<Pointer<COMObject>> storyboard,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Uint32 id,
            Pointer<Pointer<COMObject>> storyboard,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            int id,
            Pointer<Pointer<COMObject>> storyboard,
          )>()(
        ptr.ref.lpVtbl,
        object,
        id,
        storyboard,
      );

  int EstimateNextEventTime(
    Pointer<Double> seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> seconds,
          )>()(
        ptr.ref.lpVtbl,
        seconds,
      );

  int GetStatus(
    Pointer<Int32> status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int SetAnimationMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int Resume() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int SetManagerEventHandler(
    Pointer<COMObject> handler,
    int fRegisterForNextAnimationEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int SetCancelPriorityComparison(
    Pointer<COMObject> comparison,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>()(
        ptr.ref.lpVtbl,
        comparison,
      );

  int SetTrimPriorityComparison(
    Pointer<COMObject> comparison,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>()(
        ptr.ref.lpVtbl,
        comparison,
      );

  int SetCompressPriorityComparison(
    Pointer<COMObject> comparison,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>()(
        ptr.ref.lpVtbl,
        comparison,
      );

  int SetConcludePriorityComparison(
    Pointer<COMObject> comparison,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> comparison,
          )>()(
        ptr.ref.lpVtbl,
        comparison,
      );

  int SetDefaultLongestAcceptableDelay(
    double delay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(23)
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
}

/// @nodoc
const CLSID_UIAnimationManager2 = '{D25D8842-8884-4A4A-B321-091314379BDD}';

/// {@category com}
class UIAnimationManager2 extends IUIAnimationManager2 {
  UIAnimationManager2(Pointer<COMObject> ptr) : super(ptr);

  factory UIAnimationManager2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UIAnimationManager2);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUIAnimationManager2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UIAnimationManager2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
