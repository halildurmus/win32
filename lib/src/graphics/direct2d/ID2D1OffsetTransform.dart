// ID2D1OffsetTransform.dart

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
const IID_ID2D1OffsetTransform = '{3FE6ADEA-7643-4F53-BD14-A0CE63F24042}';

/// {@category Interface}
/// {@category com}
class ID2D1OffsetTransform extends ID2D1TransformNode {
  // vtable begins at 4, is 2 entries long.
  ID2D1OffsetTransform(Pointer<COMObject> ptr) : super(ptr);

  void SetOffset(
    POINT offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            POINT offset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            POINT offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  POINT GetOffset() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      POINT Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              POINT Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
