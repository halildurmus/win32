// IDiscMasterProgressEvents.dart

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

/// @nodoc
const IID_IDiscMasterProgressEvents = '{EC9E51C1-4E5D-11D3-9144-00104BA11C5E}';

/// {@category Interface}
/// {@category com}
class IDiscMasterProgressEvents extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDiscMasterProgressEvents(Pointer<COMObject> ptr) : super(ptr);

  int QueryCancel(
    Pointer<Uint8> pbCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbCancel,
          )>()(
        ptr.ref.lpVtbl,
        pbCancel,
      );

  int NotifyPnPActivity() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int NotifyAddProgress(
    int nCompletedSteps,
    int nTotalSteps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCompletedSteps,
            Int32 nTotalSteps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCompletedSteps,
            int nTotalSteps,
          )>()(
        ptr.ref.lpVtbl,
        nCompletedSteps,
        nTotalSteps,
      );

  int NotifyBlockProgress(
    int nCompleted,
    int nTotal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCompleted,
            Int32 nTotal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCompleted,
            int nTotal,
          )>()(
        ptr.ref.lpVtbl,
        nCompleted,
        nTotal,
      );

  int NotifyTrackProgress(
    int nCurrentTrack,
    int nTotalTracks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nCurrentTrack,
            Int32 nTotalTracks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nCurrentTrack,
            int nTotalTracks,
          )>()(
        ptr.ref.lpVtbl,
        nCurrentTrack,
        nTotalTracks,
      );

  int NotifyPreparingBurn(
    int nEstimatedSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nEstimatedSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nEstimatedSeconds,
          )>()(
        ptr.ref.lpVtbl,
        nEstimatedSeconds,
      );

  int NotifyClosingDisc(
    int nEstimatedSeconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nEstimatedSeconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nEstimatedSeconds,
          )>()(
        ptr.ref.lpVtbl,
        nEstimatedSeconds,
      );

  int NotifyBurnComplete(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );

  int NotifyEraseComplete(
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        status,
      );
}
