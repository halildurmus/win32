// IDVBTuningSpace2.dart

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

import '../../media/directshow/IDVBTuningSpace.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDVBTuningSpace2 = '{843188B4-CE62-43DB-966B-8145A094E040}';

/// {@category Interface}
/// {@category com}
class IDVBTuningSpace2 extends IDVBTuningSpace {
  // vtable begins at 28, is 2 entries long.
  IDVBTuningSpace2(Pointer<COMObject> ptr) : super(ptr);

  int get NetworkID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> NetworkID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> NetworkID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set NetworkID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 NetworkID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NetworkID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
