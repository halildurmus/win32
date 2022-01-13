// ID2D1BoundsAdjustmentTransform.dart

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

import '../../graphics/direct2d/ID2D1TransformNode.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1BoundsAdjustmentTransform =
    '{90F732E2-5092-4606-A819-8651970BACCD}';

/// {@category Interface}
/// {@category com}
class ID2D1BoundsAdjustmentTransform extends ID2D1TransformNode {
  // vtable begins at 4, is 2 entries long.
  ID2D1BoundsAdjustmentTransform(Pointer<COMObject> ptr) : super(ptr);

  void SetOutputBounds(
    Pointer<RECT> outputBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<RECT> outputBounds,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<RECT> outputBounds,
          )>()(
        ptr.ref.lpVtbl,
        outputBounds,
      );

  void GetOutputBounds(
    Pointer<RECT> outputBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<RECT> outputBounds,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<RECT> outputBounds,
          )>()(
        ptr.ref.lpVtbl,
        outputBounds,
      );
}
