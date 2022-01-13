// ICertEncodeCRLDistInfo2.dart

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

import '../../../security/cryptography/certificates/ICertEncodeCRLDistInfo.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertEncodeCRLDistInfo2 = '{B4275D4B-3E30-446F-AD36-09D03120B078}';

/// {@category Interface}
/// {@category com}
class ICertEncodeCRLDistInfo2 extends ICertEncodeCRLDistInfo {
  // vtable begins at 16, is 2 entries long.
  ICertEncodeCRLDistInfo2(Pointer<COMObject> ptr) : super(ptr);

  int DecodeBlob(
    Pointer<Utf16> strEncodedData,
    int Encoding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
          .elementAt(17)
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
