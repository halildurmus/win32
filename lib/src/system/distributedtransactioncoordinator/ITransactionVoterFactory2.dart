// ITransactionVoterFactory2.dart

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
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../system/distributedtransactioncoordinator/ITransactionVoterNotifyAsync2.dart';
import '../../system/distributedtransactioncoordinator/ITransactionVoterBallotAsync2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionVoterFactory2 = '{5433376A-414D-11D3-B206-00C04FC2F3EF}';

/// {@category Interface}
/// {@category com}
class ITransactionVoterFactory2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITransactionVoterFactory2(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<COMObject> pTransaction,
    Pointer<COMObject> pVoterNotify,
    Pointer<Pointer<COMObject>> ppVoterBallot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTransaction,
            Pointer<COMObject> pVoterNotify,
            Pointer<Pointer<COMObject>> ppVoterBallot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTransaction,
            Pointer<COMObject> pVoterNotify,
            Pointer<Pointer<COMObject>> ppVoterBallot,
          )>()(
        ptr.ref.lpVtbl,
        pTransaction,
        pVoterNotify,
        ppVoterBallot,
      );
}
