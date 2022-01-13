// ICertPropertyEnrollmentPolicyServer.dart

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
const IID_ICertPropertyEnrollmentPolicyServer =
    '{728AB34A-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class ICertPropertyEnrollmentPolicyServer extends ICertProperty {
  // vtable begins at 14, is 9 entries long.
  ICertPropertyEnrollmentPolicyServer(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int PropertyFlags,
    int AuthFlags,
    int EnrollmentServerAuthFlags,
    int UrlFlags,
    Pointer<Utf16> strRequestId,
    Pointer<Utf16> strUrl,
    Pointer<Utf16> strId,
    Pointer<Utf16> strEnrollmentServerUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PropertyFlags,
            Int32 AuthFlags,
            Int32 EnrollmentServerAuthFlags,
            Int32 UrlFlags,
            Pointer<Utf16> strRequestId,
            Pointer<Utf16> strUrl,
            Pointer<Utf16> strId,
            Pointer<Utf16> strEnrollmentServerUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyFlags,
            int AuthFlags,
            int EnrollmentServerAuthFlags,
            int UrlFlags,
            Pointer<Utf16> strRequestId,
            Pointer<Utf16> strUrl,
            Pointer<Utf16> strId,
            Pointer<Utf16> strEnrollmentServerUrl,
          )>()(
        ptr.ref.lpVtbl,
        PropertyFlags,
        AuthFlags,
        EnrollmentServerAuthFlags,
        UrlFlags,
        strRequestId,
        strUrl,
        strId,
        strEnrollmentServerUrl,
      );

  int GetPolicyServerUrl(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetPolicyServerId(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetEnrollmentServerUrl(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetRequestIdString(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetPropertyFlags(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetUrlFlags(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetAuthentication(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetEnrollmentServerAuthentication(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );
}
