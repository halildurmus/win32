// IInertiaProcessor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInertiaProcessor = '{18B00C6D-C5EE-41B1-90A9-9D4A929095AD}';

/// {@category Interface}
/// {@category com}
class IInertiaProcessor extends IUnknown {
  // vtable begins at 3, is 49 entries long.
  IInertiaProcessor(Pointer<COMObject> ptr) : super(ptr);

  double get InitialOriginX {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> x,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> x,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialOriginX(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float x,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double x,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialOriginY {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> y,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialOriginY(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float y,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double y,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialVelocityX {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> x,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> x,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialVelocityX(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float x,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double x,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialVelocityY {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> y,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialVelocityY(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float y,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double y,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialAngularVelocity {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> velocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> velocity,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialAngularVelocity(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float velocity,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double velocity,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialExpansionVelocity {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> velocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> velocity,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialExpansionVelocity(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float velocity,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double velocity,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialRadius {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> radius,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> radius,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialRadius(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float radius,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double radius,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryLeft {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> left,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> left,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BoundaryLeft(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float left,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double left,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryTop {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> top,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> top,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BoundaryTop(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(20)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float top,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double top,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryRight {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> right,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> right,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BoundaryRight(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(22)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float right,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double right,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryBottom {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> bottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> bottom,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BoundaryBottom(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float bottom,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double bottom,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginLeft {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> left,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> left,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ElasticMarginLeft(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float left,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double left,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginTop {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> top,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> top,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ElasticMarginTop(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(28)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float top,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double top,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginRight {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> right,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> right,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ElasticMarginRight(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float right,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double right,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginBottom {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> bottom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> bottom,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ElasticMarginBottom(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(32)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float bottom,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double bottom,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredDisplacement {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> displacement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> displacement,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredDisplacement(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(34)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float displacement,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double displacement,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredRotation {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> rotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> rotation,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredRotation(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(36)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float rotation,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double rotation,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredExpansion {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> expansion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> expansion,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredExpansion(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(38)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float expansion,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double expansion,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredDeceleration {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> deceleration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> deceleration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredDeceleration(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(40)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float deceleration,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double deceleration,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredAngularDeceleration {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> deceleration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> deceleration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredAngularDeceleration(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(42)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float deceleration,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double deceleration,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredExpansionDeceleration {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> deceleration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> deceleration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DesiredExpansionDeceleration(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(44)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float deceleration,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double deceleration,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get InitialTimestamp {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> timestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> timestamp,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialTimestamp(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(46)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 timestamp,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int timestamp,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(47)
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

  int Process(
    Pointer<Int32> completed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> completed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> completed,
          )>()(
        ptr.ref.lpVtbl,
        completed,
      );

  int ProcessTime(
    int timestamp,
    Pointer<Int32> completed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 timestamp,
            Pointer<Int32> completed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timestamp,
            Pointer<Int32> completed,
          )>()(
        ptr.ref.lpVtbl,
        timestamp,
        completed,
      );

  int Complete() => ptr.ref.lpVtbl.value
          .elementAt(50)
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

  int CompleteTime(
    int timestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 timestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timestamp,
          )>()(
        ptr.ref.lpVtbl,
        timestamp,
      );
}

/// @nodoc
const CLSID_InertiaProcessor = '{ABB27087-4CE0-4E58-A0CB-E24DF96814BE}';

/// {@category com}
class InertiaProcessor extends IInertiaProcessor {
  InertiaProcessor(Pointer<COMObject> ptr) : super(ptr);

  factory InertiaProcessor.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InertiaProcessor);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInertiaProcessor);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InertiaProcessor(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
