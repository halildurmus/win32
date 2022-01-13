// IComLTxEvents.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComLTxEvents = '{605CF82C-578E-4298-975D-82BABCD9E053}';

/// {@category Interface}
/// {@category com}
class IComLTxEvents extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IComLTxEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnLtxTransactionStart(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidLtx,
    GUID tsid,
    int fRoot,
    int nIsolationLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
            GUID tsid,
            Int32 fRoot,
            Int32 nIsolationLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
            GUID tsid,
            int fRoot,
            int nIsolationLevel,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidLtx,
        tsid,
        fRoot,
        nIsolationLevel,
      );

  int OnLtxTransactionPrepare(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidLtx,
    int fVote,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
            Int32 fVote,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
            int fVote,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidLtx,
        fVote,
      );

  int OnLtxTransactionAbort(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidLtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidLtx,
      );

  int OnLtxTransactionCommit(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidLtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidLtx,
      );

  int OnLtxTransactionPromote(
    Pointer<COMSVCSEVENTINFO> pInfo,
    GUID guidLtx,
    GUID txnId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
            GUID txnId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            GUID guidLtx,
            GUID txnId,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidLtx,
        txnId,
      );
}
