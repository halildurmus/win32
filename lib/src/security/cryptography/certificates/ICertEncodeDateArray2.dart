// ICertEncodeDateArray2.dart

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

import '../../../security/cryptography/certificates/ICertEncodeDateArray.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertEncodeDateArray2 = '{99A4EDB5-2B8E-448D-BF95-BBA8D7789DC8}';

/// {@category Interface}
/// {@category com}
class ICertEncodeDateArray2 extends ICertEncodeDateArray {
  // vtable begins at 13, is 2 entries long.
  ICertEncodeDateArray2(Pointer<COMObject> ptr) : super(ptr);

  int DecodeBlob(
    Pointer<Utf16> strEncodedData,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
          .elementAt(14)
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
}
