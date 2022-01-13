// IAMWstDecoder.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IAMWstDecoder = 'null';

/// {@category Interface}
/// {@category com}
class IAMWstDecoder extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IAMWstDecoder(Pointer<COMObject> ptr) : super(ptr);

  int GetDecoderLevel(
    Pointer<Int32> lpLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpLevel,
          )>()(
        ptr.ref.lpVtbl,
        lpLevel,
      );

  int GetCurrentService(
    Pointer<Int32> lpService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpService,
          )>()(
        ptr.ref.lpVtbl,
        lpService,
      );

  int GetServiceState(
    Pointer<Int32> lpState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpState,
          )>()(
        ptr.ref.lpVtbl,
        lpState,
      );

  int SetServiceState(
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        State,
      );

  int GetOutputFormat(
    Pointer<BITMAPINFOHEADER> lpbmih,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BITMAPINFOHEADER> lpbmih,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BITMAPINFOHEADER> lpbmih,
          )>()(
        ptr.ref.lpVtbl,
        lpbmih,
      );

  int SetOutputFormat(
    Pointer<BITMAPINFO> lpbmi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BITMAPINFO> lpbmi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BITMAPINFO> lpbmi,
          )>()(
        ptr.ref.lpVtbl,
        lpbmi,
      );

  int GetBackgroundColor(
    Pointer<Uint32> pdwPhysColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPhysColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPhysColor,
          )>()(
        ptr.ref.lpVtbl,
        pdwPhysColor,
      );

  int SetBackgroundColor(
    int dwPhysColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPhysColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPhysColor,
          )>()(
        ptr.ref.lpVtbl,
        dwPhysColor,
      );

  int GetRedrawAlways(
    Pointer<Int32> lpbOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpbOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpbOption,
          )>()(
        ptr.ref.lpVtbl,
        lpbOption,
      );

  int SetRedrawAlways(
    int bOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bOption,
          )>()(
        ptr.ref.lpVtbl,
        bOption,
      );

  int GetDrawBackgroundMode(
    Pointer<Int32> lpMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lpMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lpMode,
          )>()(
        ptr.ref.lpVtbl,
        lpMode,
      );

  int SetDrawBackgroundMode(
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        Mode,
      );

  int SetAnswerMode(
    int bAnswer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bAnswer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bAnswer,
          )>()(
        ptr.ref.lpVtbl,
        bAnswer,
      );

  int GetAnswerMode(
    Pointer<Int32> pbAnswer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbAnswer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbAnswer,
          )>()(
        ptr.ref.lpVtbl,
        pbAnswer,
      );

  int SetHoldPage(
    int bHoldPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bHoldPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bHoldPage,
          )>()(
        ptr.ref.lpVtbl,
        bHoldPage,
      );

  int GetHoldPage(
    Pointer<Int32> pbHoldPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbHoldPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbHoldPage,
          )>()(
        ptr.ref.lpVtbl,
        pbHoldPage,
      );

  int GetCurrentPage(
    Pointer<AM_WST_PAGE> pWstPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_WST_PAGE> pWstPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_WST_PAGE> pWstPage,
          )>()(
        ptr.ref.lpVtbl,
        pWstPage,
      );

  int SetCurrentPage(
    AM_WST_PAGE WstPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            AM_WST_PAGE WstPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            AM_WST_PAGE WstPage,
          )>()(
        ptr.ref.lpVtbl,
        WstPage,
      );
}
