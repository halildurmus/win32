// IPrintSchemaAsyncOperation.dart

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

/// @nodoc
const IID_IPrintSchemaAsyncOperation = '{143C8DCB-D37F-47F7-88E8-6B1D21F2C5F7}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaAsyncOperation extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IPrintSchemaAsyncOperation(Pointer<COMObject> ptr) : super(ptr);

  int Start() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Cancel() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_PrintSchemaAsyncOperation =
    '{43B2F83D-10F2-48AB-831B-55FDBDBD34A4}';

/// {@category com}
class PrintSchemaAsyncOperation extends IPrintSchemaAsyncOperation {
  PrintSchemaAsyncOperation(Pointer<COMObject> ptr) : super(ptr);

  factory PrintSchemaAsyncOperation.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PrintSchemaAsyncOperation);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPrintSchemaAsyncOperation);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PrintSchemaAsyncOperation(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
