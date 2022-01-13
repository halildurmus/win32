// ID2D1InkStyle.dart

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
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1InkStyle = '{BAE8B344-23FC-4071-8CB5-D05D6F073848}';

/// {@category Interface}
/// {@category com}
class ID2D1InkStyle extends ID2D1Resource {
  // vtable begins at 4, is 4 entries long.
  ID2D1InkStyle(Pointer<COMObject> ptr) : super(ptr);

  void SetNibTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  void GetNibTransform(
    Pointer<D2D_MATRIX_3X2_F> transform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D_MATRIX_3X2_F> transform,
          )>()(
        ptr.ref.lpVtbl,
        transform,
      );

  void SetNibShape(
    int nibShape,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 nibShape,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int nibShape,
          )>()(
        ptr.ref.lpVtbl,
        nibShape,
      );

  int GetNibShape() => ptr.ref.lpVtbl.value
          .elementAt(7)
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
