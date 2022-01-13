// IWSManConnectionOptionsEx.dart

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

import '../../system/remotemanagement/IWSManConnectionOptions.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSManConnectionOptionsEx = '{EF43EDF7-2A48-4D93-9526-8BD6AB6D4A6B}';

/// {@category Interface}
/// {@category com}
class IWSManConnectionOptionsEx extends IWSManConnectionOptions {
  // vtable begins at 10, is 2 entries long.
  IWSManConnectionOptionsEx(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get CertificateThumbprint {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> thumbprint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> thumbprint,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CertificateThumbprint(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> thumbprint,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> thumbprint,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
