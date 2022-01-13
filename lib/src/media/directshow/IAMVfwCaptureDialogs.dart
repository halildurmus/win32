// IAMVfwCaptureDialogs.dart

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
const IID_IAMVfwCaptureDialogs = '{D8D715A0-6E5E-11D0-B3F0-00AA003761C5}';

/// {@category Interface}
/// {@category com}
class IAMVfwCaptureDialogs extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMVfwCaptureDialogs(Pointer<COMObject> ptr) : super(ptr);

  int HasDialog(
    int iDialog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iDialog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iDialog,
          )>()(
        ptr.ref.lpVtbl,
        iDialog,
      );

  int ShowDialog(
    int iDialog,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int SendDriverMessage(
    int iDialog,
    int uMsg,
    int dw1,
    int dw2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iDialog,
            Int32 uMsg,
            Int32 dw1,
            Int32 dw2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iDialog,
            int uMsg,
            int dw1,
            int dw2,
          )>()(
        ptr.ref.lpVtbl,
        iDialog,
        uMsg,
        dw1,
        dw2,
      );
}
