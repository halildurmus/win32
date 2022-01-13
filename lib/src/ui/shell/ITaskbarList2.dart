// ITaskbarList2.dart

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

import '../../ui/shell/ITaskbarList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITaskbarList2 = '{602D4995-B13A-429B-A66E-1935E44F4317}';

/// {@category Interface}
/// {@category com}
class ITaskbarList2 extends ITaskbarList {
  // vtable begins at 8, is 1 entries long.
  ITaskbarList2(Pointer<COMObject> ptr) : super(ptr);

  int MarkFullscreenWindow(
    int hwnd,
    int fFullscreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Int32 fFullscreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int fFullscreen,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        fFullscreen,
      );
}
