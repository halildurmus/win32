// IOpcDigitalSignature.dart

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
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcSignaturePartReferenceEnumerator.dart';
import '../../../storage/packaging/opc/IOpcSignatureRelationshipReferenceEnumerator.dart';
import '../../../storage/packaging/opc/IOpcSignatureReference.dart';
import '../../../storage/packaging/opc/IOpcCertificateEnumerator.dart';
import '../../../storage/packaging/opc/IOpcSignatureReferenceEnumerator.dart';
import '../../../storage/packaging/opc/IOpcSignatureCustomObjectEnumerator.dart';

/// @nodoc
const IID_IOpcDigitalSignature = '{52AB21DD-1CD0-4949-BC80-0C1232D00CB4}';

/// {@category Interface}
/// {@category com}
class IOpcDigitalSignature extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IOpcDigitalSignature(Pointer<COMObject> ptr) : super(ptr);

  int GetNamespaces(
    Pointer<Pointer<Pointer<Utf16>>> prefixes,
    Pointer<Pointer<Pointer<Utf16>>> namespaces,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<Utf16>>> prefixes,
            Pointer<Pointer<Pointer<Utf16>>> namespaces,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<Utf16>>> prefixes,
            Pointer<Pointer<Pointer<Utf16>>> namespaces,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        prefixes,
        namespaces,
        count,
      );

  int GetSignatureId(
    Pointer<Pointer<Utf16>> signatureId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureId,
          )>()(
        ptr.ref.lpVtbl,
        signatureId,
      );

  int GetSignaturePartName(
    Pointer<Pointer<COMObject>> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetSignatureMethod(
    Pointer<Pointer<Utf16>> signatureMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signatureMethod,
          )>()(
        ptr.ref.lpVtbl,
        signatureMethod,
      );

  int GetCanonicalizationMethod(
    Pointer<Int32> canonicalizationMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> canonicalizationMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> canonicalizationMethod,
          )>()(
        ptr.ref.lpVtbl,
        canonicalizationMethod,
      );

  int GetSignatureValue(
    Pointer<Pointer<Uint8>> signatureValue,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> signatureValue,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> signatureValue,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        signatureValue,
        count,
      );

  int GetSignaturePartReferenceEnumerator(
    Pointer<Pointer<COMObject>> partReferenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partReferenceEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partReferenceEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        partReferenceEnumerator,
      );

  int GetSignatureRelationshipReferenceEnumerator(
    Pointer<Pointer<COMObject>> relationshipReferenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipReferenceEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipReferenceEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        relationshipReferenceEnumerator,
      );

  int GetSigningTime(
    Pointer<Pointer<Utf16>> signingTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> signingTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> signingTime,
          )>()(
        ptr.ref.lpVtbl,
        signingTime,
      );

  int GetTimeFormat(
    Pointer<Int32> timeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetPackageObjectReference(
    Pointer<Pointer<COMObject>> packageObjectReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> packageObjectReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> packageObjectReference,
          )>()(
        ptr.ref.lpVtbl,
        packageObjectReference,
      );

  int GetCertificateEnumerator(
    Pointer<Pointer<COMObject>> certificateEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetCustomReferenceEnumerator(
    Pointer<Pointer<COMObject>> customReferenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int GetCustomObjectEnumerator(
    Pointer<Pointer<COMObject>> customObjectEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetSignatureXml(
    Pointer<Pointer<Uint8>> signatureXml,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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
}
