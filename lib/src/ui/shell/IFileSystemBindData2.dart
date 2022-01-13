// IFileSystemBindData2.dart

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

import '../../ui/shell/IFileSystemBindData.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileSystemBindData2 = '{3ACF075F-71DB-4AFA-81F0-3FC4FDF2A5B8}';

/// {@category Interface}
/// {@category com}
class IFileSystemBindData2 extends IFileSystemBindData {
  // vtable begins at 5, is 4 entries long.
  IFileSystemBindData2(Pointer<COMObject> ptr) : super(ptr);

  int SetFileID(
    int liFileID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 liFileID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int liFileID,
          )>()(
        ptr.ref.lpVtbl,
        liFileID,
      );

  int GetFileID(
    Pointer<Int64> pliFileID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pliFileID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pliFileID,
          )>()(
        ptr.ref.lpVtbl,
        pliFileID,
      );

  int SetJunctionCLSID(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int GetJunctionCLSID(
    Pointer<GUID> pclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>()(
        ptr.ref.lpVtbl,
        pclsid,
      );
}
