// IContextMenu2.dart

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

import '../../ui/shell/IContextMenu.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContextMenu2 = '{000214F4-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IContextMenu2 extends IContextMenu {
  // vtable begins at 6, is 1 entries long.
  IContextMenu2(Pointer<COMObject> ptr) : super(ptr);

  int HandleMenuMsg(
    int uMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        uMsg,
        wParam,
        lParam,
      );
}
