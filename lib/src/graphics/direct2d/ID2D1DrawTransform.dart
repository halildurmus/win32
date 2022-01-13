// ID2D1DrawTransform.dart

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
import '../../graphics/direct2d/ID2D1DrawInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1DrawTransform = '{36BFDCB6-9739-435D-A30D-A653BEFF6A6F}';

/// {@category Interface}
/// {@category com}
class ID2D1DrawTransform extends ID2D1Transform {
  // vtable begins at 7, is 1 entries long.
  ID2D1DrawTransform(Pointer<COMObject> ptr) : super(ptr);

  int SetDrawInfo(
    Pointer<COMObject> drawInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> drawInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> drawInfo,
          )>()(
        ptr.ref.lpVtbl,
        drawInfo,
      );
}
