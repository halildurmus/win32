// ITransactionCloner.dart

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

import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransactionCloner = '{02656950-2152-11D0-944C-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class ITransactionCloner extends ITransaction {
  // vtable begins at 6, is 1 entries long.
  ITransactionCloner(Pointer<COMObject> ptr) : super(ptr);

  int CloneWithCommitDisabled(
    Pointer<Pointer<COMObject>> ppITransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppITransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppITransaction,
          )>()(
        ptr.ref.lpVtbl,
        ppITransaction,
      );
}
