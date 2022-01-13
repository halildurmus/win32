// IBindHost.dart

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
import '../../system/com/IBindCtx.dart';
import '../../system/com/IMoniker.dart';
import '../../system/com/IBindStatusCallback.dart';

/// @nodoc
const IID_IBindHost = '{FC4801A1-2BA9-11CF-A229-00AA003D7352}';

/// {@category Interface}
/// {@category com}
class IBindHost extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBindHost(Pointer<COMObject> ptr) : super(ptr);

  int CreateMoniker(
    Pointer<Utf16> szName,
    Pointer<COMObject> pBC,
    Pointer<Pointer<COMObject>> ppmk,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szName,
            Pointer<COMObject> pBC,
            Pointer<Pointer<COMObject>> ppmk,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szName,
            Pointer<COMObject> pBC,
            Pointer<Pointer<COMObject>> ppmk,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        szName,
        pBC,
        ppmk,
        dwReserved,
      );

  int MonikerBindToStorage(
    Pointer<COMObject> pMk,
    Pointer<COMObject> pBC,
    Pointer<COMObject> pBSC,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMk,
            Pointer<COMObject> pBC,
            Pointer<COMObject> pBSC,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMk,
            Pointer<COMObject> pBC,
            Pointer<COMObject> pBSC,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>()(
        ptr.ref.lpVtbl,
        pMk,
        pBC,
        pBSC,
        riid,
        ppvObj,
      );

  int MonikerBindToObject(
    Pointer<COMObject> pMk,
    Pointer<COMObject> pBC,
    Pointer<COMObject> pBSC,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMk,
            Pointer<COMObject> pBC,
            Pointer<COMObject> pBSC,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMk,
            Pointer<COMObject> pBC,
            Pointer<COMObject> pBSC,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>()(
        ptr.ref.lpVtbl,
        pMk,
        pBC,
        pBSC,
        riid,
        ppvObj,
      );
}
