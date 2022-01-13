// IFileSystemBindData.dart

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
import '../../storage/filesystem/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileSystemBindData = '{01E18D10-4D8B-11D2-855D-006008059367}';

/// {@category Interface}
/// {@category com}
class IFileSystemBindData extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IFileSystemBindData(Pointer<COMObject> ptr) : super(ptr);

  int SetFindData(
    Pointer<WIN32_FIND_DATA> pfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WIN32_FIND_DATA> pfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WIN32_FIND_DATA> pfd,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
      );

  int GetFindData(
    Pointer<WIN32_FIND_DATA> pfd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WIN32_FIND_DATA> pfd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WIN32_FIND_DATA> pfd,
          )>()(
        ptr.ref.lpVtbl,
        pfd,
      );
}
