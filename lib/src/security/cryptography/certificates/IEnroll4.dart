// IEnroll4.dart

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

import '../../../security/cryptography/certificates/IEnroll2.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_IEnroll4 = '{F8053FE5-78F4-448F-A0DB-41D61B73446B}';

/// {@category Interface}
/// {@category com}
class IEnroll4 extends IEnroll2 {
  // vtable begins at 91, is 32 entries long.
  IEnroll4(Pointer<COMObject> ptr) : super(ptr);

  set ThumbPrintWStr(CRYPTOAPI_BLOB value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(91)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          CRYPTOAPI_BLOB thumbPrintBlob,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          CRYPTOAPI_BLOB thumbPrintBlob,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  CRYPTOAPI_BLOB get ThumbPrintWStr {
    final retValuePtr = calloc<CRYPTOAPI_BLOB>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(92)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> thumbPrintBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> thumbPrintBlob,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetPrivateKeyArchiveCertificate(
    Pointer<CERT_CONTEXT> pPrivateKeyArchiveCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERT_CONTEXT> pPrivateKeyArchiveCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERT_CONTEXT> pPrivateKeyArchiveCert,
          )>()(
        ptr.ref.lpVtbl,
        pPrivateKeyArchiveCert,
      );

  Pointer<CERT_CONTEXT> GetPrivateKeyArchiveCertificate() =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<CERT_CONTEXT> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<CERT_CONTEXT> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int binaryBlobToString(
    int Flags,
    Pointer<CRYPTOAPI_BLOB> pblobBinary,
    Pointer<Pointer<Utf16>> ppwszString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<CRYPTOAPI_BLOB> pblobBinary,
            Pointer<Pointer<Utf16>> ppwszString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<CRYPTOAPI_BLOB> pblobBinary,
            Pointer<Pointer<Utf16>> ppwszString,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pblobBinary,
        ppwszString,
      );

  int stringToBinaryBlob(
    int Flags,
    Pointer<Utf16> pwszString,
    Pointer<CRYPTOAPI_BLOB> pblobBinary,
    Pointer<Int32> pdwSkip,
    Pointer<Int32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> pwszString,
            Pointer<CRYPTOAPI_BLOB> pblobBinary,
            Pointer<Int32> pdwSkip,
            Pointer<Int32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> pwszString,
            Pointer<CRYPTOAPI_BLOB> pblobBinary,
            Pointer<Int32> pdwSkip,
            Pointer<Int32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pwszString,
        pblobBinary,
        pdwSkip,
        pdwFlags,
      );

  int addExtensionToRequestWStr(
    int Flags,
    Pointer<Utf16> pwszName,
    Pointer<CRYPTOAPI_BLOB> pblobValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> pwszName,
            Pointer<CRYPTOAPI_BLOB> pblobValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> pwszName,
            Pointer<CRYPTOAPI_BLOB> pblobValue,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pwszName,
        pblobValue,
      );

  int addAttributeToRequestWStr(
    int Flags,
    Pointer<Utf16> pwszName,
    Pointer<CRYPTOAPI_BLOB> pblobValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> pwszName,
            Pointer<CRYPTOAPI_BLOB> pblobValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> pwszName,
            Pointer<CRYPTOAPI_BLOB> pblobValue,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pwszName,
        pblobValue,
      );

  int addNameValuePairToRequestWStr(
    int Flags,
    Pointer<Utf16> pwszName,
    Pointer<Utf16> pwszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> pwszName,
            Pointer<Utf16> pwszValue,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pwszName,
        pwszValue,
      );

  int resetExtensions() => ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int resetAttributes() => ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int createRequestWStr(
    int Flags,
    Pointer<Utf16> pwszDNName,
    Pointer<Utf16> pwszUsage,
    Pointer<CRYPTOAPI_BLOB> pblobRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf16> pwszDNName,
            Pointer<Utf16> pwszUsage,
            Pointer<CRYPTOAPI_BLOB> pblobRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> pwszDNName,
            Pointer<Utf16> pwszUsage,
            Pointer<CRYPTOAPI_BLOB> pblobRequest,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pwszDNName,
        pwszUsage,
        pblobRequest,
      );

  int createFileRequestWStr(
    int Flags,
    Pointer<Utf16> pwszDNName,
    Pointer<Utf16> pwszUsage,
    Pointer<Utf16> pwszRequestFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf16> pwszDNName,
            Pointer<Utf16> pwszUsage,
            Pointer<Utf16> pwszRequestFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> pwszDNName,
            Pointer<Utf16> pwszUsage,
            Pointer<Utf16> pwszRequestFileName,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pwszDNName,
        pwszUsage,
        pwszRequestFileName,
      );

  int acceptResponseBlob(
    Pointer<CRYPTOAPI_BLOB> pblobResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pblobResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pblobResponse,
          )>()(
        ptr.ref.lpVtbl,
        pblobResponse,
      );

  int acceptFileResponseWStr(
    Pointer<Utf16> pwszResponseFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszResponseFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszResponseFileName,
          )>()(
        ptr.ref.lpVtbl,
        pwszResponseFileName,
      );

  int getCertContextFromResponseBlob(
    Pointer<CRYPTOAPI_BLOB> pblobResponse,
    Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pblobResponse,
            Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pblobResponse,
            Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
          )>()(
        ptr.ref.lpVtbl,
        pblobResponse,
        ppCertContext,
      );

  int getCertContextFromFileResponseWStr(
    Pointer<Utf16> pwszResponseFileName,
    Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszResponseFileName,
            Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszResponseFileName,
            Pointer<Pointer<CERT_CONTEXT>> ppCertContext,
          )>()(
        ptr.ref.lpVtbl,
        pwszResponseFileName,
        ppCertContext,
      );

  int createPFXWStr(
    Pointer<Utf16> pwszPassword,
    Pointer<CRYPTOAPI_BLOB> pblobPFX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPassword,
            Pointer<CRYPTOAPI_BLOB> pblobPFX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPassword,
            Pointer<CRYPTOAPI_BLOB> pblobPFX,
          )>()(
        ptr.ref.lpVtbl,
        pwszPassword,
        pblobPFX,
      );

  int createFilePFXWStr(
    Pointer<Utf16> pwszPassword,
    Pointer<Utf16> pwszPFXFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(109)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszPassword,
            Pointer<Utf16> pwszPFXFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszPassword,
            Pointer<Utf16> pwszPFXFileName,
          )>()(
        ptr.ref.lpVtbl,
        pwszPassword,
        pwszPFXFileName,
      );

  int setPendingRequestInfoWStr(
    int lRequestID,
    Pointer<Utf16> pwszCADNS,
    Pointer<Utf16> pwszCAName,
    Pointer<Utf16> pwszFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(110)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRequestID,
            Pointer<Utf16> pwszCADNS,
            Pointer<Utf16> pwszCAName,
            Pointer<Utf16> pwszFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRequestID,
            Pointer<Utf16> pwszCADNS,
            Pointer<Utf16> pwszCAName,
            Pointer<Utf16> pwszFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        lRequestID,
        pwszCADNS,
        pwszCAName,
        pwszFriendlyName,
      );

  int enumPendingRequestWStr(
    int lIndex,
    int lDesiredProperty,
    Pointer ppProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(111)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Uint32 lDesiredProperty,
            Pointer ppProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            int lDesiredProperty,
            Pointer ppProperty,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        lDesiredProperty,
        ppProperty,
      );

  int removePendingRequestWStr(
    CRYPTOAPI_BLOB thumbPrintBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            CRYPTOAPI_BLOB thumbPrintBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            CRYPTOAPI_BLOB thumbPrintBlob,
          )>()(
        ptr.ref.lpVtbl,
        thumbPrintBlob,
      );

  int GetKeyLenEx(
    int lSizeSpec,
    int lKeySpec,
    Pointer<Int32> pdwKeySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(113)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lSizeSpec,
            Uint32 lKeySpec,
            Pointer<Int32> pdwKeySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSizeSpec,
            int lKeySpec,
            Pointer<Int32> pdwKeySize,
          )>()(
        ptr.ref.lpVtbl,
        lSizeSpec,
        lKeySpec,
        pdwKeySize,
      );

  int InstallPKCS7BlobEx(
    Pointer<CRYPTOAPI_BLOB> pBlobPKCS7,
    Pointer<Int32> plCertInstalled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(114)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pBlobPKCS7,
            Pointer<Int32> plCertInstalled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pBlobPKCS7,
            Pointer<Int32> plCertInstalled,
          )>()(
        ptr.ref.lpVtbl,
        pBlobPKCS7,
        plCertInstalled,
      );

  int AddCertTypeToRequestWStrEx(
    int lType,
    Pointer<Utf16> pwszOIDOrName,
    int lMajorVersion,
    int fMinorVersion,
    int lMinorVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(115)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lType,
            Pointer<Utf16> pwszOIDOrName,
            Int32 lMajorVersion,
            Int32 fMinorVersion,
            Int32 lMinorVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lType,
            Pointer<Utf16> pwszOIDOrName,
            int lMajorVersion,
            int fMinorVersion,
            int lMinorVersion,
          )>()(
        ptr.ref.lpVtbl,
        lType,
        pwszOIDOrName,
        lMajorVersion,
        fMinorVersion,
        lMinorVersion,
      );

  int getProviderTypeWStr(
    Pointer<Utf16> pwszProvName,
    Pointer<Int32> plProvType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(116)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProvName,
            Pointer<Int32> plProvType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProvName,
            Pointer<Int32> plProvType,
          )>()(
        ptr.ref.lpVtbl,
        pwszProvName,
        plProvType,
      );

  int addBlobPropertyToCertificateWStr(
    int lPropertyId,
    int lReserved,
    Pointer<CRYPTOAPI_BLOB> pBlobProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(117)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPropertyId,
            Int32 lReserved,
            Pointer<CRYPTOAPI_BLOB> pBlobProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPropertyId,
            int lReserved,
            Pointer<CRYPTOAPI_BLOB> pBlobProperty,
          )>()(
        ptr.ref.lpVtbl,
        lPropertyId,
        lReserved,
        pBlobProperty,
      );

  int SetSignerCertificate(
    Pointer<CERT_CONTEXT> pSignerCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(118)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERT_CONTEXT> pSignerCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERT_CONTEXT> pSignerCert,
          )>()(
        ptr.ref.lpVtbl,
        pSignerCert,
      );

  set ClientId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(119)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lClientId,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lClientId,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ClientId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(120)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plClientId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plClientId,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set IncludeSubjectKeyID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(121)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fInclude,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fInclude,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get IncludeSubjectKeyID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(122)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfInclude,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfInclude,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
