// IDXGIOutputDuplication.dart

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

import '../../graphics/dxgi/IDXGIObject.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../graphics/dxgi/IDXGIResource.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIOutputDuplication = '{191CFAC3-A341-470D-B26E-A864F428319C}';

/// {@category Interface}
/// {@category com}
class IDXGIOutputDuplication extends IDXGIObject {
  // vtable begins at 7, is 8 entries long.
  IDXGIOutputDuplication(Pointer<COMObject> ptr) : super(ptr);

  void GetDesc(
    Pointer<DXGI_OUTDUPL_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<DXGI_OUTDUPL_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<DXGI_OUTDUPL_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int AcquireNextFrame(
    int TimeoutInMilliseconds,
    Pointer<DXGI_OUTDUPL_FRAME_INFO> pFrameInfo,
    Pointer<Pointer<COMObject>> ppDesktopResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 TimeoutInMilliseconds,
            Pointer<DXGI_OUTDUPL_FRAME_INFO> pFrameInfo,
            Pointer<Pointer<COMObject>> ppDesktopResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TimeoutInMilliseconds,
            Pointer<DXGI_OUTDUPL_FRAME_INFO> pFrameInfo,
            Pointer<Pointer<COMObject>> ppDesktopResource,
          )>()(
        ptr.ref.lpVtbl,
        TimeoutInMilliseconds,
        pFrameInfo,
        ppDesktopResource,
      );

  int GetFrameDirtyRects(
    int DirtyRectsBufferSize,
    Pointer<RECT> pDirtyRectsBuffer,
    Pointer<Uint32> pDirtyRectsBufferSizeRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 DirtyRectsBufferSize,
            Pointer<RECT> pDirtyRectsBuffer,
            Pointer<Uint32> pDirtyRectsBufferSizeRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DirtyRectsBufferSize,
            Pointer<RECT> pDirtyRectsBuffer,
            Pointer<Uint32> pDirtyRectsBufferSizeRequired,
          )>()(
        ptr.ref.lpVtbl,
        DirtyRectsBufferSize,
        pDirtyRectsBuffer,
        pDirtyRectsBufferSizeRequired,
      );

  int GetFrameMoveRects(
    int MoveRectsBufferSize,
    Pointer<DXGI_OUTDUPL_MOVE_RECT> pMoveRectBuffer,
    Pointer<Uint32> pMoveRectsBufferSizeRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 MoveRectsBufferSize,
            Pointer<DXGI_OUTDUPL_MOVE_RECT> pMoveRectBuffer,
            Pointer<Uint32> pMoveRectsBufferSizeRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MoveRectsBufferSize,
            Pointer<DXGI_OUTDUPL_MOVE_RECT> pMoveRectBuffer,
            Pointer<Uint32> pMoveRectsBufferSizeRequired,
          )>()(
        ptr.ref.lpVtbl,
        MoveRectsBufferSize,
        pMoveRectBuffer,
        pMoveRectsBufferSizeRequired,
      );

  int GetFramePointerShape(
    int PointerShapeBufferSize,
    Pointer pPointerShapeBuffer,
    Pointer<Uint32> pPointerShapeBufferSizeRequired,
    Pointer<DXGI_OUTDUPL_POINTER_SHAPE_INFO> pPointerShapeInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PointerShapeBufferSize,
            Pointer pPointerShapeBuffer,
            Pointer<Uint32> pPointerShapeBufferSizeRequired,
            Pointer<DXGI_OUTDUPL_POINTER_SHAPE_INFO> pPointerShapeInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PointerShapeBufferSize,
            Pointer pPointerShapeBuffer,
            Pointer<Uint32> pPointerShapeBufferSizeRequired,
            Pointer<DXGI_OUTDUPL_POINTER_SHAPE_INFO> pPointerShapeInfo,
          )>()(
        ptr.ref.lpVtbl,
        PointerShapeBufferSize,
        pPointerShapeBuffer,
        pPointerShapeBufferSizeRequired,
        pPointerShapeInfo,
      );

  int MapDesktopSurface(
    Pointer<DXGI_MAPPED_RECT> pLockedRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MAPPED_RECT> pLockedRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MAPPED_RECT> pLockedRect,
          )>()(
        ptr.ref.lpVtbl,
        pLockedRect,
      );

  int UnMapDesktopSurface() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int ReleaseFrame() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
