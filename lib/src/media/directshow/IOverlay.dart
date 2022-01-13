// IOverlay.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IOverlayNotify.dart';

/// @nodoc
const IID_IOverlay = '{56A868A1-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IOverlay extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IOverlay(Pointer<COMObject> ptr) : super(ptr);

  int GetPalette(
    Pointer<Uint32> pdwColors,
    Pointer<Pointer<PALETTEENTRY>> ppPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwColors,
            Pointer<Pointer<PALETTEENTRY>> ppPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwColors,
            Pointer<Pointer<PALETTEENTRY>> ppPalette,
          )>()(
        ptr.ref.lpVtbl,
        pdwColors,
        ppPalette,
      );

  int SetPalette(
    int dwColors,
    Pointer<PALETTEENTRY> pPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwColors,
            Pointer<PALETTEENTRY> pPalette,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwColors,
            Pointer<PALETTEENTRY> pPalette,
          )>()(
        ptr.ref.lpVtbl,
        dwColors,
        pPalette,
      );

  int GetDefaultColorKey(
    Pointer<COLORKEY> pColorKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>()(
        ptr.ref.lpVtbl,
        pColorKey,
      );

  int GetColorKey(
    Pointer<COLORKEY> pColorKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>()(
        ptr.ref.lpVtbl,
        pColorKey,
      );

  int SetColorKey(
    Pointer<COLORKEY> pColorKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLORKEY> pColorKey,
          )>()(
        ptr.ref.lpVtbl,
        pColorKey,
      );

  int GetWindowHandle(
    Pointer<IntPtr> pHwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pHwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pHwnd,
          )>()(
        ptr.ref.lpVtbl,
        pHwnd,
      );

  int GetClipList(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestinationRect,
    Pointer<Pointer<RGNDATA>> ppRgnData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestinationRect,
            Pointer<Pointer<RGNDATA>> ppRgnData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestinationRect,
            Pointer<Pointer<RGNDATA>> ppRgnData,
          )>()(
        ptr.ref.lpVtbl,
        pSourceRect,
        pDestinationRect,
        ppRgnData,
      );

  int GetVideoPosition(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestinationRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestinationRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestinationRect,
          )>()(
        ptr.ref.lpVtbl,
        pSourceRect,
        pDestinationRect,
      );

  int Advise(
    Pointer<COMObject> pOverlayNotify,
    int dwInterests,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOverlayNotify,
            Uint32 dwInterests,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOverlayNotify,
            int dwInterests,
          )>()(
        ptr.ref.lpVtbl,
        pOverlayNotify,
        dwInterests,
      );

  int Unadvise() => ptr.ref.lpVtbl.value
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
}
