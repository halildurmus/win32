// IX509CertificateRequestPkcs7V2.dart

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

import '../../../security/cryptography/certificates/IX509CertificateRequestPkcs7.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/certificates/IX509EnrollmentPolicyServer.dart';
import '../../../security/cryptography/certificates/IX509CertificateTemplate.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IX509CertificateRequestPkcs7V2 =
    '{728AB35C-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509CertificateRequestPkcs7V2 extends IX509CertificateRequestPkcs7 {
  // vtable begins at 40, is 4 entries long.
  IX509CertificateRequestPkcs7V2(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromTemplate(
    int context,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
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

  Pointer<COMObject> get PolicyServer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(41)
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
          .elementAt(42)
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

  int CheckCertificateSignature(
    int ValidateCertificateChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 ValidateCertificateChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ValidateCertificateChain,
          )>()(
        ptr.ref.lpVtbl,
        ValidateCertificateChain,
      );
}
