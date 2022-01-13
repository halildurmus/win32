// IMFClock.dart

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

/// @nodoc
const IID_IMFClock = '{2EB1E945-18B8-4139-9B1A-D5D584818530}';

/// {@category Interface}
/// {@category com}
class IMFClock extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFClock(Pointer<COMObject> ptr) : super(ptr);

  int GetClockCharacteristics(
    Pointer<Uint32> pdwCharacteristics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCharacteristics,
          )>()(
        ptr.ref.lpVtbl,
        pdwCharacteristics,
      );

  int GetCorrelatedTime(
    int dwReserved,
    Pointer<Int64> pllClockTime,
    Pointer<Int64> phnsSystemTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
            Pointer<Int64> pllClockTime,
            Pointer<Int64> phnsSystemTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
            Pointer<Int64> pllClockTime,
            Pointer<Int64> phnsSystemTime,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
        pllClockTime,
        phnsSystemTime,
      );

  int GetContinuityKey(
    Pointer<Uint32> pdwContinuityKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwContinuityKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwContinuityKey,
          )>()(
        ptr.ref.lpVtbl,
        pdwContinuityKey,
      );

  int GetState(
    int dwReserved,
    Pointer<Int32> peClockState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
            Pointer<Int32> peClockState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
            Pointer<Int32> peClockState,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
        peClockState,
      );

  int GetProperties(
    Pointer<MFCLOCK_PROPERTIES> pClockProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFCLOCK_PROPERTIES> pClockProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFCLOCK_PROPERTIES> pClockProperties,
          )>()(
        ptr.ref.lpVtbl,
        pClockProperties,
      );
}
