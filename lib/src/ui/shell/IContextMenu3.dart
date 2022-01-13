// IContextMenu3.dart

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

import '../../ui/shell/IContextMenu2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContextMenu3 = '{BCFCE0A0-EC17-11D0-8D10-00A0C90F2719}';

/// {@category Interface}
/// {@category com}
class IContextMenu3 extends IContextMenu2 {
  // vtable begins at 7, is 1 entries long.
  IContextMenu3(Pointer<COMObject> ptr) : super(ptr);

  int HandleMenuMsg2(
    int uMsg,
    int wParam,
    int lParam,
    Pointer<IntPtr> plResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<IntPtr> plResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uMsg,
            int wParam,
            int lParam,
            Pointer<IntPtr> plResult,
          )>()(
        ptr.ref.lpVtbl,
        uMsg,
        wParam,
        lParam,
        plResult,
      );
}
