// IThumbnailCachePrimer.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IThumbnailCachePrimer = '{0F03F8FE-2B26-46F0-965A-212AA8D66B76}';

/// {@category Interface}
/// {@category com}
class IThumbnailCachePrimer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IThumbnailCachePrimer(Pointer<COMObject> ptr) : super(ptr);

  int PageInThumbnail(
    Pointer<COMObject> psi,
    int wtsFlags,
    int cxyRequestedThumbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
            Int32 wtsFlags,
            Uint32 cxyRequestedThumbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
            int wtsFlags,
            int cxyRequestedThumbSize,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        wtsFlags,
        cxyRequestedThumbSize,
      );
}
