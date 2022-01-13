// IXpsOMGeometryFigure.dart

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

import '../../system/com/IUnknown.dart';
import '../../storage/xps/IXpsOMGeometry.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMGeometryFigure.dart';

/// @nodoc
const IID_IXpsOMGeometryFigure = '{D410DC83-908C-443E-8947-B1795D3C165A}';

/// {@category Interface}
/// {@category com}
class IXpsOMGeometryFigure extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IXpsOMGeometryFigure(Pointer<COMObject> ptr) : super(ptr);

  int GetOwner(
    Pointer<Pointer<COMObject>> owner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> owner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> owner,
          )>()(
        ptr.ref.lpVtbl,
        owner,
      );

  int GetSegmentData(
    Pointer<Uint32> dataCount,
    Pointer<Float> segmentData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dataCount,
            Pointer<Float> segmentData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dataCount,
            Pointer<Float> segmentData,
          )>()(
        ptr.ref.lpVtbl,
        dataCount,
        segmentData,
      );

  int GetSegmentTypes(
    Pointer<Uint32> segmentCount,
    Pointer<Int32> segmentTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> segmentCount,
            Pointer<Int32> segmentTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> segmentCount,
            Pointer<Int32> segmentTypes,
          )>()(
        ptr.ref.lpVtbl,
        segmentCount,
        segmentTypes,
      );

  int GetSegmentStrokes(
    Pointer<Uint32> segmentCount,
    Pointer<Int32> segmentStrokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> segmentCount,
            Pointer<Int32> segmentStrokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> segmentCount,
            Pointer<Int32> segmentStrokes,
          )>()(
        ptr.ref.lpVtbl,
        segmentCount,
        segmentStrokes,
      );

  int SetSegments(
    int segmentCount,
    int segmentDataCount,
    Pointer<Int32> segmentTypes,
    Pointer<Float> segmentData,
    Pointer<Int32> segmentStrokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 segmentCount,
            Uint32 segmentDataCount,
            Pointer<Int32> segmentTypes,
            Pointer<Float> segmentData,
            Pointer<Int32> segmentStrokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int segmentCount,
            int segmentDataCount,
            Pointer<Int32> segmentTypes,
            Pointer<Float> segmentData,
            Pointer<Int32> segmentStrokes,
          )>()(
        ptr.ref.lpVtbl,
        segmentCount,
        segmentDataCount,
        segmentTypes,
        segmentData,
        segmentStrokes,
      );

  int GetStartPoint(
    Pointer<XPS_POINT> startPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
      );

  int SetStartPoint(
    Pointer<XPS_POINT> startPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
      );

  int GetIsClosed(
    Pointer<Int32> isClosed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isClosed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isClosed,
          )>()(
        ptr.ref.lpVtbl,
        isClosed,
      );

  int SetIsClosed(
    int isClosed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isClosed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isClosed,
          )>()(
        ptr.ref.lpVtbl,
        isClosed,
      );

  int GetIsFilled(
    Pointer<Int32> isFilled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isFilled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isFilled,
          )>()(
        ptr.ref.lpVtbl,
        isFilled,
      );

  int SetIsFilled(
    int isFilled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isFilled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isFilled,
          )>()(
        ptr.ref.lpVtbl,
        isFilled,
      );

  int GetSegmentCount(
    Pointer<Uint32> segmentCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> segmentCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> segmentCount,
          )>()(
        ptr.ref.lpVtbl,
        segmentCount,
      );

  int GetSegmentDataCount(
    Pointer<Uint32> segmentDataCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> segmentDataCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> segmentDataCount,
          )>()(
        ptr.ref.lpVtbl,
        segmentDataCount,
      );

  int GetSegmentStrokePattern(
    Pointer<Int32> segmentStrokePattern,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> segmentStrokePattern,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> segmentStrokePattern,
          )>()(
        ptr.ref.lpVtbl,
        segmentStrokePattern,
      );

  int Clone(
    Pointer<Pointer<COMObject>> geometryFigure,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometryFigure,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometryFigure,
          )>()(
        ptr.ref.lpVtbl,
        geometryFigure,
      );
}
