// IDCompositionDevice2.dart

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
import '../../graphics/directcomposition/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionVisual2.dart';
import '../../specialTypes.dart';
import '../../graphics/directcomposition/IDCompositionSurfaceFactory.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionSurface.dart';
import '../../graphics/directcomposition/IDCompositionVirtualSurface.dart';
import '../../graphics/directcomposition/IDCompositionTranslateTransform.dart';
import '../../graphics/directcomposition/IDCompositionScaleTransform.dart';
import '../../graphics/directcomposition/IDCompositionRotateTransform.dart';
import '../../graphics/directcomposition/IDCompositionSkewTransform.dart';
import '../../graphics/directcomposition/IDCompositionMatrixTransform.dart';
import '../../graphics/directcomposition/IDCompositionTransform.dart';
import '../../graphics/directcomposition/IDCompositionTranslateTransform3D.dart';
import '../../graphics/directcomposition/IDCompositionScaleTransform3D.dart';
import '../../graphics/directcomposition/IDCompositionRotateTransform3D.dart';
import '../../graphics/directcomposition/IDCompositionMatrixTransform3D.dart';
import '../../graphics/directcomposition/IDCompositionTransform3D.dart';
import '../../graphics/directcomposition/IDCompositionEffectGroup.dart';
import '../../graphics/directcomposition/IDCompositionRectangleClip.dart';
import '../../graphics/directcomposition/IDCompositionAnimation.dart';

/// @nodoc
const IID_IDCompositionDevice2 = '{75F6468D-1B8E-447C-9BC6-75FEA80B5B25}';

/// {@category Interface}
/// {@category com}
class IDCompositionDevice2 extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IDCompositionDevice2(Pointer<COMObject> ptr) : super(ptr);

  int Commit() => ptr.ref.lpVtbl.value
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

  int WaitForCommitCompletion() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetFrameStatistics(
    Pointer<DCOMPOSITION_FRAME_STATISTICS> statistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DCOMPOSITION_FRAME_STATISTICS> statistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DCOMPOSITION_FRAME_STATISTICS> statistics,
          )>()(
        ptr.ref.lpVtbl,
        statistics,
      );

  int CreateVisual(
    Pointer<Pointer<COMObject>> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );

  int CreateSurfaceFactory(
    Pointer<COMObject> renderingDevice,
    Pointer<Pointer<COMObject>> surfaceFactory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> renderingDevice,
            Pointer<Pointer<COMObject>> surfaceFactory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> renderingDevice,
            Pointer<Pointer<COMObject>> surfaceFactory,
          )>()(
        ptr.ref.lpVtbl,
        renderingDevice,
        surfaceFactory,
      );

  int CreateSurface(
    int width,
    int height,
    int pixelFormat,
    int alphaMode,
    Pointer<Pointer<COMObject>> surface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 width,
            Uint32 height,
            Uint32 pixelFormat,
            Uint32 alphaMode,
            Pointer<Pointer<COMObject>> surface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
            int height,
            int pixelFormat,
            int alphaMode,
            Pointer<Pointer<COMObject>> surface,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
        pixelFormat,
        alphaMode,
        surface,
      );

  int CreateVirtualSurface(
    int initialWidth,
    int initialHeight,
    int pixelFormat,
    int alphaMode,
    Pointer<Pointer<COMObject>> virtualSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 initialWidth,
            Uint32 initialHeight,
            Uint32 pixelFormat,
            Uint32 alphaMode,
            Pointer<Pointer<COMObject>> virtualSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int initialWidth,
            int initialHeight,
            int pixelFormat,
            int alphaMode,
            Pointer<Pointer<COMObject>> virtualSurface,
          )>()(
        ptr.ref.lpVtbl,
        initialWidth,
        initialHeight,
        pixelFormat,
        alphaMode,
        virtualSurface,
      );

  int CreateTranslateTransform(
    Pointer<Pointer<COMObject>> translateTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> translateTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> translateTransform,
          )>()(
        ptr.ref.lpVtbl,
        translateTransform,
      );

  int CreateScaleTransform(
    Pointer<Pointer<COMObject>> scaleTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> scaleTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> scaleTransform,
          )>()(
        ptr.ref.lpVtbl,
        scaleTransform,
      );

  int CreateRotateTransform(
    Pointer<Pointer<COMObject>> rotateTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> rotateTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> rotateTransform,
          )>()(
        ptr.ref.lpVtbl,
        rotateTransform,
      );

  int CreateSkewTransform(
    Pointer<Pointer<COMObject>> skewTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> skewTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> skewTransform,
          )>()(
        ptr.ref.lpVtbl,
        skewTransform,
      );

  int CreateMatrixTransform(
    Pointer<Pointer<COMObject>> matrixTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>()(
        ptr.ref.lpVtbl,
        matrixTransform,
      );

  int CreateTransformGroup(
    Pointer<Pointer<COMObject>> transforms,
    int elements,
    Pointer<Pointer<COMObject>> transformGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> transforms,
            Uint32 elements,
            Pointer<Pointer<COMObject>> transformGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> transforms,
            int elements,
            Pointer<Pointer<COMObject>> transformGroup,
          )>()(
        ptr.ref.lpVtbl,
        transforms,
        elements,
        transformGroup,
      );

  int CreateTranslateTransform3D(
    Pointer<Pointer<COMObject>> translateTransform3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> translateTransform3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> translateTransform3D,
          )>()(
        ptr.ref.lpVtbl,
        translateTransform3D,
      );

  int CreateScaleTransform3D(
    Pointer<Pointer<COMObject>> scaleTransform3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> scaleTransform3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> scaleTransform3D,
          )>()(
        ptr.ref.lpVtbl,
        scaleTransform3D,
      );

  int CreateRotateTransform3D(
    Pointer<Pointer<COMObject>> rotateTransform3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> rotateTransform3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> rotateTransform3D,
          )>()(
        ptr.ref.lpVtbl,
        rotateTransform3D,
      );

  int CreateMatrixTransform3D(
    Pointer<Pointer<COMObject>> matrixTransform3D,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform3D,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform3D,
          )>()(
        ptr.ref.lpVtbl,
        matrixTransform3D,
      );

  int CreateTransform3DGroup(
    Pointer<Pointer<COMObject>> transforms3D,
    int elements,
    Pointer<Pointer<COMObject>> transform3DGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> transforms3D,
            Uint32 elements,
            Pointer<Pointer<COMObject>> transform3DGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> transforms3D,
            int elements,
            Pointer<Pointer<COMObject>> transform3DGroup,
          )>()(
        ptr.ref.lpVtbl,
        transforms3D,
        elements,
        transform3DGroup,
      );

  int CreateEffectGroup(
    Pointer<Pointer<COMObject>> effectGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> effectGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> effectGroup,
          )>()(
        ptr.ref.lpVtbl,
        effectGroup,
      );

  int CreateRectangleClip(
    Pointer<Pointer<COMObject>> clip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> clip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> clip,
          )>()(
        ptr.ref.lpVtbl,
        clip,
      );

  int CreateAnimation(
    Pointer<Pointer<COMObject>> animation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> animation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> animation,
          )>()(
        ptr.ref.lpVtbl,
        animation,
      );
}
