// IX509Enrollment2.dart

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

import '../../../security/cryptography/certificates/IX509Enrollment.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/certificates/IX509EnrollmentPolicyServer.dart';
import '../../../security/cryptography/certificates/IX509CertificateTemplate.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IX509Enrollment2 = '{728AB350-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509Enrollment2 extends IX509Enrollment {
  // vtable begins at 30, is 5 entries long.
  IX509Enrollment2(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromTemplate(
    int context,
    Pointer<COMObject> pPolicyServer,
    Pointer<COMObject> pTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
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

  int InstallResponse2(
    int Restrictions,
    Pointer<Utf16> strResponse,
    int Encoding,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strEnrollmentPolicyServerUrl,
    Pointer<Utf16> strEnrollmentPolicyServerID,
    int EnrollmentPolicyServerFlags,
    int authFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Restrictions,
            Pointer<Utf16> strResponse,
            Int32 Encoding,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strEnrollmentPolicyServerUrl,
            Pointer<Utf16> strEnrollmentPolicyServerID,
            Int32 EnrollmentPolicyServerFlags,
            Int32 authFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Restrictions,
            Pointer<Utf16> strResponse,
            int Encoding,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strEnrollmentPolicyServerUrl,
            Pointer<Utf16> strEnrollmentPolicyServerID,
            int EnrollmentPolicyServerFlags,
            int authFlags,
          )>()(
        ptr.ref.lpVtbl,
        Restrictions,
        strResponse,
        Encoding,
        strPassword,
        strEnrollmentPolicyServerUrl,
        strEnrollmentPolicyServerID,
        EnrollmentPolicyServerFlags,
        authFlags,
      );

  Pointer<COMObject> get PolicyServer {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(32)
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
          .elementAt(33)
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

  Pointer<Utf16> get RequestIdString {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
