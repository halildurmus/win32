// ITransactionOutcomeEvents.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_ITransactionOutcomeEvents = '{3A6AD9E2-23B9-11CF-AD60-00AA00A74CCD}';

/// {@category Interface}
/// {@category com}
class ITransactionOutcomeEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITransactionOutcomeEvents(Pointer<COMObject> ptr) : super(ptr);

  int Committed(
    int fRetaining,
    Pointer<BOID> pNewUOW,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRetaining,
            Pointer<BOID> pNewUOW,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRetaining,
            Pointer<BOID> pNewUOW,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        fRetaining,
        pNewUOW,
        hr,
      );

  int Aborted(
    Pointer<BOID> pboidReason,
    int fRetaining,
    Pointer<BOID> pNewUOW,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BOID> pboidReason,
            Int32 fRetaining,
            Pointer<BOID> pNewUOW,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BOID> pboidReason,
            int fRetaining,
            Pointer<BOID> pNewUOW,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        pboidReason,
        fRetaining,
        pNewUOW,
        hr,
      );

  int HeuristicDecision(
    int dwDecision,
    Pointer<BOID> pboidReason,
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDecision,
            Pointer<BOID> pboidReason,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDecision,
            Pointer<BOID> pboidReason,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        dwDecision,
        pboidReason,
        hr,
      );

  int Indoubt() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
