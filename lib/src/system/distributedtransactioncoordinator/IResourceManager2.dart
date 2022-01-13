// IResourceManager2.dart

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

import '../../system/distributedtransactioncoordinator/IResourceManager.dart';
import '../../system/distributedtransactioncoordinator/ITransaction.dart';
import '../../system/distributedtransactioncoordinator/ITransactionResourceAsync.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../system/distributedtransactioncoordinator/ITransactionEnlistmentAsync.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IResourceManager2 = '{D136C69A-F749-11D1-8F47-00C04F8EE57D}';

/// {@category Interface}
/// {@category com}
class IResourceManager2 extends IResourceManager {
  // vtable begins at 7, is 2 entries long.
  IResourceManager2(Pointer<COMObject> ptr) : super(ptr);

  int Enlist2(
    Pointer<COMObject> pTransaction,
    Pointer<COMObject> pResAsync,
    Pointer<BOID> pUOW,
    Pointer<Int32> pisoLevel,
    Pointer<xid_t> pXid,
    Pointer<Pointer<COMObject>> ppEnlist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTransaction,
            Pointer<COMObject> pResAsync,
            Pointer<BOID> pUOW,
            Pointer<Int32> pisoLevel,
            Pointer<xid_t> pXid,
            Pointer<Pointer<COMObject>> ppEnlist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTransaction,
            Pointer<COMObject> pResAsync,
            Pointer<BOID> pUOW,
            Pointer<Int32> pisoLevel,
            Pointer<xid_t> pXid,
            Pointer<Pointer<COMObject>> ppEnlist,
          )>()(
        ptr.ref.lpVtbl,
        pTransaction,
        pResAsync,
        pUOW,
        pisoLevel,
        pXid,
        ppEnlist,
      );

  int Reenlist2(
    Pointer<xid_t> pXid,
    int dwTimeout,
    Pointer<Int32> pXactStat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<xid_t> pXid,
            Uint32 dwTimeout,
            Pointer<Int32> pXactStat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<xid_t> pXid,
            int dwTimeout,
            Pointer<Int32> pXactStat,
          )>()(
        ptr.ref.lpVtbl,
        pXid,
        dwTimeout,
        pXactStat,
      );
}
