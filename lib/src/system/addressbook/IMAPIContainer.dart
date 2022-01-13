// IMAPIContainer.dart

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
import '../../system/addressbook/IMAPITable.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IMAPIContainer = 'null';

/// {@category Interface}
/// {@category com}
class IMAPIContainer extends IMAPIProp {
  // vtable begins at 14, is 5 entries long.
  IMAPIContainer(Pointer<COMObject> ptr) : super(ptr);

  int GetContentsTable(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetHierarchyTable(
    int ulFlags,
    Pointer<Pointer<COMObject>> lppTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int OpenEntry(
    int cbEntryID,
    Pointer<ENTRYID> lpEntryID,
    Pointer<GUID> lpInterface,
    int ulFlags,
    Pointer<Uint32> lpulObjType,
    Pointer<Pointer<COMObject>> lppUnk,
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

  int SetSearchCriteria(
    Pointer<SRestriction> lpRestriction,
    Pointer<SBinaryArray> lpContainerList,
    int ulSearchFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SRestriction> lpRestriction,
            Pointer<SBinaryArray> lpContainerList,
            Uint32 ulSearchFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SRestriction> lpRestriction,
            Pointer<SBinaryArray> lpContainerList,
            int ulSearchFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpRestriction,
        lpContainerList,
        ulSearchFlags,
      );

  int GetSearchCriteria(
    int ulFlags,
    Pointer<Pointer<SRestriction>> lppRestriction,
    Pointer<Pointer<SBinaryArray>> lppContainerList,
    Pointer<Uint32> lpulSearchState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulFlags,
            Pointer<Pointer<SRestriction>> lppRestriction,
            Pointer<Pointer<SBinaryArray>> lppContainerList,
            Pointer<Uint32> lpulSearchState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulFlags,
            Pointer<Pointer<SRestriction>> lppRestriction,
            Pointer<Pointer<SBinaryArray>> lppContainerList,
            Pointer<Uint32> lpulSearchState,
          )>()(
        ptr.ref.lpVtbl,
        ulFlags,
        lppRestriction,
        lppContainerList,
        lpulSearchState,
      );
}
