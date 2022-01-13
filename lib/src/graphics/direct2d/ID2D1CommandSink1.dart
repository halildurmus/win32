// ID2D1CommandSink1.dart

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

import '../../graphics/direct2d/ID2D1CommandSink.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1CommandSink1 = '{9EB767FD-4269-4467-B8C2-EB30CB305743}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandSink1 extends ID2D1CommandSink {
  // vtable begins at 28, is 1 entries long.
  ID2D1CommandSink1(Pointer<COMObject> ptr) : super(ptr);

  int SetPrimitiveBlend1(
    int primitiveBlend,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
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
