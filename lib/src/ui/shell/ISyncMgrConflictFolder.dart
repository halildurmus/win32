// ISyncMgrConflictFolder.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncMgrConflictFolder = '{59287F5E-BC81-4FCA-A7F1-E5A8ECDB1D69}';

/// {@category Interface}
/// {@category com}
class ISyncMgrConflictFolder extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISyncMgrConflictFolder(Pointer<COMObject> ptr) : super(ptr);

  int GetConflictIDList(
    Pointer<COMObject> pConflict,
    Pointer<Pointer<ITEMIDLIST>> ppidlConflict,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConflict,
            Pointer<Pointer<ITEMIDLIST>> ppidlConflict,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConflict,
            Pointer<Pointer<ITEMIDLIST>> ppidlConflict,
          )>()(
        ptr.ref.lpVtbl,
        pConflict,
        ppidlConflict,
      );
}
