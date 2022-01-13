// IDWriteBitmapRenderTarget1.dart

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

import '../../graphics/directwrite/IDWriteBitmapRenderTarget.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteBitmapRenderTarget1 = '{791E8298-3EF3-4230-9880-C9BDECC42064}';

/// {@category Interface}
/// {@category com}
class IDWriteBitmapRenderTarget1 extends IDWriteBitmapRenderTarget {
  // vtable begins at 11, is 2 entries long.
  IDWriteBitmapRenderTarget1(Pointer<COMObject> ptr) : super(ptr);

  int GetTextAntialiasMode() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetTextAntialiasMode(
    int antialiasMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 antialiasMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int antialiasMode,
          )>()(
        ptr.ref.lpVtbl,
        antialiasMode,
      );
}
