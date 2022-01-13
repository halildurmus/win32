// IShellIcon.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellIcon = '{000214E5-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IShellIcon extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellIcon(Pointer<COMObject> ptr) : super(ptr);

  int GetIconOf(
    Pointer<ITEMIDLIST> pidl,
    int flags,
    Pointer<Int32> pIconIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 flags,
            Pointer<Int32> pIconIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int flags,
            Pointer<Int32> pIconIndex,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        flags,
        pIconIndex,
      );
}
