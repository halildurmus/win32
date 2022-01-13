// IInvalidProductLicenseException.dart

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

import '../../system/updateagent/IUpdateException.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInvalidProductLicenseException =
    '{A37D00F5-7BB0-4953-B414-F9E98326F2E8}';

/// {@category Interface}
/// {@category com}
class IInvalidProductLicenseException extends IUpdateException {
  // vtable begins at 10, is 1 entries long.
  IInvalidProductLicenseException(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Product {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
