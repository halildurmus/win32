// ID2D1DeviceContext2.dart

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

import '../../graphics/direct2d/ID2D1DeviceContext1.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1Ink.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1InkStyle.dart';
import '../../graphics/direct2d/ID2D1GradientMesh.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1ImageSourceFromWic.dart';
import '../../graphics/direct2d/ID2D1LookupTable3D.dart';
import '../../graphics/dxgi/IDXGISurface.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1ImageSource.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/ID2D1GdiMetafile.dart';
import '../../graphics/direct2d/ID2D1TransformedImageSource.dart';

/// @nodoc
const IID_ID2D1DeviceContext2 = '{394EA6A3-0C34-4321-950B-6CA20F0BE6C7}';

/// {@category Interface}
/// {@category com}
class ID2D1DeviceContext2 extends ID2D1DeviceContext1 {
  // vtable begins at 95, is 11 entries long.
  ID2D1DeviceContext2(Pointer<COMObject> ptr) : super(ptr);

  int CreateInk(
    Pointer<D2D1_INK_POINT> startPoint,
    Pointer<Pointer<COMObject>> ink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_INK_POINT> startPoint,
            Pointer<Pointer<COMObject>> ink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_INK_POINT> startPoint,
            Pointer<Pointer<COMObject>> ink,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
        ink,
      );

  int CreateInkStyle(
    Pointer<D2D1_INK_STYLE_PROPERTIES> inkStyleProperties,
    Pointer<Pointer<COMObject>> inkStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_INK_STYLE_PROPERTIES> inkStyleProperties,
            Pointer<Pointer<COMObject>> inkStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_INK_STYLE_PROPERTIES> inkStyleProperties,
            Pointer<Pointer<COMObject>> inkStyle,
          )>()(
        ptr.ref.lpVtbl,
        inkStyleProperties,
        inkStyle,
      );

  int CreateGradientMesh(
    Pointer<D2D1_GRADIENT_MESH_PATCH> patches,
    int patchesCount,
    Pointer<Pointer<COMObject>> gradientMesh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_GRADIENT_MESH_PATCH> patches,
            Uint32 patchesCount,
            Pointer<Pointer<COMObject>> gradientMesh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_GRADIENT_MESH_PATCH> patches,
            int patchesCount,
            Pointer<Pointer<COMObject>> gradientMesh,
          )>()(
        ptr.ref.lpVtbl,
        patches,
        patchesCount,
        gradientMesh,
      );

  int CreateImageSourceFromWic(
    Pointer<COMObject> wicBitmapSource,
    int loadingOptions,
    int alphaMode,
    Pointer<Pointer<COMObject>> imageSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> wicBitmapSource,
            Uint32 loadingOptions,
            Uint32 alphaMode,
            Pointer<Pointer<COMObject>> imageSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> wicBitmapSource,
            int loadingOptions,
            int alphaMode,
            Pointer<Pointer<COMObject>> imageSource,
          )>()(
        ptr.ref.lpVtbl,
        wicBitmapSource,
        loadingOptions,
        alphaMode,
        imageSource,
      );

  int CreateLookupTable3D(
    int precision,
    Pointer<Uint32> extents,
    Pointer<Uint8> data,
    int dataCount,
    Pointer<Uint32> strides,
    Pointer<Pointer<COMObject>> lookupTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(99)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 precision,
            Pointer<Uint32> extents,
            Pointer<Uint8> data,
            Uint32 dataCount,
            Pointer<Uint32> strides,
            Pointer<Pointer<COMObject>> lookupTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int precision,
            Pointer<Uint32> extents,
            Pointer<Uint8> data,
            int dataCount,
            Pointer<Uint32> strides,
            Pointer<Pointer<COMObject>> lookupTable,
          )>()(
        ptr.ref.lpVtbl,
        precision,
        extents,
        data,
        dataCount,
        strides,
        lookupTable,
      );

  int CreateImageSourceFromDxgi(
    Pointer<Pointer<COMObject>> surfaces,
    int surfaceCount,
    int colorSpace,
    int options,
    Pointer<Pointer<COMObject>> imageSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(100)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> surfaces,
            Uint32 surfaceCount,
            Int32 colorSpace,
            Uint32 options,
            Pointer<Pointer<COMObject>> imageSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> surfaces,
            int surfaceCount,
            int colorSpace,
            int options,
            Pointer<Pointer<COMObject>> imageSource,
          )>()(
        ptr.ref.lpVtbl,
        surfaces,
        surfaceCount,
        colorSpace,
        options,
        imageSource,
      );

  int GetGradientMeshWorldBounds(
    Pointer<COMObject> gradientMesh,
    Pointer<D2D_RECT_F> pBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(101)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> gradientMesh,
            Pointer<D2D_RECT_F> pBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> gradientMesh,
            Pointer<D2D_RECT_F> pBounds,
          )>()(
        ptr.ref.lpVtbl,
        gradientMesh,
        pBounds,
      );

  void DrawInk(
    Pointer<COMObject> ink,
    Pointer<COMObject> brush,
    Pointer<COMObject> inkStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(102)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> ink,
            Pointer<COMObject> brush,
            Pointer<COMObject> inkStyle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> ink,
            Pointer<COMObject> brush,
            Pointer<COMObject> inkStyle,
          )>()(
        ptr.ref.lpVtbl,
        ink,
        brush,
        inkStyle,
      );

  void DrawGradientMesh(
    Pointer<COMObject> gradientMesh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(103)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> gradientMesh,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> gradientMesh,
          )>()(
        ptr.ref.lpVtbl,
        gradientMesh,
      );

  void DrawGdiMetafile_1(
    Pointer<COMObject> gdiMetafile,
    Pointer<D2D_RECT_F> destinationRectangle,
    Pointer<D2D_RECT_F> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>()(
        ptr.ref.lpVtbl,
        gdiMetafile,
        destinationRectangle,
        sourceRectangle,
      );

  int CreateTransformedImageSource(
    Pointer<COMObject> imageSource,
    Pointer<D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES> properties,
    Pointer<Pointer<COMObject>> transformedImageSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(105)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> imageSource,
            Pointer<D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES> properties,
            Pointer<Pointer<COMObject>> transformedImageSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> imageSource,
            Pointer<D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES> properties,
            Pointer<Pointer<COMObject>> transformedImageSource,
          )>()(
        ptr.ref.lpVtbl,
        imageSource,
        properties,
        transformedImageSource,
      );
}
