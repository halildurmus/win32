// IStorageFolderHandleAccess.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/winrt/storage/structs.g.dart';
import '../../../system/winrt/storage/IOplockBreakingHandler.dart';

/// @nodoc
const IID_IStorageFolderHandleAccess = '{DF19938F-5462-48A0-BE65-D2A3271A08D6}';

/// {@category Interface}
/// {@category com}
class IStorageFolderHandleAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStorageFolderHandleAccess(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<Utf16> fileName,
    int creationOptions,
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
            Pointer<Utf16> fileName,
            Int32 creationOptions,
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
            Pointer<Utf16> fileName,
            int creationOptions,
            int accessOptions,
            int sharingOptions,
            int options,
            Pointer<COMObject> oplockBreakingHandler,
            Pointer<IntPtr> interopHandle,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        creationOptions,
        accessOptions,
        sharingOptions,
        options,
        oplockBreakingHandler,
        interopHandle,
      );
}
