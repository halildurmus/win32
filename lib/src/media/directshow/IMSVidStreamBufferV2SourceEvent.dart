// IMSVidStreamBufferV2SourceEvent.dart

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

import '../../media/directshow/IMSVidFilePlaybackEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferV2SourceEvent =
    '{49C771F9-41B2-4CF7-9F9A-A313A8F6027E}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferV2SourceEvent extends IMSVidFilePlaybackEvent {
  // vtable begins at 8, is 9 entries long.
  IMSVidStreamBufferV2SourceEvent(Pointer<COMObject> ptr) : super(ptr);

  int RatingsChanged() => ptr.ref.lpVtbl.value
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

  int TimeHole(
    int StreamOffsetMS,
    int SizeMS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StreamOffsetMS,
            Int32 SizeMS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamOffsetMS,
            int SizeMS,
          )>()(
        ptr.ref.lpVtbl,
        StreamOffsetMS,
        SizeMS,
      );

  int StaleDataRead() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int ContentBecomingStale() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int StaleFileDeleted() => ptr.ref.lpVtbl.value
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

  int RateChange(
    double qwNewRate,
    double qwOldRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double qwNewRate,
            Double qwOldRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double qwNewRate,
            double qwOldRate,
          )>()(
        ptr.ref.lpVtbl,
        qwNewRate,
        qwOldRate,
      );

  int BroadcastEvent(
    Pointer<Utf16> Guid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Guid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Guid,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
      );

  int BroadcastEventEx(
    Pointer<Utf16> Guid,
    int Param1,
    int Param2,
    int Param3,
    int Param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Guid,
            Uint32 Param1,
            Uint32 Param2,
            Uint32 Param3,
            Uint32 Param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Guid,
            int Param1,
            int Param2,
            int Param3,
            int Param4,
          )>()(
        ptr.ref.lpVtbl,
        Guid,
        Param1,
        Param2,
        Param3,
        Param4,
      );

  int ContentPrimarilyAudio() => ptr.ref.lpVtbl.value
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
}
