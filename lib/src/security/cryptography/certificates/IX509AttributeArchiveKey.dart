// IX509AttributeArchiveKey.dart

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

import '../../../security/cryptography/certificates/IX509Attribute.dart';
import '../../../security/cryptography/certificates/IX509PrivateKey.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/IObjectId.dart';

/// @nodoc
const IID_IX509AttributeArchiveKey = '{728AB327-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509AttributeArchiveKey extends IX509Attribute {
  // vtable begins at 10, is 5 entries long.
  IX509AttributeArchiveKey(Pointer<COMObject> ptr) : super(ptr);

  int InitializeEncode(
    Pointer<COMObject> pKey,
    int Encoding,
    Pointer<Utf16> strCAXCert,
    Pointer<COMObject> pAlgorithm,
    int EncryptionStrength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKey,
            Int32 Encoding,
            Pointer<Utf16> strCAXCert,
            Pointer<COMObject> pAlgorithm,
            Int32 EncryptionStrength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKey,
            int Encoding,
            Pointer<Utf16> strCAXCert,
            Pointer<COMObject> pAlgorithm,
            int EncryptionStrength,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        Encoding,
        strCAXCert,
        pAlgorithm,
        EncryptionStrength,
      );

  int InitializeDecode(
    int Encoding,
    Pointer<Utf16> strEncodedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Utf16> strEncodedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Utf16> strEncodedData,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        strEncodedData,
      );

  int get_EncryptedKeyBlob(
    int Encoding,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        pValue,
      );

  Pointer<COMObject> get EncryptionAlgorithm {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int get EncryptionStrength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
