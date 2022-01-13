// IPersistFolder3.dart

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

import '../../ui/shell/IPersistFolder2.dart';
import '../../system/com/IBindCtx.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPersistFolder3 = '{CEF04FDF-FE72-11D2-87A5-00C04F6837CF}';

/// {@category Interface}
/// {@category com}
class IPersistFolder3 extends IPersistFolder2 {
  // vtable begins at 6, is 2 entries long.
  IPersistFolder3(Pointer<COMObject> ptr) : super(ptr);

  int InitializeEx(
    Pointer<COMObject> pbc,
    Pointer<ITEMIDLIST> pidlRoot,
    Pointer<PERSIST_FOLDER_TARGET_INFO> ppfti,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbc,
            Pointer<ITEMIDLIST> pidlRoot,
            Pointer<PERSIST_FOLDER_TARGET_INFO> ppfti,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbc,
            Pointer<ITEMIDLIST> pidlRoot,
            Pointer<PERSIST_FOLDER_TARGET_INFO> ppfti,
          )>()(
        ptr.ref.lpVtbl,
        pbc,
        pidlRoot,
        ppfti,
      );

  int GetFolderTargetInfo(
    Pointer<PERSIST_FOLDER_TARGET_INFO> ppfti,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PERSIST_FOLDER_TARGET_INFO> ppfti,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PERSIST_FOLDER_TARGET_INFO> ppfti,
          )>()(
        ptr.ref.lpVtbl,
        ppfti,
      );
}
