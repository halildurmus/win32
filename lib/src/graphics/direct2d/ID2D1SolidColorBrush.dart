// ID2D1SolidColorBrush.dart

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
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1SolidColorBrush = '{2CD906A9-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1SolidColorBrush extends ID2D1Brush {
  // vtable begins at 8, is 2 entries long.
  ID2D1SolidColorBrush(Pointer<COMObject> ptr) : super(ptr);

  void SetColor(
    Pointer<D2D1_COLOR_F> color,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_COLOR_F> color,
          )>()(
        ptr.ref.lpVtbl,
        color,
      );

  D2D1_COLOR_F GetColor() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D1_COLOR_F Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D1_COLOR_F Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
