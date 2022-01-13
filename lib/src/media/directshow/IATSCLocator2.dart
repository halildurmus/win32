// IATSCLocator2.dart

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

import '../../media/directshow/IATSCLocator.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IATSCLocator2 = '{612AA885-66CF-4090-BA0A-566F5312E4CA}';

/// {@category Interface}
/// {@category com}
class IATSCLocator2 extends IATSCLocator {
  // vtable begins at 26, is 2 entries long.
  IATSCLocator2(Pointer<COMObject> ptr) : super(ptr);

  int get ProgramNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ProgramNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ProgramNumber,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ProgramNumber(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 ProgramNumber,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ProgramNumber,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
