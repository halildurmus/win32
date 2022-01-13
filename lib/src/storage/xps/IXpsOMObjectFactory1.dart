// IXpsOMObjectFactory1.dart

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

import '../../storage/xps/IXpsOMObjectFactory.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../security/structs.g.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsOMCoreProperties.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';
import '../../storage/xps/IXpsOMPackageWriter.dart';
import '../../system/com/ISequentialStream.dart';
import '../../storage/xps/IXpsOMPackage1.dart';
import '../../storage/xps/IXpsOMPage1.dart';
import '../../storage/xps/IXpsOMPartResources.dart';
import '../../storage/xps/IXpsOMRemoteDictionaryResource.dart';

/// @nodoc
const IID_IXpsOMObjectFactory1 = '{0A91B617-D612-4181-BF7C-BE5824E9CC8F}';

/// {@category Interface}
/// {@category com}
class IXpsOMObjectFactory1 extends IXpsOMObjectFactory {
  // vtable begins at 40, is 12 entries long.
  IXpsOMObjectFactory1(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentTypeFromFile(
    Pointer<Utf16> filename,
    Pointer<Int32> documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Int32> documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Int32> documentType,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        documentType,
      );

  int GetDocumentTypeFromStream(
    Pointer<COMObject> xpsDocumentStream,
    Pointer<Int32> documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> xpsDocumentStream,
            Pointer<Int32> documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> xpsDocumentStream,
            Pointer<Int32> documentType,
          )>()(
        ptr.ref.lpVtbl,
        xpsDocumentStream,
        documentType,
      );

  int ConvertHDPhotoToJpegXR(
    Pointer<COMObject> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int ConvertJpegXRToHDPhoto(
    Pointer<COMObject> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int CreatePackageWriterOnFile1(
    Pointer<Utf16> fileName,
    Pointer<SECURITY_ATTRIBUTES> securityAttributes,
    int flagsAndAttributes,
    int optimizeMarkupSize,
    int interleaving,
    Pointer<COMObject> documentSequencePartName,
    Pointer<COMObject> coreProperties,
    Pointer<COMObject> packageThumbnail,
    Pointer<COMObject> documentSequencePrintTicket,
    Pointer<COMObject> discardControlPartName,
    int documentType,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            Uint32 flagsAndAttributes,
            Int32 optimizeMarkupSize,
            Int32 interleaving,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> coreProperties,
            Pointer<COMObject> packageThumbnail,
            Pointer<COMObject> documentSequencePrintTicket,
            Pointer<COMObject> discardControlPartName,
            Int32 documentType,
            Pointer<Pointer<COMObject>> packageWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            int flagsAndAttributes,
            int optimizeMarkupSize,
            int interleaving,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> coreProperties,
            Pointer<COMObject> packageThumbnail,
            Pointer<COMObject> documentSequencePrintTicket,
            Pointer<COMObject> discardControlPartName,
            int documentType,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        securityAttributes,
        flagsAndAttributes,
        optimizeMarkupSize,
        interleaving,
        documentSequencePartName,
        coreProperties,
        packageThumbnail,
        documentSequencePrintTicket,
        discardControlPartName,
        documentType,
        packageWriter,
      );

  int CreatePackageWriterOnStream1(
    Pointer<COMObject> outputStream,
    int optimizeMarkupSize,
    int interleaving,
    Pointer<COMObject> documentSequencePartName,
    Pointer<COMObject> coreProperties,
    Pointer<COMObject> packageThumbnail,
    Pointer<COMObject> documentSequencePrintTicket,
    Pointer<COMObject> discardControlPartName,
    int documentType,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Int32 optimizeMarkupSize,
            Int32 interleaving,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> coreProperties,
            Pointer<COMObject> packageThumbnail,
            Pointer<COMObject> documentSequencePrintTicket,
            Pointer<COMObject> discardControlPartName,
            Int32 documentType,
            Pointer<Pointer<COMObject>> packageWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> outputStream,
            int optimizeMarkupSize,
            int interleaving,
            Pointer<COMObject> documentSequencePartName,
            Pointer<COMObject> coreProperties,
            Pointer<COMObject> packageThumbnail,
            Pointer<COMObject> documentSequencePrintTicket,
            Pointer<COMObject> discardControlPartName,
            int documentType,
            Pointer<Pointer<COMObject>> packageWriter,
          )>()(
        ptr.ref.lpVtbl,
        outputStream,
        optimizeMarkupSize,
        interleaving,
        documentSequencePartName,
        coreProperties,
        packageThumbnail,
        documentSequencePrintTicket,
        discardControlPartName,
        documentType,
        packageWriter,
      );

  int CreatePackage1(
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        package,
      );

  int CreatePackageFromStream1(
    Pointer<COMObject> stream,
    int reuseObjects,
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Int32 reuseObjects,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            int reuseObjects,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        reuseObjects,
        package,
      );

  int CreatePackageFromFile1(
    Pointer<Utf16> filename,
    int reuseObjects,
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Int32 reuseObjects,
            Pointer<Pointer<COMObject>> package,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            int reuseObjects,
            Pointer<Pointer<COMObject>> package,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        reuseObjects,
        package,
      );

  int CreatePage1(
    Pointer<XPS_SIZE> pageDimensions,
    Pointer<Utf16> language,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_SIZE> pageDimensions,
            Pointer<Utf16> language,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> page,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_SIZE> pageDimensions,
            Pointer<Utf16> language,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> page,
          )>()(
        ptr.ref.lpVtbl,
        pageDimensions,
        language,
        partUri,
        page,
      );

  int CreatePageFromStream1(
    Pointer<COMObject> pageMarkupStream,
    Pointer<COMObject> partUri,
    Pointer<COMObject> resources,
    int reuseObjects,
    Pointer<Pointer<COMObject>> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pageMarkupStream,
            Pointer<COMObject> partUri,
            Pointer<COMObject> resources,
            Int32 reuseObjects,
            Pointer<Pointer<COMObject>> page,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pageMarkupStream,
            Pointer<COMObject> partUri,
            Pointer<COMObject> resources,
            int reuseObjects,
            Pointer<Pointer<COMObject>> page,
          )>()(
        ptr.ref.lpVtbl,
        pageMarkupStream,
        partUri,
        resources,
        reuseObjects,
        page,
      );

  int CreateRemoteDictionaryResourceFromStream1(
    Pointer<COMObject> dictionaryMarkupStream,
    Pointer<COMObject> partUri,
    Pointer<COMObject> resources,
    Pointer<Pointer<COMObject>> dictionaryResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dictionaryMarkupStream,
            Pointer<COMObject> partUri,
            Pointer<COMObject> resources,
            Pointer<Pointer<COMObject>> dictionaryResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dictionaryMarkupStream,
            Pointer<COMObject> partUri,
            Pointer<COMObject> resources,
            Pointer<Pointer<COMObject>> dictionaryResource,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryMarkupStream,
        partUri,
        resources,
        dictionaryResource,
      );
}
