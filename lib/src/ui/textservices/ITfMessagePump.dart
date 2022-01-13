// ITfMessagePump.dart

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
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfMessagePump = '{8F1B8AD8-0B6B-4874-90C5-BD76011E8F7C}';

/// {@category Interface}
/// {@category com}
class ITfMessagePump extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfMessagePump(Pointer<COMObject> ptr) : super(ptr);

  int PeekMessageA(
    Pointer<MSG> pMsg,
    int hwnd,
    int wMsgFilterMin,
    int wMsgFilterMax,
    int wRemoveMsg,
    Pointer<Int32> pfResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pMsg,
            IntPtr hwnd,
            Uint32 wMsgFilterMin,
            Uint32 wMsgFilterMax,
            Uint32 wRemoveMsg,
            Pointer<Int32> pfResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pMsg,
            int hwnd,
            int wMsgFilterMin,
            int wMsgFilterMax,
            int wRemoveMsg,
            Pointer<Int32> pfResult,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        hwnd,
        wMsgFilterMin,
        wMsgFilterMax,
        wRemoveMsg,
        pfResult,
      );

  int GetMessageA(
    Pointer<MSG> pMsg,
    int hwnd,
    int wMsgFilterMin,
    int wMsgFilterMax,
    Pointer<Int32> pfResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pMsg,
            IntPtr hwnd,
            Uint32 wMsgFilterMin,
            Uint32 wMsgFilterMax,
            Pointer<Int32> pfResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pMsg,
            int hwnd,
            int wMsgFilterMin,
            int wMsgFilterMax,
            Pointer<Int32> pfResult,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        hwnd,
        wMsgFilterMin,
        wMsgFilterMax,
        pfResult,
      );

  int PeekMessageW(
    Pointer<MSG> pMsg,
    int hwnd,
    int wMsgFilterMin,
    int wMsgFilterMax,
    int wRemoveMsg,
    Pointer<Int32> pfResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pMsg,
            IntPtr hwnd,
            Uint32 wMsgFilterMin,
            Uint32 wMsgFilterMax,
            Uint32 wRemoveMsg,
            Pointer<Int32> pfResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pMsg,
            int hwnd,
            int wMsgFilterMin,
            int wMsgFilterMax,
            int wRemoveMsg,
            Pointer<Int32> pfResult,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        hwnd,
        wMsgFilterMin,
        wMsgFilterMax,
        wRemoveMsg,
        pfResult,
      );

  int GetMessageW(
    Pointer<MSG> pMsg,
    int hwnd,
    int wMsgFilterMin,
    int wMsgFilterMax,
    Pointer<Int32> pfResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pMsg,
            IntPtr hwnd,
            Uint32 wMsgFilterMin,
            Uint32 wMsgFilterMax,
            Pointer<Int32> pfResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pMsg,
            int hwnd,
            int wMsgFilterMin,
            int wMsgFilterMax,
            Pointer<Int32> pfResult,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        hwnd,
        wMsgFilterMin,
        wMsgFilterMax,
        pfResult,
      );
}
