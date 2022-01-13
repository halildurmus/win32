// IFullScreenVideoEx.dart

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

import '../../media/directshow/IFullScreenVideo.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IFullScreenVideoEx = 'null';

/// {@category Interface}
/// {@category com}
class IFullScreenVideoEx extends IFullScreenVideo {
  // vtable begins at 20, is 4 entries long.
  IFullScreenVideoEx(Pointer<COMObject> ptr) : super(ptr);

  int SetAcceleratorTable(
    int hwnd,
    int hAccel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            IntPtr hAccel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int hAccel,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        hAccel,
      );

  int GetAcceleratorTable(
    Pointer<IntPtr> phwnd,
    Pointer<IntPtr> phAccel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwnd,
            Pointer<IntPtr> phAccel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwnd,
            Pointer<IntPtr> phAccel,
          )>()(
        ptr.ref.lpVtbl,
        phwnd,
        phAccel,
      );

  int KeepPixelAspectRatio(
    int KeepAspect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 KeepAspect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int KeepAspect,
          )>()(
        ptr.ref.lpVtbl,
        KeepAspect,
      );

  int IsKeepPixelAspectRatio(
    Pointer<Int32> pKeepAspect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pKeepAspect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pKeepAspect,
          )>()(
        ptr.ref.lpVtbl,
        pKeepAspect,
      );
}
