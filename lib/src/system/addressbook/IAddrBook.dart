// IAddrBook.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/IMAPIAdviseSink.dart';
import '../../system/addressbook/callbacks.g.dart';

/// @nodoc
const IID_IAddrBook = 'null';

/// {@category Interface}
/// {@category com}
class IAddrBook extends IMAPIProp {
  // vtable begins at 14, is 18 entries long.
  IAddrBook(Pointer<COMObject> ptr) : super(ptr);

  int OpenEntry(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Uint32> lpulObjType,
    Pointer<Pointer<COMObject>> lppUnk,
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
            Pointer<GUID> lpInterface,
            Uint32 ulFlags,
            Pointer<Uint32> lpulObjType,
            Pointer<Pointer<COMObject>> lppUnk,
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
            Pointer<Pointer<COMObject>> lppUnk,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        lpInterface,
        ulFlags,
        lpulObjType,
        lppUnk,
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
          .elementAt(15)
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

  int Advise(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulEventMask,
    Pointer<COMObject> lpAdviseSink,
    Pointer<Uint32> lpulConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
          .elementAt(17)
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

  int CreateOneOff(
    Pointer<Int8> lpszName,
    Pointer<Int8> lpszAdrType,
    Pointer<Int8> lpszAddress,
    int ulFlags,
    Pointer<Uint32> lpcbEntryID,
    Pointer<Pointer<ENTRYID>> lppEntryID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpszName,
            Pointer<Int8> lpszAdrType,
            Pointer<Int8> lpszAddress,
            Uint32 ulFlags,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpszName,
            Pointer<Int8> lpszAdrType,
            Pointer<Int8> lpszAddress,
            int ulFlags,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
          )>()(
        ptr.ref.lpVtbl,
        lpszName,
        lpszAdrType,
        lpszAddress,
        ulFlags,
        lpcbEntryID,
        lppEntryID,
      );

  int NewEntry(
    int ulUIParam,
    int ulFlags,
    int cbEIDContainer,
    Pointer<ENTRYID> lpEIDContainer,
    int cbEIDNewEntryTpl,
    Pointer<ENTRYID> lpEIDNewEntryTpl,
    Pointer<Uint32> lpcbEIDNewEntry,
    Pointer<Pointer<ENTRYID>> lppEIDNewEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulUIParam,
            Uint32 ulFlags,
            Uint32 cbEIDContainer,
            Pointer<ENTRYID> lpEIDContainer,
            Uint32 cbEIDNewEntryTpl,
            Pointer<ENTRYID> lpEIDNewEntryTpl,
            Pointer<Uint32> lpcbEIDNewEntry,
            Pointer<Pointer<ENTRYID>> lppEIDNewEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            int ulFlags,
            int cbEIDContainer,
            Pointer<ENTRYID> lpEIDContainer,
            int cbEIDNewEntryTpl,
            Pointer<ENTRYID> lpEIDNewEntryTpl,
            Pointer<Uint32> lpcbEIDNewEntry,
            Pointer<Pointer<ENTRYID>> lppEIDNewEntry,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        ulFlags,
        cbEIDContainer,
        lpEIDContainer,
        cbEIDNewEntryTpl,
        lpEIDNewEntryTpl,
        lpcbEIDNewEntry,
        lppEIDNewEntry,
      );

  int ResolveName(
    int ulUIParam,
    int ulFlags,
    Pointer<Int8> lpszNewEntryTitle,
    Pointer<ADRLIST> lpAdrList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr ulUIParam,
            Uint32 ulFlags,
            Pointer<Int8> lpszNewEntryTitle,
            Pointer<ADRLIST> lpAdrList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            int ulFlags,
            Pointer<Int8> lpszNewEntryTitle,
            Pointer<ADRLIST> lpAdrList,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        ulFlags,
        lpszNewEntryTitle,
        lpAdrList,
      );

  int Address(
    Pointer<Uint32> lpulUIParam,
    Pointer<ADRPARM> lpAdrParms,
    Pointer<Pointer<ADRLIST>> lppAdrList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpulUIParam,
            Pointer<ADRPARM> lpAdrParms,
            Pointer<Pointer<ADRLIST>> lppAdrList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpulUIParam,
            Pointer<ADRPARM> lpAdrParms,
            Pointer<Pointer<ADRLIST>> lppAdrList,
          )>()(
        ptr.ref.lpVtbl,
        lpulUIParam,
        lpAdrParms,
        lppAdrList,
      );

  int Details(
    Pointer<IntPtr> lpulUIParam,
    Pointer<NativeFunction<LPFNDISMISS>> lpfnDismiss,
    Pointer lpvDismissContext,
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    Pointer<NativeFunction<LPFNBUTTON>> lpfButtonCallback,
    Pointer lpvButtonContext,
    Pointer<Int8> lpszButtonText,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> lpulUIParam,
            Pointer<NativeFunction<LPFNDISMISS>> lpfnDismiss,
            Pointer lpvDismissContext,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Pointer<NativeFunction<LPFNBUTTON>> lpfButtonCallback,
            Pointer lpvButtonContext,
            Pointer<Int8> lpszButtonText,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> lpulUIParam,
            Pointer<NativeFunction<LPFNDISMISS>> lpfnDismiss,
            Pointer lpvDismissContext,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Pointer<NativeFunction<LPFNBUTTON>> lpfButtonCallback,
            Pointer lpvButtonContext,
            Pointer<Int8> lpszButtonText,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpulUIParam,
        lpfnDismiss,
        lpvDismissContext,
        cbEntryID,
        lpEntryID,
        lpfButtonCallback,
        lpvButtonContext,
        lpszButtonText,
        ulFlags,
      );

  int RecipOptions(
    int ulUIParam,
    int ulFlags,
    Pointer<ADRENTRY> lpRecip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulUIParam,
            Uint32 ulFlags,
            Pointer<ADRENTRY> lpRecip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulUIParam,
            int ulFlags,
            Pointer<ADRENTRY> lpRecip,
          )>()(
        ptr.ref.lpVtbl,
        ulUIParam,
        ulFlags,
        lpRecip,
      );

  int QueryDefaultRecipOpt(
    Pointer<Int8> lpszAdrType,
    int ulFlags,
    Pointer<Uint32> lpcValues,
    Pointer<Pointer<SPropValue>> lppOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> lpszAdrType,
            Uint32 ulFlags,
            Pointer<Uint32> lpcValues,
            Pointer<Pointer<SPropValue>> lppOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> lpszAdrType,
            int ulFlags,
            Pointer<Uint32> lpcValues,
            Pointer<Pointer<SPropValue>> lppOptions,
          )>()(
        ptr.ref.lpVtbl,
        lpszAdrType,
        ulFlags,
        lpcValues,
        lppOptions,
      );

  int GetPAB(
    Pointer<Uint32> lpcbEntryID,
    Pointer<Pointer<ENTRYID>> lppEntryID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
          )>()(
        ptr.ref.lpVtbl,
        lpcbEntryID,
        lppEntryID,
      );

  int SetPAB(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
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
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
      );

  int GetDefaultDir(
    Pointer<Uint32> lpcbEntryID,
    Pointer<Pointer<ENTRYID>> lppEntryID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpcbEntryID,
            Pointer<Pointer<ENTRYID>> lppEntryID,
          )>()(
        ptr.ref.lpVtbl,
        lpcbEntryID,
        lppEntryID,
      );

  int SetDefaultDir(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
      );

  int GetSearchPath(
    int ulFlags,
    Pointer<Pointer<SRowSet>> lppSearchPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<SRowSet>> lppSearchPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<SRowSet>> lppSearchPath,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppSearchPath,
      );

  int SetSearchPath(
    int ulFlags,
    Pointer<SRowSet> lpSearchPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<SRowSet> lpSearchPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<SRowSet> lpSearchPath,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpSearchPath,
      );

  int PrepareRecips(
    int ulFlags,
    Pointer<SPropTagArray> lpPropTagArray,
    Pointer<ADRLIST> lpRecipList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<SPropTagArray> lpPropTagArray,
            Pointer<ADRLIST> lpRecipList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<SPropTagArray> lpPropTagArray,
            Pointer<ADRLIST> lpRecipList,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lpPropTagArray,
        lpRecipList,
      );
}
