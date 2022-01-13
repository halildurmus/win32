// IInkDisp.dart

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
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkExtendedProperties.dart';
import '../../ui/tabletpc/IInkCustomStrokes.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkRectangle.dart';
import '../../ui/tabletpc/IInkStrokeDisp.dart';
import '../../ui/tabletpc/IInkDisp.dart';
import '../../specialTypes.dart';
import '../../system/com/IDataObject.dart';

/// @nodoc
const IID_IInkDisp = '{9D398FA0-C4E2-4FCD-9973-975CAAF47EA6}';

/// {@category Interface}
/// {@category com}
class IInkDisp extends IDispatch {
  // vtable begins at 7, is 25 entries long.
  IInkDisp(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Strokes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Strokes,
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
          .elementAt(8)
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

  int get Dirty {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> Dirty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> Dirty,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Dirty(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 Dirty,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Dirty,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get CustomStrokes {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkInkCustomStrokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunkInkCustomStrokes,
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
          .elementAt(12)
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

  int DeleteStrokes(
    Pointer<COMObject> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        Strokes,
      );

  int DeleteStroke(
    Pointer<COMObject> Stroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Stroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Stroke,
          )>()(
        ptr.ref.lpVtbl,
        Stroke,
      );

  int ExtractStrokes(
    Pointer<COMObject> Strokes,
    int ExtractFlags,
    Pointer<Pointer<COMObject>> ExtractedInk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Strokes,
            Int32 ExtractFlags,
            Pointer<Pointer<COMObject>> ExtractedInk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Strokes,
            int ExtractFlags,
            Pointer<Pointer<COMObject>> ExtractedInk,
          )>()(
        ptr.ref.lpVtbl,
        Strokes,
        ExtractFlags,
        ExtractedInk,
      );

  int ExtractWithRectangle(
    Pointer<COMObject> Rectangle,
    int extractFlags,
    Pointer<Pointer<COMObject>> ExtractedInk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Rectangle,
            Int32 extractFlags,
            Pointer<Pointer<COMObject>> ExtractedInk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Rectangle,
            int extractFlags,
            Pointer<Pointer<COMObject>> ExtractedInk,
          )>()(
        ptr.ref.lpVtbl,
        Rectangle,
        extractFlags,
        ExtractedInk,
      );

  int Clip(
    Pointer<COMObject> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int Clone(
    Pointer<Pointer<COMObject>> NewInk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewInk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewInk,
          )>()(
        ptr.ref.lpVtbl,
        NewInk,
      );

  int HitTestCircle(
    int X,
    int Y,
    double radius,
    Pointer<Pointer<COMObject>> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 X,
            Int32 Y,
            Float radius,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int X,
            int Y,
            double radius,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        radius,
        Strokes,
      );

  int HitTestWithRectangle(
    Pointer<COMObject> SelectionRectangle,
    double IntersectPercent,
    Pointer<Pointer<COMObject>> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SelectionRectangle,
            Float IntersectPercent,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SelectionRectangle,
            double IntersectPercent,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        SelectionRectangle,
        IntersectPercent,
        Strokes,
      );

  int HitTestWithLasso(
    VARIANT Points,
    double IntersectPercent,
    Pointer<VARIANT> LassoPoints,
    Pointer<Pointer<COMObject>> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Points,
            Float IntersectPercent,
            Pointer<VARIANT> LassoPoints,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Points,
            double IntersectPercent,
            Pointer<VARIANT> LassoPoints,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        Points,
        IntersectPercent,
        LassoPoints,
        Strokes,
      );

  int NearestPoint(
    int X,
    int Y,
    Pointer<Float> PointOnStroke,
    Pointer<Float> DistanceFromPacket,
    Pointer<Pointer<COMObject>> Stroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 X,
            Int32 Y,
            Pointer<Float> PointOnStroke,
            Pointer<Float> DistanceFromPacket,
            Pointer<Pointer<COMObject>> Stroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int X,
            int Y,
            Pointer<Float> PointOnStroke,
            Pointer<Float> DistanceFromPacket,
            Pointer<Pointer<COMObject>> Stroke,
          )>()(
        ptr.ref.lpVtbl,
        X,
        Y,
        PointOnStroke,
        DistanceFromPacket,
        Stroke,
      );

  int CreateStrokes(
    VARIANT StrokeIds,
    Pointer<Pointer<COMObject>> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT StrokeIds,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT StrokeIds,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        StrokeIds,
        Strokes,
      );

  int AddStrokesAtRectangle(
    Pointer<COMObject> SourceStrokes,
    Pointer<COMObject> TargetRectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> SourceStrokes,
            Pointer<COMObject> TargetRectangle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> SourceStrokes,
            Pointer<COMObject> TargetRectangle,
          )>()(
        ptr.ref.lpVtbl,
        SourceStrokes,
        TargetRectangle,
      );

  int Save(
    int PersistenceFormat,
    int CompressionMode,
    Pointer<VARIANT> Data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 PersistenceFormat,
            Int32 CompressionMode,
            Pointer<VARIANT> Data,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PersistenceFormat,
            int CompressionMode,
            Pointer<VARIANT> Data,
          )>()(
        ptr.ref.lpVtbl,
        PersistenceFormat,
        CompressionMode,
        Data,
      );

  int Load(
    VARIANT Data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Data,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Data,
          )>()(
        ptr.ref.lpVtbl,
        Data,
      );

  int CreateStroke(
    VARIANT PacketData,
    VARIANT PacketDescription,
    Pointer<Pointer<COMObject>> Stroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT PacketData,
            VARIANT PacketDescription,
            Pointer<Pointer<COMObject>> Stroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT PacketData,
            VARIANT PacketDescription,
            Pointer<Pointer<COMObject>> Stroke,
          )>()(
        ptr.ref.lpVtbl,
        PacketData,
        PacketDescription,
        Stroke,
      );

  int ClipboardCopyWithRectangle(
    Pointer<COMObject> Rectangle,
    int ClipboardFormats,
    int ClipboardModes,
    Pointer<Pointer<COMObject>> DataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Rectangle,
            Int32 ClipboardFormats,
            Int32 ClipboardModes,
            Pointer<Pointer<COMObject>> DataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Rectangle,
            int ClipboardFormats,
            int ClipboardModes,
            Pointer<Pointer<COMObject>> DataObject,
          )>()(
        ptr.ref.lpVtbl,
        Rectangle,
        ClipboardFormats,
        ClipboardModes,
        DataObject,
      );

  int ClipboardCopy(
    Pointer<COMObject> strokes,
    int ClipboardFormats,
    int ClipboardModes,
    Pointer<Pointer<COMObject>> DataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> strokes,
            Int32 ClipboardFormats,
            Int32 ClipboardModes,
            Pointer<Pointer<COMObject>> DataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> strokes,
            int ClipboardFormats,
            int ClipboardModes,
            Pointer<Pointer<COMObject>> DataObject,
          )>()(
        ptr.ref.lpVtbl,
        strokes,
        ClipboardFormats,
        ClipboardModes,
        DataObject,
      );

  int CanPaste(
    Pointer<COMObject> DataObject,
    Pointer<Int16> CanPaste,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> DataObject,
            Pointer<Int16> CanPaste,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> DataObject,
            Pointer<Int16> CanPaste,
          )>()(
        ptr.ref.lpVtbl,
        DataObject,
        CanPaste,
      );

  int ClipboardPaste(
    int x,
    int y,
    Pointer<COMObject> DataObject,
    Pointer<Pointer<COMObject>> Strokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
            Pointer<COMObject> DataObject,
            Pointer<Pointer<COMObject>> Strokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
            Pointer<COMObject> DataObject,
            Pointer<Pointer<COMObject>> Strokes,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        DataObject,
        Strokes,
      );
}

/// @nodoc
const CLSID_InkDisp = '{937C1A34-151D-4610-9CA6-A8CC9BDB5D83}';

/// {@category com}
class InkDisp extends IInkDisp {
  InkDisp(Pointer<COMObject> ptr) : super(ptr);

  factory InkDisp.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkDisp);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkDisp);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkDisp(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
