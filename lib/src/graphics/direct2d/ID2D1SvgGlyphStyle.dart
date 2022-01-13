// ID2D1SvgGlyphStyle.dart

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
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1SvgGlyphStyle = '{AF671749-D241-4DB8-8E41-DCC2E5C1A438}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgGlyphStyle extends ID2D1Resource {
  // vtable begins at 4, is 5 entries long.
  ID2D1SvgGlyphStyle(Pointer<COMObject> ptr) : super(ptr);

  int SetFill(
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> brush,
          )>()(
        ptr.ref.lpVtbl,
        brush,
      );

  void GetFill(
    Pointer<Pointer<COMObject>> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>()(
        ptr.ref.lpVtbl,
        brush,
      );

  int SetStroke(
    Pointer<COMObject> brush,
    double strokeWidth,
    Pointer<Float> dashes,
    int dashesCount,
    double dashOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> brush,
            Float strokeWidth,
            Pointer<Float> dashes,
            Uint32 dashesCount,
            Float dashOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> brush,
            double strokeWidth,
            Pointer<Float> dashes,
            int dashesCount,
            double dashOffset,
          )>()(
        ptr.ref.lpVtbl,
        brush,
        strokeWidth,
        dashes,
        dashesCount,
        dashOffset,
      );

  int GetStrokeDashesCount() => ptr.ref.lpVtbl.value
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

  void GetStroke(
    Pointer<Pointer<COMObject>> brush,
    Pointer<Float> strokeWidth,
    Pointer<Float> dashes,
    int dashesCount,
    Pointer<Float> dashOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
            Pointer<Float> strokeWidth,
            Pointer<Float> dashes,
            Uint32 dashesCount,
            Pointer<Float> dashOffset,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
            Pointer<Float> strokeWidth,
            Pointer<Float> dashes,
            int dashesCount,
            Pointer<Float> dashOffset,
          )>()(
        ptr.ref.lpVtbl,
        brush,
        strokeWidth,
        dashes,
        dashesCount,
        dashOffset,
      );
}
