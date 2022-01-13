// ITransactionContextEx.dart

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
const IID_ITransactionContextEx = '{7999FC22-D3C6-11CF-ACAB-00A024A55AEF}';

/// {@category Interface}
/// {@category com}
class ITransactionContextEx extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITransactionContextEx(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    Pointer<GUID> rclsid,
    Pointer<GUID> riid,
    Pointer<Pointer> pObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> riid,
            Pointer<Pointer> pObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<GUID> riid,
            Pointer<Pointer> pObject,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        riid,
        pObject,
      );

  int Commit() => ptr.ref.lpVtbl.value
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

  int Abort() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_TransactionContextEx = '{5CB66670-D3D4-11CF-ACAB-00A024A55AEF}';

/// {@category com}
class TransactionContextEx extends ITransactionContextEx {
  TransactionContextEx(Pointer<COMObject> ptr) : super(ptr);

  factory TransactionContextEx.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_TransactionContextEx);
    final iid = calloc<GUID>()..ref.setGUID(IID_ITransactionContextEx);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return TransactionContextEx(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
