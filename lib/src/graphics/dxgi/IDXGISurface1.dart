// IDXGISurface1.dart

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

import '../../graphics/dxgi/IDXGISurface.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IDXGISurface1 = '{4AE63092-6327-4C1B-80AE-BFE12EA32B86}';

/// {@category Interface}
/// {@category com}
class IDXGISurface1 extends IDXGISurface {
  // vtable begins at 11, is 2 entries long.
  IDXGISurface1(Pointer<COMObject> ptr) : super(ptr);

  int GetDC(
    int Discard,
    Pointer<IntPtr> phdc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Discard,
            Pointer<IntPtr> phdc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Discard,
            Pointer<IntPtr> phdc,
          )>()(
        ptr.ref.lpVtbl,
        Discard,
        phdc,
      );

  int ReleaseDC(
    Pointer<RECT> pDirtyRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pDirtyRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pDirtyRect,
          )>()(
        ptr.ref.lpVtbl,
        pDirtyRect,
      );
}
