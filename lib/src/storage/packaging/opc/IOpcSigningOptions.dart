// IOpcSigningOptions.dart

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
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcSignaturePartReferenceSet.dart';
import '../../../storage/packaging/opc/IOpcSignatureRelationshipReferenceSet.dart';
import '../../../storage/packaging/opc/IOpcSignatureCustomObjectSet.dart';
import '../../../storage/packaging/opc/IOpcSignatureReferenceSet.dart';
import '../../../storage/packaging/opc/IOpcCertificateSet.dart';
import '../../../storage/packaging/opc/IOpcPartUri.dart';

/// @nodoc
const IID_IOpcSigningOptions = '{50D2D6A5-7AEB-46C0-B241-43AB0E9B407E}';

/// {@category Interface}
/// {@category com}
class IOpcSigningOptions extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IOpcSigningOptions(Pointer<COMObject> ptr) : super(ptr);

  int GetSignatureId(
    Pointer<Pointer<Utf16>> signatureId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetSignatureId(
    Pointer<Utf16> signatureId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signatureId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signatureId,
          )>()(
        ptr.ref.lpVtbl,
        signatureId,
      );

  int GetSignatureMethod(
    Pointer<Pointer<Utf16>> signatureMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int SetSignatureMethod(
    Pointer<Utf16> signatureMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> signatureMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> signatureMethod,
          )>()(
        ptr.ref.lpVtbl,
        signatureMethod,
      );

  int GetDefaultDigestMethod(
    Pointer<Pointer<Utf16>> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> digestMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> digestMethod,
          )>()(
        ptr.ref.lpVtbl,
        digestMethod,
      );

  int SetDefaultDigestMethod(
    Pointer<Utf16> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> digestMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> digestMethod,
          )>()(
        ptr.ref.lpVtbl,
        digestMethod,
      );

  int GetCertificateEmbeddingOption(
    Pointer<Int32> embeddingOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> embeddingOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> embeddingOption,
          )>()(
        ptr.ref.lpVtbl,
        embeddingOption,
      );

  int SetCertificateEmbeddingOption(
    int embeddingOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 embeddingOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int embeddingOption,
          )>()(
        ptr.ref.lpVtbl,
        embeddingOption,
      );

  int GetTimeFormat(
    Pointer<Int32> timeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetTimeFormat(
    int timeFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 timeFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timeFormat,
          )>()(
        ptr.ref.lpVtbl,
        timeFormat,
      );

  int GetSignaturePartReferenceSet(
    Pointer<Pointer<COMObject>> partReferenceSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partReferenceSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partReferenceSet,
          )>()(
        ptr.ref.lpVtbl,
        partReferenceSet,
      );

  int GetSignatureRelationshipReferenceSet(
    Pointer<Pointer<COMObject>> relationshipReferenceSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipReferenceSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipReferenceSet,
          )>()(
        ptr.ref.lpVtbl,
        relationshipReferenceSet,
      );

  int GetCustomObjectSet(
    Pointer<Pointer<COMObject>> customObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        customObjectSet,
      );

  int GetCustomReferenceSet(
    Pointer<Pointer<COMObject>> customReferenceSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customReferenceSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customReferenceSet,
          )>()(
        ptr.ref.lpVtbl,
        customReferenceSet,
      );

  int GetCertificateSet(
    Pointer<Pointer<COMObject>> certificateSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> certificateSet,
          )>()(
        ptr.ref.lpVtbl,
        certificateSet,
      );

  int GetSignaturePartName(
    Pointer<Pointer<COMObject>> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int SetSignaturePartName(
    Pointer<COMObject> signaturePartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
}
