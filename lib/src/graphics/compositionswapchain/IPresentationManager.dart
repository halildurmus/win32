// IPresentationManager.dart

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
import '../../specialTypes.dart';
import '../../graphics/compositionswapchain/IPresentationBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/compositionswapchain/IPresentationSurface.dart';
import '../../graphics/compositionswapchain/structs.g.dart';
import '../../graphics/compositionswapchain/IPresentStatistics.dart';

/// @nodoc
const IID_IPresentationManager = '{FB562F82-6292-470A-88B1-843661E7F20C}';

/// {@category Interface}
/// {@category com}
class IPresentationManager extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IPresentationManager(Pointer<COMObject> ptr) : super(ptr);

  int AddBufferFromResource(
    Pointer<COMObject> resource,
    Pointer<Pointer<COMObject>> presentationBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> resource,
            Pointer<Pointer<COMObject>> presentationBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> resource,
            Pointer<Pointer<COMObject>> presentationBuffer,
          )>()(
        ptr.ref.lpVtbl,
        resource,
        presentationBuffer,
      );

  int CreatePresentationSurface(
    int compositionSurfaceHandle,
    Pointer<Pointer<COMObject>> presentationSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr compositionSurfaceHandle,
            Pointer<Pointer<COMObject>> presentationSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int compositionSurfaceHandle,
            Pointer<Pointer<COMObject>> presentationSurface,
          )>()(
        ptr.ref.lpVtbl,
        compositionSurfaceHandle,
        presentationSurface,
      );

  int GetNextPresentId() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetTargetTime(
    SystemInterruptTime targetTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SystemInterruptTime targetTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SystemInterruptTime targetTime,
          )>()(
        ptr.ref.lpVtbl,
        targetTime,
      );

  int SetPreferredPresentDuration(
    SystemInterruptTime preferredDuration,
    SystemInterruptTime deviationTolerance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SystemInterruptTime preferredDuration,
            SystemInterruptTime deviationTolerance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SystemInterruptTime preferredDuration,
            SystemInterruptTime deviationTolerance,
          )>()(
        ptr.ref.lpVtbl,
        preferredDuration,
        deviationTolerance,
      );

  int ForceVSyncInterrupt(
    int forceVsyncInterrupt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 forceVsyncInterrupt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int forceVsyncInterrupt,
          )>()(
        ptr.ref.lpVtbl,
        forceVsyncInterrupt,
      );

  int Present() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetPresentRetiringFence(
    Pointer<GUID> riid,
    Pointer<Pointer> fence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> fence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> fence,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        fence,
      );

  int CancelPresentsFrom(
    int presentIdToCancelFrom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 presentIdToCancelFrom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int presentIdToCancelFrom,
          )>()(
        ptr.ref.lpVtbl,
        presentIdToCancelFrom,
      );

  int GetLostEvent(
    Pointer<IntPtr> lostEventHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> lostEventHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> lostEventHandle,
          )>()(
        ptr.ref.lpVtbl,
        lostEventHandle,
      );

  int GetPresentStatisticsAvailableEvent(
    Pointer<IntPtr> presentStatisticsAvailableEventHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> presentStatisticsAvailableEventHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> presentStatisticsAvailableEventHandle,
          )>()(
        ptr.ref.lpVtbl,
        presentStatisticsAvailableEventHandle,
      );

  int EnablePresentStatisticsKind(
    int presentStatisticsKind,
    int enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 presentStatisticsKind,
            Uint8 enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int presentStatisticsKind,
            int enabled,
          )>()(
        ptr.ref.lpVtbl,
        presentStatisticsKind,
        enabled,
      );

  int GetNextPresentStatistics(
    Pointer<Pointer<COMObject>> nextPresentStatistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> nextPresentStatistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> nextPresentStatistics,
          )>()(
        ptr.ref.lpVtbl,
        nextPresentStatistics,
      );
}
