// ILaunchTargetMonitor.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILaunchTargetMonitor = '{266FBC7E-490D-46ED-A96B-2274DB252003}';

/// {@category Interface}
/// {@category com}
class ILaunchTargetMonitor extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILaunchTargetMonitor(Pointer<COMObject> ptr) : super(ptr);

  int GetMonitor(
    Pointer<IntPtr> monitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> monitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> monitor,
          )>()(
        ptr.ref.lpVtbl,
        monitor,
      );
}
