// IXpsOMDocument.dart

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

import '../../storage/xps/IXpsOMPart.dart';
import '../../storage/xps/IXpsOMDocumentSequence.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMPageReferenceCollection.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';
import '../../storage/xps/IXpsOMDocumentStructureResource.dart';
import '../../storage/xps/IXpsOMSignatureBlockResourceCollection.dart';
import '../../storage/xps/IXpsOMDocument.dart';

/// @nodoc
const IID_IXpsOMDocument = '{2C2C94CB-AC5F-4254-8EE9-23948309D9F0}';

/// {@category Interface}
/// {@category com}
class IXpsOMDocument extends IXpsOMPart {
  // vtable begins at 5, is 8 entries long.
  IXpsOMDocument(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> documentSequence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentSequence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentSequence,
          )>()(
        ptr.ref.lpVtbl,
        documentSequence,
      );

  int GetPageReferences(
    Pointer<Pointer<COMObject>> pageReferences,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pageReferences,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pageReferences,
          )>()(
        ptr.ref.lpVtbl,
        pageReferences,
      );

  int GetPrintTicketResource(
    Pointer<Pointer<COMObject>> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        printTicketResource,
      );

  int SetPrintTicketResource(
    Pointer<COMObject> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        printTicketResource,
      );

  int GetDocumentStructureResource(
    Pointer<Pointer<COMObject>> documentStructureResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentStructureResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> documentStructureResource,
          )>()(
        ptr.ref.lpVtbl,
        documentStructureResource,
      );

  int SetDocumentStructureResource(
    Pointer<COMObject> documentStructureResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> documentStructureResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentStructureResource,
          )>()(
        ptr.ref.lpVtbl,
        documentStructureResource,
      );

  int GetSignatureBlockResources(
    Pointer<Pointer<COMObject>> signatureBlockResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureBlockResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureBlockResources,
          )>()(
        ptr.ref.lpVtbl,
        signatureBlockResources,
      );

  int Clone(
    Pointer<Pointer<COMObject>> document,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> document,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> document,
          )>()(
        ptr.ref.lpVtbl,
        document,
      );
}
