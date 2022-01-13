// ID2D1SvgDocument.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/ID2D1SvgElement.dart';
import '../../system/com/IStream.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1SvgPaint.dart';
import '../../graphics/direct2d/ID2D1SvgStrokeDashArray.dart';
import '../../graphics/direct2d/ID2D1SvgPointCollection.dart';
import '../../graphics/direct2d/ID2D1SvgPathData.dart';

/// @nodoc
const IID_ID2D1SvgDocument = '{86B88E4D-AFA4-4D7B-88E4-68A51C4A0AEC}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgDocument extends ID2D1Resource {
  // vtable begins at 4, is 11 entries long.
  ID2D1SvgDocument(Pointer<COMObject> ptr) : super(ptr);

  int SetViewportSize(
    D2D_SIZE_F viewportSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            D2D_SIZE_F viewportSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            D2D_SIZE_F viewportSize,
          )>()(
        ptr.ref.lpVtbl,
        viewportSize,
      );

  D2D_SIZE_F GetViewportSize() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      D2D_SIZE_F Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D2D_SIZE_F Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetRoot(
    Pointer<COMObject> root,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> root,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> root,
          )>()(
        ptr.ref.lpVtbl,
        root,
      );

  void GetRoot(
    Pointer<Pointer<COMObject>> root,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> root,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> root,
          )>()(
        ptr.ref.lpVtbl,
        root,
      );

  int FindElementById(
    Pointer<Utf16> id,
    Pointer<Pointer<COMObject>> svgElement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> id,
            Pointer<Pointer<COMObject>> svgElement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> id,
            Pointer<Pointer<COMObject>> svgElement,
          )>()(
        ptr.ref.lpVtbl,
        id,
        svgElement,
      );

  int Serialize(
    Pointer<COMObject> outputXmlStream,
    Pointer<COMObject> subtree,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputXmlStream,
            Pointer<COMObject> subtree,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> outputXmlStream,
            Pointer<COMObject> subtree,
          )>()(
        ptr.ref.lpVtbl,
        outputXmlStream,
        subtree,
      );

  int Deserialize(
    Pointer<COMObject> inputXmlStream,
    Pointer<Pointer<COMObject>> subtree,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inputXmlStream,
            Pointer<Pointer<COMObject>> subtree,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inputXmlStream,
            Pointer<Pointer<COMObject>> subtree,
          )>()(
        ptr.ref.lpVtbl,
        inputXmlStream,
        subtree,
      );

  int CreatePaint(
    int paintType,
    Pointer<D2D1_COLOR_F> color,
    Pointer<Utf16> id,
    Pointer<Pointer<COMObject>> paint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 paintType,
            Pointer<D2D1_COLOR_F> color,
            Pointer<Utf16> id,
            Pointer<Pointer<COMObject>> paint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int paintType,
            Pointer<D2D1_COLOR_F> color,
            Pointer<Utf16> id,
            Pointer<Pointer<COMObject>> paint,
          )>()(
        ptr.ref.lpVtbl,
        paintType,
        color,
        id,
        paint,
      );

  int CreateStrokeDashArray(
    Pointer<D2D1_SVG_LENGTH> dashes,
    int dashesCount,
    Pointer<Pointer<COMObject>> strokeDashArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D1_SVG_LENGTH> dashes,
            Uint32 dashesCount,
            Pointer<Pointer<COMObject>> strokeDashArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D1_SVG_LENGTH> dashes,
            int dashesCount,
            Pointer<Pointer<COMObject>> strokeDashArray,
          )>()(
        ptr.ref.lpVtbl,
        dashes,
        dashesCount,
        strokeDashArray,
      );

  int CreatePointCollection(
    Pointer<D2D_POINT_2F> points,
    int pointsCount,
    Pointer<Pointer<COMObject>> pointCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_POINT_2F> points,
            Uint32 pointsCount,
            Pointer<Pointer<COMObject>> pointCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_POINT_2F> points,
            int pointsCount,
            Pointer<Pointer<COMObject>> pointCollection,
          )>()(
        ptr.ref.lpVtbl,
        points,
        pointsCount,
        pointCollection,
      );

  int CreatePathData(
    Pointer<Float> segmentData,
    int segmentDataCount,
    Pointer<Uint32> commands,
    int commandsCount,
    Pointer<Pointer<COMObject>> pathData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> segmentData,
            Uint32 segmentDataCount,
            Pointer<Uint32> commands,
            Uint32 commandsCount,
            Pointer<Pointer<COMObject>> pathData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> segmentData,
            int segmentDataCount,
            Pointer<Uint32> commands,
            int commandsCount,
            Pointer<Pointer<COMObject>> pathData,
          )>()(
        ptr.ref.lpVtbl,
        segmentData,
        segmentDataCount,
        commands,
        commandsCount,
        pathData,
      );
}
