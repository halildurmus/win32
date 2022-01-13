// IThumbnailCache.dart

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
import '../../ui/shell/ISharedBitmap.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IThumbnailCache = '{F676C15D-596A-4CE2-8234-33996F445DB1}';

/// {@category Interface}
/// {@category com}
class IThumbnailCache extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IThumbnailCache(Pointer<COMObject> ptr) : super(ptr);

  int GetThumbnail(
    Pointer<COMObject> pShellItem,
    int cxyRequestedThumbSize,
    int flags,
    Pointer<Pointer<COMObject>> ppvThumb,
    Pointer<Int32> pOutFlags,
    Pointer<WTS_THUMBNAILID> pThumbnailID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pShellItem,
            Uint32 cxyRequestedThumbSize,
            Int32 flags,
            Pointer<Pointer<COMObject>> ppvThumb,
            Pointer<Int32> pOutFlags,
            Pointer<WTS_THUMBNAILID> pThumbnailID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pShellItem,
            int cxyRequestedThumbSize,
            int flags,
            Pointer<Pointer<COMObject>> ppvThumb,
            Pointer<Int32> pOutFlags,
            Pointer<WTS_THUMBNAILID> pThumbnailID,
          )>()(
        ptr.ref.lpVtbl,
        pShellItem,
        cxyRequestedThumbSize,
        flags,
        ppvThumb,
        pOutFlags,
        pThumbnailID,
      );

  int GetThumbnailByID(
    WTS_THUMBNAILID thumbnailID,
    int cxyRequestedThumbSize,
    Pointer<Pointer<COMObject>> ppvThumb,
    Pointer<Int32> pOutFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            WTS_THUMBNAILID thumbnailID,
            Uint32 cxyRequestedThumbSize,
            Pointer<Pointer<COMObject>> ppvThumb,
            Pointer<Int32> pOutFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            WTS_THUMBNAILID thumbnailID,
            int cxyRequestedThumbSize,
            Pointer<Pointer<COMObject>> ppvThumb,
            Pointer<Int32> pOutFlags,
          )>()(
        ptr.ref.lpVtbl,
        thumbnailID,
        cxyRequestedThumbSize,
        ppvThumb,
        pOutFlags,
      );
}
