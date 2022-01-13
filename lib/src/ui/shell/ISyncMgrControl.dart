// ISyncMgrControl.dart

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
import '../../specialTypes.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/ISyncMgrSyncResult.dart';
import '../../ui/shell/ISyncMgrConflict.dart';

/// @nodoc
const IID_ISyncMgrControl = '{9B63616C-36B2-46BC-959F-C1593952D19B}';

/// {@category Interface}
/// {@category com}
class ISyncMgrControl extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  ISyncMgrControl(Pointer<COMObject> ptr) : super(ptr);

  int StartHandlerSync(
    Pointer<Utf16> pszHandlerID,
    int hwndOwner,
    Pointer<COMObject> punk,
    int nSyncControlFlags,
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            IntPtr hwndOwner,
            Pointer<COMObject> punk,
            Int32 nSyncControlFlags,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            int hwndOwner,
            Pointer<COMObject> punk,
            int nSyncControlFlags,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        hwndOwner,
        punk,
        nSyncControlFlags,
        pResult,
      );

  int StartItemSync(
    Pointer<Utf16> pszHandlerID,
    Pointer<Pointer<Utf16>> ppszItemIDs,
    int cItems,
    int hwndOwner,
    Pointer<COMObject> punk,
    int nSyncControlFlags,
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            Uint32 cItems,
            IntPtr hwndOwner,
            Pointer<COMObject> punk,
            Int32 nSyncControlFlags,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            int cItems,
            int hwndOwner,
            Pointer<COMObject> punk,
            int nSyncControlFlags,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        ppszItemIDs,
        cItems,
        hwndOwner,
        punk,
        nSyncControlFlags,
        pResult,
      );

  int StartSyncAll(
    int hwndOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
      );

  int StopHandlerSync(
    Pointer<Utf16> pszHandlerID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
      );

  int StopItemSync(
    Pointer<Utf16> pszHandlerID,
    Pointer<Pointer<Utf16>> ppszItemIDs,
    int cItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            Uint32 cItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            int cItems,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        ppszItemIDs,
        cItems,
      );

  int StopSyncAll() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int UpdateHandlerCollection(
    Pointer<GUID> rclsidCollectionID,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsidCollectionID,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsidCollectionID,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        rclsidCollectionID,
        nControlFlags,
      );

  int UpdateHandler(
    Pointer<Utf16> pszHandlerID,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        nControlFlags,
      );

  int UpdateItem(
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        pszItemID,
        nControlFlags,
      );

  int UpdateEvents(
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        pszItemID,
        nControlFlags,
      );

  int UpdateConflict(
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    Pointer<COMObject> pConflict,
    int nReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Pointer<COMObject> pConflict,
            Int32 nReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Pointer<COMObject> pConflict,
            int nReason,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        pszItemID,
        pConflict,
        nReason,
      );

  int UpdateConflicts(
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        pszItemID,
        nControlFlags,
      );

  int ActivateHandler(
    int fActivate,
    Pointer<Utf16> pszHandlerID,
    int hwndOwner,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActivate,
            Pointer<Utf16> pszHandlerID,
            IntPtr hwndOwner,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActivate,
            Pointer<Utf16> pszHandlerID,
            int hwndOwner,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        fActivate,
        pszHandlerID,
        hwndOwner,
        nControlFlags,
      );

  int EnableHandler(
    int fEnable,
    Pointer<Utf16> pszHandlerID,
    int hwndOwner,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
            Pointer<Utf16> pszHandlerID,
            IntPtr hwndOwner,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
            Pointer<Utf16> pszHandlerID,
            int hwndOwner,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
        pszHandlerID,
        hwndOwner,
        nControlFlags,
      );

  int EnableItem(
    int fEnable,
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    int hwndOwner,
    int nControlFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            IntPtr hwndOwner,
            Int32 nControlFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            int hwndOwner,
            int nControlFlags,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
        pszHandlerID,
        pszItemID,
        hwndOwner,
        nControlFlags,
      );
}

/// @nodoc
const CLSID_SyncMgrControl = '{1A1F4206-0688-4E7F-BE03-D82EC69DF9A5}';

/// {@category com}
class SyncMgrControl extends ISyncMgrControl {
  SyncMgrControl(Pointer<COMObject> ptr) : super(ptr);

  factory SyncMgrControl.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SyncMgrControl);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISyncMgrControl);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SyncMgrControl(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
