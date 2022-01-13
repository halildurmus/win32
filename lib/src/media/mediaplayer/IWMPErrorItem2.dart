// IWMPErrorItem2.dart

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

import '../../media/mediaplayer/IWMPErrorItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPErrorItem2 = '{F75CCEC0-C67C-475C-931E-8719870BEE7D}';

/// {@category Interface}
/// {@category com}
class IWMPErrorItem2 extends IWMPErrorItem {
  // vtable begins at 12, is 1 entries long.
  IWMPErrorItem2(Pointer<COMObject> ptr) : super(ptr);

  int get condition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCondition,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
