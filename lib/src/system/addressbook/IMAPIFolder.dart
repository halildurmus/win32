// IMAPIFolder.dart

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

import '../../system/addressbook/IMAPIContainer.dart';
import '../../system/addressbook/IMessage.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IMAPIProgress.dart';
import '../../system/addressbook/IMAPIFolder.dart';

/// @nodoc
const IID_IMAPIFolder = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIFolder extends IMAPIContainer {
  // vtable begins at 19, is 11 entries long.
  IMAPIFolder(Pointer<COMObject> ptr) : super(ptr);

  int CreateMessage(
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Pointer<COMObject>> lppMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpInterface,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppMessage,
          )>()(
        ptr.ref.lpVtbl,
        lpInterface,
        ulFlags,
        lppMessage,
      );

  int CopyMessages(
    Pointer<SBinaryArray> lpMsgList,
    Pointer<GUID> lpInterface,
    Pointer lpDestFolder,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SBinaryArray> lpMsgList,
            Pointer<GUID> lpInterface,
            Pointer lpDestFolder,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SBinaryArray> lpMsgList,
            Pointer<GUID> lpInterface,
            Pointer lpDestFolder,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpMsgList,
        lpInterface,
        lpDestFolder,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int DeleteMessages(
    Pointer<SBinaryArray> lpMsgList,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SBinaryArray> lpMsgList,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SBinaryArray> lpMsgList,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpMsgList,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int CreateFolder(
    int ulFolderType,
    Pointer<Int8> lpszFolderName,
    Pointer<Int8> lpszFolderComment,
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Pointer<COMObject>> lppFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFolderType,
            Pointer<Int8> lpszFolderName,
            Pointer<Int8> lpszFolderComment,
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFolderType,
            Pointer<Int8> lpszFolderName,
            Pointer<Int8> lpszFolderComment,
            Pointer<GUID> lpInterface,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppFolder,
          )>()(
        ptr.ref.lpVtbl,
        ulFolderType,
        lpszFolderName,
        lpszFolderComment,
        lpInterface,
        ulFlags,
        lppFolder,
      );

  int CopyFolder(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    Pointer<GUID> lpInterface,
    Pointer lpDestFolder,
    Pointer<Int8> lpszNewFolderName,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Pointer<GUID> lpInterface,
            Pointer lpDestFolder,
            Pointer<Int8> lpszNewFolderName,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Pointer<GUID> lpInterface,
            Pointer lpDestFolder,
            Pointer<Int8> lpszNewFolderName,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        lpInterface,
        lpDestFolder,
        lpszNewFolderName,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int DeleteFolder(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int SetReadFlags(
    Pointer<SBinaryArray> lpMsgList,
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SBinaryArray> lpMsgList,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SBinaryArray> lpMsgList,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpMsgList,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int GetMessageStatus(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulFlags,
    Pointer<Uint32> lpulMessageStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Uint32 ulFlags,
            Pointer<Uint32> lpulMessageStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            int ulFlags,
            Pointer<Uint32> lpulMessageStatus,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        ulFlags,
        lpulMessageStatus,
      );

  int SetMessageStatus(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulNewStatus,
    int ulNewStatusMask,
    Pointer<Uint32> lpulOldStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Uint32 ulNewStatus,
            Uint32 ulNewStatusMask,
            Pointer<Uint32> lpulOldStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            int ulNewStatus,
            int ulNewStatusMask,
            Pointer<Uint32> lpulOldStatus,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        ulNewStatus,
        ulNewStatusMask,
        lpulOldStatus,
      );

  int SaveContentsSort(
    Pointer<SSortOrderSet> lpSortCriteria,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SSortOrderSet> lpSortCriteria,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SSortOrderSet> lpSortCriteria,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpSortCriteria,
        ulFlags,
      );

  int EmptyFolder(
    int ulUIParam,
    Pointer<COMObject> lpProgress,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        lpProgress,
        ulFlags,
      );
}
