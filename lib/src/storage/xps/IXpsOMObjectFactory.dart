// IXpsOMObjectFactory.dart

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
import '../../storage/xps/IXpsOMPackage.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsOMStoryFragmentsResource.dart';
import '../../storage/xps/IXpsOMDocumentStructureResource.dart';
import '../../storage/xps/IXpsOMSignatureBlockResource.dart';
import '../../storage/xps/IXpsOMDictionary.dart';
import '../../storage/xps/IXpsOMRemoteDictionaryResource.dart';
import '../../storage/xps/IXpsOMPartResources.dart';
import '../../storage/xps/IXpsOMDocumentSequence.dart';
import '../../storage/xps/IXpsOMDocument.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMPageReference.dart';
import '../../storage/xps/IXpsOMPage.dart';
import '../../storage/xps/IXpsOMCanvas.dart';
import '../../storage/xps/IXpsOMFontResource.dart';
import '../../storage/xps/IXpsOMGlyphs.dart';
import '../../storage/xps/IXpsOMPath.dart';
import '../../storage/xps/IXpsOMGeometry.dart';
import '../../storage/xps/IXpsOMGeometryFigure.dart';
import '../../storage/xps/IXpsOMMatrixTransform.dart';
import '../../storage/xps/IXpsOMColorProfileResource.dart';
import '../../storage/xps/IXpsOMSolidColorBrush.dart';
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../storage/xps/IXpsOMImageBrush.dart';
import '../../storage/xps/IXpsOMVisualBrush.dart';
import '../../storage/xps/IXpsOMPrintTicketResource.dart';
import '../../storage/xps/IXpsOMGradientStop.dart';
import '../../storage/xps/IXpsOMLinearGradientBrush.dart';
import '../../storage/xps/IXpsOMRadialGradientBrush.dart';
import '../../storage/xps/IXpsOMCoreProperties.dart';
import '../../storage/xps/IXpsOMPartUriCollection.dart';
import '../../security/structs.g.dart';
import '../../storage/xps/IXpsOMPackageWriter.dart';
import '../../system/com/ISequentialStream.dart';

/// @nodoc
const IID_IXpsOMObjectFactory = '{F9B2A685-A50D-4FC2-B764-B56E093EA0CA}';

