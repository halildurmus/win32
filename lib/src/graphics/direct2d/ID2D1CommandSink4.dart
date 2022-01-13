// ID2D1CommandSink4.dart

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

import '../../graphics/direct2d/ID2D1CommandSink3.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1CommandSink4 = '{C78A6519-40D6-4218-B2DE-BEEEB744BB3E}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandSink4 extends ID2D1CommandSink3 {
  // vtable begins at 33, is 1 entries long.
  ID2D1CommandSink4(Pointer<COMObject> ptr) : super(ptr);

  int SetPrimitiveBlend2(
    int primitiveBlend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 primitiveBlend,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int primitiveBlend,
          )>()(
        ptr.ref.lpVtbl,
        primitiveBlend,
      );
}
