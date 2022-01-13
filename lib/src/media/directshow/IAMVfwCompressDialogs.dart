// IAMVfwCompressDialogs.dart

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

/// @nodoc
const IID_IAMVfwCompressDialogs = '{D8D715A3-6E5E-11D0-B3F0-00AA003761C5}';

/// {@category Interface}
/// {@category com}
class IAMVfwCompressDialogs extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAMVfwCompressDialogs(Pointer<COMObject> ptr) : super(ptr);

  int ShowDialog(
    int iDialog,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iDialog,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iDialog,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        iDialog,
        hwnd,
      );

  int GetState(
    Pointer pState,
    Pointer<Int32> pcbState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pState,
            Pointer<Int32> pcbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pState,
            Pointer<Int32> pcbState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
        pcbState,
      );

  int SetState(
    Pointer pState,
    int cbState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pState,
            Int32 cbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pState,
            int cbState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
        cbState,
      );

  int SendDriverMessage(
    int uMsg,
    int dw1,
    int dw2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 uMsg,
            Int32 dw1,
            Int32 dw2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uMsg,
            int dw1,
            int dw2,
          )>()(
        ptr.ref.lpVtbl,
        uMsg,
        dw1,
        dw2,
      );
}
