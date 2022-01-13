// IX509SCEPEnrollmentHelper.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/IX509CertificateRequestPkcs10.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/certificates/IX509SCEPEnrollment.dart';

/// @nodoc
const IID_IX509SCEPEnrollmentHelper = '{728AB365-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509SCEPEnrollmentHelper extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IX509SCEPEnrollmentHelper(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> strServerUrl,
    Pointer<Utf16> strRequestHeaders,
    Pointer<COMObject> pRequest,
    Pointer<Utf16> strCACertificateThumbprint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strServerUrl,
            Pointer<Utf16> strRequestHeaders,
            Pointer<COMObject> pRequest,
            Pointer<Utf16> strCACertificateThumbprint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strServerUrl,
            Pointer<Utf16> strRequestHeaders,
            Pointer<COMObject> pRequest,
            Pointer<Utf16> strCACertificateThumbprint,
          )>()(
        ptr.ref.lpVtbl,
        strServerUrl,
        strRequestHeaders,
        pRequest,
        strCACertificateThumbprint,
      );

  int InitializeForPending(
    Pointer<Utf16> strServerUrl,
    Pointer<Utf16> strRequestHeaders,
    int Context,
    Pointer<Utf16> strTransactionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strServerUrl,
            Pointer<Utf16> strRequestHeaders,
            Int32 Context,
            Pointer<Utf16> strTransactionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strServerUrl,
            Pointer<Utf16> strRequestHeaders,
            int Context,
            Pointer<Utf16> strTransactionId,
          )>()(
        ptr.ref.lpVtbl,
        strServerUrl,
        strRequestHeaders,
        Context,
        strTransactionId,
      );

  int Enroll(
    int ProcessFlags,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ProcessFlags,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProcessFlags,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        ProcessFlags,
        pDisposition,
      );

  int FetchPending(
    int ProcessFlags,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ProcessFlags,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ProcessFlags,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        ProcessFlags,
        pDisposition,
      );

  Pointer<COMObject> get X509SCEPEnrollment {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
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

  Pointer<Utf16> get ResultMessageText {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
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
