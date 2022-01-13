// ITAMMediaFormat.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITAMMediaFormat = '{0364EB00-4A77-11D1-A671-006097C9A2E8}';

/// {@category Interface}
/// {@category com}
class ITAMMediaFormat extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITAMMediaFormat(Pointer<COMObject> ptr) : super(ptr);

  Pointer<AM_MEDIA_TYPE> get MediaFormat {
    final retValuePtr = calloc<Pointer<AM_MEDIA_TYPE>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppmt,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MediaFormat(Pointer<AM_MEDIA_TYPE> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<AM_MEDIA_TYPE> pmt,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<AM_MEDIA_TYPE> pmt,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
