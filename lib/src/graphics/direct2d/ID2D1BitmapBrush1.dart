// ID2D1BitmapBrush1.dart

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

import '../../graphics/direct2d/ID2D1BitmapBrush.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1BitmapBrush1 = '{41343A53-E41A-49A2-91CD-21793BBB62E5}';

/// {@category Interface}
/// {@category com}
class ID2D1BitmapBrush1 extends ID2D1BitmapBrush {
  // vtable begins at 16, is 2 entries long.
  ID2D1BitmapBrush1(Pointer<COMObject> ptr) : super(ptr);

  void SetInterpolationMode1(
    int interpolationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetInterpolationMode1() => ptr.ref.lpVtbl.value
          .elementAt(17)
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
}
