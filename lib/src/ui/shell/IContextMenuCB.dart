// IContextMenuCB.dart

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
import '../../ui/shell/IShellFolder.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IDataObject.dart';

/// @nodoc
const IID_IContextMenuCB = '{3409E930-5A39-11D1-83FA-00A0C90DC849}';

/// {@category Interface}
/// {@category com}
class IContextMenuCB extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IContextMenuCB(Pointer<COMObject> ptr) : super(ptr);

  int CallBack(
    Pointer<COMObject> psf,
    int hwndOwner,
    Pointer<COMObject> pdtobj,
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
            Pointer<COMObject> psf,
            IntPtr hwndOwner,
            Pointer<COMObject> pdtobj,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psf,
            int hwndOwner,
            Pointer<COMObject> pdtobj,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        psf,
        hwndOwner,
        pdtobj,
        uMsg,
        wParam,
        lParam,
      );
}
