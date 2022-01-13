// IExecAction2.dart

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

import '../../system/taskscheduler/IExecAction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IExecAction2 = '{F2A82542-BDA5-4E6B-9143-E2BF4F8987B6}';

/// {@category Interface}
/// {@category com}
class IExecAction2 extends IExecAction {
  // vtable begins at 16, is 2 entries long.
  IExecAction2(Pointer<COMObject> ptr) : super(ptr);

  int get HideAppWindow {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pHideAppWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pHideAppWindow,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set HideAppWindow(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 hideAppWindow,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int hideAppWindow,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
