// ID2D1Bitmap.dart

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

import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1RenderTarget.dart';

/// @nodoc
const IID_ID2D1Bitmap = '{A2296057-EA42-4099-983B-539FB6505426}';

/// {@category Interface}
/// {@category com}
class ID2D1Bitmap extends ID2D1Image {
  // vtable begins at 4, is 7 entries long.
  ID2D1Bitmap(Pointer<COMObject> ptr) : super(ptr);

  D2D_SIZE_F GetSize() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_SIZE_F Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_SIZE_F Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D2D_SIZE_U GetPixelSize() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_SIZE_U Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_SIZE_U Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D2D1_PIXEL_FORMAT GetPixelFormat() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D1_PIXEL_FORMAT Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D1_PIXEL_FORMAT Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void GetDpi(
    Pointer<Float> dpiX,
    Pointer<Float> dpiY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int CopyFromBitmap(
    Pointer<D2D_POINT_2U> destPoint,
    Pointer<COMObject> bitmap,
    Pointer<D2D_RECT_U> srcRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_POINT_2U> destPoint,
            Pointer<COMObject> bitmap,
            Pointer<D2D_RECT_U> srcRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_POINT_2U> destPoint,
            Pointer<COMObject> bitmap,
            Pointer<D2D_RECT_U> srcRect,
          )>()(
        ptr.ref.lpVtbl,
        destPoint,
        bitmap,
        srcRect,
      );

  int CopyFromRenderTarget(
    Pointer<D2D_POINT_2U> destPoint,
    Pointer<COMObject> renderTarget,
    Pointer<D2D_RECT_U> srcRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_POINT_2U> destPoint,
            Pointer<COMObject> renderTarget,
            Pointer<D2D_RECT_U> srcRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_POINT_2U> destPoint,
            Pointer<COMObject> renderTarget,
            Pointer<D2D_RECT_U> srcRect,
          )>()(
        ptr.ref.lpVtbl,
        destPoint,
        renderTarget,
        srcRect,
      );

  int CopyFromMemory(
    Pointer<D2D_RECT_U> dstRect,
    Pointer srcData,
    int pitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_U> dstRect,
            Pointer srcData,
            Uint32 pitch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_U> dstRect,
            Pointer srcData,
            int pitch,
          )>()(
        ptr.ref.lpVtbl,
        dstRect,
        srcData,
        pitch,
      );
}
