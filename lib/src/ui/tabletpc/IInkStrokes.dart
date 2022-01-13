// IInkStrokes.dart

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
import '../../ui/tabletpc/IInkDisp.dart';
import '../../ui/tabletpc/IInkRecognitionResult.dart';
import '../../ui/tabletpc/IInkStrokeDisp.dart';
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../ui/tabletpc/IInkDrawingAttributes.dart';
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkRectangle.dart';
import '../../ui/tabletpc/IInkTransform.dart';

/// @nodoc
const IID_IInkStrokes = '{F1F4C9D8-590A-4963-B3AE-1935671BB6F3}';

/// {@category Interface}
/// {@category com}
class IInkStrokes extends IDispatch {
  // vtable begins at 7, is 20 entries long.
  IInkStrokes(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Count,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> NewEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Ink {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
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

  Pointer<COMObject> get RecognitionResult {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> RecognitionResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> RecognitionResult,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ToString(
    Pointer<Pointer<Utf16>> ToString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ToString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ToString,
          )>()(
        ptr.ref.lpVtbl,
        ToString,
      );

  int Item(
    int Index,
    Pointer<Pointer<COMObject>> Stroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> Stroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> Stroke,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Stroke,
      );

  int Add(
    Pointer<COMObject> InkStroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> InkStroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> InkStroke,
          )>()(
        ptr.ref.lpVtbl,
        InkStroke,
      );

  int AddStrokes(
    Pointer<COMObject> InkStrokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> InkStrokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> InkStrokes,
          )>()(
        ptr.ref.lpVtbl,
        InkStrokes,
      );

  int Remove(
    Pointer<COMObject> InkStroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> InkStroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> InkStroke,
          )>()(
        ptr.ref.lpVtbl,
        InkStroke,
      );

  int RemoveStrokes(
    Pointer<COMObject> InkStrokes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> InkStrokes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> InkStrokes,
          )>()(
        ptr.ref.lpVtbl,
        InkStrokes,
      );

  int ModifyDrawingAttributes(
    Pointer<COMObject> DrawAttrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int GetBoundingBox(
    int BoundingBoxMode,
    Pointer<Pointer<COMObject>> BoundingBox,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 BoundingBoxMode,
            Pointer<Pointer<COMObject>> BoundingBox,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BoundingBoxMode,
            Pointer<Pointer<COMObject>> BoundingBox,
          )>()(
        ptr.ref.lpVtbl,
        BoundingBoxMode,
        BoundingBox,
      );

  int Transform(
    Pointer<COMObject> Transform,
    int ApplyOnPenWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
          .elementAt(20)
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
          .elementAt(21)
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
          .elementAt(22)
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
          .elementAt(23)
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
          .elementAt(24)
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

  int Clip(
    Pointer<COMObject> Rectangle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int RemoveRecognitionResult() => ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
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

/// @nodoc
const CLSID_InkStrokes = '{48F491BC-240E-4860-B079-A1E94D3D2C86}';

/// {@category com}
class InkStrokes extends IInkStrokes {
  InkStrokes(Pointer<COMObject> ptr) : super(ptr);

  factory InkStrokes.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkStrokes);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkStrokes);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkStrokes(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
