// ICorrelationVectorSource.dart

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
import '../../system/winrt/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICorrelationVectorSource = '{152B8A3B-B9B9-4685-B56E-974847BC7545}';

/// {@category Interface}
/// {@category com}
class ICorrelationVectorSource extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICorrelationVectorSource(Pointer<COMObject> ptr) : super(ptr);

  int get CorrelationVector {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> cv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> cv,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
