// INDESPolicy.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_INDESPolicy = '{13CA515D-431D-46CC-8C2E-1DA269BBD625}';

/// {@category Interface}
/// {@category com}
class INDESPolicy extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  INDESPolicy(Pointer<COMObject> ptr) : super(ptr);

  int Initialize() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Uninitialize() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GenerateChallenge(
    Pointer<Utf16> pwszTemplate,
    Pointer<Utf16> pwszParams,
    Pointer<Pointer<Utf16>> ppwszResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszTemplate,
            Pointer<Utf16> pwszParams,
            Pointer<Pointer<Utf16>> ppwszResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszTemplate,
            Pointer<Utf16> pwszParams,
            Pointer<Pointer<Utf16>> ppwszResponse,
          )>()(
        ptr.ref.lpVtbl,
        pwszTemplate,
        pwszParams,
        ppwszResponse,
      );

  int VerifyRequest(
    Pointer<CERTTRANSBLOB> pctbRequest,
    Pointer<CERTTRANSBLOB> pctbSigningCertEncoded,
    Pointer<Utf16> pwszTemplate,
    Pointer<Utf16> pwszTransactionId,
    Pointer<Int32> pfVerified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERTTRANSBLOB> pctbRequest,
            Pointer<CERTTRANSBLOB> pctbSigningCertEncoded,
            Pointer<Utf16> pwszTemplate,
            Pointer<Utf16> pwszTransactionId,
            Pointer<Int32> pfVerified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERTTRANSBLOB> pctbRequest,
            Pointer<CERTTRANSBLOB> pctbSigningCertEncoded,
            Pointer<Utf16> pwszTemplate,
            Pointer<Utf16> pwszTransactionId,
            Pointer<Int32> pfVerified,
          )>()(
        ptr.ref.lpVtbl,
        pctbRequest,
        pctbSigningCertEncoded,
        pwszTemplate,
        pwszTransactionId,
        pfVerified,
      );

  int Notify(
    Pointer<Utf16> pwszChallenge,
    Pointer<Utf16> pwszTransactionId,
    int disposition,
    int lastHResult,
    Pointer<CERTTRANSBLOB> pctbIssuedCertEncoded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszChallenge,
            Pointer<Utf16> pwszTransactionId,
            Int32 disposition,
            Int32 lastHResult,
            Pointer<CERTTRANSBLOB> pctbIssuedCertEncoded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszChallenge,
            Pointer<Utf16> pwszTransactionId,
            int disposition,
            int lastHResult,
            Pointer<CERTTRANSBLOB> pctbIssuedCertEncoded,
          )>()(
        ptr.ref.lpVtbl,
        pwszChallenge,
        pwszTransactionId,
        disposition,
        lastHResult,
        pctbIssuedCertEncoded,
      );
}
