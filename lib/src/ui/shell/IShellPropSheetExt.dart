// IShellPropSheetExt.dart

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
import '../../ui/controls/callbacks.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellPropSheetExt = '{000214E9-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IShellPropSheetExt extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IShellPropSheetExt(Pointer<COMObject> ptr) : super(ptr);

  int AddPages(
    Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnAddPage,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnAddPage,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnAddPage,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        pfnAddPage,
        lParam,
      );

  int ReplacePage(
    int uPageID,
    Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnReplaceWith,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uPageID,
            Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnReplaceWith,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uPageID,
            Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfnReplaceWith,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        uPageID,
        pfnReplaceWith,
        lParam,
      );
}
