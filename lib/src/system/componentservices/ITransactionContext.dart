// ITransactionContext.dart

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
const IID_ITransactionContext = '{7999FC21-D3C6-11CF-ACAB-00A024A55AEF}';

/// {@category Interface}
/// {@category com}
class ITransactionContext extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ITransactionContext(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    Pointer<Utf16> pszProgId,
    Pointer<VARIANT> pObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszProgId,
            Pointer<VARIANT> pObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszProgId,
            Pointer<VARIANT> pObject,
          )>()(
        ptr.ref.lpVtbl,
        pszProgId,
        pObject,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Abort() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
}

/// @nodoc
const CLSID_TransactionContext = '{7999FC25-D3C6-11CF-ACAB-00A024A55AEF}';

/// {@category com}
class TransactionContext extends ITransactionContext {
  TransactionContext(Pointer<COMObject> ptr) : super(ptr);

  factory TransactionContext.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TransactionContext);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITransactionContext);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TransactionContext(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
