// ID2D1BitmapRenderTarget.dart

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
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1BitmapRenderTarget = '{2CD90695-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1BitmapRenderTarget extends ID2D1RenderTarget {
  // vtable begins at 57, is 1 entries long.
  ID2D1BitmapRenderTarget(Pointer<COMObject> ptr) : super(ptr);

  int GetBitmap(
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
      );
}
