// IComObjectPoolEvents2.dart

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
const IID_IComObjectPoolEvents2 = '{683130AE-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComObjectPoolEvents2 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IComObjectPoolEvents2(Pointer<COMObject> ptr) : super(ptr);

  int OnObjPoolCreateObject(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    int dwObjsCreated,
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
            Uint32 dwObjsCreated,
            Uint64 oid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            int dwObjsCreated,
            int oid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        dwObjsCreated,
        oid,
      );

  int OnObjPoolDestroyObject(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    int dwObjsCreated,
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
            Pointer<GUID> guidObject,
            Uint32 dwObjsCreated,
            Uint64 oid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            int dwObjsCreated,
            int oid,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        dwObjsCreated,
        oid,
      );

  int OnObjPoolCreateDecision(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int dwThreadsWaiting,
    int dwAvail,
    int dwCreated,
    int dwMin,
    int dwMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint32 dwThreadsWaiting,
            Uint32 dwAvail,
            Uint32 dwCreated,
            Uint32 dwMin,
            Uint32 dwMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int dwThreadsWaiting,
            int dwAvail,
            int dwCreated,
            int dwMin,
            int dwMax,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        dwThreadsWaiting,
        dwAvail,
        dwCreated,
        dwMin,
        dwMax,
      );

  int OnObjPoolTimeout(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    Pointer<GUID> guidActivity,
    int dwTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Pointer<GUID> guidActivity,
            Uint32 dwTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Pointer<GUID> guidActivity,
            int dwTimeout,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        guidActivity,
        dwTimeout,
      );

  int OnObjPoolCreatePool(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidObject,
    int dwMin,
    int dwMax,
    int dwTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            Uint32 dwMin,
            Uint32 dwMax,
            Uint32 dwTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidObject,
            int dwMin,
            int dwMax,
            int dwTimeout,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidObject,
        dwMin,
        dwMax,
        dwTimeout,
      );
}
