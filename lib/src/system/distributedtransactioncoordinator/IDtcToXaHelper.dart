// IDtcToXaHelper.dart

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
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';

/// @nodoc
const IID_IDtcToXaHelper = '{A9861611-304A-11D1-9813-00A0C905416E}';

/// {@category Interface}
/// {@category com}
class IDtcToXaHelper extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDtcToXaHelper(Pointer<COMObject> ptr) : super(ptr);

  int Close(
    int i_fDoRecovery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i_fDoRecovery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i_fDoRecovery,
          )>()(
        ptr.ref.lpVtbl,
        i_fDoRecovery,
      );

  int TranslateTridToXid(
    Pointer<COMObject> pITransaction,
    Pointer<GUID> pguidBqual,
    Pointer<xid_t> pXid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pITransaction,
            Pointer<GUID> pguidBqual,
            Pointer<xid_t> pXid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pITransaction,
            Pointer<GUID> pguidBqual,
            Pointer<xid_t> pXid,
          )>()(
        ptr.ref.lpVtbl,
        pITransaction,
        pguidBqual,
        pXid,
      );
}
