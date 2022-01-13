// ISyncMgrSyncItemContainer.dart

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
import '../../ui/shell/ISyncMgrSyncItem.dart';
import '../../ui/shell/IEnumSyncMgrSyncItems.dart';

/// @nodoc
const IID_ISyncMgrSyncItemContainer = '{90701133-BE32-4129-A65C-99E616CAFFF4}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSyncItemContainer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISyncMgrSyncItemContainer(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncItem(
    Pointer<Utf16> pszItemID,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemID,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemID,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pszItemID,
        ppItem,
      );

  int GetSyncItemEnumerator(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );

  int GetSyncItemCount(
    Pointer<Uint32> pcItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcItems,
          )>()(
        ptr.ref.lpVtbl,
        pcItems,
      );
}
