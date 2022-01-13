// IMFByteStreamTimeSeek.dart

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
const IID_IMFByteStreamTimeSeek = '{64976BFA-FB61-4041-9069-8C9A5F659BEB}';

/// {@category Interface}
/// {@category com}
class IMFByteStreamTimeSeek extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFByteStreamTimeSeek(Pointer<COMObject> ptr) : super(ptr);

  int IsTimeSeekSupported(
    Pointer<Int32> pfTimeSeekIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfTimeSeekIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfTimeSeekIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        pfTimeSeekIsSupported,
      );

  int TimeSeek(
    int qwTimePosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 qwTimePosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int qwTimePosition,
          )>()(
        ptr.ref.lpVtbl,
        qwTimePosition,
      );

  int GetTimeSeekResult(
    Pointer<Uint64> pqwStartTime,
    Pointer<Uint64> pqwStopTime,
    Pointer<Uint64> pqwDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwStartTime,
            Pointer<Uint64> pqwStopTime,
            Pointer<Uint64> pqwDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwStartTime,
            Pointer<Uint64> pqwStopTime,
            Pointer<Uint64> pqwDuration,
          )>()(
        ptr.ref.lpVtbl,
        pqwStartTime,
        pqwStopTime,
        pqwDuration,
      );
}
