// IShellIconOverlay.dart

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
const IID_IShellIconOverlay = '{7D688A70-C613-11D0-999B-00C04FD655E1}';

/// {@category Interface}
/// {@category com}
class IShellIconOverlay extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IShellIconOverlay(Pointer<COMObject> ptr) : super(ptr);

  int GetOverlayIndex(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Int32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Int32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Int32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pIndex,
      );

  int GetOverlayIconIndex(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Int32> pIconIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Int32> pIconIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Int32> pIconIndex,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pIconIndex,
      );
}
