// IComObjectPool2Events.dart

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
const IID_IComObjectPool2Events = '{65BF6534-85EA-4F64-8CF4-3D974B2AB1CF}';

/// {@category Interface}
/// {@category com}
class IComObjectPool2Events extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IComObjectPool2Events(Pointer<COMObject> ptr) : super(ptr);

  int OnObjPoolPutObject2(
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

  int OnObjPoolGetObject2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> guidObject,
    int dwAvailable,
    int oid,
    Pointer<GUID> guidPartition,
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
            Pointer<GUID> guidPartition,
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
            Pointer<GUID> guidPartition,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        guidObject,
        dwAvailable,
        oid,
        guidPartition,
      );

  int OnObjPoolRecycleToTx2(
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

  int OnObjPoolGetFromTx2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    Pointer<GUID> guidObject,
    Pointer<GUID> guidTx,
    int objid,
    Pointer<GUID> guidPartition,
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
            Pointer<GUID> guidPartition,
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
            Pointer<GUID> guidPartition,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        guidObject,
        guidTx,
        objid,
        guidPartition,
      );
}
