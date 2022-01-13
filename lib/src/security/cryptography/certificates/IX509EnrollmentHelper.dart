// IX509EnrollmentHelper.dart

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

/// @nodoc
const IID_IX509EnrollmentHelper = '{728AB351-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509EnrollmentHelper extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IX509EnrollmentHelper(Pointer<COMObject> ptr) : super(ptr);

  int AddPolicyServer(
    Pointer<Utf16> strEnrollmentPolicyServerURI,
    Pointer<Utf16> strEnrollmentPolicyID,
    int EnrollmentPolicyServerFlags,
    int authFlags,
    Pointer<Utf16> strCredential,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEnrollmentPolicyServerURI,
            Pointer<Utf16> strEnrollmentPolicyID,
            Int32 EnrollmentPolicyServerFlags,
            Int32 authFlags,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEnrollmentPolicyServerURI,
            Pointer<Utf16> strEnrollmentPolicyID,
            int EnrollmentPolicyServerFlags,
            int authFlags,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        strEnrollmentPolicyServerURI,
        strEnrollmentPolicyID,
        EnrollmentPolicyServerFlags,
        authFlags,
        strCredential,
        strPassword,
      );

  int AddEnrollmentServer(
    Pointer<Utf16> strEnrollmentServerURI,
    int authFlags,
    Pointer<Utf16> strCredential,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEnrollmentServerURI,
            Int32 authFlags,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEnrollmentServerURI,
            int authFlags,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        strEnrollmentServerURI,
        authFlags,
        strCredential,
        strPassword,
      );

  int Enroll(
    Pointer<Utf16> strEnrollmentPolicyServerURI,
    Pointer<Utf16> strTemplateName,
    int Encoding,
    int enrollFlags,
    Pointer<Pointer<Utf16>> pstrCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strEnrollmentPolicyServerURI,
            Pointer<Utf16> strTemplateName,
            Int32 Encoding,
            Int32 enrollFlags,
            Pointer<Pointer<Utf16>> pstrCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strEnrollmentPolicyServerURI,
            Pointer<Utf16> strTemplateName,
            int Encoding,
            int enrollFlags,
            Pointer<Pointer<Utf16>> pstrCertificate,
          )>()(
        ptr.ref.lpVtbl,
        strEnrollmentPolicyServerURI,
        strTemplateName,
        Encoding,
        enrollFlags,
        pstrCertificate,
      );

  int Initialize(
    int Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Context,
          )>()(
        ptr.ref.lpVtbl,
        Context,
      );
}
