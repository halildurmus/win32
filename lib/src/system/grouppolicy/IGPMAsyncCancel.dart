// IGPMAsyncCancel.dart

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
const IID_IGPMAsyncCancel = '{DDC67754-BE67-4541-8166-F48166868C9C}';

/// {@category Interface}
/// {@category com}
class IGPMAsyncCancel extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IGPMAsyncCancel(Pointer<COMObject> ptr) : super(ptr);

  int Cancel() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_GPMAsyncCancel = '{372796A9-76EC-479D-AD6C-556318ED5F9D}';

/// {@category com}
class GPMAsyncCancel extends IGPMAsyncCancel {
  GPMAsyncCancel(Pointer<COMObject> ptr) : super(ptr);

  factory GPMAsyncCancel.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMAsyncCancel);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMAsyncCancel);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMAsyncCancel(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
