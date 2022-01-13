// IMSVidClosedCaptioning2.dart

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

import '../../media/directshow/IMSVidClosedCaptioning.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidClosedCaptioning2 = '{E00CB864-A029-4310-9987-A873F5887D97}';

/// {@category Interface}
/// {@category com}
class IMSVidClosedCaptioning2 extends IMSVidClosedCaptioning {
  // vtable begins at 18, is 2 entries long.
  IMSVidClosedCaptioning2(Pointer<COMObject> ptr) : super(ptr);

  int get Service {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> On,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> On,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Service(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 On,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int On,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
