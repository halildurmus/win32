// IX509AttributeRenewalCertificate.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IX509AttributeRenewalCertificate =
    '{728AB326-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509AttributeRenewalCertificate extends IX509Attribute {
  // vtable begins at 10, is 3 entries long.
  IX509AttributeRenewalCertificate(Pointer<COMObject> ptr) : super(ptr);

  int InitializeEncode(
    int Encoding,
    Pointer<Utf16> strCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Utf16> strCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Utf16> strCert,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        strCert,
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

  int get_RenewalCertificate(
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
}
