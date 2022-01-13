// IOverlayNotify.dart

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

/// @nodoc
const IID_IOverlayNotify = '{56A868A0-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IOverlayNotify extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IOverlayNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnPaletteChange(
    int dwColors,
    Pointer<PALETTEENTRY> pPalette,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int OnClipChange(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestinationRect,
    Pointer<RGNDATA> pRgnData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestinationRect,
            Pointer<RGNDATA> pRgnData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSourceRect,
            Pointer<RECT> pDestinationRect,
            Pointer<RGNDATA> pRgnData,
          )>()(
        ptr.ref.lpVtbl,
        pSourceRect,
        pDestinationRect,
        pRgnData,
      );

  int OnColorKeyChange(
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

  int OnPositionChange(
    Pointer<RECT> pSourceRect,
    Pointer<RECT> pDestinationRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
}
