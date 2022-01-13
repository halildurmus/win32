// IRDPSRAPIAudioStream.dart

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
const IID_IRDPSRAPIAudioStream = '{E3E30EF9-89C6-4541-BA3B-19336AC6D31C}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIAudioStream extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IRDPSRAPIAudioStream(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Int64> pnPeriodInHundredNsIntervals,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pnPeriodInHundredNsIntervals,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pnPeriodInHundredNsIntervals,
          )>()(
        ptr.ref.lpVtbl,
        pnPeriodInHundredNsIntervals,
      );

  int Start() => ptr.ref.lpVtbl.value
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

  int Stop() => ptr.ref.lpVtbl.value
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

  int GetBuffer(
    Pointer<Pointer<Uint8>> ppbData,
    Pointer<Uint32> pcbData,
    Pointer<Uint64> pTimestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
            Pointer<Uint64> pTimestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbData,
            Pointer<Uint32> pcbData,
            Pointer<Uint64> pTimestamp,
          )>()(
        ptr.ref.lpVtbl,
        ppbData,
        pcbData,
        pTimestamp,
      );

  int FreeBuffer() => ptr.ref.lpVtbl.value
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
}
