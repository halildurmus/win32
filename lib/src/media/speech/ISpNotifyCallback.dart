// ISpNotifyCallback.dart

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

import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpNotifyCallback = 'null';

/// {@category Interface}
/// {@category com}
class ISpNotifyCallback {
  // vtable begins at 0, is 1 entries long.
  Pointer<COMObject> ptr;

  ISpNotifyCallback(this.ptr);

  int NotifyCallback(
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
      );
}
