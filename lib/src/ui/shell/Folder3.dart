// Folder3.dart

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

import '../../ui/shell/Folder2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_Folder3 = '{A7AE5F64-C4D7-4D7F-9307-4D24EE54B841}';

/// {@category Interface}
/// {@category com}
class Folder3 extends Folder2 {
  // vtable begins at 22, is 2 entries long.
  Folder3(Pointer<COMObject> ptr) : super(ptr);

  int get ShowWebViewBarricade {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbShowWebViewBarricade,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbShowWebViewBarricade,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ShowWebViewBarricade(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bShowWebViewBarricade,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bShowWebViewBarricade,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
