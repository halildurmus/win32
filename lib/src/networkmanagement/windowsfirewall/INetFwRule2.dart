// INetFwRule2.dart

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

import '../../networkmanagement/windowsfirewall/INetFwRule.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INetFwRule2 = '{9C27C8DA-189B-4DDE-89F7-8B39A316782C}';

/// {@category Interface}
/// {@category com}
class INetFwRule2 extends INetFwRule {
  // vtable begins at 43, is 2 entries long.
  INetFwRule2(Pointer<COMObject> ptr) : super(ptr);

  int get EdgeTraversalOptions {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lOptions,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EdgeTraversalOptions(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(44)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lOptions,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lOptions,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