/// {@category Interface}
/// {@category com}
class IXpsOMObjectFactory extends IUnknown {
  // vtable begins at 3, is 37 entries long.
  IXpsOMObjectFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreatePackage(
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int CreatePackageFromFile(
    Pointer<Utf16> filename,
    int reuseObjects,
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int CreatePackageFromStream(
    Pointer<COMObject> stream,
    int reuseObjects,
    Pointer<Pointer<COMObject>> package,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int CreateStoryFragmentsResource(
    Pointer<COMObject> acquiredStream,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> storyFragmentsResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> storyFragmentsResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> storyFragmentsResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        partUri,
        storyFragmentsResource,
      );

  int CreateDocumentStructureResource(
    Pointer<COMObject> acquiredStream,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> documentStructureResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> documentStructureResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> documentStructureResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        partUri,
        documentStructureResource,
      );

  int CreateSignatureBlockResource(
    Pointer<COMObject> acquiredStream,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> signatureBlockResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> signatureBlockResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> signatureBlockResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        partUri,
        signatureBlockResource,
      );

  int CreateRemoteDictionaryResource(
    Pointer<COMObject> dictionary,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> remoteDictionaryResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dictionary,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> remoteDictionaryResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dictionary,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> remoteDictionaryResource,
          )>()(
        ptr.ref.lpVtbl,
        dictionary,
        partUri,
        remoteDictionaryResource,
      );

  int CreateRemoteDictionaryResourceFromStream(
    Pointer<COMObject> dictionaryMarkupStream,
    Pointer<COMObject> dictionaryPartUri,
    Pointer<COMObject> resources,
    Pointer<Pointer<COMObject>> dictionaryResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dictionaryMarkupStream,
            Pointer<COMObject> dictionaryPartUri,
            Pointer<COMObject> resources,
            Pointer<Pointer<COMObject>> dictionaryResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dictionaryMarkupStream,
            Pointer<COMObject> dictionaryPartUri,
            Pointer<COMObject> resources,
            Pointer<Pointer<COMObject>> dictionaryResource,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryMarkupStream,
        dictionaryPartUri,
        resources,
        dictionaryResource,
      );

  int CreatePartResources(
    Pointer<Pointer<COMObject>> partResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partResources,
          )>()(
        ptr.ref.lpVtbl,
        partResources,
      );

  int CreateDocumentSequence(
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> documentSequence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> documentSequence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> documentSequence,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
        documentSequence,
      );

  int CreateDocument(
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> document,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> document,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> document,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
        document,
      );

  int CreatePageReference(
    Pointer<XPS_SIZE> advisoryPageDimensions,
    Pointer<Pointer<COMObject>> pageReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_SIZE> advisoryPageDimensions,
            Pointer<Pointer<COMObject>> pageReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_SIZE> advisoryPageDimensions,
            Pointer<Pointer<COMObject>> pageReference,
          )>()(
        ptr.ref.lpVtbl,
        advisoryPageDimensions,
        pageReference,
      );

  int CreatePage(
    Pointer<XPS_SIZE> pageDimensions,
    Pointer<Utf16> language,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int CreatePageFromStream(
    Pointer<COMObject> pageMarkupStream,
    Pointer<COMObject> partUri,
    Pointer<COMObject> resources,
    int reuseObjects,
    Pointer<Pointer<COMObject>> page,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int CreateCanvas(
    Pointer<Pointer<COMObject>> canvas,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> canvas,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> canvas,
          )>()(
        ptr.ref.lpVtbl,
        canvas,
      );

  int CreateGlyphs(
    Pointer<COMObject> fontResource,
    Pointer<Pointer<COMObject>> glyphs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontResource,
            Pointer<Pointer<COMObject>> glyphs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontResource,
            Pointer<Pointer<COMObject>> glyphs,
          )>()(
        ptr.ref.lpVtbl,
        fontResource,
        glyphs,
      );

  int CreatePath(
    Pointer<Pointer<COMObject>> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );

  int CreateGeometry(
    Pointer<Pointer<COMObject>> geometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
      );

  int CreateGeometryFigure(
    Pointer<XPS_POINT> startPoint,
    Pointer<Pointer<COMObject>> figure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
            Pointer<Pointer<COMObject>> figure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
            Pointer<Pointer<COMObject>> figure,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
        figure,
      );

  int CreateMatrixTransform(
    Pointer<XPS_MATRIX> matrix,
    Pointer<Pointer<COMObject>> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_MATRIX> matrix,
            Pointer<Pointer<COMObject>> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_MATRIX> matrix,
            Pointer<Pointer<COMObject>> transform,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
        transform,
      );

  int CreateSolidColorBrush(
    Pointer<XPS_COLOR> color,
    Pointer<COMObject> colorProfile,
    Pointer<Pointer<COMObject>> solidColorBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
            Pointer<Pointer<COMObject>> solidColorBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
            Pointer<Pointer<COMObject>> solidColorBrush,
          )>()(
        ptr.ref.lpVtbl,
        color,
        colorProfile,
        solidColorBrush,
      );

  int CreateColorProfileResource(
    Pointer<COMObject> acquiredStream,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> colorProfileResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> colorProfileResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> colorProfileResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        partUri,
        colorProfileResource,
      );

  int CreateImageBrush(
    Pointer<COMObject> image,
    Pointer<XPS_RECT> viewBox,
    Pointer<XPS_RECT> viewPort,
    Pointer<Pointer<COMObject>> imageBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<XPS_RECT> viewBox,
            Pointer<XPS_RECT> viewPort,
            Pointer<Pointer<COMObject>> imageBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> image,
            Pointer<XPS_RECT> viewBox,
            Pointer<XPS_RECT> viewPort,
            Pointer<Pointer<COMObject>> imageBrush,
          )>()(
        ptr.ref.lpVtbl,
        image,
        viewBox,
        viewPort,
        imageBrush,
      );

  int CreateVisualBrush(
    Pointer<XPS_RECT> viewBox,
    Pointer<XPS_RECT> viewPort,
    Pointer<Pointer<COMObject>> visualBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_RECT> viewBox,
            Pointer<XPS_RECT> viewPort,
            Pointer<Pointer<COMObject>> visualBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_RECT> viewBox,
            Pointer<XPS_RECT> viewPort,
            Pointer<Pointer<COMObject>> visualBrush,
          )>()(
        ptr.ref.lpVtbl,
        viewBox,
        viewPort,
        visualBrush,
      );

  int CreateImageResource(
    Pointer<COMObject> acquiredStream,
    int contentType,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Int32 contentType,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            int contentType,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        contentType,
        partUri,
        imageResource,
      );

  int CreatePrintTicketResource(
    Pointer<COMObject> acquiredStream,
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> printTicketResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> printTicketResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        partUri,
        printTicketResource,
      );

  int CreateFontResource(
    Pointer<COMObject> acquiredStream,
    int fontEmbedding,
    Pointer<COMObject> partUri,
    int isObfSourceStream,
    Pointer<Pointer<COMObject>> fontResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            Int32 fontEmbedding,
            Pointer<COMObject> partUri,
            Int32 isObfSourceStream,
            Pointer<Pointer<COMObject>> fontResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> acquiredStream,
            int fontEmbedding,
            Pointer<COMObject> partUri,
            int isObfSourceStream,
            Pointer<Pointer<COMObject>> fontResource,
          )>()(
        ptr.ref.lpVtbl,
        acquiredStream,
        fontEmbedding,
        partUri,
        isObfSourceStream,
        fontResource,
      );

  int CreateGradientStop(
    Pointer<XPS_COLOR> color,
    Pointer<COMObject> colorProfile,
    double offset,
    Pointer<Pointer<COMObject>> gradientStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
            Float offset,
            Pointer<Pointer<COMObject>> gradientStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
            double offset,
            Pointer<Pointer<COMObject>> gradientStop,
          )>()(
        ptr.ref.lpVtbl,
        color,
        colorProfile,
        offset,
        gradientStop,
      );

  int CreateLinearGradientBrush(
    Pointer<COMObject> gradStop1,
    Pointer<COMObject> gradStop2,
    Pointer<XPS_POINT> startPoint,
    Pointer<XPS_POINT> endPoint,
    Pointer<Pointer<COMObject>> linearGradientBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> gradStop1,
            Pointer<COMObject> gradStop2,
            Pointer<XPS_POINT> startPoint,
            Pointer<XPS_POINT> endPoint,
            Pointer<Pointer<COMObject>> linearGradientBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> gradStop1,
            Pointer<COMObject> gradStop2,
            Pointer<XPS_POINT> startPoint,
            Pointer<XPS_POINT> endPoint,
            Pointer<Pointer<COMObject>> linearGradientBrush,
          )>()(
        ptr.ref.lpVtbl,
        gradStop1,
        gradStop2,
        startPoint,
        endPoint,
        linearGradientBrush,
      );

  int CreateRadialGradientBrush(
    Pointer<COMObject> gradStop1,
    Pointer<COMObject> gradStop2,
    Pointer<XPS_POINT> centerPoint,
    Pointer<XPS_POINT> gradientOrigin,
    Pointer<XPS_SIZE> radiiSizes,
    Pointer<Pointer<COMObject>> radialGradientBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> gradStop1,
            Pointer<COMObject> gradStop2,
            Pointer<XPS_POINT> centerPoint,
            Pointer<XPS_POINT> gradientOrigin,
            Pointer<XPS_SIZE> radiiSizes,
            Pointer<Pointer<COMObject>> radialGradientBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> gradStop1,
            Pointer<COMObject> gradStop2,
            Pointer<XPS_POINT> centerPoint,
            Pointer<XPS_POINT> gradientOrigin,
            Pointer<XPS_SIZE> radiiSizes,
            Pointer<Pointer<COMObject>> radialGradientBrush,
          )>()(
        ptr.ref.lpVtbl,
        gradStop1,
        gradStop2,
        centerPoint,
        gradientOrigin,
        radiiSizes,
        radialGradientBrush,
      );

  int CreateCoreProperties(
    Pointer<COMObject> partUri,
    Pointer<Pointer<COMObject>> coreProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> coreProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Pointer<COMObject>> coreProperties,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
        coreProperties,
      );

  int CreateDictionary(
    Pointer<Pointer<COMObject>> dictionary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionary,
          )>()(
        ptr.ref.lpVtbl,
        dictionary,
      );

  int CreatePartUriCollection(
    Pointer<Pointer<COMObject>> partUriCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partUriCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partUriCollection,
          )>()(
        ptr.ref.lpVtbl,
        partUriCollection,
      );

  int CreatePackageWriterOnFile(
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
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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
        packageWriter,
      );

  int CreatePackageWriterOnStream(
    Pointer<COMObject> outputStream,
    int optimizeMarkupSize,
    int interleaving,
    Pointer<COMObject> documentSequencePartName,
    Pointer<COMObject> coreProperties,
    Pointer<COMObject> packageThumbnail,
    Pointer<COMObject> documentSequencePrintTicket,
    Pointer<COMObject> discardControlPartName,
    Pointer<Pointer<COMObject>> packageWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
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
        packageWriter,
      );

  int CreatePartUri(
    Pointer<Utf16> uri,
    Pointer<Pointer<COMObject>> partUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> uri,
            Pointer<Pointer<COMObject>> partUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> uri,
            Pointer<Pointer<COMObject>> partUri,
          )>()(
        ptr.ref.lpVtbl,
        uri,
        partUri,
      );

  int CreateReadOnlyStreamOnFile(
    Pointer<Utf16> filename,
    Pointer<Pointer<COMObject>> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Pointer<COMObject>> stream,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        stream,
      );
}

/// @nodoc
const CLSID_XpsOMObjectFactory = '{E974D26D-3D9B-4D47-88CC-3872F2DC3585}';

/// {@category com}
class XpsOMObjectFactory extends IXpsOMObjectFactory {
  XpsOMObjectFactory(Pointer<COMObject> ptr) : super(ptr);

  factory XpsOMObjectFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XpsOMObjectFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXpsOMObjectFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XpsOMObjectFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
