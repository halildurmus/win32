// IWscProduct3.dart

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

import '../../system/securitycenter/IWscProduct2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWscProduct3 = '{55536524-D1D1-4726-8C7C-04996A1904E7}';

/// {@category Interface}
/// {@category com}
class IWscProduct3 extends IWscProduct2 {
  // vtable begins at 20, is 1 entries long.
  IWscProduct3(Pointer<COMObject> ptr) : super(ptr);

  int get AntivirusDaysUntilExpired {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwDays,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwDays,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
