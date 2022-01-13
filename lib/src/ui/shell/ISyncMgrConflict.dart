// ISyncMgrConflict.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/ISyncMgrConflictItems.dart';
import '../../ui/shell/ISyncMgrConflictResolveInfo.dart';

/// @nodoc
const IID_ISyncMgrConflict = '{9C204249-C443-4BA4-85ED-C972681DB137}';

/// {@category Interface}
/// {@category com}
class ISyncMgrConflict extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISyncMgrConflict(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    Pointer<PROPERTYKEY> propkey,
    Pointer<PROPVARIANT> ppropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<PROPVARIANT> ppropvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> propkey,
            Pointer<PROPVARIANT> ppropvar,
          )>()(
        ptr.ref.lpVtbl,
        propkey,
        ppropvar,
      );

  int GetConflictIdInfo(
    Pointer<SYNCMGR_CONFLICT_ID_INFO> pConflictIdInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYNCMGR_CONFLICT_ID_INFO> pConflictIdInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYNCMGR_CONFLICT_ID_INFO> pConflictIdInfo,
          )>()(
        ptr.ref.lpVtbl,
        pConflictIdInfo,
      );

  int GetItemsArray(
    Pointer<Pointer<COMObject>> ppArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppArray,
          )>()(
        ptr.ref.lpVtbl,
        ppArray,
      );

  int Resolve(
    Pointer<COMObject> pResolveInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResolveInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResolveInfo,
          )>()(
        ptr.ref.lpVtbl,
        pResolveInfo,
      );

  int GetResolutionHandler(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvResolutionHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResolutionHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResolutionHandler,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvResolutionHandler,
      );
}
