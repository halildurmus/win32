// IOfflineFilesCache.dart

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
import '../../storage/offlinefiles/IOfflineFilesSyncConflictHandler.dart';
import '../../storage/offlinefiles/IOfflineFilesSyncProgress.dart';
import '../../storage/offlinefiles/IOfflineFilesSimpleProgress.dart';
import '../../storage/offlinefiles/IOfflineFilesItem.dart';
import '../../storage/offlinefiles/IOfflineFilesItemFilter.dart';
import '../../storage/offlinefiles/IOfflineFilesSetting.dart';
import '../../storage/offlinefiles/IEnumOfflineFilesSettings.dart';
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesCache = '{855D6203-7914-48B9-8D40-4C56F5ACFFC5}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesCache extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IOfflineFilesCache(Pointer<COMObject> ptr) : super(ptr);

  int Synchronize(
    int hwndParent,
    Pointer<Pointer<Utf16>> rgpszPaths,
    int cPaths,
    int bAsync,
    int dwSyncControl,
    Pointer<COMObject> pISyncConflictHandler,
    Pointer<COMObject> pIProgress,
    Pointer<GUID> pSyncId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Pointer<Utf16>> rgpszPaths,
            Uint32 cPaths,
            Int32 bAsync,
            Uint32 dwSyncControl,
            Pointer<COMObject> pISyncConflictHandler,
            Pointer<COMObject> pIProgress,
            Pointer<GUID> pSyncId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Pointer<Utf16>> rgpszPaths,
            int cPaths,
            int bAsync,
            int dwSyncControl,
            Pointer<COMObject> pISyncConflictHandler,
            Pointer<COMObject> pIProgress,
            Pointer<GUID> pSyncId,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        rgpszPaths,
        cPaths,
        bAsync,
        dwSyncControl,
        pISyncConflictHandler,
        pIProgress,
        pSyncId,
      );

  int DeleteItems(
    Pointer<Pointer<Utf16>> rgpszPaths,
    int cPaths,
    int dwFlags,
    int bAsync,
    Pointer<COMObject> pIProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> rgpszPaths,
            Uint32 cPaths,
            Uint32 dwFlags,
            Int32 bAsync,
            Pointer<COMObject> pIProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> rgpszPaths,
            int cPaths,
            int dwFlags,
            int bAsync,
            Pointer<COMObject> pIProgress,
          )>()(
        ptr.ref.lpVtbl,
        rgpszPaths,
        cPaths,
        dwFlags,
        bAsync,
        pIProgress,
      );

  int DeleteItemsForUser(
    Pointer<Utf16> pszUser,
    Pointer<Pointer<Utf16>> rgpszPaths,
    int cPaths,
    int dwFlags,
    int bAsync,
    Pointer<COMObject> pIProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUser,
            Pointer<Pointer<Utf16>> rgpszPaths,
            Uint32 cPaths,
            Uint32 dwFlags,
            Int32 bAsync,
            Pointer<COMObject> pIProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUser,
            Pointer<Pointer<Utf16>> rgpszPaths,
            int cPaths,
            int dwFlags,
            int bAsync,
            Pointer<COMObject> pIProgress,
          )>()(
        ptr.ref.lpVtbl,
        pszUser,
        rgpszPaths,
        cPaths,
        dwFlags,
        bAsync,
        pIProgress,
      );

  int Pin(
    int hwndParent,
    Pointer<Pointer<Utf16>> rgpszPaths,
    int cPaths,
    int bDeep,
    int bAsync,
    int dwPinControlFlags,
    Pointer<COMObject> pIProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Pointer<Utf16>> rgpszPaths,
            Uint32 cPaths,
            Int32 bDeep,
            Int32 bAsync,
            Uint32 dwPinControlFlags,
            Pointer<COMObject> pIProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Pointer<Utf16>> rgpszPaths,
            int cPaths,
            int bDeep,
            int bAsync,
            int dwPinControlFlags,
            Pointer<COMObject> pIProgress,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        rgpszPaths,
        cPaths,
        bDeep,
        bAsync,
        dwPinControlFlags,
        pIProgress,
      );

  int Unpin(
    int hwndParent,
    Pointer<Pointer<Utf16>> rgpszPaths,
    int cPaths,
    int bDeep,
    int bAsync,
    int dwPinControlFlags,
    Pointer<COMObject> pIProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<Pointer<Utf16>> rgpszPaths,
            Uint32 cPaths,
            Int32 bDeep,
            Int32 bAsync,
            Uint32 dwPinControlFlags,
            Pointer<COMObject> pIProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<Pointer<Utf16>> rgpszPaths,
            int cPaths,
            int bDeep,
            int bAsync,
            int dwPinControlFlags,
            Pointer<COMObject> pIProgress,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        rgpszPaths,
        cPaths,
        bDeep,
        bAsync,
        dwPinControlFlags,
        pIProgress,
      );

  int GetEncryptionStatus(
    Pointer<Int32> pbEncrypted,
    Pointer<Int32> pbPartial,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbEncrypted,
            Pointer<Int32> pbPartial,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbEncrypted,
            Pointer<Int32> pbPartial,
          )>()(
        ptr.ref.lpVtbl,
        pbEncrypted,
        pbPartial,
      );

  int Encrypt(
    int hwndParent,
    int bEncrypt,
    int dwEncryptionControlFlags,
    int bAsync,
    Pointer<COMObject> pIProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Int32 bEncrypt,
            Uint32 dwEncryptionControlFlags,
            Int32 bAsync,
            Pointer<COMObject> pIProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            int bEncrypt,
            int dwEncryptionControlFlags,
            int bAsync,
            Pointer<COMObject> pIProgress,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        bEncrypt,
        dwEncryptionControlFlags,
        bAsync,
        pIProgress,
      );

  int FindItem(
    Pointer<Utf16> pszPath,
    int dwQueryFlags,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Uint32 dwQueryFlags,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int dwQueryFlags,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        dwQueryFlags,
        ppItem,
      );

  int FindItemEx(
    Pointer<Utf16> pszPath,
    Pointer<COMObject> pIncludeFileFilter,
    Pointer<COMObject> pIncludeDirFilter,
    Pointer<COMObject> pExcludeFileFilter,
    Pointer<COMObject> pExcludeDirFilter,
    int dwQueryFlags,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<COMObject> pIncludeFileFilter,
            Pointer<COMObject> pIncludeDirFilter,
            Pointer<COMObject> pExcludeFileFilter,
            Pointer<COMObject> pExcludeDirFilter,
            Uint32 dwQueryFlags,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<COMObject> pIncludeFileFilter,
            Pointer<COMObject> pIncludeDirFilter,
            Pointer<COMObject> pExcludeFileFilter,
            Pointer<COMObject> pExcludeDirFilter,
            int dwQueryFlags,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pIncludeFileFilter,
        pIncludeDirFilter,
        pExcludeFileFilter,
        pExcludeDirFilter,
        dwQueryFlags,
        ppItem,
      );

  int RenameItem(
    Pointer<Utf16> pszPathOriginal,
    Pointer<Utf16> pszPathNew,
    int bReplaceIfExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPathOriginal,
            Pointer<Utf16> pszPathNew,
            Int32 bReplaceIfExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPathOriginal,
            Pointer<Utf16> pszPathNew,
            int bReplaceIfExists,
          )>()(
        ptr.ref.lpVtbl,
        pszPathOriginal,
        pszPathNew,
        bReplaceIfExists,
      );

  int GetLocation(
    Pointer<Pointer<Utf16>> ppszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>()(
        ptr.ref.lpVtbl,
        ppszPath,
      );

  int GetDiskSpaceInformation(
    Pointer<Uint64> pcbVolumeTotal,
    Pointer<Uint64> pcbLimit,
    Pointer<Uint64> pcbUsed,
    Pointer<Uint64> pcbUnpinnedLimit,
    Pointer<Uint64> pcbUnpinnedUsed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pcbVolumeTotal,
            Pointer<Uint64> pcbLimit,
            Pointer<Uint64> pcbUsed,
            Pointer<Uint64> pcbUnpinnedLimit,
            Pointer<Uint64> pcbUnpinnedUsed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pcbVolumeTotal,
            Pointer<Uint64> pcbLimit,
            Pointer<Uint64> pcbUsed,
            Pointer<Uint64> pcbUnpinnedLimit,
            Pointer<Uint64> pcbUnpinnedUsed,
          )>()(
        ptr.ref.lpVtbl,
        pcbVolumeTotal,
        pcbLimit,
        pcbUsed,
        pcbUnpinnedLimit,
        pcbUnpinnedUsed,
      );

  int SetDiskSpaceLimits(
    int cbLimit,
    int cbUnpinnedLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cbLimit,
            Uint64 cbUnpinnedLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbLimit,
            int cbUnpinnedLimit,
          )>()(
        ptr.ref.lpVtbl,
        cbLimit,
        cbUnpinnedLimit,
      );

  int ProcessAdminPinPolicy(
    Pointer<COMObject> pPinProgress,
    Pointer<COMObject> pUnpinProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPinProgress,
            Pointer<COMObject> pUnpinProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPinProgress,
            Pointer<COMObject> pUnpinProgress,
          )>()(
        ptr.ref.lpVtbl,
        pPinProgress,
        pUnpinProgress,
      );

  int GetSettingObject(
    Pointer<Utf16> pszSettingName,
    Pointer<Pointer<COMObject>> ppSetting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSettingName,
            Pointer<Pointer<COMObject>> ppSetting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSettingName,
            Pointer<Pointer<COMObject>> ppSetting,
          )>()(
        ptr.ref.lpVtbl,
        pszSettingName,
        ppSetting,
      );

  int EnumSettingObjects(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int IsPathCacheable(
    Pointer<Utf16> pszPath,
    Pointer<Int32> pbCacheable,
    Pointer<Int32> pShareCachingMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Int32> pbCacheable,
            Pointer<Int32> pShareCachingMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Int32> pbCacheable,
            Pointer<Int32> pShareCachingMode,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pbCacheable,
        pShareCachingMode,
      );
}

/// @nodoc
const CLSID_OfflineFilesCache = '{48C6BE7C-3871-43CC-B46F-1449A1BB2FF3}';

/// {@category com}
class OfflineFilesCache extends IOfflineFilesCache {
  OfflineFilesCache(Pointer<COMObject> ptr) : super(ptr);

  factory OfflineFilesCache.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_OfflineFilesCache);
    final iid = calloc<GUID>()..ref.setGUID(IID_IOfflineFilesCache);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return OfflineFilesCache(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
