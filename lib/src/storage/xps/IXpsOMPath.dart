// IXpsOMPath.dart

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

import '../../storage/xps/IXpsOMVisual.dart';
import '../../storage/xps/IXpsOMGeometry.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMBrush.dart';
import '../../storage/xps/IXpsOMDashCollection.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMPath.dart';

/// @nodoc
const IID_IXpsOMPath = '{37D38BB6-3EE9-4110-9312-14B194163337}';

/// {@category Interface}
/// {@category com}
class IXpsOMPath extends IXpsOMVisual {
  // vtable begins at 30, is 37 entries long.
  IXpsOMPath(Pointer<COMObject> ptr) : super(ptr);

  int GetGeometry(
    Pointer<Pointer<COMObject>> geometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
      );

  int GetGeometryLocal(
    Pointer<Pointer<COMObject>> geometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> geometry,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
      );

  int SetGeometryLocal(
    Pointer<COMObject> geometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> geometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> geometry,
          )>()(
        ptr.ref.lpVtbl,
        geometry,
      );

  int GetGeometryLookup(
    Pointer<Pointer<Utf16>> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int SetGeometryLookup(
    Pointer<Utf16> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int GetAccessibilityShortDescription(
    Pointer<Pointer<Utf16>> shortDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> shortDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> shortDescription,
          )>()(
        ptr.ref.lpVtbl,
        shortDescription,
      );

  int SetAccessibilityShortDescription(
    Pointer<Utf16> shortDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> shortDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> shortDescription,
          )>()(
        ptr.ref.lpVtbl,
        shortDescription,
      );

  int GetAccessibilityLongDescription(
    Pointer<Pointer<Utf16>> longDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> longDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> longDescription,
          )>()(
        ptr.ref.lpVtbl,
        longDescription,
      );

  int SetAccessibilityLongDescription(
    Pointer<Utf16> longDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> longDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> longDescription,
          )>()(
        ptr.ref.lpVtbl,
        longDescription,
      );

  int GetSnapsToPixels(
    Pointer<Int32> snapsToPixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> snapsToPixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> snapsToPixels,
          )>()(
        ptr.ref.lpVtbl,
        snapsToPixels,
      );

  int SetSnapsToPixels(
    int snapsToPixels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 snapsToPixels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int snapsToPixels,
          )>()(
        ptr.ref.lpVtbl,
        snapsToPixels,
      );

  int GetStrokeBrush(
    Pointer<Pointer<COMObject>> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>()(
        ptr.ref.lpVtbl,
        brush,
      );

  int GetStrokeBrushLocal(
    Pointer<Pointer<COMObject>> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>()(
        ptr.ref.lpVtbl,
        brush,
      );

  int SetStrokeBrushLocal(
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
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

  int GetStrokeBrushLookup(
    Pointer<Pointer<Utf16>> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int SetStrokeBrushLookup(
    Pointer<Utf16> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int GetStrokeDashes(
    Pointer<Pointer<COMObject>> strokeDashes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> strokeDashes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> strokeDashes,
          )>()(
        ptr.ref.lpVtbl,
        strokeDashes,
      );

  int GetStrokeDashCap(
    Pointer<Int32> strokeDashCap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> strokeDashCap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> strokeDashCap,
          )>()(
        ptr.ref.lpVtbl,
        strokeDashCap,
      );

  int SetStrokeDashCap(
    int strokeDashCap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 strokeDashCap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int strokeDashCap,
          )>()(
        ptr.ref.lpVtbl,
        strokeDashCap,
      );

  int GetStrokeDashOffset(
    Pointer<Float> strokeDashOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> strokeDashOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> strokeDashOffset,
          )>()(
        ptr.ref.lpVtbl,
        strokeDashOffset,
      );

  int SetStrokeDashOffset(
    double strokeDashOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float strokeDashOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double strokeDashOffset,
          )>()(
        ptr.ref.lpVtbl,
        strokeDashOffset,
      );

  int GetStrokeStartLineCap(
    Pointer<Int32> strokeStartLineCap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> strokeStartLineCap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> strokeStartLineCap,
          )>()(
        ptr.ref.lpVtbl,
        strokeStartLineCap,
      );

  int SetStrokeStartLineCap(
    int strokeStartLineCap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 strokeStartLineCap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int strokeStartLineCap,
          )>()(
        ptr.ref.lpVtbl,
        strokeStartLineCap,
      );

  int GetStrokeEndLineCap(
    Pointer<Int32> strokeEndLineCap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> strokeEndLineCap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> strokeEndLineCap,
          )>()(
        ptr.ref.lpVtbl,
        strokeEndLineCap,
      );

  int SetStrokeEndLineCap(
    int strokeEndLineCap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 strokeEndLineCap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int strokeEndLineCap,
          )>()(
        ptr.ref.lpVtbl,
        strokeEndLineCap,
      );

  int GetStrokeLineJoin(
    Pointer<Int32> strokeLineJoin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> strokeLineJoin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> strokeLineJoin,
          )>()(
        ptr.ref.lpVtbl,
        strokeLineJoin,
      );

  int SetStrokeLineJoin(
    int strokeLineJoin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 strokeLineJoin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int strokeLineJoin,
          )>()(
        ptr.ref.lpVtbl,
        strokeLineJoin,
      );

  int GetStrokeMiterLimit(
    Pointer<Float> strokeMiterLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> strokeMiterLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> strokeMiterLimit,
          )>()(
        ptr.ref.lpVtbl,
        strokeMiterLimit,
      );

  int SetStrokeMiterLimit(
    double strokeMiterLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float strokeMiterLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double strokeMiterLimit,
          )>()(
        ptr.ref.lpVtbl,
        strokeMiterLimit,
      );

  int GetStrokeThickness(
    Pointer<Float> strokeThickness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> strokeThickness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> strokeThickness,
          )>()(
        ptr.ref.lpVtbl,
        strokeThickness,
      );

  int SetStrokeThickness(
    double strokeThickness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float strokeThickness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double strokeThickness,
          )>()(
        ptr.ref.lpVtbl,
        strokeThickness,
      );

  int GetFillBrush(
    Pointer<Pointer<COMObject>> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>()(
        ptr.ref.lpVtbl,
        brush,
      );

  int GetFillBrushLocal(
    Pointer<Pointer<COMObject>> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> brush,
          )>()(
        ptr.ref.lpVtbl,
        brush,
      );

  int SetFillBrushLocal(
    Pointer<COMObject> brush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
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

  int GetFillBrushLookup(
    Pointer<Pointer<Utf16>> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int SetFillBrushLookup(
    Pointer<Utf16> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int Clone(
    Pointer<Pointer<COMObject>> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );
}
