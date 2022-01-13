// IRealTimeStylus2.dart

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
const IID_IRealTimeStylus2 = '{B5F2A6CD-3179-4A3E-B9C4-BB5865962BE2}';

/// {@category Interface}
/// {@category com}
class IRealTimeStylus2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRealTimeStylus2(Pointer<COMObject> ptr) : super(ptr);

  int get FlicksEnabled {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfEnable,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set FlicksEnabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fEnable,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fEnable,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
