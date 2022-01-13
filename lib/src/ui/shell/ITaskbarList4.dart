// ITaskbarList4.dart

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

import '../../ui/shell/ITaskbarList3.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ITaskbarList4 = '{C43DC798-95D1-4BEA-9030-BB99E2983A1A}';

/// {@category Interface}
/// {@category com}
class ITaskbarList4 extends ITaskbarList3 {
  // vtable begins at 21, is 1 entries long.
  ITaskbarList4(Pointer<COMObject> ptr) : super(ptr);

  int SetTabProperties(
    int hwndTab,
    int stpFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndTab,
            Int32 stpFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndTab,
            int stpFlags,
          )>()(
        ptr.ref.lpVtbl,
        hwndTab,
        stpFlags,
      );
}
