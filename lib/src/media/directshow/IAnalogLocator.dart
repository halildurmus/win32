// IAnalogLocator.dart

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

import '../../media/directshow/ILocator.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAnalogLocator = '{34D1F26B-E339-430D-ABCE-738CB48984DC}';

/// {@category Interface}
/// {@category com}
class IAnalogLocator extends ILocator {
  // vtable begins at 22, is 2 entries long.
  IAnalogLocator(Pointer<COMObject> ptr) : super(ptr);

  int get VideoStandard {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> AVS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> AVS,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set VideoStandard(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 AVS,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int AVS,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_AnalogLocator = '{49638B91-48AB-48B7-A47A-7D0E75A08EDE}';

/// {@category com}
class AnalogLocator extends IAnalogLocator {
  AnalogLocator(Pointer<COMObject> ptr) : super(ptr);

  factory AnalogLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AnalogLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAnalogLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AnalogLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
