// IStorageItemHandleAccess.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/winrt/storage/structs.g.dart';
import '../../../system/winrt/storage/IOplockBreakingHandler.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IStorageItemHandleAccess = '{5CA296B2-2C25-4D22-B785-B885C8201E6A}';

/// {@category Interface}
/// {@category com}
class IStorageItemHandleAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStorageItemHandleAccess(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    int accessOptions,
    int sharingOptions,
    int options,
    Pointer<COMObject> oplockBreakingHandler,
    Pointer<IntPtr> interopHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 accessOptions,
            Uint32 sharingOptions,
            Uint32 options,
            Pointer<COMObject> oplockBreakingHandler,
            Pointer<IntPtr> interopHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int accessOptions,
            int sharingOptions,
            int options,
            Pointer<COMObject> oplockBreakingHandler,
            Pointer<IntPtr> interopHandle,
          )>()(
        ptr.ref.lpVtbl,
        accessOptions,
        sharingOptions,
        options,
        oplockBreakingHandler,
        interopHandle,
      );
}
