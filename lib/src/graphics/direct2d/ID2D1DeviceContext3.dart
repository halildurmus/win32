// ID2D1DeviceContext3.dart

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

import '../../graphics/direct2d/ID2D1DeviceContext2.dart';
import '../../graphics/direct2d/ID2D1SpriteBatch.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1DeviceContext3 = '{235A7496-8351-414C-BCD4-6672AB2D8E00}';

/// {@category Interface}
/// {@category com}
class ID2D1DeviceContext3 extends ID2D1DeviceContext2 {
  // vtable begins at 106, is 2 entries long.
  ID2D1DeviceContext3(Pointer<COMObject> ptr) : super(ptr);

  int CreateSpriteBatch(
    Pointer<Pointer<COMObject>> spriteBatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(106)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> spriteBatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> spriteBatch,
          )>()(
        ptr.ref.lpVtbl,
        spriteBatch,
      );

  void DrawSpriteBatch(
    Pointer<COMObject> spriteBatch,
    int startIndex,
    int spriteCount,
    Pointer<COMObject> bitmap,
    int interpolationMode,
    int spriteOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(107)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
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
              void Function(
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
