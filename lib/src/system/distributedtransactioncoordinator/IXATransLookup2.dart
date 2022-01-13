// IXATransLookup2.dart

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
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXATransLookup2 = '{BF193C85-0D1A-4290-B88F-D2CB8873D1E7}';

/// {@category Interface}
/// {@category com}
class IXATransLookup2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IXATransLookup2(Pointer<COMObject> ptr) : super(ptr);

  int Lookup(
    Pointer<xid_t> pXID,
    Pointer<Pointer<COMObject>> ppTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<xid_t> pXID,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<xid_t> pXID,
            Pointer<Pointer<COMObject>> ppTransaction,
          )>()(
        ptr.ref.lpVtbl,
        pXID,
        ppTransaction,
      );
}
