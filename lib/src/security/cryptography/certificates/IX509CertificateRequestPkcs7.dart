// IX509CertificateRequestPkcs7.dart

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

import '../../../security/cryptography/certificates/IX509CertificateRequest.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/ISignerCertificate.dart';

/// @nodoc
const IID_IX509CertificateRequestPkcs7 =
    '{728AB344-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509CertificateRequestPkcs7 extends IX509CertificateRequest {
  // vtable begins at 32, is 8 entries long.
  IX509CertificateRequestPkcs7(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromTemplateName(
    int Context,
    Pointer<Utf16> strTemplateName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Context,
            Pointer<Utf16> strTemplateName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
            Pointer<Utf16> strTemplateName,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        strTemplateName,
      );

  int InitializeFromCertificate(
    int Context,
    int RenewalRequest,
    Pointer<Utf16> strCertificate,
    int Encoding,
    int InheritOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Context,
            Int16 RenewalRequest,
            Pointer<Utf16> strCertificate,
            Int32 Encoding,
            Int32 InheritOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
            int RenewalRequest,
            Pointer<Utf16> strCertificate,
            int Encoding,
            int InheritOptions,
          )>()(
        ptr.ref.lpVtbl,
        Context,
        RenewalRequest,
        strCertificate,
        Encoding,
        InheritOptions,
      );

  int InitializeFromInnerRequest(
    Pointer<COMObject> pInnerRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInnerRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInnerRequest,
          )>()(
        ptr.ref.lpVtbl,
        pInnerRequest,
      );

  int InitializeDecode(
    Pointer<Utf16> strEncodedData,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEncodedData,
            Int32 Encoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEncodedData,
            int Encoding,
          )>()(
        ptr.ref.lpVtbl,
        strEncodedData,
        Encoding,
      );

  Pointer<Utf16> get RequesterName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(36)
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

  set RequesterName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(37)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get SignerCertificate {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SignerCertificate(Pointer<COMObject> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(39)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<COMObject> pValue,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> pValue,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
