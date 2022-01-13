// IResourceManager.dart

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
import '../../system/distributedtransactioncoordinator/ITransactionResourceAsync.dart';
import '../../system/distributedtransactioncoordinator/structs.g.dart';
import '../../system/distributedtransactioncoordinator/ITransactionEnlistmentAsync.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IResourceManager = '{13741D21-87EB-11CE-8081-0080C758527E}';

/// {@category Interface}
/// {@category com}
class IResourceManager extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IResourceManager(Pointer<COMObject> ptr) : super(ptr);

  int Enlist(
    Pointer<COMObject> pTransaction,
    Pointer<COMObject> pRes,
    Pointer<BOID> pUOW,
    Pointer<Int32> pisoLevel,
    Pointer<Pointer<COMObject>> ppEnlist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTransaction,
            Pointer<COMObject> pRes,
            Pointer<BOID> pUOW,
            Pointer<Int32> pisoLevel,
            Pointer<Pointer<COMObject>> ppEnlist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTransaction,
            Pointer<COMObject> pRes,
            Pointer<BOID> pUOW,
            Pointer<Int32> pisoLevel,
            Pointer<Pointer<COMObject>> ppEnlist,
          )>()(
        ptr.ref.lpVtbl,
        pTransaction,
        pRes,
        pUOW,
        pisoLevel,
        ppEnlist,
      );

  int Reenlist(
    Pointer<Uint8> pPrepInfo,
    int cbPrepInfo,
    int lTimeout,
    Pointer<Int32> pXactStat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
            Uint32 cbPrepInfo,
            Uint32 lTimeout,
            Pointer<Int32> pXactStat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pPrepInfo,
            int cbPrepInfo,
            int lTimeout,
            Pointer<Int32> pXactStat,
          )>()(
        ptr.ref.lpVtbl,
        pPrepInfo,
        cbPrepInfo,
        lTimeout,
        pXactStat,
      );

  int ReenlistmentComplete() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetDistributedTransactionManager(
    Pointer<GUID> iid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        ppvObject,
      );
}
