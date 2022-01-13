// IComMethodEvents.dart

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
const IID_IComMethodEvents = '{683130A9-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComMethodEvents extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IComMethodEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnMethodCall(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int oid,
    Pointer<GUID> guidCid,
    Pointer<GUID> guidRid,
    int iMeth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 oid,
            Pointer<GUID> guidCid,
            Pointer<GUID> guidRid,
            Uint32 iMeth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int oid,
            Pointer<GUID> guidCid,
            Pointer<GUID> guidRid,
            int iMeth,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        oid,
        guidCid,
        guidRid,
        iMeth,
      );

  int OnMethodReturn(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int oid,
    Pointer<GUID> guidCid,
    Pointer<GUID> guidRid,
    int iMeth,
    int hresult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 oid,
            Pointer<GUID> guidCid,
            Pointer<GUID> guidRid,
            Uint32 iMeth,
            Int32 hresult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int oid,
            Pointer<GUID> guidCid,
            Pointer<GUID> guidRid,
            int iMeth,
            int hresult,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        oid,
        guidCid,
        guidRid,
        iMeth,
        hresult,
      );

  int OnMethodException(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int oid,
    Pointer<GUID> guidCid,
    Pointer<GUID> guidRid,
    int iMeth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 oid,
            Pointer<GUID> guidCid,
            Pointer<GUID> guidRid,
            Uint32 iMeth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int oid,
            Pointer<GUID> guidCid,
            Pointer<GUID> guidRid,
            int iMeth,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        oid,
        guidCid,
        guidRid,
        iMeth,
      );
}
