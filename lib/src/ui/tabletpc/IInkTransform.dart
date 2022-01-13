// IInkTransform.dart

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
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IInkTransform = '{615F1D43-8703-4565-88E2-8201D2ECD7B7}';

/// {@category Interface}
/// {@category com}
class IInkTransform extends IDispatch {
  // vtable begins at 7, is 22 entries long.
  IInkTransform(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Translate(
    double HorizontalComponent,
    double VerticalComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
          .elementAt(9)
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

  int Reflect(
    int Horizontally,
    int Vertically,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 Horizontally,
            Int16 Vertically,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Horizontally,
            int Vertically,
          )>()(
        ptr.ref.lpVtbl,
        Horizontally,
        Vertically,
      );

  int Shear(
    double HorizontalComponent,
    double VerticalComponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int ScaleTransform(
    double HorizontalMultiplier,
    double VerticalMultiplier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetTransform(
    Pointer<Float> eM11,
    Pointer<Float> eM12,
    Pointer<Float> eM21,
    Pointer<Float> eM22,
    Pointer<Float> eDx,
    Pointer<Float> eDy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> eM11,
            Pointer<Float> eM12,
            Pointer<Float> eM21,
            Pointer<Float> eM22,
            Pointer<Float> eDx,
            Pointer<Float> eDy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> eM11,
            Pointer<Float> eM12,
            Pointer<Float> eM21,
            Pointer<Float> eM22,
            Pointer<Float> eDx,
            Pointer<Float> eDy,
          )>()(
        ptr.ref.lpVtbl,
        eM11,
        eM12,
        eM21,
        eM22,
        eDx,
        eDy,
      );

  int SetTransform(
    double eM11,
    double eM12,
    double eM21,
    double eM22,
    double eDx,
    double eDy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float eM11,
            Float eM12,
            Float eM21,
            Float eM22,
            Float eDx,
            Float eDy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double eM11,
            double eM12,
            double eM21,
            double eM22,
            double eDx,
            double eDy,
          )>()(
        ptr.ref.lpVtbl,
        eM11,
        eM12,
        eM21,
        eM22,
        eDx,
        eDy,
      );

  double get eM11 {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eM11(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get eM12 {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eM12(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get eM21 {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eM21(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get eM22 {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eM22(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(22)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get eDx {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eDx(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get eDy {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> Value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set eDy(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  XFORM get Data {
    final retValuePtr = calloc<XFORM>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XFORM> XForm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XFORM> XForm,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Data(XFORM value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(28)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          XFORM XForm,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          XFORM XForm,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_InkTransform = '{E3D5D93C-1663-4A78-A1A7-22375DFEBAEE}';

/// {@category com}
class InkTransform extends IInkTransform {
  InkTransform(Pointer<COMObject> ptr) : super(ptr);

  factory InkTransform.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InkTransform);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInkTransform);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InkTransform(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
