// DFileSystemImageImportEvents.dart

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

import '../../system/com/IDispatch.dart';
import '../../storage/imapi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_DFileSystemImageImportEvents =
    '{D25C30F9-4087-4366-9E24-E55BE286424B}';

/// {@category Interface}
/// {@category com}
class DFileSystemImageImportEvents extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  DFileSystemImageImportEvents(Pointer<COMObject> ptr) : super(ptr);

  int UpdateImport(
    Pointer<COMObject> object,
    int fileSystem,
    Pointer<Utf16> currentItem,
    int importedDirectoryItems,
    int totalDirectoryItems,
    int importedFileItems,
    int totalFileItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Int32 fileSystem,
            Pointer<Utf16> currentItem,
            Int32 importedDirectoryItems,
            Int32 totalDirectoryItems,
            Int32 importedFileItems,
            Int32 totalFileItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            int fileSystem,
            Pointer<Utf16> currentItem,
            int importedDirectoryItems,
            int totalDirectoryItems,
            int importedFileItems,
            int totalFileItems,
          )>()(
        ptr.ref.lpVtbl,
        object,
        fileSystem,
        currentItem,
        importedDirectoryItems,
        totalDirectoryItems,
        importedFileItems,
        totalFileItems,
      );
}
