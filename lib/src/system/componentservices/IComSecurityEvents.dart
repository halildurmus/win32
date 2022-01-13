// IComSecurityEvents.dart

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
const IID_IComSecurityEvents = '{683130AC-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComSecurityEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IComSecurityEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnAuthenticate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    int ObjectID,
    Pointer<GUID> guidIID,
    int iMeth,
    int cbByteOrig,
    Pointer<Uint8> pSidOriginalUser,
    int cbByteCur,
    Pointer<Uint8> pSidCurrentUser,
    int bCurrentUserInpersonatingInProc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            Uint64 ObjectID,
            Pointer<GUID> guidIID,
            Uint32 iMeth,
            Uint32 cbByteOrig,
            Pointer<Uint8> pSidOriginalUser,
            Uint32 cbByteCur,
            Pointer<Uint8> pSidCurrentUser,
            Int32 bCurrentUserInpersonatingInProc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            int ObjectID,
            Pointer<GUID> guidIID,
            int iMeth,
            int cbByteOrig,
            Pointer<Uint8> pSidOriginalUser,
            int cbByteCur,
            Pointer<Uint8> pSidCurrentUser,
            int bCurrentUserInpersonatingInProc,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        ObjectID,
        guidIID,
        iMeth,
        cbByteOrig,
        pSidOriginalUser,
        cbByteCur,
        pSidCurrentUser,
        bCurrentUserInpersonatingInProc,
      );

  int OnAuthenticateFail(
    Pointer<COMSVCSEVENTINFO> pInfo,
    Pointer<GUID> guidActivity,
    int ObjectID,
    Pointer<GUID> guidIID,
    int iMeth,
    int cbByteOrig,
    Pointer<Uint8> pSidOriginalUser,
    int cbByteCur,
    Pointer<Uint8> pSidCurrentUser,
    int bCurrentUserInpersonatingInProc,
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
            Uint64 ObjectID,
            Pointer<GUID> guidIID,
            Uint32 iMeth,
            Uint32 cbByteOrig,
            Pointer<Uint8> pSidOriginalUser,
            Uint32 cbByteCur,
            Pointer<Uint8> pSidCurrentUser,
            Int32 bCurrentUserInpersonatingInProc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Pointer<GUID> guidActivity,
            int ObjectID,
            Pointer<GUID> guidIID,
            int iMeth,
            int cbByteOrig,
            Pointer<Uint8> pSidOriginalUser,
            int cbByteCur,
            Pointer<Uint8> pSidCurrentUser,
            int bCurrentUserInpersonatingInProc,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        guidActivity,
        ObjectID,
        guidIID,
        iMeth,
        cbByteOrig,
        pSidOriginalUser,
        cbByteCur,
        pSidCurrentUser,
        bCurrentUserInpersonatingInProc,
      );
}
