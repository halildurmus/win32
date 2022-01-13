// IInkStrokeDisp.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/tabletpc/IInkDrawingAttributes.dart';
import '../../ui/tabletpc/IInkDisp.dart';
import '../../ui/tabletpc/IInkExtendedProperties.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkRectangle.dart';
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../ui/tabletpc/IInkStrokeDisp.dart';
import '../../ui/tabletpc/IInkTransform.dart';

/// @nodoc
const IID_IInkStrokeDisp = '{43242FEA-91D1-4A72-963E-FBB91829CFA2}';

/// {@category Interface}
/// {@category com}
class IInkStrokeDisp extends IDispatch {
  // vtable begins at 7, is 33 entries long.
  IInkStrokeDisp(Pointer<COMObject> ptr) : super(ptr);

  int get ID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get BezierPoints {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Points,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Points,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get DrawingAttributes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> DrawAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> DrawAttrs,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_DrawingAttributes(
    Pointer<COMObject> DrawAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DrawAttrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DrawAttrs,
          )>()(
        ptr.ref.lpVtbl,
        DrawAttrs,
      );

  Pointer<COMObject> get Ink {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Ink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Ink,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ExtendedProperties {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Properties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Properties,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get PolylineCusps {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cusps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cusps,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get BezierCusps {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Cusps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Cusps,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get SelfIntersections {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Intersections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Intersections,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get PacketCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get PacketSize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get PacketDescription {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> PacketDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> PacketDescription,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Deleted {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Deleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Deleted,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetBoundingBox(
    int BoundingBoxMode,
    Pointer<Pointer<COMObject>> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BoundingBoxMode,
            Pointer<Pointer<COMObject>> Rectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BoundingBoxMode,
            Pointer<Pointer<COMObject>> Rectangle,
          )>()(
        ptr.ref.lpVtbl,
        BoundingBoxMode,
        Rectangle,
      );

  int FindIntersections(
    Pointer<COMObject> Strokes,
    Pointer<VARIANT> Intersections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Strokes,
            Pointer<VARIANT> Intersections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Strokes,
            Pointer<VARIANT> Intersections,
          )>()(
        ptr.ref.lpVtbl,
        Strokes,
        Intersections,
      );

  int GetRectangleIntersections(
    Pointer<COMObject> Rectangle,
    Pointer<VARIANT> Intersections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Rectangle,
            Pointer<VARIANT> Intersections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Rectangle,
            Pointer<VARIANT> Intersections,
          )>()(
        ptr.ref.lpVtbl,
        Rectangle,
        Intersections,
      );

  int Clip(
    Pointer<COMObject> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Rectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Rectangle,
          )>()(
        ptr.ref.lpVtbl,
        Rectangle,
      );

  int HitTestCircle(
    int X,
    int Y,
    double Radius,
    Pointer<Int16> Intersects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 X,
            Int32 Y,
            Float Radius,
            Pointer<Int16> Intersects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int X,
            int Y,
            double Radius,
            Pointer<Int16> Intersects,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        Radius,
        Intersects,
      );

  int NearestPoint(
    int X,
    int Y,
    Pointer<Float> Distance,
    Pointer<Float> Point,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 X,
            Int32 Y,
            Pointer<Float> Distance,
            Pointer<Float> Point,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int X,
            int Y,
            Pointer<Float> Distance,
            Pointer<Float> Point,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        Distance,
        Point,
      );

  int Split(
    double SplitAt,
    Pointer<Pointer<COMObject>> NewStroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float SplitAt,
            Pointer<Pointer<COMObject>> NewStroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double SplitAt,
            Pointer<Pointer<COMObject>> NewStroke,
          )>()(
        ptr.ref.lpVtbl,
        SplitAt,
        NewStroke,
      );

  int GetPacketDescriptionPropertyMetrics(
    Pointer<Utf16> PropertyName,
    Pointer<Int32> Minimum,
    Pointer<Int32> Maximum,
    Pointer<Int32> Units,
    Pointer<Float> Resolution,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            Pointer<Int32> Minimum,
            Pointer<Int32> Maximum,
            Pointer<Int32> Units,
            Pointer<Float> Resolution,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            Pointer<Int32> Minimum,
            Pointer<Int32> Maximum,
            Pointer<Int32> Units,
            Pointer<Float> Resolution,
          )>()(
        ptr.ref.lpVtbl,
        PropertyName,
        Minimum,
        Maximum,
        Units,
        Resolution,
      );

  int GetPoints(
    int Index,
    int Count,
    Pointer<VARIANT> Points,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Int32 Count,
            Pointer<VARIANT> Points,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Count,
            Pointer<VARIANT> Points,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Count,
        Points,
      );

  int SetPoints(
    VARIANT Points,
    int Index,
    int Count,
    Pointer<Int32> NumberOfPointsSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Points,
            Int32 Index,
            Int32 Count,
            Pointer<Int32> NumberOfPointsSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Points,
            int Index,
            int Count,
            Pointer<Int32> NumberOfPointsSet,
          )>()(
        ptr.ref.lpVtbl,
        Points,
        Index,
        Count,
        NumberOfPointsSet,
      );

  int GetPacketData(
    int Index,
    int Count,
    Pointer<VARIANT> PacketData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Int32 Count,
            Pointer<VARIANT> PacketData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            int Count,
            Pointer<VARIANT> PacketData,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Count,
        PacketData,
      );

  int GetPacketValuesByProperty(
    Pointer<Utf16> PropertyName,
    int Index,
    int Count,
    Pointer<VARIANT> PacketValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            Int32 Index,
            Int32 Count,
            Pointer<VARIANT> PacketValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PropertyName,
            int Index,
            int Count,
            Pointer<VARIANT> PacketValues,
          )>()(
        ptr.ref.lpVtbl,
        PropertyName,
        Index,
        Count,
        PacketValues,
      );

  int SetPacketValuesByProperty(
    Pointer<Utf16> bstrPropertyName,
    VARIANT PacketValues,
    int Index,
    int Count,
    Pointer<Int32> NumberOfPacketsSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropertyName,
            VARIANT PacketValues,
            Int32 Index,
            Int32 Count,
            Pointer<Int32> NumberOfPacketsSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropertyName,
            VARIANT PacketValues,
            int Index,
            int Count,
            Pointer<Int32> NumberOfPacketsSet,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropertyName,
        PacketValues,
        Index,
        Count,
        NumberOfPacketsSet,
      );

  int GetFlattenedBezierPoints(
    int FittingError,
    Pointer<VARIANT> FlattenedBezierPoints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FittingError,
            Pointer<VARIANT> FlattenedBezierPoints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FittingError,
            Pointer<VARIANT> FlattenedBezierPoints,
          )>()(
        ptr.ref.lpVtbl,
        FittingError,
        FlattenedBezierPoints,
      );

  int Transform(
    Pointer<COMObject> Transform,
    int ApplyOnPenWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Transform,
            Int16 ApplyOnPenWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Transform,
            int ApplyOnPenWidth,
          )>()(
        ptr.ref.lpVtbl,
        Transform,
        ApplyOnPenWidth,
      );

  int ScaleToRectangle(
    Pointer<COMObject> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Rectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Rectangle,
          )>()(
        ptr.ref.lpVtbl,
        Rectangle,
      );

  int Move(
    double HorizontalComponent,
    double VerticalComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float HorizontalComponent,
            Float VerticalComponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double HorizontalComponent,
            double VerticalComponent,
          )>()(
        ptr.ref.lpVtbl,
        HorizontalComponent,
        VerticalComponent,
      );

  int Rotate(
    double Degrees,
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Degrees,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Degrees,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        Degrees,
        x,
        y,
      );

  int Shear(
    double HorizontalMultiplier,
    double VerticalMultiplier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float HorizontalMultiplier,
            Float VerticalMultiplier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double HorizontalMultiplier,
            double VerticalMultiplier,
          )>()(
        ptr.ref.lpVtbl,
        HorizontalMultiplier,
        VerticalMultiplier,
      );

  int ScaleTransform(
    double HorizontalMultiplier,
    double VerticalMultiplier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float HorizontalMultiplier,
            Float VerticalMultiplier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double HorizontalMultiplier,
            double VerticalMultiplier,
          )>()(
        ptr.ref.lpVtbl,
        HorizontalMultiplier,
        VerticalMultiplier,
      );
}
