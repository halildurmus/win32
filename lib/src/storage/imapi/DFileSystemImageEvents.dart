// DFileSystemImageEvents.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_DFileSystemImageEvents = '{2C941FDF-975B-59BE-A960-9A2A262853A5}';

/// {@category Interface}
/// {@category com}
class DFileSystemImageEvents extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  DFileSystemImageEvents(Pointer<COMObject> ptr) : super(ptr);

  int Update(
    Pointer<COMObject> object,
    Pointer<Utf16> currentFile,
    int copiedSectors,
    int totalSectors,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> object,
            Pointer<Utf16> currentFile,
            Int32 copiedSectors,
            Int32 totalSectors,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> object,
            Pointer<Utf16> currentFile,
            int copiedSectors,
            int totalSectors,
          )>()(
        ptr.ref.lpVtbl,
        object,
        currentFile,
        copiedSectors,
        totalSectors,
      );
}
