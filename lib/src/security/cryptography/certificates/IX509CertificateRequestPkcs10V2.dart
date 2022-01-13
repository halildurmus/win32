// IX509CertificateRequestPkcs10V2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../security/cryptography/certificates/IX509CertificateRequestPkcs10.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/certificates/IX509EnrollmentPolicyServer.dart';
import '../../../security/cryptography/certificates/IX509CertificateTemplate.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/IX509PrivateKey.dart';
import '../../../security/cryptography/certificates/IX509PublicKey.dart';

/// @nodoc
const IID_IX509CertificateRequestPkcs10V2 =
    '{728AB35B-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509CertificateRequestPkcs10V2 extends IX509CertificateRequestPkcs10 {
  // vtable begins at 60, is 5 entries long.
  IX509CertificateRequestPkcs10V2(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromTemplate(
    int context,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 context,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>()(
        ptr.ref.lpVtbl,
        context,
        pPolicyServer,
        pTemplate,
      );

  int InitializeFromPrivateKeyTemplate(
    int Context,
    Pointer<COMObject> pPrivateKey,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Context,
            Pointer<COMObject> pPrivateKey,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
            Pointer<COMObject> pPrivateKey,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        pPrivateKey,
        pPolicyServer,
        pTemplate,
      );

  int InitializeFromPublicKeyTemplate(
    int Context,
    Pointer<COMObject> pPublicKey,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Context,
            Pointer<COMObject> pPublicKey,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
            Pointer<COMObject> pPublicKey,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        pPublicKey,
        pPolicyServer,
        pTemplate,
      );

  Pointer<COMObject> get PolicyServer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPolicyServer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPolicyServer,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Template {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTemplate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
