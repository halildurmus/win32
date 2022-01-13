// ITextServices2.dart

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

import '../../../ui/controls/richedit/ITextServices.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct2d/ID2D1RenderTarget.dart';

/// @nodoc
const IID_ITextServices2 = 'null';

/// {@category Interface}
/// {@category com}
class ITextServices2 extends ITextServices {
  // vtable begins at 21, is 2 entries long.
  ITextServices2(Pointer<COMObject> ptr) : super(ptr);

  int TxGetNaturalSize2(
    int dwAspect,
    int hdcDraw,
    int hicTargetDev,
    Pointer<DVTARGETDEVICE> ptd,
    int dwMode,
    Pointer<SIZE> psizelExtent,
    Pointer<Int32> pwidth,
    Pointer<Int32> pheight,
    Pointer<Int32> pascent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAspect,
            IntPtr hdcDraw,
            IntPtr hicTargetDev,
            Pointer<DVTARGETDEVICE> ptd,
            Uint32 dwMode,
            Pointer<SIZE> psizelExtent,
            Pointer<Int32> pwidth,
            Pointer<Int32> pheight,
            Pointer<Int32> pascent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAspect,
            int hdcDraw,
            int hicTargetDev,
            Pointer<DVTARGETDEVICE> ptd,
            int dwMode,
            Pointer<SIZE> psizelExtent,
            Pointer<Int32> pwidth,
            Pointer<Int32> pheight,
            Pointer<Int32> pascent,
          )>()(
        ptr.ref.lpVtbl,
        dwAspect,
        hdcDraw,
        hicTargetDev,
        ptd,
        dwMode,
        psizelExtent,
        pwidth,
        pheight,
        pascent,
      );

  int TxDrawD2D(
    Pointer<COMObject> pRenderTarget,
    Pointer<RECTL> lprcBounds,
    Pointer<RECT> lprcUpdate,
    int lViewId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer<RECTL> lprcBounds,
            Pointer<RECT> lprcUpdate,
            Int32 lViewId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRenderTarget,
            Pointer<RECTL> lprcBounds,
            Pointer<RECT> lprcUpdate,
            int lViewId,
          )>()(
        ptr.ref.lpVtbl,
        pRenderTarget,
        lprcBounds,
        lprcUpdate,
        lViewId,
      );
}
