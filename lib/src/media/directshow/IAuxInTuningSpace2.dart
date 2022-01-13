// IAuxInTuningSpace2.dart

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

import '../../media/directshow/IAuxInTuningSpace.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAuxInTuningSpace2 = '{B10931ED-8BFE-4AB0-9DCE-E469C29A9729}';

/// {@category Interface}
/// {@category com}
class IAuxInTuningSpace2 extends IAuxInTuningSpace {
  // vtable begins at 26, is 2 entries long.
  IAuxInTuningSpace2(Pointer<COMObject> ptr) : super(ptr);

  int get CountryCode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> CountryCodeVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> CountryCodeVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CountryCode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 NewCountryCodeVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int NewCountryCodeVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
