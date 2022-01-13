// IMFNetCredentialManager.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';
import '../../media/mediafoundation/IMFNetCredential.dart';

/// @nodoc
const IID_IMFNetCredentialManager = '{5B87EF6B-7ED8-434F-BA0E-184FAC1628D1}';

/// {@category Interface}
/// {@category com}
class IMFNetCredentialManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFNetCredentialManager(Pointer<COMObject> ptr) : super(ptr);

  int BeginGetCredentials(
    Pointer<MFNetCredentialManagerGetParam> pParam,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFNetCredentialManagerGetParam> pParam,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFNetCredentialManagerGetParam> pParam,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pState,
          )>()(
        ptr.ref.lpVtbl,
        pParam,
        pCallback,
        pState,
      );

  int EndGetCredentials(
    Pointer<COMObject> pResult,
    Pointer<Pointer<COMObject>> ppCred,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppCred,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppCred,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppCred,
      );

  int SetGood(
    Pointer<COMObject> pCred,
    int fGood,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
