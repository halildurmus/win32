// ITransaction2.dart

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

import '../../system/distributedtransactioncoordinator/ITransactionCloner.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITransaction2 = '{34021548-0065-11D3-BAC1-00C04F797BE2}';

/// {@category Interface}
/// {@category com}
class ITransaction2 extends ITransactionCloner {
  // vtable begins at 7, is 1 entries long.
  ITransaction2(Pointer<COMObject> ptr) : super(ptr);

  int GetTransactionInfo2(
    Pointer<XACTTRANSINFO> pinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XACTTRANSINFO> pinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XACTTRANSINFO> pinfo,
          )>()(
        ptr.ref.lpVtbl,
        pinfo,
      );
}
