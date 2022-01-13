// IThumbnailHandlerFactory.dart

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
import '../../system/com/IBindCtx.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IThumbnailHandlerFactory = '{E35B4B2E-00DA-4BC1-9F13-38BC11F5D417}';

/// {@category Interface}
/// {@category com}
class IThumbnailHandlerFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IThumbnailHandlerFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetThumbnailHandler(
    Pointer<ITEMIDLIST> pidlChild,
    Pointer<COMObject> pbc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlChild,
            Pointer<COMObject> pbc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlChild,
            Pointer<COMObject> pbc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pidlChild,
        pbc,
        riid,
        ppv,
      );
}
