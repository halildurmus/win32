// IContextMenuSite.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IContextMenuSite = '{0811AEBE-0B87-4C54-9E72-548CF649016B}';

/// {@category Interface}
/// {@category com}
class IContextMenuSite extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IContextMenuSite(Pointer<COMObject> ptr) : super(ptr);

  int DoContextMenuPopup(
    Pointer<COMObject> punkContextMenu,
    int fFlags,
    POINT pt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkContextMenu,
            Uint32 fFlags,
            POINT pt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkContextMenu,
            int fFlags,
            POINT pt,
          )>()(
        ptr.ref.lpVtbl,
        punkContextMenu,
        fFlags,
        pt,
      );
}
