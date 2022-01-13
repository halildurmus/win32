// ITransactionVoterBallotAsync2.dart

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
const IID_ITransactionVoterBallotAsync2 =
    '{5433376C-414D-11D3-B206-00C04FC2F3EF}';

/// {@category Interface}
/// {@category com}
class ITransactionVoterBallotAsync2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITransactionVoterBallotAsync2(Pointer<COMObject> ptr) : super(ptr);

  int VoteRequestDone(
    int hr,
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
            Pointer<BOID> pboidReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hr,
            Pointer<BOID> pboidReason,
          )>()(
        ptr.ref.lpVtbl,
        hr,
        pboidReason,
      );
}
