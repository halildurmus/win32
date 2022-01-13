// IXpsSignature.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../storage/packaging/opc/IOpcCertificateEnumerator.dart';
import '../../storage/packaging/opc/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../security/cryptography/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/packaging/opc/IOpcSignatureCustomObjectEnumerator.dart';
import '../../storage/packaging/opc/IOpcSignatureReferenceEnumerator.dart';

/// @nodoc
const IID_IXpsSignature = '{6AE4C93E-1ADE-42FB-898B-3A5658284857}';

/// {@category Interface}
/// {@category com}
class IXpsSignature extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IXpsSignature(Pointer<COMObject> ptr) : super(ptr);

  int GetSignatureId(
    Pointer<Pointer<Utf16>> sigId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sigId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sigId,
          )>()(
        ptr.ref.lpVtbl,
        sigId,
      );

  int GetSignatureValue(
    Pointer<Pointer<Uint8>> signatureHashValue,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> signatureHashValue,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> signatureHashValue,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        signatureHashValue,
        count,
      );

  int GetCertificateEnumerator(
    Pointer<Pointer<COMObject>> certificateEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        certificateEnumerator,
      );

  int GetSigningTime(
    Pointer<Pointer<Utf16>> sigDateTimeString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sigDateTimeString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sigDateTimeString,
          )>()(
        ptr.ref.lpVtbl,
        sigDateTimeString,
      );

  int GetSigningTimeFormat(
    Pointer<Int32> timeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> timeFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> timeFormat,
          )>()(
        ptr.ref.lpVtbl,
        timeFormat,
      );

  int GetSignaturePartName(
    Pointer<Pointer<COMObject>> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signaturePartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signaturePartName,
          )>()(
        ptr.ref.lpVtbl,
        signaturePartName,
      );

  int Verify(
    Pointer<CERT_CONTEXT> x509Certificate,
    Pointer<Int32> sigStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CERT_CONTEXT> x509Certificate,
            Pointer<Int32> sigStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CERT_CONTEXT> x509Certificate,
            Pointer<Int32> sigStatus,
          )>()(
        ptr.ref.lpVtbl,
        x509Certificate,
        sigStatus,
      );

  int GetPolicy(
    Pointer<Int32> policy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> policy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> policy,
          )>()(
        ptr.ref.lpVtbl,
        policy,
      );

  int GetCustomObjectEnumerator(
    Pointer<Pointer<COMObject>> customObjectEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        customObjectEnumerator,
      );

  int GetCustomReferenceEnumerator(
    Pointer<Pointer<COMObject>> customReferenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customReferenceEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customReferenceEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        customReferenceEnumerator,
      );

  int GetSignatureXml(
    Pointer<Pointer<Uint8>> signatureXml,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> signatureXml,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> signatureXml,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        signatureXml,
        count,
      );

  int SetSignatureXml(
    Pointer<Uint8> signatureXml,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> signatureXml,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> signatureXml,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        signatureXml,
        count,
      );
}
