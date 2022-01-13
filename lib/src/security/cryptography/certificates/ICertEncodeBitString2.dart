// ICertEncodeBitString2.dart

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

import '../../../security/cryptography/certificates/ICertEncodeBitString.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertEncodeBitString2 = '{E070D6E7-23EF-4DD2-8242-EBD9C928CB30}';

/// {@category Interface}
/// {@category com}
class ICertEncodeBitString2 extends ICertEncodeBitString {
  // vtable begins at 11, is 3 entries long.
  ICertEncodeBitString2(Pointer<COMObject> ptr) : super(ptr);

  int DecodeBlob(
    Pointer<Utf16> strEncodedData,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int EncodeBlob(
    int BitCount,
    Pointer<Utf16> strBitString,
    int EncodingIn,
    int Encoding,
    Pointer<Pointer<Utf16>> pstrEncodedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BitCount,
            Pointer<Utf16> strBitString,
            Int32 EncodingIn,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrEncodedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BitCount,
            Pointer<Utf16> strBitString,
            int EncodingIn,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrEncodedData,
          )>()(
        ptr.ref.lpVtbl,
        BitCount,
        strBitString,
        EncodingIn,
        Encoding,
        pstrEncodedData,
      );

  int GetBitStringBlob(
    int Encoding,
    Pointer<Pointer<Utf16>> pstrBitString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrBitString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrBitString,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        pstrBitString,
      );
}
