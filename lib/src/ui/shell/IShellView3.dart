// IShellView3.dart

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

import '../../ui/shell/IShellView2.dart';
import '../../ui/shell/IShellBrowser.dart';
import '../../ui/shell/IShellView.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellView3 = '{EC39FA88-F8AF-41C5-8421-38BED28F4673}';

/// {@category Interface}
/// {@category com}
class IShellView3 extends IShellView2 {
  // vtable begins at 20, is 1 entries long.
  IShellView3(Pointer<COMObject> ptr) : super(ptr);

  int CreateViewWindow3(
    Pointer<COMObject> psbOwner,
    Pointer<COMObject> psvPrev,
    int dwViewFlags,
    int dwMask,
    int dwFlags,
    int fvMode,
    Pointer<GUID> pvid,
    Pointer<RECT> prcView,
    Pointer<IntPtr> phwndView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psbOwner,
            Pointer<COMObject> psvPrev,
            Uint32 dwViewFlags,
            Int32 dwMask,
            Int32 dwFlags,
            Int32 fvMode,
            Pointer<GUID> pvid,
            Pointer<RECT> prcView,
            Pointer<IntPtr> phwndView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psbOwner,
            Pointer<COMObject> psvPrev,
            int dwViewFlags,
            int dwMask,
            int dwFlags,
            int fvMode,
            Pointer<GUID> pvid,
            Pointer<RECT> prcView,
            Pointer<IntPtr> phwndView,
          )>()(
        ptr.ref.lpVtbl,
        psbOwner,
        psvPrev,
        dwViewFlags,
        dwMask,
        dwFlags,
        fvMode,
        pvid,
        prcView,
        phwndView,
      );
}
