// IDWriteRenderingParams2.dart

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

import '../../graphics/directwrite/IDWriteRenderingParams1.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteRenderingParams2 = '{F9D711C3-9777-40AE-87E8-3E5AF9BF0948}';

/// {@category Interface}
/// {@category com}
class IDWriteRenderingParams2 extends IDWriteRenderingParams1 {
  // vtable begins at 9, is 1 entries long.
  IDWriteRenderingParams2(Pointer<COMObject> ptr) : super(ptr);

  int GetGridFitMode() => ptr.ref.lpVtbl.value
          .elementAt(9)
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
