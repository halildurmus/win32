// IShellChangeNotify.dart

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
const IID_IShellChangeNotify = '{D82BE2B1-5764-11D0-A96E-00C04FD705A2}';

/// {@category Interface}
/// {@category com}
class IShellChangeNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShellChangeNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnChange(
    int lEvent,
    Pointer<ITEMIDLIST> pidl1,
    Pointer<ITEMIDLIST> pidl2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lEvent,
            Pointer<ITEMIDLIST> pidl1,
            Pointer<ITEMIDLIST> pidl2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lEvent,
            Pointer<ITEMIDLIST> pidl1,
            Pointer<ITEMIDLIST> pidl2,
          )>()(
        ptr.ref.lpVtbl,
        lEvent,
        pidl1,
        pidl2,
      );
}
