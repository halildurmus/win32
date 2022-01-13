// IMFNetCredentialCache.dart

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
import '../../media/mediafoundation/IMFNetCredential.dart';

/// @nodoc
const IID_IMFNetCredentialCache = '{5B87EF6C-7ED8-434F-BA0E-184FAC1628D1}';

/// {@category Interface}
/// {@category com}
class IMFNetCredentialCache extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFNetCredentialCache(Pointer<COMObject> ptr) : super(ptr);

  int GetCredential(
    Pointer<Utf16> pszUrl,
    Pointer<Utf16> pszRealm,
    int dwAuthenticationFlags,
    Pointer<Pointer<COMObject>> ppCred,
    Pointer<Uint32> pdwRequirementsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Utf16> pszRealm,
            Uint32 dwAuthenticationFlags,
            Pointer<Pointer<COMObject>> ppCred,
            Pointer<Uint32> pdwRequirementsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Utf16> pszRealm,
            int dwAuthenticationFlags,
            Pointer<Pointer<COMObject>> ppCred,
            Pointer<Uint32> pdwRequirementsFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        pszRealm,
        dwAuthenticationFlags,
        ppCred,
        pdwRequirementsFlags,
      );

  int SetGood(
    Pointer<COMObject> pCred,
    int fGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCred,
            Int32 fGood,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCred,
            int fGood,
          )>()(
        ptr.ref.lpVtbl,
        pCred,
        fGood,
      );

  int SetUserOptions(
    Pointer<COMObject> pCred,
    int dwOptionsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCred,
            Uint32 dwOptionsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCred,
            int dwOptionsFlags,
          )>()(
        ptr.ref.lpVtbl,
        pCred,
        dwOptionsFlags,
      );
}
