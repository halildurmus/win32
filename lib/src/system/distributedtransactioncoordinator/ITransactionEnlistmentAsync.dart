// ITransactionEnlistmentAsync.dart

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
import '../../system/com/IMoniker.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_ITransactionEnlistmentAsync =
    '{0FB15081-AF41-11CE-BD2B-204C4F4F5020}';

/// {@category Interface}
/// {@category com}
class ITransactionEnlistmentAsync extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITransactionEnlistmentAsync(Pointer<COMObject> ptr) : super(ptr);

  int PrepareRequestDone(
    int hr,
    Pointer<COMObject> pmk,
    Pointer<BOID> pboidReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
            Pointer<COMObject> pmk,
            Pointer<BOID> pboidReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            Pointer<COMObject> pmk,
            Pointer<BOID> pboidReason,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        pmk,
        pboidReason,
      );

  int CommitRequestDone(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );

  int AbortRequestDone(
    int hr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
          )>()(
        ptr.ref.lpVtbl,
        hr,
      );
}
