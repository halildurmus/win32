// ISyncMgrConflictItems.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISyncMgrConflictItems = '{9C7EAD52-8023-4936-A4DB-D2A9A99E436A}';

/// {@category Interface}
/// {@category com}
class ISyncMgrConflictItems extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISyncMgrConflictItems(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetItem(
    int iIndex,
    Pointer<CONFIRM_CONFLICT_ITEM> pItemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<CONFIRM_CONFLICT_ITEM> pItemInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<CONFIRM_CONFLICT_ITEM> pItemInfo,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        pItemInfo,
      );
}
