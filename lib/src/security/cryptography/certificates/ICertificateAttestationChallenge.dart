// ICertificateAttestationChallenge.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertificateAttestationChallenge =
    '{6F175A7C-4A3A-40AE-9DBA-592FD6BBF9B8}';

/// {@category Interface}
/// {@category com}
class ICertificateAttestationChallenge extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ICertificateAttestationChallenge(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int Encoding,
    Pointer<Utf16> strPendingFullCmcResponseWithChallenge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Utf16> strPendingFullCmcResponseWithChallenge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Utf16> strPendingFullCmcResponseWithChallenge,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        strPendingFullCmcResponseWithChallenge,
      );

  int DecryptChallenge(
    int Encoding,
    Pointer<Pointer<Utf16>> pstrEnvelopedPkcs7ReencryptedToCA,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrEnvelopedPkcs7ReencryptedToCA,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrEnvelopedPkcs7ReencryptedToCA,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        pstrEnvelopedPkcs7ReencryptedToCA,
      );

  Pointer<Utf16> get RequestID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrRequestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrRequestID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
