// IMFClockStateSink.dart

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
const IID_IMFClockStateSink = '{F6696E82-74F7-4F3D-A178-8A5E09C3659F}';

/// {@category Interface}
/// {@category com}
class IMFClockStateSink extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFClockStateSink(Pointer<COMObject> ptr) : super(ptr);

  int OnClockStart(
    int hnsSystemTime,
    int llClockStartOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSystemTime,
            Int64 llClockStartOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSystemTime,
            int llClockStartOffset,
          )>()(
        ptr.ref.lpVtbl,
        hnsSystemTime,
        llClockStartOffset,
      );

  int OnClockStop(
    int hnsSystemTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSystemTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSystemTime,
          )>()(
        ptr.ref.lpVtbl,
        hnsSystemTime,
      );

  int OnClockPause(
    int hnsSystemTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSystemTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSystemTime,
          )>()(
        ptr.ref.lpVtbl,
        hnsSystemTime,
      );

  int OnClockRestart(
    int hnsSystemTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSystemTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSystemTime,
          )>()(
        ptr.ref.lpVtbl,
        hnsSystemTime,
      );

  int OnClockSetRate(
    int hnsSystemTime,
    double flRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 hnsSystemTime,
            Float flRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hnsSystemTime,
            double flRate,
          )>()(
        ptr.ref.lpVtbl,
        hnsSystemTime,
        flRate,
      );
}
