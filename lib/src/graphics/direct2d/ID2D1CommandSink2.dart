// ID2D1CommandSink2.dart

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

import '../../graphics/direct2d/ID2D1CommandSink1.dart';
import '../../graphics/direct2d/ID2D1Ink.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/ID2D1InkStyle.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1GradientMesh.dart';
import '../../graphics/direct2d/ID2D1GdiMetafile.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1CommandSink2 = '{3BAB440E-417E-47DF-A2E2-BC0BE6A00916}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandSink2 extends ID2D1CommandSink1 {
  // vtable begins at 29, is 3 entries long.
  ID2D1CommandSink2(Pointer<COMObject> ptr) : super(ptr);

  int DrawInk(
    Pointer<COMObject> ink,
    Pointer<COMObject> brush,
    Pointer<COMObject> inkStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ink,
            Pointer<COMObject> brush,
            Pointer<COMObject> inkStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ink,
            Pointer<COMObject> brush,
            Pointer<COMObject> inkStyle,
          )>()(
        ptr.ref.lpVtbl,
        ink,
        brush,
        inkStyle,
      );

  int DrawGradientMesh(
    Pointer<COMObject> gradientMesh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> gradientMesh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> gradientMesh,
          )>()(
        ptr.ref.lpVtbl,
        gradientMesh,
      );

  int DrawGdiMetafile_1(
    Pointer<COMObject> gdiMetafile,
    Pointer<D2D_RECT_F> destinationRectangle,
    Pointer<D2D_RECT_F> sourceRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> gdiMetafile,
            Pointer<D2D_RECT_F> destinationRectangle,
            Pointer<D2D_RECT_F> sourceRectangle,
          )>()(
        ptr.ref.lpVtbl,
        gdiMetafile,
        destinationRectangle,
        sourceRectangle,
      );
}
