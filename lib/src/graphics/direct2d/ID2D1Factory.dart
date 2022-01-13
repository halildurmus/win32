// ID2D1Factory.dart

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
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1RectangleGeometry.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1RoundedRectangleGeometry.dart';
import '../../graphics/direct2d/ID2D1EllipseGeometry.dart';
import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/ID2D1GeometryGroup.dart';
import '../../graphics/direct2d/ID2D1TransformedGeometry.dart';
import '../../graphics/direct2d/ID2D1PathGeometry.dart';
import '../../graphics/direct2d/ID2D1StrokeStyle.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';
import '../../graphics/direct2d/ID2D1DrawingStateBlock.dart';
import '../../graphics/imaging/IWICBitmap.dart';
import '../../graphics/direct2d/ID2D1RenderTarget.dart';
import '../../graphics/direct2d/ID2D1HwndRenderTarget.dart';
import '../../graphics/dxgi/IDXGISurface.dart';
import '../../graphics/direct2d/ID2D1DCRenderTarget.dart';

/// @nodoc
const IID_ID2D1Factory = '{06152247-6F50-465A-9245-118BFD3B6007}';

/// {@category Interface}
/// {@category com}
class ID2D1Factory extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  ID2D1Factory(Pointer<COMObject> ptr) : super(ptr);

  int ReloadSystemMetrics() => ptr.ref.lpVtbl.value
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

  void GetDesktopDpi(
    Pointer<Float> dpiX,
    Pointer<Float> dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Float> dpiX,
            Pointer<Float> dpiY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Float> dpiX,
            Pointer<Float> dpiY,
          )>()(
        ptr.ref.lpVtbl,
        dpiX,
        dpiY,
      );

  int CreateRectangleGeometry(
    Pointer<D2D_RECT_F> rectangle,
    Pointer<Pointer<COMObject>> rectangleGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_F> rectangle,
            Pointer<Pointer<COMObject>> rectangleGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_F> rectangle,
            Pointer<Pointer<COMObject>> rectangleGeometry,
          )>()(
        ptr.ref.lpVtbl,
        rectangle,
        rectangleGeometry,
      );

  int CreateRoundedRectangleGeometry(
    Pointer<D2D1_ROUNDED_RECT> roundedRectangle,
    Pointer<Pointer<COMObject>> roundedRectangleGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRectangle,
            Pointer<Pointer<COMObject>> roundedRectangleGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRectangle,
            Pointer<Pointer<COMObject>> roundedRectangleGeometry,
          )>()(
        ptr.ref.lpVtbl,
        roundedRectangle,
        roundedRectangleGeometry,
      );

  int CreateEllipseGeometry(
    Pointer<D2D1_ELLIPSE> ellipse,
    Pointer<Pointer<COMObject>> ellipseGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_ELLIPSE> ellipse,
            Pointer<Pointer<COMObject>> ellipseGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_ELLIPSE> ellipse,
            Pointer<Pointer<COMObject>> ellipseGeometry,
          )>()(
        ptr.ref.lpVtbl,
        ellipse,
        ellipseGeometry,
      );

  int CreateGeometryGroup(
    int fillMode,
    Pointer<Pointer<COMObject>> geometries,
    int geometriesCount,
    Pointer<Pointer<COMObject>> geometryGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fillMode,
            Pointer<Pointer<COMObject>> geometries,
            Uint32 geometriesCount,
            Pointer<Pointer<COMObject>> geometryGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fillMode,
            Pointer<Pointer<COMObject>> geometries,
            int geometriesCount,
            Pointer<Pointer<COMObject>> geometryGroup,
          )>()(
        ptr.ref.lpVtbl,
        fillMode,
        geometries,
        geometriesCount,
        geometryGroup,
      );

  int CreateTransformedGeometry(
    Pointer<COMObject> sourceGeometry,
    Pointer<D2D_MATRIX_3X2_F> transform,
    Pointer<Pointer<COMObject>> transformedGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sourceGeometry,
            Pointer<D2D_MATRIX_3X2_F> transform,
            Pointer<Pointer<COMObject>> transformedGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sourceGeometry,
            Pointer<D2D_MATRIX_3X2_F> transform,
            Pointer<Pointer<COMObject>> transformedGeometry,
          )>()(
        ptr.ref.lpVtbl,
        sourceGeometry,
        transform,
        transformedGeometry,
      );

  int CreatePathGeometry(
    Pointer<Pointer<COMObject>> pathGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pathGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pathGeometry,
          )>()(
        ptr.ref.lpVtbl,
        pathGeometry,
      );

  int CreateStrokeStyle(
    Pointer<D2D1_STROKE_STYLE_PROPERTIES> strokeStyleProperties,
    Pointer<Float> dashes,
    int dashesCount,
    Pointer<Pointer<COMObject>> strokeStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_STROKE_STYLE_PROPERTIES> strokeStyleProperties,
            Pointer<Float> dashes,
            Uint32 dashesCount,
            Pointer<Pointer<COMObject>> strokeStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_STROKE_STYLE_PROPERTIES> strokeStyleProperties,
            Pointer<Float> dashes,
            int dashesCount,
            Pointer<Pointer<COMObject>> strokeStyle,
          )>()(
        ptr.ref.lpVtbl,
        strokeStyleProperties,
        dashes,
        dashesCount,
        strokeStyle,
      );

  int CreateDrawingStateBlock(
    Pointer<D2D1_DRAWING_STATE_DESCRIPTION> drawingStateDescription,
    Pointer<COMObject> textRenderingParams,
    Pointer<Pointer<COMObject>> drawingStateBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION> drawingStateDescription,
            Pointer<COMObject> textRenderingParams,
            Pointer<Pointer<COMObject>> drawingStateBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION> drawingStateDescription,
            Pointer<COMObject> textRenderingParams,
            Pointer<Pointer<COMObject>> drawingStateBlock,
          )>()(
        ptr.ref.lpVtbl,
        drawingStateDescription,
        textRenderingParams,
        drawingStateBlock,
      );

  int CreateWicBitmapRenderTarget(
    Pointer<COMObject> target,
    Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
    Pointer<Pointer<COMObject>> renderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> target,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<Pointer<COMObject>> renderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> target,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<Pointer<COMObject>> renderTarget,
          )>()(
        ptr.ref.lpVtbl,
        target,
        renderTargetProperties,
        renderTarget,
      );

  int CreateHwndRenderTarget(
    Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
    Pointer<D2D1_HWND_RENDER_TARGET_PROPERTIES> hwndRenderTargetProperties,
    Pointer<Pointer<COMObject>> hwndRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<D2D1_HWND_RENDER_TARGET_PROPERTIES>
                hwndRenderTargetProperties,
            Pointer<Pointer<COMObject>> hwndRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<D2D1_HWND_RENDER_TARGET_PROPERTIES>
                hwndRenderTargetProperties,
            Pointer<Pointer<COMObject>> hwndRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        renderTargetProperties,
        hwndRenderTargetProperties,
        hwndRenderTarget,
      );

  int CreateDxgiSurfaceRenderTarget(
    Pointer<COMObject> dxgiSurface,
    Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
    Pointer<Pointer<COMObject>> renderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> dxgiSurface,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<Pointer<COMObject>> renderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> dxgiSurface,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<Pointer<COMObject>> renderTarget,
          )>()(
        ptr.ref.lpVtbl,
        dxgiSurface,
        renderTargetProperties,
        renderTarget,
      );

  int CreateDCRenderTarget(
    Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
    Pointer<Pointer<COMObject>> dcRenderTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<Pointer<COMObject>> dcRenderTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_RENDER_TARGET_PROPERTIES> renderTargetProperties,
            Pointer<Pointer<COMObject>> dcRenderTarget,
          )>()(
        ptr.ref.lpVtbl,
        renderTargetProperties,
        dcRenderTarget,
      );
}
