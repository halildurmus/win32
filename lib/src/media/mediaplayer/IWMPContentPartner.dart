// IWMPContentPartner.dart

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
import '../../media/mediaplayer/IWMPContentPartnerCallback.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediaplayer/IWMPContentContainerList.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IWMPContentPartner = '{55455073-41B5-4E75-87B8-F13BDB291D08}';

/// {@category Interface}
/// {@category com}
class IWMPContentPartner extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IWMPContentPartner(Pointer<COMObject> ptr) : super(ptr);

  int SetCallback(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int Notify(
    int type,
    Pointer<VARIANT> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<VARIANT> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<VARIANT> pContext,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pContext,
      );

  int GetItemInfo(
    Pointer<Utf16> bstrInfoName,
    Pointer<VARIANT> pContext,
    Pointer<VARIANT> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInfoName,
            Pointer<VARIANT> pContext,
            Pointer<VARIANT> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInfoName,
            Pointer<VARIANT> pContext,
            Pointer<VARIANT> pData,
          )>()(
        ptr.ref.lpVtbl,
        bstrInfoName,
        pContext,
        pData,
      );

  int GetContentPartnerInfo(
    Pointer<Utf16> bstrInfoName,
    Pointer<VARIANT> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrInfoName,
            Pointer<VARIANT> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrInfoName,
            Pointer<VARIANT> pData,
          )>()(
        ptr.ref.lpVtbl,
        bstrInfoName,
        pData,
      );

  int GetCommands(
    Pointer<Utf16> location,
    Pointer<VARIANT> pLocationContext,
    Pointer<Utf16> itemLocation,
    int cItemIDs,
    Pointer<Uint32> prgItemIDs,
    Pointer<Uint32> pcItemIDs,
    Pointer<Pointer<WMPContextMenuInfo>> pprgItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> location,
            Pointer<VARIANT> pLocationContext,
            Pointer<Utf16> itemLocation,
            Uint32 cItemIDs,
            Pointer<Uint32> prgItemIDs,
            Pointer<Uint32> pcItemIDs,
            Pointer<Pointer<WMPContextMenuInfo>> pprgItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> location,
            Pointer<VARIANT> pLocationContext,
            Pointer<Utf16> itemLocation,
            int cItemIDs,
            Pointer<Uint32> prgItemIDs,
            Pointer<Uint32> pcItemIDs,
            Pointer<Pointer<WMPContextMenuInfo>> pprgItems,
          )>()(
        ptr.ref.lpVtbl,
        location,
        pLocationContext,
        itemLocation,
        cItemIDs,
        prgItemIDs,
        pcItemIDs,
        pprgItems,
      );

  int InvokeCommand(
    int dwCommandID,
    Pointer<Utf16> location,
    Pointer<VARIANT> pLocationContext,
    Pointer<Utf16> itemLocation,
    int cItemIDs,
    Pointer<Uint32> rgItemIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCommandID,
            Pointer<Utf16> location,
            Pointer<VARIANT> pLocationContext,
            Pointer<Utf16> itemLocation,
            Uint32 cItemIDs,
            Pointer<Uint32> rgItemIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCommandID,
            Pointer<Utf16> location,
            Pointer<VARIANT> pLocationContext,
            Pointer<Utf16> itemLocation,
            int cItemIDs,
            Pointer<Uint32> rgItemIDs,
          )>()(
        ptr.ref.lpVtbl,
        dwCommandID,
        location,
        pLocationContext,
        itemLocation,
        cItemIDs,
        rgItemIDs,
      );

  int CanBuySilent(
    Pointer<COMObject> pInfo,
    Pointer<Pointer<Utf16>> pbstrTotalPrice,
    Pointer<Int16> pSilentOK,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInfo,
            Pointer<Pointer<Utf16>> pbstrTotalPrice,
            Pointer<Int16> pSilentOK,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInfo,
            Pointer<Pointer<Utf16>> pbstrTotalPrice,
            Pointer<Int16> pSilentOK,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        pbstrTotalPrice,
        pSilentOK,
      );

  int Buy(
    Pointer<COMObject> pInfo,
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInfo,
            Uint32 cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInfo,
            int cookie,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        cookie,
      );

  int GetStreamingURL(
    int st,
    Pointer<VARIANT> pStreamContext,
    Pointer<Pointer<Utf16>> pbstrURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 st,
            Pointer<VARIANT> pStreamContext,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int st,
            Pointer<VARIANT> pStreamContext,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>()(
        ptr.ref.lpVtbl,
        st,
        pStreamContext,
        pbstrURL,
      );

  int Download(
    Pointer<COMObject> pInfo,
    int cookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInfo,
            Uint32 cookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInfo,
            int cookie,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        cookie,
      );

  int DownloadTrackComplete(
    int hrResult,
    int contentID,
    Pointer<Utf16> downloadTrackParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrResult,
            Uint32 contentID,
            Pointer<Utf16> downloadTrackParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrResult,
            int contentID,
            Pointer<Utf16> downloadTrackParam,
          )>()(
        ptr.ref.lpVtbl,
        hrResult,
        contentID,
        downloadTrackParam,
      );

  int RefreshLicense(
    int dwCookie,
    int fLocal,
    Pointer<Utf16> bstrURL,
    int type,
    int contentID,
    Pointer<Utf16> bstrRefreshReason,
    Pointer<VARIANT> pReasonContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
            Int16 fLocal,
            Pointer<Utf16> bstrURL,
            Int32 type,
            Uint32 contentID,
            Pointer<Utf16> bstrRefreshReason,
            Pointer<VARIANT> pReasonContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
            int fLocal,
            Pointer<Utf16> bstrURL,
            int type,
            int contentID,
            Pointer<Utf16> bstrRefreshReason,
            Pointer<VARIANT> pReasonContext,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
        fLocal,
        bstrURL,
        type,
        contentID,
        bstrRefreshReason,
        pReasonContext,
      );

  int GetCatalogURL(
    int dwCatalogVersion,
    int dwCatalogSchemaVersion,
    int catalogLCID,
    Pointer<Uint32> pdwNewCatalogVersion,
    Pointer<Pointer<Utf16>> pbstrCatalogURL,
    Pointer<VARIANT> pExpirationDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCatalogVersion,
            Uint32 dwCatalogSchemaVersion,
            Uint32 catalogLCID,
            Pointer<Uint32> pdwNewCatalogVersion,
            Pointer<Pointer<Utf16>> pbstrCatalogURL,
            Pointer<VARIANT> pExpirationDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCatalogVersion,
            int dwCatalogSchemaVersion,
            int catalogLCID,
            Pointer<Uint32> pdwNewCatalogVersion,
            Pointer<Pointer<Utf16>> pbstrCatalogURL,
            Pointer<VARIANT> pExpirationDate,
          )>()(
        ptr.ref.lpVtbl,
        dwCatalogVersion,
        dwCatalogSchemaVersion,
        catalogLCID,
        pdwNewCatalogVersion,
        pbstrCatalogURL,
        pExpirationDate,
      );

  int GetTemplate(
    int task,
    Pointer<Utf16> location,
    Pointer<VARIANT> pContext,
    Pointer<Utf16> clickLocation,
    Pointer<VARIANT> pClickContext,
    Pointer<Utf16> bstrFilter,
    Pointer<Utf16> bstrViewParams,
    Pointer<Pointer<Utf16>> pbstrTemplateURL,
    Pointer<Int32> pTemplateSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 task,
            Pointer<Utf16> location,
            Pointer<VARIANT> pContext,
            Pointer<Utf16> clickLocation,
            Pointer<VARIANT> pClickContext,
            Pointer<Utf16> bstrFilter,
            Pointer<Utf16> bstrViewParams,
            Pointer<Pointer<Utf16>> pbstrTemplateURL,
            Pointer<Int32> pTemplateSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int task,
            Pointer<Utf16> location,
            Pointer<VARIANT> pContext,
            Pointer<Utf16> clickLocation,
            Pointer<VARIANT> pClickContext,
            Pointer<Utf16> bstrFilter,
            Pointer<Utf16> bstrViewParams,
            Pointer<Pointer<Utf16>> pbstrTemplateURL,
            Pointer<Int32> pTemplateSize,
          )>()(
        ptr.ref.lpVtbl,
        task,
        location,
        pContext,
        clickLocation,
        pClickContext,
        bstrFilter,
        bstrViewParams,
        pbstrTemplateURL,
        pTemplateSize,
      );

  int UpdateDevice(
    Pointer<Utf16> bstrDeviceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceName,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceName,
      );

  int GetListContents(
    Pointer<Utf16> location,
    Pointer<VARIANT> pContext,
    Pointer<Utf16> bstrListType,
    Pointer<Utf16> bstrParams,
    int dwListCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> location,
            Pointer<VARIANT> pContext,
            Pointer<Utf16> bstrListType,
            Pointer<Utf16> bstrParams,
            Uint32 dwListCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> location,
            Pointer<VARIANT> pContext,
            Pointer<Utf16> bstrListType,
            Pointer<Utf16> bstrParams,
            int dwListCookie,
          )>()(
        ptr.ref.lpVtbl,
        location,
        pContext,
        bstrListType,
        bstrParams,
        dwListCookie,
      );

  int Login(
    BLOB userInfo,
    BLOB pwdInfo,
    int fUsedCachedCreds,
    int fOkToCache,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            BLOB userInfo,
            BLOB pwdInfo,
            Int16 fUsedCachedCreds,
            Int16 fOkToCache,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            BLOB userInfo,
            BLOB pwdInfo,
            int fUsedCachedCreds,
            int fOkToCache,
          )>()(
        ptr.ref.lpVtbl,
        userInfo,
        pwdInfo,
        fUsedCachedCreds,
        fOkToCache,
      );

  int Authenticate(
    BLOB userInfo,
    BLOB pwdInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            BLOB userInfo,
            BLOB pwdInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            BLOB userInfo,
            BLOB pwdInfo,
          )>()(
        ptr.ref.lpVtbl,
        userInfo,
        pwdInfo,
      );

  int Logout() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SendMessage(
    Pointer<Utf16> bstrMsg,
    Pointer<Utf16> bstrParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMsg,
            Pointer<Utf16> bstrParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMsg,
            Pointer<Utf16> bstrParam,
          )>()(
        ptr.ref.lpVtbl,
        bstrMsg,
        bstrParam,
      );

  int StationEvent(
    Pointer<Utf16> bstrStationEventType,
    int StationId,
    int PlaylistIndex,
    int TrackID,
    Pointer<Utf16> TrackData,
    int dwSecondsPlayed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrStationEventType,
            Uint32 StationId,
            Uint32 PlaylistIndex,
            Uint32 TrackID,
            Pointer<Utf16> TrackData,
            Uint32 dwSecondsPlayed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrStationEventType,
            int StationId,
            int PlaylistIndex,
            int TrackID,
            Pointer<Utf16> TrackData,
            int dwSecondsPlayed,
          )>()(
        ptr.ref.lpVtbl,
        bstrStationEventType,
        StationId,
        PlaylistIndex,
        TrackID,
        TrackData,
        dwSecondsPlayed,
      );

  int CompareContainerListPrices(
    Pointer<COMObject> pListBase,
    Pointer<COMObject> pListCompare,
    Pointer<Int32> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pListBase,
            Pointer<COMObject> pListCompare,
            Pointer<Int32> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pListBase,
            Pointer<COMObject> pListCompare,
            Pointer<Int32> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pListBase,
        pListCompare,
        pResult,
      );

  int VerifyPermission(
    Pointer<Utf16> bstrPermission,
    Pointer<VARIANT> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPermission,
            Pointer<VARIANT> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPermission,
            Pointer<VARIANT> pContext,
          )>()(
        ptr.ref.lpVtbl,
        bstrPermission,
        pContext,
      );
}
