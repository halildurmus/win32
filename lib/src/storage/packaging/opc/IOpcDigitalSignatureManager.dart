// IOpcDigitalSignatureManager.dart

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
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcDigitalSignatureEnumerator.dart';
import '../../../storage/packaging/opc/IOpcSigningOptions.dart';
import '../../../storage/packaging/opc/IOpcDigitalSignature.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../storage/packaging/opc/structs.g.dart';

/// @nodoc
const IID_IOpcDigitalSignatureManager =
    '{D5E62A0B-696D-462F-94DF-72E33CEF2659}';

/// {@category Interface}
/// {@category com}
class IOpcDigitalSignatureManager extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IOpcDigitalSignatureManager(Pointer<COMObject> ptr) : super(ptr);

  int GetSignatureOriginPartName(
    Pointer<Pointer<COMObject>> signatureOriginPartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureOriginPartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureOriginPartName,
          )>()(
        ptr.ref.lpVtbl,
        signatureOriginPartName,
      );

  int SetSignatureOriginPartName(
    Pointer<COMObject> signatureOriginPartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signatureOriginPartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signatureOriginPartName,
          )>()(
        ptr.ref.lpVtbl,
        signatureOriginPartName,
      );

  int GetSignatureEnumerator(
    Pointer<Pointer<COMObject>> signatureEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        signatureEnumerator,
      );

  int RemoveSignature(
    Pointer<COMObject> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signaturePartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signaturePartName,
          )>()(
        ptr.ref.lpVtbl,
        signaturePartName,
      );

  int CreateSigningOptions(
    Pointer<Pointer<COMObject>> signingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signingOptions,
          )>()(
        ptr.ref.lpVtbl,
        signingOptions,
      );

  int Validate(
    Pointer<COMObject> signature,
    Pointer<CERT_CONTEXT> certificate,
    Pointer<Int32> validationResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signature,
            Pointer<CERT_CONTEXT> certificate,
            Pointer<Int32> validationResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signature,
            Pointer<CERT_CONTEXT> certificate,
            Pointer<Int32> validationResult,
          )>()(
        ptr.ref.lpVtbl,
        signature,
        certificate,
        validationResult,
      );

  int Sign(
    Pointer<CERT_CONTEXT> certificate,
    Pointer<COMObject> signingOptions,
    Pointer<Pointer<COMObject>> digitalSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERT_CONTEXT> certificate,
            Pointer<COMObject> signingOptions,
            Pointer<Pointer<COMObject>> digitalSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERT_CONTEXT> certificate,
            Pointer<COMObject> signingOptions,
            Pointer<Pointer<COMObject>> digitalSignature,
          )>()(
        ptr.ref.lpVtbl,
        certificate,
        signingOptions,
        digitalSignature,
      );

  int ReplaceSignatureXml(
    Pointer<COMObject> signaturePartName,
    Pointer<Uint8> newSignatureXml,
    int count,
    Pointer<Pointer<COMObject>> digitalSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signaturePartName,
            Pointer<Uint8> newSignatureXml,
            Uint32 count,
            Pointer<Pointer<COMObject>> digitalSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signaturePartName,
            Pointer<Uint8> newSignatureXml,
            int count,
            Pointer<Pointer<COMObject>> digitalSignature,
          )>()(
        ptr.ref.lpVtbl,
        signaturePartName,
        newSignatureXml,
        count,
        digitalSignature,
      );
}
