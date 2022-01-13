// IXpsOMPackageWriter.dart

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
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';
import '../../storage/xps/IXpsOMDocumentStructureResource.dart';
import '../../storage/xps/IXpsOMSignatureBlockResourceCollection.dart';
import '../../storage/xps/IXpsOMPartUriCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMPage.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMStoryFragmentsResource.dart';
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../storage/xps/IXpsOMResource.dart';

/// @nodoc
const IID_IXpsOMPackageWriter = '{4E2AA182-A443-42C6-B41B-4F8E9DE73FF9}';

/// {@category Interface}
/// {@category com}
class IXpsOMPackageWriter extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IXpsOMPackageWriter(Pointer<COMObject> ptr) : super(ptr);

  int StartNewDocument(
    Pointer<COMObject> documentPartName,
    Pointer<COMObject> documentPrintTicket,
    Pointer<COMObject> documentStructure,
    Pointer<COMObject> signatureBlockResources,
    Pointer<COMObject> restrictedFonts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> documentPartName,
            Pointer<COMObject> documentPrintTicket,
            Pointer<COMObject> documentStructure,
            Pointer<COMObject> signatureBlockResources,
            Pointer<COMObject> restrictedFonts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> documentPartName,
            Pointer<COMObject> documentPrintTicket,
            Pointer<COMObject> documentStructure,
            Pointer<COMObject> signatureBlockResources,
            Pointer<COMObject> restrictedFonts,
          )>()(
        ptr.ref.lpVtbl,
        documentPartName,
        documentPrintTicket,
        documentStructure,
        signatureBlockResources,
        restrictedFonts,
      );

  int AddPage(
    Pointer<COMObject> page,
    Pointer<XPS_SIZE> advisoryPageDimensions,
    Pointer<COMObject> discardableResourceParts,
    Pointer<COMObject> storyFragments,
    Pointer<COMObject> pagePrintTicket,
    Pointer<COMObject> pageThumbnail,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> page,
            Pointer<XPS_SIZE> advisoryPageDimensions,
            Pointer<COMObject> discardableResourceParts,
            Pointer<COMObject> storyFragments,
            Pointer<COMObject> pagePrintTicket,
            Pointer<COMObject> pageThumbnail,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> page,
            Pointer<XPS_SIZE> advisoryPageDimensions,
            Pointer<COMObject> discardableResourceParts,
            Pointer<COMObject> storyFragments,
            Pointer<COMObject> pagePrintTicket,
            Pointer<COMObject> pageThumbnail,
          )>()(
        ptr.ref.lpVtbl,
        page,
        advisoryPageDimensions,
        discardableResourceParts,
        storyFragments,
        pagePrintTicket,
        pageThumbnail,
      );

  int AddResource(
    Pointer<COMObject> resource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> resource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> resource,
          )>()(
        ptr.ref.lpVtbl,
        resource,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int IsClosed(
    Pointer<Int32> isClosed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isClosed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isClosed,
          )>()(
        ptr.ref.lpVtbl,
        isClosed,
      );
}
