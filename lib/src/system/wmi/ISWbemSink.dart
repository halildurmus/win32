// ISWbemSink.dart

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
const IID_ISWbemSink = '{75718C9F-F029-11D1-A1AC-00C04FB6C223}';

/// {@category Interface}
/// {@category com}
class ISWbemSink extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  ISWbemSink(Pointer<COMObject> ptr) : super(ptr);

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
const CLSID_SWbemSink = '{75718C9A-F029-11D1-A1AC-00C04FB6C223}';

/// {@category com}
class SWbemSink extends ISWbemSink {
  SWbemSink(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemSink.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemSink);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemSink);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemSink(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
