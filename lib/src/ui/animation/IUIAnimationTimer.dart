// IUIAnimationTimer.dart

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
import '../../ui/animation/IUIAnimationTimerUpdateHandler.dart';
import '../../ui/animation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/animation/IUIAnimationTimerEventHandler.dart';

/// @nodoc
const IID_IUIAnimationTimer = '{6B0EFAD1-A053-41D6-9085-33A689144665}';

/// {@category Interface}
/// {@category com}
class IUIAnimationTimer extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IUIAnimationTimer(Pointer<COMObject> ptr) : super(ptr);

  int SetTimerUpdateHandler(
    Pointer<COMObject> updateHandler,
    int idleBehavior,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> updateHandler,
            Int32 idleBehavior,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> updateHandler,
            int idleBehavior,
          )>()(
        ptr.ref.lpVtbl,
        updateHandler,
        idleBehavior,
      );

  int SetTimerEventHandler(
    Pointer<COMObject> handler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Enable() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Disable() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsEnabled() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetTime(
    Pointer<Double> seconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int SetFrameRateThreshold(
    int framesPerSecond,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 framesPerSecond,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int framesPerSecond,
          )>()(
        ptr.ref.lpVtbl,
        framesPerSecond,
      );
}

/// @nodoc
const CLSID_UIAnimationTimer = '{BFCD4A0C-06B6-4384-B768-0DAA792C380E}';

/// {@category com}
class UIAnimationTimer extends IUIAnimationTimer {
  UIAnimationTimer(Pointer<COMObject> ptr) : super(ptr);

  factory UIAnimationTimer.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UIAnimationTimer);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUIAnimationTimer);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UIAnimationTimer(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
