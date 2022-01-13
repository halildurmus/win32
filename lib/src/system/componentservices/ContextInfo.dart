// ContextInfo.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ContextInfo = '{19A5A02C-0AC8-11D2-B286-00C04F8EF934}';

/// {@category Interface}
/// {@category com}
class ContextInfo extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ContextInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsInTransaction(
    Pointer<Int16> pbIsInTx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbIsInTx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbIsInTx,
          )>()(
        ptr.ref.lpVtbl,
        pbIsInTx,
      );

  int GetTransaction(
    Pointer<Pointer<COMObject>> ppTx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTx,
          )>()(
        ptr.ref.lpVtbl,
        ppTx,
      );

  int GetTransactionId(
    Pointer<Pointer<Utf16>> pbstrTxId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrTxId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrTxId,
          )>()(
        ptr.ref.lpVtbl,
        pbstrTxId,
      );

  int GetActivityId(
    Pointer<Pointer<Utf16>> pbstrActivityId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrActivityId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrActivityId,
          )>()(
        ptr.ref.lpVtbl,
        pbstrActivityId,
      );

  int GetContextId(
    Pointer<Pointer<Utf16>> pbstrCtxId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCtxId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCtxId,
          )>()(
        ptr.ref.lpVtbl,
        pbstrCtxId,
      );
}
