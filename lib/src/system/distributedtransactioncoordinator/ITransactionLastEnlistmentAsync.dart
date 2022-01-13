// ITransactionLastEnlistmentAsync.dart

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
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionLastEnlistmentAsync =
    '{C82BD533-5B30-11D3-8A91-00C04F79EB6D}';

/// {@category Interface}
/// {@category com}
class ITransactionLastEnlistmentAsync extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITransactionLastEnlistmentAsync(Pointer<COMObject> ptr) : super(ptr);

  int TransactionOutcome(
    int XactStat,
    Pointer<BOID> pboidReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 XactStat,
            Pointer<BOID> pboidReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int XactStat,
            Pointer<BOID> pboidReason,
          )>()(
        ptr.ref.lpVtbl,
        XactStat,
        pboidReason,
      );
}
