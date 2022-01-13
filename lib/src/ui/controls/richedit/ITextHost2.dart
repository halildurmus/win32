// ITextHost2.dart

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

import '../../../ui/controls/richedit/ITextHost.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_ITextHost2 = 'null';

/// {@category Interface}
/// {@category com}
class ITextHost2 extends ITextHost {
  // vtable begins at 42, is 12 entries long.
  ITextHost2(Pointer<COMObject> ptr) : super(ptr);

  int TxIsDoubleClickPending() => ptr.ref.lpVtbl.value
          .elementAt(42)
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

  int TxGetWindow(
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
      );

  int TxSetForegroundWindow() => ptr.ref.lpVtbl.value
          .elementAt(44)
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

  int TxGetPalette() => ptr.ref.lpVtbl.value
          .elementAt(45)
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

  int TxGetEastAsianFlags(
    Pointer<Int32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );

  int TxSetCursor2(
    int hcur,
    int bText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            IntPtr hcur,
            Int32 bText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hcur,
            int bText,
          )>()(
        ptr.ref.lpVtbl,
        hcur,
        bText,
      );

  void TxFreeTextServicesNotification() => ptr.ref.lpVtbl.value
          .elementAt(48)
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

  int TxGetEditStyle(
    int dwItem,
    Pointer<Uint32> pdwData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwItem,
            Pointer<Uint32> pdwData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwItem,
            Pointer<Uint32> pdwData,
          )>()(
        ptr.ref.lpVtbl,
        dwItem,
        pdwData,
      );

  int TxGetWindowStyles(
    Pointer<Uint32> pdwStyle,
    Pointer<Uint32> pdwExStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStyle,
            Pointer<Uint32> pdwExStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStyle,
            Pointer<Uint32> pdwExStyle,
          )>()(
        ptr.ref.lpVtbl,
        pdwStyle,
        pdwExStyle,
      );

  int TxShowDropCaret(
    int fShow,
    int hdc,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
            IntPtr hdc,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
            int hdc,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
        hdc,
        prc,
      );

  int TxDestroyCaret() => ptr.ref.lpVtbl.value
          .elementAt(52)
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

  int TxGetHorzExtent(
    Pointer<Int32> plHorzExtent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plHorzExtent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plHorzExtent,
          )>()(
        ptr.ref.lpVtbl,
        plHorzExtent,
      );
}
