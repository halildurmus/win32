// ID2D1CommandSink3.dart

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

import '../../graphics/direct2d/ID2D1CommandSink2.dart';
import '../../graphics/direct2d/ID2D1SpriteBatch.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1CommandSink3 = '{18079135-4CF3-4868-BC8E-06067E6D242D}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandSink3 extends ID2D1CommandSink2 {
  // vtable begins at 32, is 1 entries long.
  ID2D1CommandSink3(Pointer<COMObject> ptr) : super(ptr);

  int DrawSpriteBatch(
    Pointer<COMObject> spriteBatch,
    int startIndex,
    int spriteCount,
    Pointer<COMObject> bitmap,
    int interpolationMode,
    int spriteOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> spriteBatch,
            Uint32 startIndex,
            Uint32 spriteCount,
            Pointer<COMObject> bitmap,
            Uint32 interpolationMode,
            Uint32 spriteOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> spriteBatch,
            int startIndex,
            int spriteCount,
            Pointer<COMObject> bitmap,
            int interpolationMode,
            int spriteOptions,
          )>()(
        ptr.ref.lpVtbl,
        spriteBatch,
        startIndex,
        spriteCount,
        bitmap,
        interpolationMode,
        spriteOptions,
      );
}
