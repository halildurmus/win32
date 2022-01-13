// IComMethod2Events.dart

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
const IID_IComMethod2Events = '{FB388AAA-567D-4024-AF8E-6E93EE748573}';

/// {@category Interface}
/// {@category com}
class IComMethod2Events extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IComMethod2Events(Pointer<COMObject> ptr) : super(ptr);

  int OnMethodCall2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int oid,
    Pointer<GUID> guidCid,
    Pointer<GUID> guidRid,
    int dwThread,
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
            Uint32 dwThread,
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
            int dwThread,
            int iMeth,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        oid,
        guidCid,
        guidRid,
        dwThread,
        iMeth,
      );

  int OnMethodReturn2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int oid,
    Pointer<GUID> guidCid,
    Pointer<GUID> guidRid,
    int dwThread,
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
            Uint32 dwThread,
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
            int dwThread,
            int iMeth,
            int hresult,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        oid,
        guidCid,
        guidRid,
        dwThread,
        iMeth,
        hresult,
      );

  int OnMethodException2(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int oid,
    Pointer<GUID> guidCid,
    Pointer<GUID> guidRid,
    int dwThread,
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
            Uint32 dwThread,
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
            int dwThread,
            int iMeth,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        oid,
        guidCid,
        guidRid,
        dwThread,
        iMeth,
      );
}
