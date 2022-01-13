// IEnumDiskQuotaUsers.dart

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
import '../../storage/filesystem/IDiskQuotaUser.dart';
import '../../foundation/structs.g.dart';
import '../../storage/filesystem/IEnumDiskQuotaUsers.dart';

/// @nodoc
const IID_IEnumDiskQuotaUsers = '{7988B577-EC89-11CF-9C00-00AA00A14F56}';

/// {@category Interface}
/// {@category com}
class IEnumDiskQuotaUsers extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumDiskQuotaUsers(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cUsers,
    Pointer<Pointer<COMObject>> rgUsers,
    Pointer<Uint32> pcUsersFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cUsers,
            Pointer<Pointer<COMObject>> rgUsers,
            Pointer<Uint32> pcUsersFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cUsers,
            Pointer<Pointer<COMObject>> rgUsers,
            Pointer<Uint32> pcUsersFetched,
          )>()(
        ptr.ref.lpVtbl,
        cUsers,
        rgUsers,
        pcUsersFetched,
      );

  int Skip(
    int cUsers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cUsers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cUsers,
          )>()(
        ptr.ref.lpVtbl,
        cUsers,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
