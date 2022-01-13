// IDWriteRenderingParams3.dart

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

import '../../graphics/directwrite/IDWriteRenderingParams2.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteRenderingParams3 = '{B7924BAA-391B-412A-8C5C-E44CC2D867DC}';

/// {@category Interface}
/// {@category com}
class IDWriteRenderingParams3 extends IDWriteRenderingParams2 {
  // vtable begins at 10, is 1 entries long.
  IDWriteRenderingParams3(Pointer<COMObject> ptr) : super(ptr);

  int GetRenderingMode1() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
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
