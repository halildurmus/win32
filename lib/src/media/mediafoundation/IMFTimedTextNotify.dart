// IMFTimedTextNotify.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFTimedTextCue.dart';

/// @nodoc
const IID_IMFTimedTextNotify = '{DF6B87B6-CE12-45DB-ABA7-432FE054E57D}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextNotify extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFTimedTextNotify(Pointer<COMObject> ptr) : super(ptr);

  void TrackAdded(
    int trackId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 trackId,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int trackId,
          )>()(
        ptr.ref.lpVtbl,
        trackId,
      );

  void TrackRemoved(
    int trackId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 trackId,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int trackId,
          )>()(
        ptr.ref.lpVtbl,
        trackId,
      );

  void TrackSelected(
    int trackId,
    int selected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 trackId,
            Int32 selected,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int trackId,
            int selected,
          )>()(
        ptr.ref.lpVtbl,
        trackId,
        selected,
      );

  void TrackReadyStateChanged(
    int trackId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 trackId,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int trackId,
          )>()(
        ptr.ref.lpVtbl,
        trackId,
      );

  void Error(
    int errorCode,
    int extendedErrorCode,
    int sourceTrackId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 errorCode,
            Int32 extendedErrorCode,
            Uint32 sourceTrackId,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int errorCode,
            int extendedErrorCode,
            int sourceTrackId,
          )>()(
        ptr.ref.lpVtbl,
        errorCode,
        extendedErrorCode,
        sourceTrackId,
      );

  void Cue(
    int cueEvent,
    double currentTime,
    Pointer<COMObject> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 cueEvent,
            Double currentTime,
            Pointer<COMObject> cue,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int cueEvent,
            double currentTime,
            Pointer<COMObject> cue,
          )>()(
        ptr.ref.lpVtbl,
        cueEvent,
        currentTime,
        cue,
      );

  void Reset() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
