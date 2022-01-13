// ITransactionVoterNotifyAsync2.dart

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

import '../../system/distributedtransactioncoordinator/ITransactionOutcomeEvents.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionVoterNotifyAsync2 =
    '{5433376B-414D-11D3-B206-00C04FC2F3EF}';

/// {@category Interface}
/// {@category com}
class ITransactionVoterNotifyAsync2 extends ITransactionOutcomeEvents {
  // vtable begins at 7, is 1 entries long.
  ITransactionVoterNotifyAsync2(Pointer<COMObject> ptr) : super(ptr);

  int VoteRequest() => ptr.ref.lpVtbl.value
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
