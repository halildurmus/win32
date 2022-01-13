// ITipTransaction.dart

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

/// @nodoc
const IID_ITipTransaction = '{17CF72D0-BAC5-11D1-B1BF-00C04FC2F3EF}';

/// {@category Interface}
/// {@category com}
class ITipTransaction extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITipTransaction(Pointer<COMObject> ptr) : super(ptr);

  int Push(
    Pointer<Uint8> i_pszRemoteTmUrl,
    Pointer<Pointer<Utf8>> o_ppszRemoteTxUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> i_pszRemoteTmUrl,
            Pointer<Pointer<Utf8>> o_ppszRemoteTxUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> i_pszRemoteTmUrl,
            Pointer<Pointer<Utf8>> o_ppszRemoteTxUrl,
          )>()(
        ptr.ref.lpVtbl,
        i_pszRemoteTmUrl,
        o_ppszRemoteTxUrl,
      );

  int GetTransactionUrl(
    Pointer<Pointer<Utf8>> o_ppszLocalTxUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf8>> o_ppszLocalTxUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf8>> o_ppszLocalTxUrl,
          )>()(
        ptr.ref.lpVtbl,
        o_ppszLocalTxUrl,
      );
}
