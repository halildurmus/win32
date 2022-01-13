// IShellMenuCallback.dart

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
const IID_IShellMenuCallback = '{4CA300A1-9B8D-11D1-8B22-00C04FD918D0}';

/// {@category Interface}
/// {@category com}
class IShellMenuCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellMenuCallback(Pointer<COMObject> ptr) : super(ptr);

  int CallbackSM(
    Pointer<SMDATA> psmd,
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
            Pointer<SMDATA> psmd,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SMDATA> psmd,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        psmd,
        uMsg,
        wParam,
        lParam,
      );
}
