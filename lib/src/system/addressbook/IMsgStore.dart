// IMsgStore.dart

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

import '../../system/addressbook/IMAPIProp.dart';
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IMAPIAdviseSink.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/addressbook/IMAPITable.dart';
import '../../system/addressbook/IMessage.dart';

/// @nodoc
const IID_IMsgStore = 'null';

/// {@category Interface}
/// {@category com}
class IMsgStore extends IMAPIProp {
  // vtable begins at 14, is 13 entries long.
  IMsgStore(Pointer<COMObject> ptr) : super(ptr);

  int Advise(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulEventMask,
    Pointer<COMObject> lpAdviseSink,
    Pointer<Uint32> lpulConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Uint32 ulEventMask,
            Pointer<COMObject> lpAdviseSink,
            Pointer<Uint32> lpulConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            int ulEventMask,
            Pointer<COMObject> lpAdviseSink,
            Pointer<Uint32> lpulConnection,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        ulEventMask,
        lpAdviseSink,
        lpulConnection,
      );

  int Unadvise(
    int ulConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulConnection,
          )>()(
        ptr.ref.lpVtbl,
        ulConnection,
      );

  int CompareEntryIDs(
    int cbEntryID1,
    Pointer<ENTRYID> lpEntryID1,
    int cbEntryID2,
    Pointer<ENTRYID> lpEntryID2,
    int ulFlags,
    Pointer<Uint32> lpulResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID1,
            Pointer<ENTRYID> lpEntryID1,
            Uint32 cbEntryID2,
            Pointer<ENTRYID> lpEntryID2,
            Uint32 ulFlags,
            Pointer<Uint32> lpulResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID1,
            Pointer<ENTRYID> lpEntryID1,
            int cbEntryID2,
            Pointer<ENTRYID> lpEntryID2,
            int ulFlags,
            Pointer<Uint32> lpulResult,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID1,
        lpEntryID1,
        cbEntryID2,
        lpEntryID2,
        ulFlags,
        lpulResult,
      );

  int OpenEntry(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Uint32> lpulObjType,
    Pointer<Pointer<COMObject>> ppUnk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Uint32> lpulObjType,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Pointer<GUID> lpInterface,
            int ulFlags,
            Pointer<Uint32> lpulObjType,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        lpInterface,
        ulFlags,
        lpulObjType,
        ppUnk,
      );

  int SetReceiveFolder(
    Pointer<Int8> lpszMessageClass,
    int ulFlags,
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpszMessageClass,
            Uint32 ulFlags,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpszMessageClass,
            int ulFlags,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>()(
        ptr.ref.lpVtbl,
        lpszMessageClass,
        ulFlags,
        cbEntryID,
        lpEntryID,
      );

  int GetReceiveFolder(
    Pointer<Int8> lpszMessageClass,
    int ulFlags,
    Pointer<Uint32> lpcbEntryID,
    Pointer<Pointer<ENTRYID>> lppEntryID,
    Pointer<Pointer<Int8>> lppszExplicitClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpszMessageClass,
            Uint32 ulFlags,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
            Pointer<Pointer<Int8>> lppszExplicitClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpszMessageClass,
            int ulFlags,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
            Pointer<Pointer<Int8>> lppszExplicitClass,
          )>()(
        ptr.ref.lpVtbl,
        lpszMessageClass,
        ulFlags,
        lpcbEntryID,
        lppEntryID,
        lppszExplicitClass,
      );

  int GetReceiveFolderTable(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppTable,
      );

  int StoreLogoff(
    Pointer<Uint32> lpulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpulFlags,
      );

  int AbortSubmit(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        ulFlags,
      );

  int GetOutgoingQueue(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<COMObject>> lppTable,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppTable,
      );

  int SetLockState(
    Pointer<COMObject> lpMessage,
    int ulLockState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpMessage,
            Uint32 ulLockState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpMessage,
            int ulLockState,
          )>()(
        ptr.ref.lpVtbl,
        lpMessage,
        ulLockState,
      );

  int FinishedMsg(
    int ulFlags,
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        cbEntryID,
        lpEntryID,
      );

  int NotifyNewMail(
    Pointer<NOTIFICATION> lpNotification,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NOTIFICATION> lpNotification,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NOTIFICATION> lpNotification,
          )>()(
        ptr.ref.lpVtbl,
        lpNotification,
      );
}
