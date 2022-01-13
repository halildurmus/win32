// IOfflineFilesEvents.dart

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
import '../../storage/offlinefiles/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesEvents = '{E25585C1-0CAA-4EB1-873B-1CAE5B77C314}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesEvents extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  IOfflineFilesEvents(Pointer<COMObject> ptr) : super(ptr);

  int CacheMoved(
    Pointer<Utf16> pszOldPath,
    Pointer<Utf16> pszNewPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszOldPath,
            Pointer<Utf16> pszNewPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszOldPath,
            Pointer<Utf16> pszNewPath,
          )>()(
        ptr.ref.lpVtbl,
        pszOldPath,
        pszNewPath,
      );

  int CacheIsFull() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int CacheIsCorrupted() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Enabled(
    int bEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bEnabled,
          )>()(
        ptr.ref.lpVtbl,
        bEnabled,
      );

  int EncryptionChanged(
    int bWasEncrypted,
    int bWasPartial,
    int bIsEncrypted,
    int bIsPartial,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bWasEncrypted,
            Int32 bWasPartial,
            Int32 bIsEncrypted,
            Int32 bIsPartial,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bWasEncrypted,
            int bWasPartial,
            int bIsEncrypted,
            int bIsPartial,
          )>()(
        ptr.ref.lpVtbl,
        bWasEncrypted,
        bWasPartial,
        bIsEncrypted,
        bIsPartial,
      );

  int SyncBegin(
    Pointer<GUID> rSyncId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rSyncId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rSyncId,
          )>()(
        ptr.ref.lpVtbl,
        rSyncId,
      );

  int SyncFileResult(
    Pointer<GUID> rSyncId,
    Pointer<Utf16> pszFile,
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rSyncId,
            Pointer<Utf16> pszFile,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rSyncId,
            Pointer<Utf16> pszFile,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        rSyncId,
        pszFile,
        hrResult,
      );

  int SyncConflictRecAdded(
    Pointer<Utf16> pszConflictPath,
    Pointer<FILETIME> pftConflictDateTime,
    int ConflictSyncState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszConflictPath,
            Pointer<FILETIME> pftConflictDateTime,
            Int32 ConflictSyncState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszConflictPath,
            Pointer<FILETIME> pftConflictDateTime,
            int ConflictSyncState,
          )>()(
        ptr.ref.lpVtbl,
        pszConflictPath,
        pftConflictDateTime,
        ConflictSyncState,
      );

  int SyncConflictRecUpdated(
    Pointer<Utf16> pszConflictPath,
    Pointer<FILETIME> pftConflictDateTime,
    int ConflictSyncState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszConflictPath,
            Pointer<FILETIME> pftConflictDateTime,
            Int32 ConflictSyncState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszConflictPath,
            Pointer<FILETIME> pftConflictDateTime,
            int ConflictSyncState,
          )>()(
        ptr.ref.lpVtbl,
        pszConflictPath,
        pftConflictDateTime,
        ConflictSyncState,
      );

  int SyncConflictRecRemoved(
    Pointer<Utf16> pszConflictPath,
    Pointer<FILETIME> pftConflictDateTime,
    int ConflictSyncState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszConflictPath,
            Pointer<FILETIME> pftConflictDateTime,
            Int32 ConflictSyncState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszConflictPath,
            Pointer<FILETIME> pftConflictDateTime,
            int ConflictSyncState,
          )>()(
        ptr.ref.lpVtbl,
        pszConflictPath,
        pftConflictDateTime,
        ConflictSyncState,
      );

  int SyncEnd(
    Pointer<GUID> rSyncId,
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rSyncId,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rSyncId,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        rSyncId,
        hrResult,
      );

  int NetTransportArrived() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int NoNetTransports() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int ItemDisconnected(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemReconnected(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemAvailableOffline(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemNotAvailableOffline(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemPinned(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemNotPinned(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemModified(
    Pointer<Utf16> pszPath,
    int ItemType,
    int bModifiedData,
    int bModifiedAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
            Int32 bModifiedData,
            Int32 bModifiedAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
            int bModifiedData,
            int bModifiedAttributes,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
        bModifiedData,
        bModifiedAttributes,
      );

  int ItemAddedToCache(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemDeletedFromCache(
    Pointer<Utf16> pszPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        ItemType,
      );

  int ItemRenamed(
    Pointer<Utf16> pszOldPath,
    Pointer<Utf16> pszNewPath,
    int ItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszOldPath,
            Pointer<Utf16> pszNewPath,
            Int32 ItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszOldPath,
            Pointer<Utf16> pszNewPath,
            int ItemType,
          )>()(
        ptr.ref.lpVtbl,
        pszOldPath,
        pszNewPath,
        ItemType,
      );

  int DataLost() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int Ping() => ptr.ref.lpVtbl.value
          .elementAt(27)
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
