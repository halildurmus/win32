// IFsrmQuotaManagerEx.dart

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

import '../../storage/fileserverresourcemanager/IFsrmQuotaManager.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';

/// @nodoc
const IID_IFsrmQuotaManagerEx = '{4846CB01-D430-494F-ABB4-B1054999FB09}';

/// {@category Interface}
/// {@category com}
class IFsrmQuotaManagerEx extends IFsrmQuotaManager {
  // vtable begins at 19, is 1 entries long.
  IFsrmQuotaManagerEx(Pointer<COMObject> ptr) : super(ptr);

  int IsAffectedByQuota(
    Pointer<Utf16> path,
    int options,
    Pointer<Int16> affected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 options,
            Pointer<Int16> affected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int options,
            Pointer<Int16> affected,
          )>()(
        ptr.ref.lpVtbl,
        path,
        options,
        affected,
      );
}
