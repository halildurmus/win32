// ISyncMgrConflictStore.dart

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
import '../../ui/shell/IEnumSyncMgrConflict.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISyncMgrConflictStore = '{CF8FC579-C396-4774-85F1-D908A831156E}';

/// {@category Interface}
/// {@category com}
class ISyncMgrConflictStore extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISyncMgrConflictStore(Pointer<COMObject> ptr) : super(ptr);

  int EnumConflicts(
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        pszItemID,
        ppEnum,
      );

  int BindToConflict(
    Pointer<SYNCMGR_CONFLICT_ID_INFO> pConflictIdInfo,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYNCMGR_CONFLICT_ID_INFO> pConflictIdInfo,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYNCMGR_CONFLICT_ID_INFO> pConflictIdInfo,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pConflictIdInfo,
        riid,
        ppv,
      );

  int RemoveConflicts(
    Pointer<SYNCMGR_CONFLICT_ID_INFO> rgConflictIdInfo,
    int cConflicts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYNCMGR_CONFLICT_ID_INFO> rgConflictIdInfo,
            Uint32 cConflicts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYNCMGR_CONFLICT_ID_INFO> rgConflictIdInfo,
            int cConflicts,
          )>()(
        ptr.ref.lpVtbl,
        rgConflictIdInfo,
        cConflicts,
      );

  int GetCount(
    Pointer<Utf16> pszHandlerID,
    Pointer<Utf16> pszItemID,
    Pointer<Uint32> pnConflicts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Pointer<Uint32> pnConflicts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszHandlerID,
            Pointer<Utf16> pszItemID,
            Pointer<Uint32> pnConflicts,
          )>()(
        ptr.ref.lpVtbl,
        pszHandlerID,
        pszItemID,
        pnConflicts,
      );
}
