// IDCompositionVirtualSurface.dart

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

import '../../graphics/directcomposition/IDCompositionSurface.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDCompositionVirtualSurface =
    '{AE471C51-5F53-4A24-8D3E-D0C39C30B3F0}';

/// {@category Interface}
/// {@category com}
class IDCompositionVirtualSurface extends IDCompositionSurface {
  // vtable begins at 8, is 2 entries long.
  IDCompositionVirtualSurface(Pointer<COMObject> ptr) : super(ptr);

  int Resize(
    int width,
    int height,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 width,
            Uint32 height,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int width,
            int height,
          )>()(
        ptr.ref.lpVtbl,
        width,
        height,
      );

  int Trim(
    Pointer<RECT> rectangles,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> rectangles,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> rectangles,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        rectangles,
        count,
      );
}
