// IDistList.dart

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
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IMAPIProp.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/IMAPIProgress.dart';

/// @nodoc
const IID_IDistList = 'null';

/// {@category Interface}
/// {@category com}
class IDistList extends IMAPIContainer {
  // vtable begins at 19, is 4 entries long.
  IDistList(Pointer<COMObject> ptr) : super(ptr);

  int CreateEntry(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    int ulCreateFlags,
    Pointer<Pointer<COMObject>> lppMAPIPropEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            Uint32 ulCreateFlags,
            Pointer<Pointer<COMObject>> lppMAPIPropEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbEntryID,
            Pointer<ENTRYID> lpEntryID,
            int ulCreateFlags,
            Pointer<Pointer<COMObject>> lppMAPIPropEntry,
          )>()(
        ptr.ref.lpVtbl,
        cbEntryID,
        lpEntryID,
        ulCreateFlags,
        lppMAPIPropEntry,
      );

  int CopyEntries(
    Pointer<SBinaryArray> lpEntries,
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
            Pointer<SBinaryArray> lpEntries,
            IntPtr ulUIParam,
            Pointer<COMObject> lpProgress,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SBinaryArray> lpEntries,
            int ulUIParam,
            Pointer<COMObject> lpProgress,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpEntries,
        ulUIParam,
        lpProgress,
        ulFlags,
      );

  int DeleteEntries(
    Pointer<SBinaryArray> lpEntries,
    int ulFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SBinaryArray> lpEntries,
            Uint32 ulFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SBinaryArray> lpEntries,
            int ulFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpEntries,
        ulFlags,
      );

  int ResolveNames(
    Pointer<SPropTagArray> lpPropTagArray,
    int ulFlags,
    Pointer<ADRLIST> lpAdrList,
    Pointer<flaglist> lpFlagList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Uint32 ulFlags,
            Pointer<ADRLIST> lpAdrList,
            Pointer<flaglist> lpFlagList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            int ulFlags,
            Pointer<ADRLIST> lpAdrList,
            Pointer<flaglist> lpFlagList,
          )>()(
        ptr.ref.lpVtbl,
        lpPropTagArray,
        ulFlags,
        lpAdrList,
        lpFlagList,
      );
}
