// IBDA_DigitalDemodulator2.dart

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

import '../../media/directshow/IBDA_DigitalDemodulator.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_DigitalDemodulator2 = '{525ED3EE-5CF3-4E1E-9A06-5368A84F9A6E}';

/// {@category Interface}
/// {@category com}
class IBDA_DigitalDemodulator2 extends IBDA_DigitalDemodulator {
  // vtable begins at 17, is 8 entries long.
  IBDA_DigitalDemodulator2(Pointer<COMObject> ptr) : super(ptr);

  int put_GuardInterval(
    Pointer<Int32> pGuardInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pGuardInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pGuardInterval,
          )>()(
        ptr.ref.lpVtbl,
        pGuardInterval,
      );

  int get_GuardInterval(
    Pointer<Int32> pGuardInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pGuardInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pGuardInterval,
          )>()(
        ptr.ref.lpVtbl,
        pGuardInterval,
      );

  int put_TransmissionMode(
    Pointer<Int32> pTransmissionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTransmissionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTransmissionMode,
          )>()(
        ptr.ref.lpVtbl,
        pTransmissionMode,
      );

  int get_TransmissionMode(
    Pointer<Int32> pTransmissionMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTransmissionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTransmissionMode,
          )>()(
        ptr.ref.lpVtbl,
        pTransmissionMode,
      );

  int put_RollOff(
    Pointer<Int32> pRollOff,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRollOff,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRollOff,
          )>()(
        ptr.ref.lpVtbl,
        pRollOff,
      );

  int get_RollOff(
    Pointer<Int32> pRollOff,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRollOff,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRollOff,
          )>()(
        ptr.ref.lpVtbl,
        pRollOff,
      );

  int put_Pilot(
    Pointer<Int32> pPilot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPilot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPilot,
          )>()(
        ptr.ref.lpVtbl,
        pPilot,
      );

  int get_Pilot(
    Pointer<Int32> pPilot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPilot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPilot,
          )>()(
        ptr.ref.lpVtbl,
        pPilot,
      );
}
