// IServiceTransactionConfigBase.dart

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
const IID_IServiceTransactionConfigBase =
    '{772B3FBE-6FFD-42FB-B5F8-8F9B260F3810}';

/// {@category Interface}
/// {@category com}
class IServiceTransactionConfigBase extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IServiceTransactionConfigBase(Pointer<COMObject> ptr) : super(ptr);

  int ConfigureTransaction(
    int transactionConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 transactionConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int transactionConfig,
          )>()(
        ptr.ref.lpVtbl,
        transactionConfig,
      );

  int IsolationLevel(
    int option,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 option,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int option,
          )>()(
        ptr.ref.lpVtbl,
        option,
      );

  int TransactionTimeout(
    int ulTimeoutSec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulTimeoutSec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulTimeoutSec,
          )>()(
        ptr.ref.lpVtbl,
        ulTimeoutSec,
      );

  int BringYourOwnTransaction(
    Pointer<Utf16> szTipURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szTipURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szTipURL,
          )>()(
        ptr.ref.lpVtbl,
        szTipURL,
      );

  int NewTransactionDescription(
    Pointer<Utf16> szTxDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szTxDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szTxDesc,
          )>()(
        ptr.ref.lpVtbl,
        szTxDesc,
      );
}
