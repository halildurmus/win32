// ID2D1HwndRenderTarget.dart

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

import '../../graphics/direct2d/ID2D1RenderTarget.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1HwndRenderTarget = '{2CD90698-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1HwndRenderTarget extends ID2D1RenderTarget {
  // vtable begins at 57, is 3 entries long.
  ID2D1HwndRenderTarget(Pointer<COMObject> ptr) : super(ptr);

  int CheckWindowState() => ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Resize(
    Pointer<D2D_SIZE_U> pixelSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_SIZE_U> pixelSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_SIZE_U> pixelSize,
          )>()(
        ptr.ref.lpVtbl,
        pixelSize,
      );

  int GetHwnd() => ptr.ref.lpVtbl.value
          .elementAt(59)
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
}
