// IX509CertificateRequestCmc2.dart

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

import '../../../security/cryptography/certificates/IX509CertificateRequestCmc.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/certificates/IX509EnrollmentPolicyServer.dart';
import '../../../security/cryptography/certificates/IX509CertificateTemplate.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/IX509CertificateRequest.dart';
import '../../../security/cryptography/certificates/ISignerCertificate.dart';

/// @nodoc
const IID_IX509CertificateRequestCmc2 =
    '{728AB35D-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509CertificateRequestCmc2 extends IX509CertificateRequestCmc {
  // vtable begins at 63, is 6 entries long.
  IX509CertificateRequestCmc2(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromTemplate(
    int context,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
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

  int InitializeFromInnerRequestTemplate(
    Pointer<COMObject> pInnerRequest,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInnerRequest,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInnerRequest,
            Pointer<COMObject> pPolicyServer,
            Pointer<COMObject> pTemplate,
          )>()(
        ptr.ref.lpVtbl,
        pInnerRequest,
        pPolicyServer,
        pTemplate,
      );

  Pointer<COMObject> get PolicyServer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
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
          .elementAt(66)
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

  int CheckSignature(
    int AllowedSignatureTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AllowedSignatureTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AllowedSignatureTypes,
          )>()(
        ptr.ref.lpVtbl,
        AllowedSignatureTypes,
      );

  int CheckCertificateSignature(
    Pointer<COMObject> pSignerCertificate,
    int ValidateCertificateChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSignerCertificate,
            Int16 ValidateCertificateChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSignerCertificate,
            int ValidateCertificateChain,
          )>()(
        ptr.ref.lpVtbl,
        pSignerCertificate,
        ValidateCertificateChain,
      );
}
