// ISyncMgrSyncResult.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncMgrSyncResult = '{2B90F17E-5A3E-4B33-BB7F-1BC48056B94D}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSyncResult extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncMgrSyncResult(Pointer<COMObject> ptr) : super(ptr);

  int Result(
    int nStatus,
    int cError,
    int cConflicts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nStatus,
            Uint32 cError,
            Uint32 cConflicts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nStatus,
            int cError,
            int cConflicts,
          )>()(
        ptr.ref.lpVtbl,
        nStatus,
        cError,
        cConflicts,
      );
}
