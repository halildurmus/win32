// ITextServices.dart

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
import '../../../system/com/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../system/ole/IDropTarget.dart';

/// @nodoc
const IID_ITextServices = 'null';

/// {@category Interface}
/// {@category com}
class ITextServices extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  ITextServices(Pointer<COMObject> ptr) : super(ptr);

  int TxSendMessage(
    int msg,
    int wparam,
    int lparam,
    Pointer<IntPtr> plresult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 msg,
            IntPtr wparam,
            IntPtr lparam,
            Pointer<IntPtr> plresult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msg,
            int wparam,
            int lparam,
            Pointer<IntPtr> plresult,
          )>()(
        ptr.ref.lpVtbl,
        msg,
        wparam,
        lparam,
        plresult,
      );

  int TxDraw(
    int dwDrawAspect,
    int lindex,
    Pointer pvAspect,
    Pointer<DVTARGETDEVICE> ptd,
    int hdcDraw,
    int hicTargetDev,
    Pointer<RECTL> lprcBounds,
    Pointer<RECTL> lprcWBounds,
    Pointer<RECT> lprcUpdate,
    int pfnContinue,
    int dwContinue,
    int lViewId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwDrawAspect,
            Int32 lindex,
            Pointer pvAspect,
            Pointer<DVTARGETDEVICE> ptd,
            IntPtr hdcDraw,
            IntPtr hicTargetDev,
            Pointer<RECTL> lprcBounds,
            Pointer<RECTL> lprcWBounds,
            Pointer<RECT> lprcUpdate,
            IntPtr pfnContinue,
            Uint32 dwContinue,
            Int32 lViewId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDrawAspect,
            int lindex,
            Pointer pvAspect,
            Pointer<DVTARGETDEVICE> ptd,
            int hdcDraw,
            int hicTargetDev,
            Pointer<RECTL> lprcBounds,
            Pointer<RECTL> lprcWBounds,
            Pointer<RECT> lprcUpdate,
            int pfnContinue,
            int dwContinue,
            int lViewId,
          )>()(
        ptr.ref.lpVtbl,
        dwDrawAspect,
        lindex,
        pvAspect,
        ptd,
        hdcDraw,
        hicTargetDev,
        lprcBounds,
        lprcWBounds,
        lprcUpdate,
        pfnContinue,
        dwContinue,
        lViewId,
      );

  int TxGetHScroll(
    Pointer<Int32> plMin,
    Pointer<Int32> plMax,
    Pointer<Int32> plPos,
    Pointer<Int32> plPage,
    Pointer<Int32> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMin,
            Pointer<Int32> plMax,
            Pointer<Int32> plPos,
            Pointer<Int32> plPage,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMin,
            Pointer<Int32> plMax,
            Pointer<Int32> plPos,
            Pointer<Int32> plPage,
            Pointer<Int32> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        plMin,
        plMax,
        plPos,
        plPage,
        pfEnabled,
      );

  int TxGetVScroll(
    Pointer<Int32> plMin,
    Pointer<Int32> plMax,
    Pointer<Int32> plPos,
    Pointer<Int32> plPage,
    Pointer<Int32> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMin,
            Pointer<Int32> plMax,
            Pointer<Int32> plPos,
            Pointer<Int32> plPage,
            Pointer<Int32> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMin,
            Pointer<Int32> plMax,
            Pointer<Int32> plPos,
            Pointer<Int32> plPage,
            Pointer<Int32> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        plMin,
        plMax,
        plPos,
        plPage,
        pfEnabled,
      );

  int OnTxSetCursor(
    int dwDrawAspect,
    int lindex,
    Pointer pvAspect,
    Pointer<DVTARGETDEVICE> ptd,
    int hdcDraw,
    int hicTargetDev,
    Pointer<RECT> lprcClient,
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwDrawAspect,
            Int32 lindex,
            Pointer pvAspect,
            Pointer<DVTARGETDEVICE> ptd,
            IntPtr hdcDraw,
            IntPtr hicTargetDev,
            Pointer<RECT> lprcClient,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDrawAspect,
            int lindex,
            Pointer pvAspect,
            Pointer<DVTARGETDEVICE> ptd,
            int hdcDraw,
            int hicTargetDev,
            Pointer<RECT> lprcClient,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        dwDrawAspect,
        lindex,
        pvAspect,
        ptd,
        hdcDraw,
        hicTargetDev,
        lprcClient,
        x,
        y,
      );

  int TxQueryHitPoint(
    int dwDrawAspect,
    int lindex,
    Pointer pvAspect,
    Pointer<DVTARGETDEVICE> ptd,
    int hdcDraw,
    int hicTargetDev,
    Pointer<RECT> lprcClient,
    int x,
    int y,
    Pointer<Uint32> pHitResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwDrawAspect,
            Int32 lindex,
            Pointer pvAspect,
            Pointer<DVTARGETDEVICE> ptd,
            IntPtr hdcDraw,
            IntPtr hicTargetDev,
            Pointer<RECT> lprcClient,
            Int32 x,
            Int32 y,
            Pointer<Uint32> pHitResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDrawAspect,
            int lindex,
            Pointer pvAspect,
            Pointer<DVTARGETDEVICE> ptd,
            int hdcDraw,
            int hicTargetDev,
            Pointer<RECT> lprcClient,
            int x,
            int y,
            Pointer<Uint32> pHitResult,
          )>()(
        ptr.ref.lpVtbl,
        dwDrawAspect,
        lindex,
        pvAspect,
        ptd,
        hdcDraw,
        hicTargetDev,
        lprcClient,
        x,
        y,
        pHitResult,
      );

  int OnTxInPlaceActivate(
    Pointer<RECT> prcClient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcClient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcClient,
          )>()(
        ptr.ref.lpVtbl,
        prcClient,
      );

  int OnTxInPlaceDeactivate() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int OnTxUIActivate() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int OnTxUIDeactivate() => ptr.ref.lpVtbl.value
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

  int TxGetText(
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrText,
          )>()(
        ptr.ref.lpVtbl,
        pbstrText,
      );

  int TxSetText(
    Pointer<Utf16> pszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszText,
          )>()(
        ptr.ref.lpVtbl,
        pszText,
      );

  int TxGetCurTargetX(
    Pointer<Int32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int TxGetBaseLinePos(
    Pointer<Int32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int TxGetNaturalSize(
    int dwAspect,
    int hdcDraw,
    int hicTargetDev,
    Pointer<DVTARGETDEVICE> ptd,
    int dwMode,
    Pointer<SIZE> psizelExtent,
    Pointer<Int32> pwidth,
    Pointer<Int32> pheight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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
      );

  int TxGetDropTarget(
    Pointer<Pointer<COMObject>> ppDropTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDropTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDropTarget,
          )>()(
        ptr.ref.lpVtbl,
        ppDropTarget,
      );

  int OnTxPropertyBitsChange(
    int dwMask,
    int dwBits,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMask,
            Uint32 dwBits,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMask,
            int dwBits,
          )>()(
        ptr.ref.lpVtbl,
        dwMask,
        dwBits,
      );

  int TxGetCachedSize(
    Pointer<Uint32> pdwWidth,
    Pointer<Uint32> pdwHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwWidth,
            Pointer<Uint32> pdwHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwWidth,
            Pointer<Uint32> pdwHeight,
          )>()(
        ptr.ref.lpVtbl,
        pdwWidth,
        pdwHeight,
      );
}
