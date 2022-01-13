// IBackgroundCopyQMgr.dart

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
import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyGroup.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/IEnumBackgroundCopyGroups.dart';

/// @nodoc
const IID_IBackgroundCopyQMgr = '{16F41C69-09F5-41D2-8CD8-3C08C47BC8A8}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyQMgr extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBackgroundCopyQMgr(Pointer<COMObject> ptr) : super(ptr);

  int CreateGroup(
    GUID guidGroupID,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidGroupID,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidGroupID,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        guidGroupID,
        ppGroup,
      );

  int GetGroup(
    GUID groupID,
    Pointer<Pointer<COMObject>> ppGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID groupID,
            Pointer<Pointer<COMObject>> ppGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID groupID,
            Pointer<Pointer<COMObject>> ppGroup,
          )>()(
        ptr.ref.lpVtbl,
        groupID,
        ppGroup,
      );

  int EnumGroups(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppEnumGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppEnumGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppEnumGroups,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppEnumGroups,
      );
}

/// @nodoc
const CLSID_BackgroundCopyQMgr = '{69AD4AEE-51BE-439B-A92C-86AE490E8B30}';

/// {@category com}
class BackgroundCopyQMgr extends IBackgroundCopyQMgr {
  BackgroundCopyQMgr(Pointer<COMObject> ptr) : super(ptr);

  factory BackgroundCopyQMgr.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_BackgroundCopyQMgr);
    final iid = calloc<GUID>()..ref.setGUID(IID_IBackgroundCopyQMgr);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return BackgroundCopyQMgr(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
