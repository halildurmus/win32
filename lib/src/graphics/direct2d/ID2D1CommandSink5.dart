// ID2D1CommandSink5.dart

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

import '../../graphics/direct2d/ID2D1CommandSink4.dart';
import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1CommandSink5 = '{7047DD26-B1E7-44A7-959A-8349E2144FA8}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandSink5 extends ID2D1CommandSink4 {
  // vtable begins at 34, is 1 entries long.
  ID2D1CommandSink5(Pointer<COMObject> ptr) : super(ptr);

  int BlendImage(
    Pointer<COMObject> image,
    int blendMode,
    Pointer<D2D_POINT_2F> targetOffset,
    Pointer<D2D_RECT_F> imageRectangle,
    int interpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> image,
            Uint32 blendMode,
            Pointer<D2D_POINT_2F> targetOffset,
            Pointer<D2D_RECT_F> imageRectangle,
            Uint32 interpolationMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> image,
            int blendMode,
            Pointer<D2D_POINT_2F> targetOffset,
            Pointer<D2D_RECT_F> imageRectangle,
            int interpolationMode,
          )>()(
        ptr.ref.lpVtbl,
        image,
        blendMode,
        targetOffset,
        imageRectangle,
        interpolationMode,
      );
}
