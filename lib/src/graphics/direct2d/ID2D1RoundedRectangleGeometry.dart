// ID2D1RoundedRectangleGeometry.dart

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

import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1RoundedRectangleGeometry =
    '{2CD906A3-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1RoundedRectangleGeometry extends ID2D1Geometry {
  // vtable begins at 17, is 1 entries long.
  ID2D1RoundedRectangleGeometry(Pointer<COMObject> ptr) : super(ptr);

  void GetRoundedRect(
    Pointer<D2D1_ROUNDED_RECT> roundedRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRect,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_ROUNDED_RECT> roundedRect,
          )>()(
        ptr.ref.lpVtbl,
        roundedRect,
      );
}
