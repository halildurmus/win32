// IMFPresentationClock.dart

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

import '../../media/mediafoundation/IMFClock.dart';
import '../../media/mediafoundation/IMFPresentationTimeSource.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFClockStateSink.dart';

/// @nodoc
const IID_IMFPresentationClock = '{868CE85C-8EA9-4F55-AB82-B009A910A805}';

/// {@category Interface}
/// {@category com}
class IMFPresentationClock extends IMFClock {
  // vtable begins at 8, is 8 entries long.
  IMFPresentationClock(Pointer<COMObject> ptr) : super(ptr);

  int SetTimeSource(
    Pointer<COMObject> pTimeSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTimeSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTimeSource,
          )>()(
        ptr.ref.lpVtbl,
        pTimeSource,
      );

  int GetTimeSource(
    Pointer<Pointer<COMObject>> ppTimeSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTimeSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTimeSource,
          )>()(
        ptr.ref.lpVtbl,
        ppTimeSource,
      );

  int GetTime(
    Pointer<Int64> phnsClockTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> phnsClockTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> phnsClockTime,
          )>()(
        ptr.ref.lpVtbl,
        phnsClockTime,
      );

  int AddClockStateSink(
    Pointer<COMObject> pStateSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStateSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStateSink,
          )>()(
        ptr.ref.lpVtbl,
        pStateSink,
      );

  int RemoveClockStateSink(
    Pointer<COMObject> pStateSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStateSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStateSink,
          )>()(
        ptr.ref.lpVtbl,
        pStateSink,
      );

  int Start(
    int llClockStartOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 llClockStartOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int llClockStartOffset,
          )>()(
        ptr.ref.lpVtbl,
        llClockStartOffset,
      );

  int Stop() => ptr.ref.lpVtbl.value
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
}
