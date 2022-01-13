// IOfflineFilesFileSysInfo.dart

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
import '../../storage/offlinefiles/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesFileSysInfo = '{BC1A163F-7BFD-4D88-9C66-96EA9A6A3D6B}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesFileSysInfo extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IOfflineFilesFileSysInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetAttributes(
    int copy,
    Pointer<Uint32> pdwAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 copy,
            Pointer<Uint32> pdwAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int copy,
            Pointer<Uint32> pdwAttributes,
          )>()(
        ptr.ref.lpVtbl,
        copy,
        pdwAttributes,
      );

  int GetTimes(
    int copy,
    Pointer<FILETIME> pftCreationTime,
    Pointer<FILETIME> pftLastWriteTime,
    Pointer<FILETIME> pftChangeTime,
    Pointer<FILETIME> pftLastAccessTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 copy,
            Pointer<FILETIME> pftCreationTime,
            Pointer<FILETIME> pftLastWriteTime,
            Pointer<FILETIME> pftChangeTime,
            Pointer<FILETIME> pftLastAccessTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int copy,
            Pointer<FILETIME> pftCreationTime,
            Pointer<FILETIME> pftLastWriteTime,
            Pointer<FILETIME> pftChangeTime,
            Pointer<FILETIME> pftLastAccessTime,
          )>()(
        ptr.ref.lpVtbl,
        copy,
        pftCreationTime,
        pftLastWriteTime,
        pftChangeTime,
        pftLastAccessTime,
      );

  int GetFileSize(
    int copy,
    Pointer<Int64> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 copy,
            Pointer<Int64> pSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int copy,
            Pointer<Int64> pSize,
          )>()(
        ptr.ref.lpVtbl,
        copy,
        pSize,
      );
}
