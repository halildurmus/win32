// ID2D1BitmapBrush.dart

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

import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1Bitmap.dart';

/// @nodoc
const IID_ID2D1BitmapBrush = '{2CD906AA-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1BitmapBrush extends ID2D1Brush {
  // vtable begins at 8, is 8 entries long.
  ID2D1BitmapBrush(Pointer<COMObject> ptr) : super(ptr);

  void SetExtendModeX(
    int extendModeX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 extendModeX,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int extendModeX,
          )>()(
        ptr.ref.lpVtbl,
        extendModeX,
      );

  void SetExtendModeY(
    int extendModeY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 extendModeY,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int extendModeY,
          )>()(
        ptr.ref.lpVtbl,
        extendModeY,
      );

  void SetInterpolationMode(
    int interpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 interpolationMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int interpolationMode,
          )>()(
        ptr.ref.lpVtbl,
        interpolationMode,
      );

  void SetBitmap(
    Pointer<COMObject> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> bitmap,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
      );

  int GetExtendModeX() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetExtendModeY() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetInterpolationMode() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  void GetBitmap(
    Pointer<Pointer<COMObject>> bitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> bitmap,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> bitmap,
          )>()(
        ptr.ref.lpVtbl,
        bitmap,
      );
}
