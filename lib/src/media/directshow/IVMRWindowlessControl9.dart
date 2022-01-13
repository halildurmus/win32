// IVMRWindowlessControl9.dart

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
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IVMRWindowlessControl9 = '{8F537D09-F85E-4414-B23B-502E54C79927}';

/// {@category Interface}
/// {@category com}
class IVMRWindowlessControl9 extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IVMRWindowlessControl9(Pointer<COMObject> ptr) : super(ptr);

  int GetNativeVideoSize(
    Pointer<Int32> lpWidth,
    Pointer<Int32> lpHeight,
    Pointer<Int32> lpARWidth,
    Pointer<Int32> lpARHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpWidth,
            Pointer<Int32> lpHeight,
            Pointer<Int32> lpARWidth,
            Pointer<Int32> lpARHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpWidth,
            Pointer<Int32> lpHeight,
            Pointer<Int32> lpARWidth,
            Pointer<Int32> lpARHeight,
          )>()(
        ptr.ref.lpVtbl,
        lpWidth,
        lpHeight,
        lpARWidth,
        lpARHeight,
      );

  int GetMinIdealVideoSize(
    Pointer<Int32> lpWidth,
    Pointer<Int32> lpHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpWidth,
            Pointer<Int32> lpHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpWidth,
            Pointer<Int32> lpHeight,
          )>()(
        ptr.ref.lpVtbl,
        lpWidth,
        lpHeight,
      );

  int GetMaxIdealVideoSize(
    Pointer<Int32> lpWidth,
    Pointer<Int32> lpHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpWidth,
            Pointer<Int32> lpHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpWidth,
            Pointer<Int32> lpHeight,
          )>()(
        ptr.ref.lpVtbl,
        lpWidth,
        lpHeight,
      );

  int SetVideoPosition(
    Pointer<RECT> lpSRCRect,
    Pointer<RECT> lpDSTRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> lpSRCRect,
            Pointer<RECT> lpDSTRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> lpSRCRect,
            Pointer<RECT> lpDSTRect,
          )>()(
        ptr.ref.lpVtbl,
        lpSRCRect,
        lpDSTRect,
      );

  int GetVideoPosition(
    Pointer<RECT> lpSRCRect,
    Pointer<RECT> lpDSTRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> lpSRCRect,
            Pointer<RECT> lpDSTRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> lpSRCRect,
            Pointer<RECT> lpDSTRect,
          )>()(
        ptr.ref.lpVtbl,
        lpSRCRect,
        lpDSTRect,
      );

  int GetAspectRatioMode(
    Pointer<Uint32> lpAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        lpAspectRatioMode,
      );

  int SetAspectRatioMode(
    int AspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 AspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        AspectRatioMode,
      );

  int SetVideoClippingWindow(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int RepaintVideo(
    int hwnd,
    int hdc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            IntPtr hdc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int hdc,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        hdc,
      );

  int DisplayModeChanged() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetCurrentImage(
    Pointer<Pointer<Uint8>> lpDib,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> lpDib,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> lpDib,
          )>()(
        ptr.ref.lpVtbl,
        lpDib,
      );

  int SetBorderColor(
    int Clr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Clr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Clr,
          )>()(
        ptr.ref.lpVtbl,
        Clr,
      );

  int GetBorderColor(
    Pointer<Uint32> lpClr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpClr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpClr,
          )>()(
        ptr.ref.lpVtbl,
        lpClr,
      );
}
