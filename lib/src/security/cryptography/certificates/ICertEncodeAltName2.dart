// ICertEncodeAltName2.dart

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

import '../../../security/cryptography/certificates/ICertEncodeAltName.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertEncodeAltName2 = '{F67FE177-5EF1-4535-B4CE-29DF15E2E0C3}';

/// {@category Interface}
/// {@category com}
class ICertEncodeAltName2 extends ICertEncodeAltName {
  // vtable begins at 14, is 4 entries long.
  ICertEncodeAltName2(Pointer<COMObject> ptr) : super(ptr);

  int DecodeBlob(
    Pointer<Utf16> strEncodedData,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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
    int Encoding,
    Pointer<Pointer<Utf16>> pstrEncodedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrEncodedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrEncodedData,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        pstrEncodedData,
      );

  int GetNameBlob(
    int NameIndex,
    int Encoding,
    Pointer<Pointer<Utf16>> pstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NameIndex,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NameIndex,
            int Encoding,
            Pointer<Pointer<Utf16>> pstrName,
          )>()(
        ptr.ref.lpVtbl,
        NameIndex,
        Encoding,
        pstrName,
      );

  int SetNameEntryBlob(
    int NameIndex,
    int NameChoice,
    Pointer<Utf16> strName,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NameIndex,
            Int32 NameChoice,
            Pointer<Utf16> strName,
            Int32 Encoding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NameIndex,
            int NameChoice,
            Pointer<Utf16> strName,
            int Encoding,
          )>()(
        ptr.ref.lpVtbl,
        NameIndex,
        NameChoice,
        strName,
        Encoding,
      );
}
