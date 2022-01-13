// ITipHelper.dart

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
import '../../foundation/structs.g.dart';
import '../../system/distributedtransactioncoordinator/ITipPullSink.dart';

/// @nodoc
const IID_ITipHelper = '{17CF72D1-BAC5-11D1-B1BF-00C04FC2F3EF}';

/// {@category Interface}
/// {@category com}
class ITipHelper extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITipHelper(Pointer<COMObject> ptr) : super(ptr);

  int Pull(
    Pointer<Uint8> i_pszTxUrl,
    Pointer<Pointer<COMObject>> o_ppITransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> i_pszTxUrl,
            Pointer<Pointer<COMObject>> o_ppITransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> i_pszTxUrl,
            Pointer<Pointer<COMObject>> o_ppITransaction,
          )>()(
        ptr.ref.lpVtbl,
        i_pszTxUrl,
        o_ppITransaction,
      );

  int PullAsync(
    Pointer<Uint8> i_pszTxUrl,
    Pointer<COMObject> i_pTipPullSink,
    Pointer<Pointer<COMObject>> o_ppITransaction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> i_pszTxUrl,
            Pointer<COMObject> i_pTipPullSink,
            Pointer<Pointer<COMObject>> o_ppITransaction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> i_pszTxUrl,
            Pointer<COMObject> i_pTipPullSink,
            Pointer<Pointer<COMObject>> o_ppITransaction,
          )>()(
        ptr.ref.lpVtbl,
        i_pszTxUrl,
        i_pTipPullSink,
        o_ppITransaction,
      );

  int GetLocalTmUrl(
    Pointer<Pointer<Uint8>> o_ppszLocalTmUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> o_ppszLocalTmUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> o_ppszLocalTmUrl,
          )>()(
        ptr.ref.lpVtbl,
        o_ppszLocalTmUrl,
      );
}
