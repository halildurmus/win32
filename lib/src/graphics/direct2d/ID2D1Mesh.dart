// ID2D1Mesh.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/ID2D1TessellationSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1Mesh = '{2CD906C2-12E2-11DC-9FED-001143A055F9}';

/// {@category Interface}
/// {@category com}
class ID2D1Mesh extends ID2D1Resource {
  // vtable begins at 4, is 1 entries long.
  ID2D1Mesh(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Pointer<COMObject>> tessellationSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> tessellationSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> tessellationSink,
          )>()(
        ptr.ref.lpVtbl,
        tessellationSink,
      );
}
