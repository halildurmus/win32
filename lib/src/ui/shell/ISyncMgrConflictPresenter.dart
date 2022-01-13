// ISyncMgrConflictPresenter.dart

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
import '../../ui/shell/ISyncMgrConflict.dart';
import '../../ui/shell/ISyncMgrConflictResolveInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncMgrConflictPresenter = '{0B4F5353-FD2B-42CD-8763-4779F2D508A3}';

/// {@category Interface}
/// {@category com}
class ISyncMgrConflictPresenter extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncMgrConflictPresenter(Pointer<COMObject> ptr) : super(ptr);

  int PresentConflict(
    Pointer<COMObject> pConflict,
    Pointer<COMObject> pResolveInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConflict,
            Pointer<COMObject> pResolveInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConflict,
            Pointer<COMObject> pResolveInfo,
          )>()(
        ptr.ref.lpVtbl,
        pConflict,
        pResolveInfo,
      );
}
