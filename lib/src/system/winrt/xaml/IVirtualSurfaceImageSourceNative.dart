// IVirtualSurfaceImageSourceNative.dart

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

import '../../../system/winrt/xaml/ISurfaceImageSourceNative.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/winrt/xaml/IVirtualSurfaceUpdatesCallbackNative.dart';

/// @nodoc
const IID_IVirtualSurfaceImageSourceNative =
    '{E9550983-360B-4F53-B391-AFD695078691}';

/// {@category Interface}
/// {@category com}
class IVirtualSurfaceImageSourceNative extends ISurfaceImageSourceNative {
  // vtable begins at 6, is 6 entries long.
  IVirtualSurfaceImageSourceNative(Pointer<COMObject> ptr) : super(ptr);

  int Invalidate(
    RECT updateRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT updateRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT updateRect,
          )>()(
        ptr.ref.lpVtbl,
        updateRect,
      );

  int GetUpdateRectCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );

  int GetUpdateRects(
    Pointer<RECT> updates,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> updates,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> updates,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        updates,
        count,
      );

  int GetVisibleBounds(
    Pointer<RECT> bounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> bounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> bounds,
          )>()(
        ptr.ref.lpVtbl,
        bounds,
      );

  int RegisterForUpdatesNeeded(
    Pointer<COMObject> callback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> callback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> callback,
          )>()(
        ptr.ref.lpVtbl,
        callback,
      );

  int Resize(
    int newWidth,
    int newHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 newWidth,
            Int32 newHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int newWidth,
            int newHeight,
          )>()(
        ptr.ref.lpVtbl,
        newWidth,
        newHeight,
      );
}
