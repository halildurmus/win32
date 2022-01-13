// IX509PublicKey.dart

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
import '../../../security/cryptography/certificates/IObjectId.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_IX509PublicKey = '{728AB30B-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509PublicKey extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IX509PublicKey(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pObjectId,
    Pointer<Utf16> strEncodedKey,
    Pointer<Utf16> strEncodedParameters,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObjectId,
            Pointer<Utf16> strEncodedKey,
            Pointer<Utf16> strEncodedParameters,
            Int32 Encoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObjectId,
            Pointer<Utf16> strEncodedKey,
            Pointer<Utf16> strEncodedParameters,
            int Encoding,
          )>()(
        ptr.ref.lpVtbl,
        pObjectId,
        strEncodedKey,
        strEncodedParameters,
        Encoding,
      );

  int InitializeFromEncodedPublicKeyInfo(
    Pointer<Utf16> strEncodedPublicKeyInfo,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEncodedPublicKeyInfo,
            Int32 Encoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEncodedPublicKeyInfo,
            int Encoding,
          )>()(
        ptr.ref.lpVtbl,
        strEncodedPublicKeyInfo,
        Encoding,
      );

  Pointer<COMObject> get Algorithm {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int get Length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int get_EncodedKey(
    int Encoding,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int get_EncodedParameters(
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

  int ComputeKeyIdentifier(
    int Algorithm,
    int Encoding,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Algorithm,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Algorithm,
            int Encoding,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Algorithm,
        Encoding,
        pValue,
      );
}
