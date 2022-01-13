// IMultisessionSequential2.dart

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

import '../../storage/imapi/IMultisessionSequential.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMultisessionSequential2 = '{B507CA22-2204-11DD-966A-001AA01BBC58}';

/// {@category Interface}
/// {@category com}
class IMultisessionSequential2 extends IMultisessionSequential {
  // vtable begins at 16, is 1 entries long.
  IMultisessionSequential2(Pointer<COMObject> ptr) : super(ptr);

  int get WriteUnitSize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
