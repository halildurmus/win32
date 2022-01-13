// ITextHost.dart

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
import '../../../graphics/gdi/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/windowsandmessaging/structs.g.dart';
import '../../../ui/controls/structs.g.dart';
import '../../../ui/controls/richedit/structs.g.dart';
import '../../../globalization/structs.g.dart';

/// @nodoc
const IID_ITextHost = 'null';

/// {@category Interface}
/// {@category com}
class ITextHost extends IUnknown {
  // vtable begins at 3, is 39 entries long.
  ITextHost(Pointer<COMObject> ptr) : super(ptr);

  int TxGetDC() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int TxReleaseDC(
    int hdc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
      );

  int TxShowScrollBar(
    int fnBar,
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fnBar,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fnBar,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fnBar,
        fShow,
      );

  int TxEnableScrollBar(
    int fuSBFlags,
    int fuArrowflags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuSBFlags,
            Uint32 fuArrowflags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuSBFlags,
            int fuArrowflags,
          )>()(
        ptr.ref.lpVtbl,
        fuSBFlags,
        fuArrowflags,
      );

  int TxSetScrollRange(
    int fnBar,
    int nMinPos,
    int nMaxPos,
    int fRedraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fnBar,
            Int32 nMinPos,
            Int32 nMaxPos,
            Int32 fRedraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fnBar,
            int nMinPos,
            int nMaxPos,
            int fRedraw,
          )>()(
        ptr.ref.lpVtbl,
        fnBar,
        nMinPos,
        nMaxPos,
        fRedraw,
      );

  int TxSetScrollPos(
    int fnBar,
    int nPos,
    int fRedraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fnBar,
            Int32 nPos,
            Int32 fRedraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fnBar,
            int nPos,
            int fRedraw,
          )>()(
        ptr.ref.lpVtbl,
        fnBar,
        nPos,
        fRedraw,
      );

  void TxInvalidateRect(
    Pointer<RECT> prc,
    int fMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<RECT> prc,
            Int32 fMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<RECT> prc,
            int fMode,
          )>()(
        ptr.ref.lpVtbl,
        prc,
        fMode,
      );

  void TxViewChange(
    int fUpdate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 fUpdate,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int fUpdate,
          )>()(
        ptr.ref.lpVtbl,
        fUpdate,
      );

  int TxCreateCaret(
    int hbmp,
    int xWidth,
    int yHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hbmp,
            Int32 xWidth,
            Int32 yHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hbmp,
            int xWidth,
            int yHeight,
          )>()(
        ptr.ref.lpVtbl,
        hbmp,
        xWidth,
        yHeight,
      );

  int TxShowCaret(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );

  int TxSetCaretPos(
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
      );

  int TxSetTimer(
    int idTimer,
    int uTimeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idTimer,
            Uint32 uTimeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idTimer,
            int uTimeout,
          )>()(
        ptr.ref.lpVtbl,
        idTimer,
        uTimeout,
      );

  void TxKillTimer(
    int idTimer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 idTimer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int idTimer,
          )>()(
        ptr.ref.lpVtbl,
        idTimer,
      );

  void TxScrollWindowEx(
    int dx,
    int dy,
    Pointer<RECT> lprcScroll,
    Pointer<RECT> lprcClip,
    int hrgnUpdate,
    Pointer<RECT> lprcUpdate,
    int fuScroll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 dx,
            Int32 dy,
            Pointer<RECT> lprcScroll,
            Pointer<RECT> lprcClip,
            IntPtr hrgnUpdate,
            Pointer<RECT> lprcUpdate,
            Uint32 fuScroll,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dx,
            int dy,
            Pointer<RECT> lprcScroll,
            Pointer<RECT> lprcClip,
            int hrgnUpdate,
            Pointer<RECT> lprcUpdate,
            int fuScroll,
          )>()(
        ptr.ref.lpVtbl,
        dx,
        dy,
        lprcScroll,
        lprcClip,
        hrgnUpdate,
        lprcUpdate,
        fuScroll,
      );

  void TxSetCapture(
    int fCapture,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 fCapture,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int fCapture,
          )>()(
        ptr.ref.lpVtbl,
        fCapture,
      );

