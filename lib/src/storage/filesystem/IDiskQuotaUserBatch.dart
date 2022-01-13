// IDiskQuotaUserBatch.dart

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

/// @nodoc
const IID_IDiskQuotaUserBatch = '{7988B576-EC89-11CF-9C00-00AA00A14F56}';

/// {@category Interface}
/// {@category com}
class IDiskQuotaUserBatch extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDiskQuotaUserBatch(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    Pointer<COMObject> pUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>()(
        ptr.ref.lpVtbl,
        pUser,
      );

  int Remove(
    Pointer<COMObject> pUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>()(
        ptr.ref.lpVtbl,
        pUser,
      );

  int RemoveAll() => ptr.ref.lpVtbl.value
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

  int FlushToDisk() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
}
