// IWindowsDriverUpdate3.dart

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

import '../../system/updateagent/IWindowsDriverUpdate2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWindowsDriverUpdate3 = '{49EBD502-4A96-41BD-9E3E-4C5057F4250C}';

/// {@category Interface}
/// {@category com}
class IWindowsDriverUpdate3 extends IWindowsDriverUpdate2 {
  // vtable begins at 64, is 1 entries long.
  IWindowsDriverUpdate3(Pointer<COMObject> ptr) : super(ptr);

  int get BrowseOnly {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
