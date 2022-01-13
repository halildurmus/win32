// IComTransactionEvents.dart

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
const IID_IComTransactionEvents = '{683130A8-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComTransactionEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IComTransactionEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnTransactionStart(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidTx,
    Pointer<GUID> tsid,
    int fRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
            Pointer<GUID> tsid,
            Int32 fRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
            Pointer<GUID> tsid,
            int fRoot,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidTx,
        tsid,
        fRoot,
      );

  int OnTransactionPrepare(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidTx,
    int fVoteYes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
            Int32 fVoteYes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
            int fVoteYes,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidTx,
        fVoteYes,
      );

  int OnTransactionAbort(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidTx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidTx,
      );

  int OnTransactionCommit(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidTx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidTx,
      );
}
