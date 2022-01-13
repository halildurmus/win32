// IWiaLog.dart

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
const IID_IWiaLog = '{A00C10B6-82A1-452F-8B6C-86062AAD6890}';

/// {@category Interface}
/// {@category com}
class IWiaLog extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWiaLog(Pointer<COMObject> ptr) : super(ptr);

  int InitializeLog(
    int hInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hInstance,
          )>()(
        ptr.ref.lpVtbl,
        hInstance,
      );

  int hResult(
    int hResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
      );

  int Log(
    int lFlags,
    int lResID,
    int lDetail,
    Pointer<Utf16> bstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Int32 lResID,
            Int32 lDetail,
            Pointer<Utf16> bstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            int lResID,
            int lDetail,
            Pointer<Utf16> bstrText,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        lResID,
        lDetail,
        bstrText,
      );
}

/// @nodoc
const CLSID_WiaLog = '{A1E75357-881A-419E-83E2-BB16DB197C68}';

/// {@category com}
class WiaLog extends IWiaLog {
  WiaLog(Pointer<COMObject> ptr) : super(ptr);

  factory WiaLog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WiaLog);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWiaLog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WiaLog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