  void TxSetFocus() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void TxSetCursor(
    int hcur,
    int fText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            IntPtr hcur,
            Int32 fText,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int hcur,
            int fText,
          )>()(
        ptr.ref.lpVtbl,
        hcur,
        fText,
      );

  int TxScreenToClient(
    Pointer<POINT> lppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> lppt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> lppt,
          )>()(
        ptr.ref.lpVtbl,
        lppt,
      );

  int TxClientToScreen(
    Pointer<POINT> lppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> lppt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> lppt,
          )>()(
        ptr.ref.lpVtbl,
        lppt,
      );

  int TxActivate(
    Pointer<Int32> plOldState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plOldState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plOldState,
          )>()(
        ptr.ref.lpVtbl,
        plOldState,
      );

  int TxDeactivate(
    int lNewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lNewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lNewState,
          )>()(
        ptr.ref.lpVtbl,
        lNewState,
      );

  int TxGetClientRect(
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        prc,
      );

  int TxGetViewInset(
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        prc,
      );

  int TxGetCharFormat(
    Pointer<Pointer<CHARFORMAT>> ppCF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<CHARFORMAT>> ppCF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<CHARFORMAT>> ppCF,
          )>()(
        ptr.ref.lpVtbl,
        ppCF,
      );

  int TxGetParaFormat(
    Pointer<Pointer<PARAFORMAT>> ppPF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<PARAFORMAT>> ppPF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<PARAFORMAT>> ppPF,
          )>()(
        ptr.ref.lpVtbl,
        ppPF,
      );

  int TxGetSysColor(
    int nIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Int32 nIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
      );

  int TxGetBackStyle(
    Pointer<Int32> pstyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pstyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pstyle,
          )>()(
        ptr.ref.lpVtbl,
        pstyle,
      );

  int TxGetMaxLength(
    Pointer<Uint32> plength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> plength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> plength,
          )>()(
        ptr.ref.lpVtbl,
        plength,
      );

  int TxGetScrollBars(
    Pointer<Uint32> pdwScrollBar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwScrollBar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwScrollBar,
          )>()(
        ptr.ref.lpVtbl,
        pdwScrollBar,
      );

  int TxGetPasswordChar(
    Pointer<Int8> pch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int8> pch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int8> pch,
          )>()(
        ptr.ref.lpVtbl,
        pch,
      );

  int TxGetAcceleratorPos(
    Pointer<Int32> pcp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcp,
          )>()(
        ptr.ref.lpVtbl,
        pcp,
      );

  int TxGetExtent(
    Pointer<SIZE> lpExtent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> lpExtent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> lpExtent,
          )>()(
        ptr.ref.lpVtbl,
        lpExtent,
      );

  int OnTxCharFormatChange(
    Pointer<CHARFORMAT> pCF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CHARFORMAT> pCF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CHARFORMAT> pCF,
          )>()(
        ptr.ref.lpVtbl,
        pCF,
      );

  int OnTxParaFormatChange(
    Pointer<PARAFORMAT> pPF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PARAFORMAT> pPF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PARAFORMAT> pPF,
          )>()(
        ptr.ref.lpVtbl,
        pPF,
      );

  int TxGetPropertyBits(
    int dwMask,
    Pointer<Uint32> pdwBits,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMask,
            Pointer<Uint32> pdwBits,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMask,
            Pointer<Uint32> pdwBits,
          )>()(
        ptr.ref.lpVtbl,
        dwMask,
        pdwBits,
      );

  int TxNotify(
    int iNotify,
    Pointer pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iNotify,
            Pointer pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iNotify,
            Pointer pv,
          )>()(
        ptr.ref.lpVtbl,
        iNotify,
        pv,
      );

  int TxImmGetContext() => ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void TxImmReleaseContext(
    int himc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            IntPtr himc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int himc,
          )>()(
        ptr.ref.lpVtbl,
        himc,
      );

  int TxGetSelectionBarWidth(
    Pointer<Int32> lSelBarWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lSelBarWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lSelBarWidth,
          )>()(
        ptr.ref.lpVtbl,
        lSelBarWidth,
      );
}
