// IComTransaction2Events.dart

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
const IID_IComTransaction2Events = '{A136F62A-2F94-4288-86E0-D8A1FA4C0299}';

/// {@category Interface}
/// {@category com}
class IComTransaction2Events extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IComTransaction2Events(Pointer<COMObject> ptr) : super(ptr);

  int OnTransactionStart2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidTx,
    Pointer<GUID> tsid,
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
            Pointer<GUID> guidTx,
            Pointer<GUID> tsid,
            Int32 fRoot,
            Int32 nIsolationLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidTx,
            Pointer<GUID> tsid,
            int fRoot,
            int nIsolationLevel,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidTx,
        tsid,
        fRoot,
        nIsolationLevel,
      );

  int OnTransactionPrepare2(
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

  int OnTransactionAbort2(
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

  int OnTransactionCommit2(
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
