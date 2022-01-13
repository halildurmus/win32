// IShellItemImageFactory.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IShellItemImageFactory = '{BCC18B79-BA16-442F-80C4-8A59C30C463B}';

/// {@category Interface}
/// {@category com}
class IShellItemImageFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellItemImageFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetImage(
    SIZE size,
    int flags,
    Pointer<IntPtr> phbm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SIZE size,
            Int32 flags,
            Pointer<IntPtr> phbm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SIZE size,
            int flags,
            Pointer<IntPtr> phbm,
          )>()(
        ptr.ref.lpVtbl,
        size,
        flags,
        phbm,
      );
}
