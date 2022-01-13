// ITMediaSupport.dart

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
const IID_ITMediaSupport = '{B1EFC384-9355-11D0-835C-00AA003CCABD}';

/// {@category Interface}
/// {@category com}
class ITMediaSupport extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  ITMediaSupport(Pointer<COMObject> ptr) : super(ptr);

  int get MediaTypes {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMediaTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMediaTypes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int QueryMediaType(
    int lMediaType,
    Pointer<Int16> pfSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
            Pointer<Int16> pfSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
            Pointer<Int16> pfSupport,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
        pfSupport,
      );
}
