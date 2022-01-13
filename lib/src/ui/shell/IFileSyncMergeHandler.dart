// IFileSyncMergeHandler.dart

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
const IID_IFileSyncMergeHandler = '{D97B5AAC-C792-433C-975D-35C4EADC7A9D}';

/// {@category Interface}
/// {@category com}
class IFileSyncMergeHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFileSyncMergeHandler(Pointer<COMObject> ptr) : super(ptr);

  int Merge(
    Pointer<Utf16> localFilePath,
    Pointer<Utf16> serverFilePath,
    Pointer<Int32> updateStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localFilePath,
            Pointer<Utf16> serverFilePath,
            Pointer<Int32> updateStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localFilePath,
            Pointer<Utf16> serverFilePath,
            Pointer<Int32> updateStatus,
          )>()(
        ptr.ref.lpVtbl,
        localFilePath,
        serverFilePath,
        updateStatus,
      );

  int ShowResolveConflictUIAsync(
    Pointer<Utf16> localFilePath,
    int monitorToDisplayOn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localFilePath,
            IntPtr monitorToDisplayOn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localFilePath,
            int monitorToDisplayOn,
          )>()(
        ptr.ref.lpVtbl,
        localFilePath,
        monitorToDisplayOn,
      );
}
