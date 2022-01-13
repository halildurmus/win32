// ICompositionDrawingSurfaceInterop.dart

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

/// @nodoc
const IID_ICompositionDrawingSurfaceInterop =
    '{FD04E6E3-FE0C-4C3C-AB19-A07601A576EE}';

/// {@category Interface}
/// {@category com}
class ICompositionDrawingSurfaceInterop extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ICompositionDrawingSurfaceInterop(Pointer<COMObject> ptr) : super(ptr);

  int BeginDraw(
    Pointer<RECT> updateRect,
    Pointer<GUID> iid,
    Pointer<Pointer> updateObject,
    Pointer<POINT> updateOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> updateRect,
            Pointer<GUID> iid,
            Pointer<Pointer> updateObject,
            Pointer<POINT> updateOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> updateRect,
            Pointer<GUID> iid,
            Pointer<Pointer> updateObject,
            Pointer<POINT> updateOffset,
          )>()(
        ptr.ref.lpVtbl,
        updateRect,
        iid,
        updateObject,
        updateOffset,
      );

  int EndDraw() => ptr.ref.lpVtbl.value
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

  int Resize(
    SIZE sizePixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            SIZE sizePixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            SIZE sizePixels,
          )>()(
        ptr.ref.lpVtbl,
        sizePixels,
      );

  int Scroll(
    Pointer<RECT> scrollRect,
    Pointer<RECT> clipRect,
    int offsetX,
    int offsetY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> scrollRect,
            Pointer<RECT> clipRect,
            Int32 offsetX,
            Int32 offsetY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> scrollRect,
            Pointer<RECT> clipRect,
            int offsetX,
            int offsetY,
          )>()(
        ptr.ref.lpVtbl,
        scrollRect,
        clipRect,
        offsetX,
        offsetY,
      );

  int ResumeDraw() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SuspendDraw() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
