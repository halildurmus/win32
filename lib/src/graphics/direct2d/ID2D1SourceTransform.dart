// ID2D1SourceTransform.dart

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

import '../../graphics/direct2d/ID2D1Transform.dart';
import '../../graphics/direct2d/ID2D1RenderInfo.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap1.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1SourceTransform = '{DB1800DD-0C34-4CF9-BE90-31CC0A5653E1}';

/// {@category Interface}
/// {@category com}
class ID2D1SourceTransform extends ID2D1Transform {
  // vtable begins at 7, is 2 entries long.
  ID2D1SourceTransform(Pointer<COMObject> ptr) : super(ptr);

  int SetRenderInfo(
    Pointer<COMObject> renderInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> renderInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> renderInfo,
          )>()(
        ptr.ref.lpVtbl,
        renderInfo,
      );

  int Draw(
    Pointer<COMObject> target,
    Pointer<RECT> drawRect,
    D2D_POINT_2U targetOrigin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> target,
            Pointer<RECT> drawRect,
            D2D_POINT_2U targetOrigin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> target,
            Pointer<RECT> drawRect,
            D2D_POINT_2U targetOrigin,
          )>()(
        ptr.ref.lpVtbl,
        target,
        drawRect,
        targetOrigin,
      );
}
