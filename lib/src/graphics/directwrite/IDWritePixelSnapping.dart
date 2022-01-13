// IDWritePixelSnapping.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWritePixelSnapping = '{EAF3A2DA-ECF4-4D24-B644-B34F6842024B}';

/// {@category Interface}
/// {@category com}
class IDWritePixelSnapping extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDWritePixelSnapping(Pointer<COMObject> ptr) : super(ptr);

  int IsPixelSnappingDisabled(
    Pointer clientDrawingContext,
    Pointer<Int32> isDisabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<Int32> isDisabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<Int32> isDisabled,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        isDisabled,
      );

  int GetCurrentTransform(
    Pointer clientDrawingContext,
    Pointer<DWRITE_MATRIX> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<DWRITE_MATRIX> transform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<DWRITE_MATRIX> transform,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        transform,
      );

  int GetPixelsPerDip(
    Pointer clientDrawingContext,
    Pointer<Float> pixelsPerDip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<Float> pixelsPerDip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<Float> pixelsPerDip,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        pixelsPerDip,
      );
}
