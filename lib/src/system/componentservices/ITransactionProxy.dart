// ITransactionProxy.dart

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
import '../../system/distributedtransactioncoordinator/ITransactionVoterNotifyAsync2.dart';
import '../../system/distributedtransactioncoordinator/ITransactionVoterBallotAsync2.dart';

/// @nodoc
const IID_ITransactionProxy = '{02558374-DF2E-4DAE-BD6B-1D5C994F9BDC}';

/// {@category Interface}
/// {@category com}
class ITransactionProxy extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  ITransactionProxy(Pointer<COMObject> ptr) : super(ptr);

  int Commit(
    GUID guid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guid,
          )>()(
        ptr.ref.lpVtbl,
        guid,
      );

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Promote(
    Pointer<Pointer<COMObject>> pTransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pTransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pTransaction,
          )>()(
        ptr.ref.lpVtbl,
        pTransaction,
      );

  int CreateVoter(
    Pointer<COMObject> pTxAsync,
    Pointer<Pointer<COMObject>> ppBallot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTxAsync,
            Pointer<Pointer<COMObject>> ppBallot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTxAsync,
            Pointer<Pointer<COMObject>> ppBallot,
          )>()(
        ptr.ref.lpVtbl,
        pTxAsync,
        ppBallot,
      );

  int GetIsolationLevel(
    Pointer<Int32> MIDL__ITransactionProxy0000,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MIDL__ITransactionProxy0000,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MIDL__ITransactionProxy0000,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__ITransactionProxy0000,
      );

  int GetIdentifier(
    Pointer<GUID> pbstrIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pbstrIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pbstrIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        pbstrIdentifier,
      );

  int IsReusable(
    Pointer<Int32> pfIsReusable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsReusable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsReusable,
          )>()(
        ptr.ref.lpVtbl,
        pfIsReusable,
      );
}
