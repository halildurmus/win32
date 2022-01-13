// ISyncMgrSyncItem.dart

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
import '../../ui/shell/ISyncMgrSyncItemInfo.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISyncMgrSyncItem = '{B20B24CE-2593-4F04-BD8B-7AD6C45051CD}';

/// {@category Interface}
/// {@category com}
class ISyncMgrSyncItem extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISyncMgrSyncItem(Pointer<COMObject> ptr) : super(ptr);

  int GetItemID(
    Pointer<Pointer<Utf16>> ppszItemID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszItemID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszItemID,
          )>()(
        ptr.ref.lpVtbl,
        ppszItemID,
      );

  int GetName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        ppszName,
      );

  int GetItemInfo(
    Pointer<Pointer<COMObject>> ppItemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItemInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItemInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppItemInfo,
      );

  int GetObject(
    Pointer<GUID> rguidObjectID,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidObjectID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidObjectID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        rguidObjectID,
        riid,
        ppv,
      );

  int GetCapabilities(
    Pointer<Int32> pmCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pmCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pmCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pmCapabilities,
      );

  int GetPolicies(
    Pointer<Int32> pmPolicies,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pmPolicies,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pmPolicies,
          )>()(
        ptr.ref.lpVtbl,
        pmPolicies,
      );

  int Enable(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
