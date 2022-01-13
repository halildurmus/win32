// IInitializeWithWindow.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInitializeWithWindow = '{3E68D4BD-7135-4D10-8018-9FB6D9F33FA1}';

/// {@category Interface}
/// {@category com}
class IInitializeWithWindow extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeWithWindow(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );
}
