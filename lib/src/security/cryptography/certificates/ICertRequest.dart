// ICertRequest.dart

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

/// @nodoc
const IID_ICertRequest = '{014E4840-5523-11D0-8812-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertRequest extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICertRequest(Pointer<COMObject> ptr) : super(ptr);

  int Submit(
    int Flags,
    Pointer<Utf16> strRequest,
    Pointer<Utf16> strAttributes,
    Pointer<Utf16> strConfig,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Utf16> strRequest,
            Pointer<Utf16> strAttributes,
            Pointer<Utf16> strConfig,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Utf16> strRequest,
            Pointer<Utf16> strAttributes,
            Pointer<Utf16> strConfig,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        strRequest,
        strAttributes,
        strConfig,
        pDisposition,
      );

  int RetrievePending(
    int RequestId,
    Pointer<Utf16> strConfig,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RequestId,
            Pointer<Utf16> strConfig,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RequestId,
            Pointer<Utf16> strConfig,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        RequestId,
        strConfig,
        pDisposition,
      );

  int GetLastStatus(
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int GetRequestId(
    Pointer<Int32> pRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRequestId,
          )>()(
        ptr.ref.lpVtbl,
        pRequestId,
      );

  int GetDispositionMessage(
    Pointer<Pointer<Utf16>> pstrDispositionMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrDispositionMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrDispositionMessage,
          )>()(
        ptr.ref.lpVtbl,
        pstrDispositionMessage,
      );

  int GetCACertificate(
    int fExchangeCertificate,
    Pointer<Utf16> strConfig,
    int Flags,
    Pointer<Pointer<Utf16>> pstrCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fExchangeCertificate,
            Pointer<Utf16> strConfig,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pstrCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fExchangeCertificate,
            Pointer<Utf16> strConfig,
            int Flags,
            Pointer<Pointer<Utf16>> pstrCertificate,
          )>()(
        ptr.ref.lpVtbl,
        fExchangeCertificate,
        strConfig,
        Flags,
        pstrCertificate,
      );

  int GetCertificate(
    int Flags,
    Pointer<Pointer<Utf16>> pstrCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
            Pointer<Pointer<Utf16>> pstrCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<Utf16>> pstrCertificate,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pstrCertificate,
      );
}
