// IMFMediaTimeRange.dart

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
const IID_IMFMediaTimeRange = '{DB71A2FC-078A-414E-9DF9-8C2531B0AA6C}';

/// {@category Interface}
/// {@category com}
class IMFMediaTimeRange extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFMediaTimeRange(Pointer<COMObject> ptr) : super(ptr);

  int GetLength() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetStart(
    int index,
    Pointer<Double> pStart,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Double> pStart,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Double> pStart,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pStart,
      );

  int GetEnd(
    int index,
    Pointer<Double> pEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Double> pEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Double> pEnd,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pEnd,
      );

  int ContainsTime(
    double time,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double time,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double time,
          )>()(
        ptr.ref.lpVtbl,
        time,
      );

  int AddRange(
    double startTime,
    double endTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double startTime,
            Double endTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double startTime,
            double endTime,
          )>()(
        ptr.ref.lpVtbl,
        startTime,
        endTime,
      );

  int Clear() => ptr.ref.lpVtbl.value
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
}
