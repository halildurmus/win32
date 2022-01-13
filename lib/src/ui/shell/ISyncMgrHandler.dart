// ISyncMgrHandler.dart

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
import '../../ui/shell/ISyncMgrHandlerInfo.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/ISyncMgrSessionCreator.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISyncMgrHandler = '{04EC2E43-AC77-49F9-9B98-0307EF7A72A2}';

/// {@category Interface}
/// {@category com}
class ISyncMgrHandler extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISyncMgrHandler(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetHandlerInfo(
    Pointer<Pointer<COMObject>> ppHandlerInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandlerInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppHandlerInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppHandlerInfo,
      );

  int GetObject(
    Pointer<GUID> rguidObjectID,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
          .elementAt(6)
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
          .elementAt(7)
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

  int Activate(
    int fActivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActivate,
          )>()(
        ptr.ref.lpVtbl,
        fActivate,
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

  int Synchronize(
    Pointer<Pointer<Utf16>> ppszItemIDs,
    int cItems,
    int hwndOwner,
    Pointer<COMObject> pSessionCreator,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            Uint32 cItems,
            IntPtr hwndOwner,
            Pointer<COMObject> pSessionCreator,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszItemIDs,
            int cItems,
            int hwndOwner,
            Pointer<COMObject> pSessionCreator,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        ppszItemIDs,
        cItems,
        hwndOwner,
        pSessionCreator,
        punk,
      );
}
