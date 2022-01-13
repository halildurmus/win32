// ICEnroll4.dart

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

import '../../../security/cryptography/certificates/ICEnroll3.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_ICEnroll4 = '{C1F1188A-2EB5-4A80-841B-7E729A356D90}';

/// {@category Interface}
/// {@category com}
class ICEnroll4 extends ICEnroll3 {
  // vtable begins at 83, is 33 entries long.
  ICEnroll4(Pointer<COMObject> ptr) : super(ptr);

  set PrivateKeyArchiveCertificate(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(83)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrCert,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrCert,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get PrivateKeyArchiveCertificate {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCert,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ThumbPrint(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(85)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrThumbPrint,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrThumbPrint,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get ThumbPrint {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrThumbPrint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrThumbPrint,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int binaryToString(
    int Flags,
    Pointer<Utf16> strBinary,
    Pointer<Pointer<Utf16>> pstrEncoded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> strBinary,
            Pointer<Pointer<Utf16>> pstrEncoded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strBinary,
            Pointer<Pointer<Utf16>> pstrEncoded,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strBinary,
        pstrEncoded,
      );

  int stringToBinary(
    int Flags,
    Pointer<Utf16> strEncoded,
    Pointer<Pointer<Utf16>> pstrBinary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> strEncoded,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strEncoded,
            Pointer<Pointer<Utf16>> pstrBinary,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strEncoded,
        pstrBinary,
      );

  int addExtensionToRequest(
    int Flags,
    Pointer<Utf16> strName,
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> strName,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strName,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strName,
        strValue,
      );

  int addAttributeToRequest(
    int Flags,
    Pointer<Utf16> strName,
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> strName,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strName,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strName,
        strValue,
      );

  int addNameValuePairToRequest(
    int Flags,
    Pointer<Utf16> strName,
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> strName,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strName,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strName,
        strValue,
      );

  int resetExtensions() => ptr.ref.lpVtbl.value
          .elementAt(92)
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
          .elementAt(93)
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

  int createRequest(
    int Flags,
    Pointer<Utf16> strDNName,
    Pointer<Utf16> Usage,
    Pointer<Pointer<Utf16>> pstrRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf16> strDNName,
            Pointer<Utf16> Usage,
            Pointer<Pointer<Utf16>> pstrRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strDNName,
            Pointer<Utf16> Usage,
            Pointer<Pointer<Utf16>> pstrRequest,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strDNName,
        Usage,
        pstrRequest,
      );

  int createFileRequest(
    int Flags,
    Pointer<Utf16> strDNName,
    Pointer<Utf16> strUsage,
    Pointer<Utf16> strRequestFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Utf16> strDNName,
            Pointer<Utf16> strUsage,
            Pointer<Utf16> strRequestFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strDNName,
            Pointer<Utf16> strUsage,
            Pointer<Utf16> strRequestFileName,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strDNName,
        strUsage,
        strRequestFileName,
      );

  int acceptResponse(
    Pointer<Utf16> strResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strResponse,
          )>()(
        ptr.ref.lpVtbl,
        strResponse,
      );

  int acceptFileResponse(
    Pointer<Utf16> strResponseFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strResponseFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strResponseFileName,
          )>()(
        ptr.ref.lpVtbl,
        strResponseFileName,
      );

  int getCertFromResponse(
    Pointer<Utf16> strResponse,
    Pointer<Pointer<Utf16>> pstrCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strResponse,
            Pointer<Pointer<Utf16>> pstrCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strResponse,
            Pointer<Pointer<Utf16>> pstrCert,
          )>()(
        ptr.ref.lpVtbl,
        strResponse,
        pstrCert,
      );

  int getCertFromFileResponse(
    Pointer<Utf16> strResponseFileName,
    Pointer<Pointer<Utf16>> pstrCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strResponseFileName,
            Pointer<Pointer<Utf16>> pstrCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strResponseFileName,
            Pointer<Pointer<Utf16>> pstrCert,
          )>()(
        ptr.ref.lpVtbl,
        strResponseFileName,
        pstrCert,
      );

  int createPFX(
    Pointer<Utf16> strPassword,
    Pointer<Pointer<Utf16>> pstrPFX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPassword,
            Pointer<Pointer<Utf16>> pstrPFX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPassword,
            Pointer<Pointer<Utf16>> pstrPFX,
          )>()(
        ptr.ref.lpVtbl,
        strPassword,
        pstrPFX,
      );

  int createFilePFX(
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strPFXFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strPFXFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strPFXFileName,
          )>()(
        ptr.ref.lpVtbl,
        strPassword,
        strPFXFileName,
      );

  int setPendingRequestInfo(
    int lRequestID,
    Pointer<Utf16> strCADNS,
    Pointer<Utf16> strCAName,
    Pointer<Utf16> strFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lRequestID,
            Pointer<Utf16> strCADNS,
            Pointer<Utf16> strCAName,
            Pointer<Utf16> strFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lRequestID,
            Pointer<Utf16> strCADNS,
            Pointer<Utf16> strCAName,
            Pointer<Utf16> strFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        lRequestID,
        strCADNS,
        strCAName,
        strFriendlyName,
      );

  int enumPendingRequest(
    int lIndex,
    int lDesiredProperty,
    Pointer<VARIANT> pvarProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Uint32 lDesiredProperty,
            Pointer<VARIANT> pvarProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            int lDesiredProperty,
            Pointer<VARIANT> pvarProperty,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        lDesiredProperty,
        pvarProperty,
      );

  int removePendingRequest(
    Pointer<Utf16> strThumbprint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strThumbprint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strThumbprint,
          )>()(
        ptr.ref.lpVtbl,
        strThumbprint,
      );

  int GetKeyLenEx(
    int lSizeSpec,
    int lKeySpec,
    Pointer<Int32> pdwKeySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
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

  int InstallPKCS7Ex(
    Pointer<Utf16> PKCS7,
    Pointer<Int32> plCertInstalled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PKCS7,
            Pointer<Int32> plCertInstalled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PKCS7,
            Pointer<Int32> plCertInstalled,
          )>()(
        ptr.ref.lpVtbl,
        PKCS7,
        plCertInstalled,
      );

  int addCertTypeToRequestEx(
    int lType,
    Pointer<Utf16> bstrOIDOrName,
    int lMajorVersion,
    int fMinorVersion,
    int lMinorVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 lType,
            Pointer<Utf16> bstrOIDOrName,
            Int32 lMajorVersion,
            Int32 fMinorVersion,
            Int32 lMinorVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lType,
            Pointer<Utf16> bstrOIDOrName,
            int lMajorVersion,
            int fMinorVersion,
            int lMinorVersion,
          )>()(
        ptr.ref.lpVtbl,
        lType,
        bstrOIDOrName,
        lMajorVersion,
        fMinorVersion,
        lMinorVersion,
      );

  int getProviderType(
    Pointer<Utf16> strProvName,
    Pointer<Int32> plProvType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(108)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strProvName,
            Pointer<Int32> plProvType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strProvName,
            Pointer<Int32> plProvType,
          )>()(
        ptr.ref.lpVtbl,
        strProvName,
        plProvType,
      );

  set SignerCertificate(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(109)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrCert,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrCert,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set ClientId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(110)
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
          .elementAt(111)
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

  int addBlobPropertyToCertificate(
    int lPropertyId,
    int lReserved,
    Pointer<Utf16> bstrProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(112)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPropertyId,
            Int32 lReserved,
            Pointer<Utf16> bstrProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPropertyId,
            int lReserved,
            Pointer<Utf16> bstrProperty,
          )>()(
        ptr.ref.lpVtbl,
        lPropertyId,
        lReserved,
        bstrProperty,
      );

  int resetBlobProperties() => ptr.ref.lpVtbl.value
          .elementAt(113)
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

  set IncludeSubjectKeyID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(114)
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
          .elementAt(115)
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
