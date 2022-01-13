// IComObjectPoolEvents.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComObjectPoolEvents = '{683130AD-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComObjectPoolEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IComObjectPoolEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnObjPoolPutObject(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    int nReason,
    int dwAvailable,
    int oid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Int32 nReason,
            Uint32 dwAvailable,
            Uint64 oid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            int nReason,
            int dwAvailable,
            int oid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        nReason,
        dwAvailable,
        oid,
      );

  int OnObjPoolGetObject(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> guidObject,
    int dwAvailable,
    int oid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> guidObject,
            Uint32 dwAvailable,
            Uint64 oid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> guidObject,
            int dwAvailable,
            int oid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        guidObject,
        dwAvailable,
        oid,
      );

  int OnObjPoolRecycleToTx(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> guidObject,
    Pointer<GUID> guidTx,
    int objid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> guidObject,
            Pointer<GUID> guidTx,
            Uint64 objid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> guidObject,
            Pointer<GUID> guidTx,
            int objid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        guidObject,
        guidTx,
        objid,
      );

  int OnObjPoolGetFromTx(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> guidObject,
    Pointer<GUID> guidTx,
    int objid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> guidObject,
            Pointer<GUID> guidTx,
            Uint64 objid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Pointer<GUID> guidObject,
            Pointer<GUID> guidTx,
            int objid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        guidObject,
        guidTx,
        objid,
      );
}
