// ICertRequest3.dart

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

import '../../../security/cryptography/certificates/ICertRequest2.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertRequest3 = '{AFC8F92B-33A2-4861-BF36-2933B7CD67B3}';

/// {@category Interface}
/// {@category com}
class ICertRequest3 extends ICertRequest2 {
  // vtable begins at 20, is 4 entries long.
  ICertRequest3(Pointer<COMObject> ptr) : super(ptr);

  int SetCredential(
    int hWnd,
    int AuthType,
    Pointer<Utf16> strCredential,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hWnd,
            Int32 AuthType,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWnd,
            int AuthType,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        hWnd,
        AuthType,
        strCredential,
        strPassword,
      );

  int GetRequestIdString(
    Pointer<Pointer<Utf16>> pstrRequestId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrRequestId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrRequestId,
          )>()(
        ptr.ref.lpVtbl,
        pstrRequestId,
      );

  int GetIssuedCertificate2(
    Pointer<Utf16> strConfig,
    Pointer<Utf16> strRequestId,
    Pointer<Utf16> strSerialNumber,
    Pointer<Uint32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strRequestId,
            Pointer<Utf16> strSerialNumber,
            Pointer<Uint32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Utf16> strRequestId,
            Pointer<Utf16> strSerialNumber,
            Pointer<Uint32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        strRequestId,
        strSerialNumber,
        pDisposition,
      );

  int GetRefreshPolicy(
    Pointer<Int16> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );
}
