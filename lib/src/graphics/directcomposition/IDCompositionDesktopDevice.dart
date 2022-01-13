// IDCompositionDesktopDevice.dart

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

import '../../graphics/directcomposition/IDCompositionDevice2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directcomposition/IDCompositionTarget.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDCompositionDesktopDevice = '{5F4633FE-1E08-4CB8-8C75-CE24333F5602}';

/// {@category Interface}
/// {@category com}
class IDCompositionDesktopDevice extends IDCompositionDevice2 {
  // vtable begins at 24, is 3 entries long.
  IDCompositionDesktopDevice(Pointer<COMObject> ptr) : super(ptr);

  int CreateTargetForHwnd(
    int hwnd,
    int topmost,
    Pointer<Pointer<COMObject>> target,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Int32 topmost,
            Pointer<Pointer<COMObject>> target,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int topmost,
            Pointer<Pointer<COMObject>> target,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        topmost,
        target,
      );

  int CreateSurfaceFromHandle(
    int handle,
    Pointer<Pointer<COMObject>> surface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr handle,
            Pointer<Pointer<COMObject>> surface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int handle,
            Pointer<Pointer<COMObject>> surface,
          )>()(
        ptr.ref.lpVtbl,
        handle,
        surface,
      );

  int CreateSurfaceFromHwnd(
    int hwnd,
    Pointer<Pointer<COMObject>> surface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Pointer<COMObject>> surface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Pointer<COMObject>> surface,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        surface,
      );
}
