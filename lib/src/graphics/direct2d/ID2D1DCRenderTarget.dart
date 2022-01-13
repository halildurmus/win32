// ID2D1DCRenderTarget.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1DCRenderTarget = '{1C51BC64-DE61-46FD-9899-63A5D8F03950}';

/// {@category Interface}
/// {@category com}
class ID2D1DCRenderTarget extends ID2D1RenderTarget {
  // vtable begins at 57, is 1 entries long.
  ID2D1DCRenderTarget(Pointer<COMObject> ptr) : super(ptr);

  int BindDC(
    int hDC,
    Pointer<RECT> pSubRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Pointer<RECT> pSubRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            Pointer<RECT> pSubRect,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        pSubRect,
      );
}
