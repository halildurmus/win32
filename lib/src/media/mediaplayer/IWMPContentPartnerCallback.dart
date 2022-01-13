// IWMPContentPartnerCallback.dart

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
import '../../media/mediaplayer/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPContentPartnerCallback = '{9E8F7DA2-0695-403C-B697-DA10FAFAA676}';

/// {@category Interface}
/// {@category com}
class IWMPContentPartnerCallback extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IWMPContentPartnerCallback(Pointer<COMObject> ptr) : super(ptr);

  int Notify(
    int type,
    Pointer<VARIANT> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int BuyComplete(
    int hrResult,
    int dwBuyCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrResult,
            Uint32 dwBuyCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrResult,
            int dwBuyCookie,
          )>()(
        ptr.ref.lpVtbl,
        hrResult,
        dwBuyCookie,
      );

  int DownloadTrack(
    int cookie,
    Pointer<Utf16> bstrTrackURL,
    int dwServiceTrackID,
    Pointer<Utf16> bstrDownloadParams,
    int hrDownload,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cookie,
            Pointer<Utf16> bstrTrackURL,
            Uint32 dwServiceTrackID,
            Pointer<Utf16> bstrDownloadParams,
            Int32 hrDownload,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cookie,
            Pointer<Utf16> bstrTrackURL,
            int dwServiceTrackID,
            Pointer<Utf16> bstrDownloadParams,
            int hrDownload,
          )>()(
        ptr.ref.lpVtbl,
        cookie,
        bstrTrackURL,
        dwServiceTrackID,
        bstrDownloadParams,
        hrDownload,
      );

  int GetCatalogVersion(
    Pointer<Uint32> pdwVersion,
    Pointer<Uint32> pdwSchemaVersion,
    Pointer<Uint32> plcid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
            Pointer<Uint32> pdwSchemaVersion,
            Pointer<Uint32> plcid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
            Pointer<Uint32> pdwSchemaVersion,
            Pointer<Uint32> plcid,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
        pdwSchemaVersion,
        plcid,
      );

  int UpdateDeviceComplete(
    Pointer<Utf16> bstrDeviceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int ChangeView(
    Pointer<Utf16> bstrType,
    Pointer<Utf16> bstrID,
    Pointer<Utf16> bstrFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrID,
            Pointer<Utf16> bstrFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrID,
            Pointer<Utf16> bstrFilter,
          )>()(
        ptr.ref.lpVtbl,
        bstrType,
        bstrID,
        bstrFilter,
      );

  int AddListContents(
    int dwListCookie,
    int cItems,
    Pointer<Uint32> prgItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwListCookie,
            Uint32 cItems,
            Pointer<Uint32> prgItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwListCookie,
            int cItems,
            Pointer<Uint32> prgItems,
          )>()(
        ptr.ref.lpVtbl,
        dwListCookie,
        cItems,
        prgItems,
      );

  int ListContentsComplete(
    int dwListCookie,
    int hrSuccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwListCookie,
            Int32 hrSuccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwListCookie,
            int hrSuccess,
          )>()(
        ptr.ref.lpVtbl,
        dwListCookie,
        hrSuccess,
      );

  int SendMessageComplete(
    Pointer<Utf16> bstrMsg,
    Pointer<Utf16> bstrParam,
    Pointer<Utf16> bstrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMsg,
            Pointer<Utf16> bstrParam,
            Pointer<Utf16> bstrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMsg,
            Pointer<Utf16> bstrParam,
            Pointer<Utf16> bstrResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrMsg,
        bstrParam,
        bstrResult,
      );

  int GetContentIDsInLibrary(
    Pointer<Uint32> pcContentIDs,
    Pointer<Pointer<Uint32>> pprgIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcContentIDs,
            Pointer<Pointer<Uint32>> pprgIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcContentIDs,
            Pointer<Pointer<Uint32>> pprgIDs,
          )>()(
        ptr.ref.lpVtbl,
        pcContentIDs,
        pprgIDs,
      );

  int RefreshLicenseComplete(
    int dwCookie,
    int contentID,
    int hrRefresh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
            Uint32 contentID,
            Int32 hrRefresh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
            int contentID,
            int hrRefresh,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
        contentID,
        hrRefresh,
      );

  int ShowPopup(
    int lIndex,
    Pointer<Utf16> bstrParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Utf16> bstrParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Utf16> bstrParameters,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        bstrParameters,
      );

  int VerifyPermissionComplete(
    Pointer<Utf16> bstrPermission,
    Pointer<VARIANT> pContext,
    int hrPermission,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPermission,
            Pointer<VARIANT> pContext,
            Int32 hrPermission,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPermission,
            Pointer<VARIANT> pContext,
            int hrPermission,
          )>()(
        ptr.ref.lpVtbl,
        bstrPermission,
        pContext,
        hrPermission,
      );
}
