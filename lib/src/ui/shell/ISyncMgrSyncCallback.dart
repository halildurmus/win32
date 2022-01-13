// ISyncMgrSyncCallback.dart

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
import '../../system/com/IEnumString.dart';
import '../../system/com/IEnumUnknown.dart';
import '../../specialTypes.dart';
import '../../ui/shell/ISyncMgrSyncItem.dart';

/// @nodoc
const IID_ISyncMgrSyncCallback = '{884CCD87-B139-4937-A4BA-4F8E19513FBE}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSyncCallback extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ISyncMgrSyncCallback(Pointer<COMObject> ptr) : super(ptr);

  int ReportProgress(
    Pointer<Utf16> pszItemID,
    Pointer<Utf16> pszProgressText,
    int nStatus,
    int uCurrentStep,
    int uMaxStep,
    Pointer<Int32> pnCancelRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemID,
            Pointer<Utf16> pszProgressText,
            Int32 nStatus,
            Uint32 uCurrentStep,
            Uint32 uMaxStep,
            Pointer<Int32> pnCancelRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemID,
            Pointer<Utf16> pszProgressText,
            int nStatus,
            int uCurrentStep,
            int uMaxStep,
            Pointer<Int32> pnCancelRequest,
          )>()(
        ptr.ref.lpVtbl,
        pszItemID,
        pszProgressText,
        nStatus,
        uCurrentStep,
        uMaxStep,
        pnCancelRequest,
      );

  int SetHandlerProgressText(
    Pointer<Utf16> pszProgressText,
    Pointer<Int32> pnCancelRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszProgressText,
            Pointer<Int32> pnCancelRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszProgressText,
            Pointer<Int32> pnCancelRequest,
          )>()(
        ptr.ref.lpVtbl,
        pszProgressText,
        pnCancelRequest,
      );

  int ReportEvent(
    Pointer<Utf16> pszItemID,
    int nLevel,
    int nFlags,
    Pointer<Utf16> pszName,
    Pointer<Utf16> pszDescription,
    Pointer<Utf16> pszLinkText,
    Pointer<Utf16> pszLinkReference,
    Pointer<Utf16> pszContext,
    Pointer<GUID> pguidEventID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemID,
            Int32 nLevel,
            Int32 nFlags,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszDescription,
            Pointer<Utf16> pszLinkText,
            Pointer<Utf16> pszLinkReference,
            Pointer<Utf16> pszContext,
            Pointer<GUID> pguidEventID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemID,
            int nLevel,
            int nFlags,
            Pointer<Utf16> pszName,
            Pointer<Utf16> pszDescription,
            Pointer<Utf16> pszLinkText,
            Pointer<Utf16> pszLinkReference,
            Pointer<Utf16> pszContext,
            Pointer<GUID> pguidEventID,
          )>()(
        ptr.ref.lpVtbl,
        pszItemID,
        nLevel,
        nFlags,
        pszName,
        pszDescription,
        pszLinkText,
        pszLinkReference,
        pszContext,
        pguidEventID,
      );

  int CanContinue(
    Pointer<Utf16> pszItemID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemID,
          )>()(
        ptr.ref.lpVtbl,
        pszItemID,
      );

  int QueryForAdditionalItems(
    Pointer<Pointer<COMObject>> ppenumItemIDs,
    Pointer<Pointer<COMObject>> ppenumPunks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumItemIDs,
            Pointer<Pointer<COMObject>> ppenumPunks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumItemIDs,
            Pointer<Pointer<COMObject>> ppenumPunks,
          )>()(
        ptr.ref.lpVtbl,
        ppenumItemIDs,
        ppenumPunks,
      );

  int AddItemToSession(
    Pointer<Utf16> pszItemID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemID,
          )>()(
        ptr.ref.lpVtbl,
        pszItemID,
      );

  int AddIUnknownToSession(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int ProposeItem(
    Pointer<COMObject> pNewItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNewItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNewItem,
          )>()(
        ptr.ref.lpVtbl,
        pNewItem,
      );

  int CommitItem(
    Pointer<Utf16> pszItemID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszItemID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszItemID,
          )>()(
        ptr.ref.lpVtbl,
        pszItemID,
      );

  int ReportManualSync() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
