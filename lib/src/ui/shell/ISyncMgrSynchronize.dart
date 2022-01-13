// ISyncMgrSynchronize.dart

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
import '../../ui/shell/ISyncMgrEnumItems.dart';
import '../../ui/shell/ISyncMgrSynchronizeCallback.dart';

/// @nodoc
const IID_ISyncMgrSynchronize = '{6295DF40-35EE-11D1-8707-00C04FD93327}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSynchronize extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ISyncMgrSynchronize(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int dwReserved,
    int dwSyncMgrFlags,
    int cbCookie,
    Pointer<Uint8> lpCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
            Uint32 dwSyncMgrFlags,
            Uint32 cbCookie,
            Pointer<Uint8> lpCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
            int dwSyncMgrFlags,
            int cbCookie,
            Pointer<Uint8> lpCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
        dwSyncMgrFlags,
        cbCookie,
        lpCookie,
      );

  int GetHandlerInfo(
    Pointer<Pointer<SYNCMGRHANDLERINFO>> ppSyncMgrHandlerInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SYNCMGRHANDLERINFO>> ppSyncMgrHandlerInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SYNCMGRHANDLERINFO>> ppSyncMgrHandlerInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppSyncMgrHandlerInfo,
      );

  int EnumSyncMgrItems(
    Pointer<Pointer<COMObject>> ppSyncMgrEnumItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncMgrEnumItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncMgrEnumItems,
          )>()(
        ptr.ref.lpVtbl,
        ppSyncMgrEnumItems,
      );

  int GetItemObject(
    Pointer<GUID> ItemID,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ItemID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ItemID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        ItemID,
        riid,
        ppv,
      );

  int ShowProperties(
    int hWndParent,
    Pointer<GUID> ItemID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
            Pointer<GUID> ItemID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            Pointer<GUID> ItemID,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        ItemID,
      );

  int SetProgressCallback(
    Pointer<COMObject> lpCallBack,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpCallBack,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpCallBack,
          )>()(
        ptr.ref.lpVtbl,
        lpCallBack,
      );

  int PrepareForSync(
    int cbNumItems,
    Pointer<GUID> pItemIDs,
    int hWndParent,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbNumItems,
            Pointer<GUID> pItemIDs,
            IntPtr hWndParent,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbNumItems,
            Pointer<GUID> pItemIDs,
            int hWndParent,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        cbNumItems,
        pItemIDs,
        hWndParent,
        dwReserved,
      );

  int Synchronize(
    int hWndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
      );

  int SetItemStatus(
    Pointer<GUID> pItemID,
    int dwSyncMgrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pItemID,
            Uint32 dwSyncMgrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pItemID,
            int dwSyncMgrStatus,
          )>()(
        ptr.ref.lpVtbl,
        pItemID,
        dwSyncMgrStatus,
      );

  int ShowError(
    int hWndParent,
    Pointer<GUID> ErrorID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hWndParent,
            Pointer<GUID> ErrorID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            Pointer<GUID> ErrorID,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        ErrorID,
      );
}
