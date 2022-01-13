// IBDA_DigitalDemodulator3.dart

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

import '../../media/directshow/IBDA_DigitalDemodulator2.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_DigitalDemodulator3 = '{13F19604-7D32-4359-93A2-A05205D90AC9}';

/// {@category Interface}
/// {@category com}
class IBDA_DigitalDemodulator3 extends IBDA_DigitalDemodulator2 {
  // vtable begins at 25, is 4 entries long.
  IBDA_DigitalDemodulator3(Pointer<COMObject> ptr) : super(ptr);

  int put_SignalTimeouts(
    Pointer<BDA_SIGNAL_TIMEOUTS> pSignalTimeouts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BDA_SIGNAL_TIMEOUTS> pSignalTimeouts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BDA_SIGNAL_TIMEOUTS> pSignalTimeouts,
          )>()(
        ptr.ref.lpVtbl,
        pSignalTimeouts,
      );

  int get_SignalTimeouts(
    Pointer<BDA_SIGNAL_TIMEOUTS> pSignalTimeouts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BDA_SIGNAL_TIMEOUTS> pSignalTimeouts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BDA_SIGNAL_TIMEOUTS> pSignalTimeouts,
          )>()(
        ptr.ref.lpVtbl,
        pSignalTimeouts,
      );

  int put_PLPNumber(
    Pointer<Uint32> pPLPNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pPLPNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pPLPNumber,
          )>()(
        ptr.ref.lpVtbl,
        pPLPNumber,
      );

  int get_PLPNumber(
    Pointer<Uint32> pPLPNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pPLPNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pPLPNumber,
          )>()(
        ptr.ref.lpVtbl,
        pPLPNumber,
      );
}
