// ID2D1GradientMesh.dart

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
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1GradientMesh = '{F292E401-C050-4CDE-83D7-04962D3B23C2}';

/// {@category Interface}
/// {@category com}
class ID2D1GradientMesh extends ID2D1Resource {
  // vtable begins at 4, is 2 entries long.
  ID2D1GradientMesh(Pointer<COMObject> ptr) : super(ptr);

  int GetPatchCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetPatches(
    int startIndex,
    Pointer<D2D1_GRADIENT_MESH_PATCH> patches,
    int patchesCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 startIndex,
            Pointer<D2D1_GRADIENT_MESH_PATCH> patches,
            Uint32 patchesCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int startIndex,
            Pointer<D2D1_GRADIENT_MESH_PATCH> patches,
            int patchesCount,
          )>()(
        ptr.ref.lpVtbl,
        startIndex,
        patches,
        patchesCount,
      );
}
