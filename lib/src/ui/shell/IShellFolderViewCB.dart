// IShellFolderViewCB.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellFolderViewCB = '{2047E320-F2A9-11CE-AE65-08002B2E1262}';

/// {@category Interface}
/// {@category com}
class IShellFolderViewCB extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellFolderViewCB(Pointer<COMObject> ptr) : super(ptr);

  int MessageSFVCB(
    int uMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 uMsg,
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
