// ICertPropertyRenewal.dart

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

import '../../../security/cryptography/certificates/ICertProperty.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertPropertyRenewal = '{728AB33A-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class ICertPropertyRenewal extends ICertProperty {
  // vtable begins at 14, is 3 entries long.
  ICertPropertyRenewal(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int Encoding,
    Pointer<Utf16> strRenewalValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Utf16> strRenewalValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Utf16> strRenewalValue,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        strRenewalValue,
      );

  int InitializeFromCertificateHash(
    int MachineContext,
    int Encoding,
    Pointer<Utf16> strCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 MachineContext,
            Int32 Encoding,
            Pointer<Utf16> strCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MachineContext,
            int Encoding,
            Pointer<Utf16> strCertificate,
          )>()(
        ptr.ref.lpVtbl,
        MachineContext,
        Encoding,
        strCertificate,
      );

  int get_Renewal(
    int Encoding,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
