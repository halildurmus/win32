// IBinaryConverter.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IBinaryConverter = '{728AB302-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IBinaryConverter extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IBinaryConverter(Pointer<COMObject> ptr) : super(ptr);

  int StringToString(
    Pointer<Utf16> strEncodedIn,
    int EncodingIn,
    int Encoding,
    Pointer<Pointer<Utf16>> pstrEncoded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEncodedIn,
            Int32 EncodingIn,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrEncoded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEncodedIn,
            int EncodingIn,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrEncoded,
          )>()(
        ptr.ref.lpVtbl,
        strEncodedIn,
        EncodingIn,
        Encoding,
        pstrEncoded,
      );

  int VariantByteArrayToString(
    Pointer<VARIANT> pvarByteArray,
    int Encoding,
    Pointer<Pointer<Utf16>> pstrEncoded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarByteArray,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrEncoded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarByteArray,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrEncoded,
          )>()(
        ptr.ref.lpVtbl,
        pvarByteArray,
        Encoding,
        pstrEncoded,
      );

  int StringToVariantByteArray(
    Pointer<Utf16> strEncoded,
    int Encoding,
    Pointer<VARIANT> pvarByteArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEncoded,
            Int32 Encoding,
            Pointer<VARIANT> pvarByteArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEncoded,
            int Encoding,
            Pointer<VARIANT> pvarByteArray,
          )>()(
        ptr.ref.lpVtbl,
        strEncoded,
        Encoding,
        pvarByteArray,
      );
}
