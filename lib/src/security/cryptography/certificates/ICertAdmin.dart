// ICertAdmin.dart

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
const IID_ICertAdmin = '{34DF6950-7FB6-11D0-8817-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertAdmin extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  ICertAdmin(Pointer<COMObject> ptr) : super(ptr);

  int IsValidCertificate(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strSerialNumber,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strSerialNumber,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strSerialNumber,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strSerialNumber,
        pDisposition,
      );

  int GetRevocationReason(
    Pointer<Int32> pReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pReason,
          )>()(
        ptr.ref.lpVtbl,
        pReason,
      );

  int RevokeCertificate(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strSerialNumber,
    int Reason,
    double Date,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strSerialNumber,
            Int32 Reason,
            Double Date,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strSerialNumber,
            int Reason,
            double Date,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strSerialNumber,
        Reason,
        Date,
      );

  int SetRequestAttributes(
    Pointer<Utf16> strConfig,
    int RequestId,
    Pointer<Utf16> strAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
            Pointer<Utf16> strAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
            Pointer<Utf16> strAttributes,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
        strAttributes,
      );

  int SetCertificateExtension(
    Pointer<Utf16> strConfig,
    int RequestId,
    Pointer<Utf16> strExtensionName,
    int Type,
    int Flags,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
            Pointer<Utf16> strExtensionName,
            Uint32 Type,
            Int32 Flags,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
            Pointer<Utf16> strExtensionName,
            int Type,
            int Flags,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
        strExtensionName,
        Type,
        Flags,
        pvarValue,
      );

  int DenyRequest(
    Pointer<Utf16> strConfig,
    int RequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
      );

  int ResubmitRequest(
    Pointer<Utf16> strConfig,
    int RequestId,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 RequestId,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int RequestId,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        RequestId,
        pDisposition,
      );

  int PublishCRL(
    Pointer<Utf16> strConfig,
    double Date,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Double Date,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            double Date,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        Date,
      );

  int GetCRL(
    Pointer<Utf16> strConfig,
    int Flags,
    Pointer<Pointer<Utf16>> pstrCRL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pstrCRL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int Flags,
            Pointer<Pointer<Utf16>> pstrCRL,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        Flags,
        pstrCRL,
      );

  int ImportCertificate(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strCertificate,
    int Flags,
    Pointer<Int32> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strCertificate,
            Uint32 Flags,
            Pointer<Int32> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strCertificate,
            int Flags,
            Pointer<Int32> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strCertificate,
        Flags,
        pRequestId,
      );
}
