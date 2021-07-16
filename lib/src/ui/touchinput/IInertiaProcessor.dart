// IInertiaProcessor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const CLSID_InertiaProcessor = '{ABB27087-4CE0-4E58-A0CB-E24DF96814BE}';

/// @nodoc
const IID_IInertiaProcessor = '{18B00C6D-C5EE-41B1-90A9-9D4A929095AD}';

typedef _get_InitialOriginX_Native = Int32 Function(
    Pointer obj, Pointer<Float> x);
typedef _get_InitialOriginX_Dart = int Function(Pointer obj, Pointer<Float> x);

typedef _put_InitialOriginX_Native = Int32 Function(Pointer obj, Float x);
typedef _put_InitialOriginX_Dart = int Function(Pointer obj, double x);

typedef _get_InitialOriginY_Native = Int32 Function(
    Pointer obj, Pointer<Float> y);
typedef _get_InitialOriginY_Dart = int Function(Pointer obj, Pointer<Float> y);

typedef _put_InitialOriginY_Native = Int32 Function(Pointer obj, Float y);
typedef _put_InitialOriginY_Dart = int Function(Pointer obj, double y);

typedef _get_InitialVelocityX_Native = Int32 Function(
    Pointer obj, Pointer<Float> x);
typedef _get_InitialVelocityX_Dart = int Function(
    Pointer obj, Pointer<Float> x);

typedef _put_InitialVelocityX_Native = Int32 Function(Pointer obj, Float x);
typedef _put_InitialVelocityX_Dart = int Function(Pointer obj, double x);

typedef _get_InitialVelocityY_Native = Int32 Function(
    Pointer obj, Pointer<Float> y);
typedef _get_InitialVelocityY_Dart = int Function(
    Pointer obj, Pointer<Float> y);

typedef _put_InitialVelocityY_Native = Int32 Function(Pointer obj, Float y);
typedef _put_InitialVelocityY_Dart = int Function(Pointer obj, double y);

typedef _get_InitialAngularVelocity_Native = Int32 Function(
    Pointer obj, Pointer<Float> velocity);
typedef _get_InitialAngularVelocity_Dart = int Function(
    Pointer obj, Pointer<Float> velocity);

typedef _put_InitialAngularVelocity_Native = Int32 Function(
    Pointer obj, Float velocity);
typedef _put_InitialAngularVelocity_Dart = int Function(
    Pointer obj, double velocity);

typedef _get_InitialExpansionVelocity_Native = Int32 Function(
    Pointer obj, Pointer<Float> velocity);
typedef _get_InitialExpansionVelocity_Dart = int Function(
    Pointer obj, Pointer<Float> velocity);

typedef _put_InitialExpansionVelocity_Native = Int32 Function(
    Pointer obj, Float velocity);
typedef _put_InitialExpansionVelocity_Dart = int Function(
    Pointer obj, double velocity);

typedef _get_InitialRadius_Native = Int32 Function(
    Pointer obj, Pointer<Float> radius);
typedef _get_InitialRadius_Dart = int Function(
    Pointer obj, Pointer<Float> radius);

typedef _put_InitialRadius_Native = Int32 Function(Pointer obj, Float radius);
typedef _put_InitialRadius_Dart = int Function(Pointer obj, double radius);

typedef _get_BoundaryLeft_Native = Int32 Function(
    Pointer obj, Pointer<Float> left);
typedef _get_BoundaryLeft_Dart = int Function(Pointer obj, Pointer<Float> left);

typedef _put_BoundaryLeft_Native = Int32 Function(Pointer obj, Float left);
typedef _put_BoundaryLeft_Dart = int Function(Pointer obj, double left);

typedef _get_BoundaryTop_Native = Int32 Function(
    Pointer obj, Pointer<Float> top);
typedef _get_BoundaryTop_Dart = int Function(Pointer obj, Pointer<Float> top);

typedef _put_BoundaryTop_Native = Int32 Function(Pointer obj, Float top);
typedef _put_BoundaryTop_Dart = int Function(Pointer obj, double top);

typedef _get_BoundaryRight_Native = Int32 Function(
    Pointer obj, Pointer<Float> right);
typedef _get_BoundaryRight_Dart = int Function(
    Pointer obj, Pointer<Float> right);

typedef _put_BoundaryRight_Native = Int32 Function(Pointer obj, Float right);
typedef _put_BoundaryRight_Dart = int Function(Pointer obj, double right);

typedef _get_BoundaryBottom_Native = Int32 Function(
    Pointer obj, Pointer<Float> bottom);
typedef _get_BoundaryBottom_Dart = int Function(
    Pointer obj, Pointer<Float> bottom);

typedef _put_BoundaryBottom_Native = Int32 Function(Pointer obj, Float bottom);
typedef _put_BoundaryBottom_Dart = int Function(Pointer obj, double bottom);

typedef _get_ElasticMarginLeft_Native = Int32 Function(
    Pointer obj, Pointer<Float> left);
typedef _get_ElasticMarginLeft_Dart = int Function(
    Pointer obj, Pointer<Float> left);

typedef _put_ElasticMarginLeft_Native = Int32 Function(Pointer obj, Float left);
typedef _put_ElasticMarginLeft_Dart = int Function(Pointer obj, double left);

typedef _get_ElasticMarginTop_Native = Int32 Function(
    Pointer obj, Pointer<Float> top);
typedef _get_ElasticMarginTop_Dart = int Function(
    Pointer obj, Pointer<Float> top);

typedef _put_ElasticMarginTop_Native = Int32 Function(Pointer obj, Float top);
typedef _put_ElasticMarginTop_Dart = int Function(Pointer obj, double top);

typedef _get_ElasticMarginRight_Native = Int32 Function(
    Pointer obj, Pointer<Float> right);
typedef _get_ElasticMarginRight_Dart = int Function(
    Pointer obj, Pointer<Float> right);

typedef _put_ElasticMarginRight_Native = Int32 Function(
    Pointer obj, Float right);
typedef _put_ElasticMarginRight_Dart = int Function(Pointer obj, double right);

typedef _get_ElasticMarginBottom_Native = Int32 Function(
    Pointer obj, Pointer<Float> bottom);
typedef _get_ElasticMarginBottom_Dart = int Function(
    Pointer obj, Pointer<Float> bottom);

typedef _put_ElasticMarginBottom_Native = Int32 Function(
    Pointer obj, Float bottom);
typedef _put_ElasticMarginBottom_Dart = int Function(
    Pointer obj, double bottom);

typedef _get_DesiredDisplacement_Native = Int32 Function(
    Pointer obj, Pointer<Float> displacement);
typedef _get_DesiredDisplacement_Dart = int Function(
    Pointer obj, Pointer<Float> displacement);

typedef _put_DesiredDisplacement_Native = Int32 Function(
    Pointer obj, Float displacement);
typedef _put_DesiredDisplacement_Dart = int Function(
    Pointer obj, double displacement);

typedef _get_DesiredRotation_Native = Int32 Function(
    Pointer obj, Pointer<Float> rotation);
typedef _get_DesiredRotation_Dart = int Function(
    Pointer obj, Pointer<Float> rotation);

typedef _put_DesiredRotation_Native = Int32 Function(
    Pointer obj, Float rotation);
typedef _put_DesiredRotation_Dart = int Function(Pointer obj, double rotation);

typedef _get_DesiredExpansion_Native = Int32 Function(
    Pointer obj, Pointer<Float> expansion);
typedef _get_DesiredExpansion_Dart = int Function(
    Pointer obj, Pointer<Float> expansion);

typedef _put_DesiredExpansion_Native = Int32 Function(
    Pointer obj, Float expansion);
typedef _put_DesiredExpansion_Dart = int Function(
    Pointer obj, double expansion);

typedef _get_DesiredDeceleration_Native = Int32 Function(
    Pointer obj, Pointer<Float> deceleration);
typedef _get_DesiredDeceleration_Dart = int Function(
    Pointer obj, Pointer<Float> deceleration);

typedef _put_DesiredDeceleration_Native = Int32 Function(
    Pointer obj, Float deceleration);
typedef _put_DesiredDeceleration_Dart = int Function(
    Pointer obj, double deceleration);

typedef _get_DesiredAngularDeceleration_Native = Int32 Function(
    Pointer obj, Pointer<Float> deceleration);
typedef _get_DesiredAngularDeceleration_Dart = int Function(
    Pointer obj, Pointer<Float> deceleration);

typedef _put_DesiredAngularDeceleration_Native = Int32 Function(
    Pointer obj, Float deceleration);
typedef _put_DesiredAngularDeceleration_Dart = int Function(
    Pointer obj, double deceleration);

typedef _get_DesiredExpansionDeceleration_Native = Int32 Function(
    Pointer obj, Pointer<Float> deceleration);
typedef _get_DesiredExpansionDeceleration_Dart = int Function(
    Pointer obj, Pointer<Float> deceleration);

typedef _put_DesiredExpansionDeceleration_Native = Int32 Function(
    Pointer obj, Float deceleration);
typedef _put_DesiredExpansionDeceleration_Dart = int Function(
    Pointer obj, double deceleration);

typedef _get_InitialTimestamp_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> timestamp);
typedef _get_InitialTimestamp_Dart = int Function(
    Pointer obj, Pointer<Uint32> timestamp);

typedef _put_InitialTimestamp_Native = Int32 Function(
    Pointer obj, Uint32 timestamp);
typedef _put_InitialTimestamp_Dart = int Function(Pointer obj, int timestamp);

typedef _Reset_Native = Int32 Function(Pointer obj);
typedef _Reset_Dart = int Function(Pointer obj);

typedef _Process_Native = Int32 Function(Pointer obj, Pointer<Int32> completed);
typedef _Process_Dart = int Function(Pointer obj, Pointer<Int32> completed);

typedef _ProcessTime_Native = Int32 Function(
    Pointer obj, Uint32 timestamp, Pointer<Int32> completed);
typedef _ProcessTime_Dart = int Function(
    Pointer obj, int timestamp, Pointer<Int32> completed);

typedef _Complete_Native = Int32 Function(Pointer obj);
typedef _Complete_Dart = int Function(Pointer obj);

typedef _CompleteTime_Native = Int32 Function(Pointer obj, Uint32 timestamp);
typedef _CompleteTime_Dart = int Function(Pointer obj, int timestamp);

/// {@category Interface}
/// {@category com}
class IInertiaProcessor extends IUnknown {
  // vtable begins at 3, ends at 51

  IInertiaProcessor(Pointer<COMObject> ptr) : super(ptr);

  double get InitialOriginX {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_get_InitialOriginX_Native>>>()
          .value
          .asFunction<_get_InitialOriginX_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialOriginX_Native>>>()
        .value
        .asFunction<_put_InitialOriginX_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialOriginY {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_get_InitialOriginY_Native>>>()
          .value
          .asFunction<_get_InitialOriginY_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialOriginY_Native>>>()
        .value
        .asFunction<_put_InitialOriginY_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialVelocityX {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_get_InitialVelocityX_Native>>>()
              .value
              .asFunction<_get_InitialVelocityX_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialVelocityX_Native>>>()
        .value
        .asFunction<_put_InitialVelocityX_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialVelocityY {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_get_InitialVelocityY_Native>>>()
              .value
              .asFunction<_get_InitialVelocityY_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialVelocityY_Native>>>()
        .value
        .asFunction<_put_InitialVelocityY_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialAngularVelocity {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_get_InitialAngularVelocity_Native>>>()
          .value
          .asFunction<
              _get_InitialAngularVelocity_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialAngularVelocity_Native>>>()
        .value
        .asFunction<_put_InitialAngularVelocity_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialExpansionVelocity {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<Pointer<NativeFunction<_get_InitialExpansionVelocity_Native>>>()
          .value
          .asFunction<
              _get_InitialExpansionVelocity_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialExpansionVelocity_Native>>>()
        .value
        .asFunction<
            _put_InitialExpansionVelocity_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get InitialRadius {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<Pointer<NativeFunction<_get_InitialRadius_Native>>>()
          .value
          .asFunction<_get_InitialRadius_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialRadius_Native>>>()
        .value
        .asFunction<_put_InitialRadius_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryLeft {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<Pointer<NativeFunction<_get_BoundaryLeft_Native>>>()
          .value
          .asFunction<_get_BoundaryLeft_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_BoundaryLeft_Native>>>()
        .value
        .asFunction<_put_BoundaryLeft_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryTop {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<Pointer<NativeFunction<_get_BoundaryTop_Native>>>()
          .value
          .asFunction<_get_BoundaryTop_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_BoundaryTop_Native>>>()
        .value
        .asFunction<_put_BoundaryTop_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryRight {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<Pointer<NativeFunction<_get_BoundaryRight_Native>>>()
          .value
          .asFunction<_get_BoundaryRight_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_BoundaryRight_Native>>>()
        .value
        .asFunction<_put_BoundaryRight_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get BoundaryBottom {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<Pointer<NativeFunction<_get_BoundaryBottom_Native>>>()
          .value
          .asFunction<_get_BoundaryBottom_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_BoundaryBottom_Native>>>()
        .value
        .asFunction<_put_BoundaryBottom_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginLeft {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(25)
              .cast<Pointer<NativeFunction<_get_ElasticMarginLeft_Native>>>()
              .value
              .asFunction<_get_ElasticMarginLeft_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_ElasticMarginLeft_Native>>>()
        .value
        .asFunction<_put_ElasticMarginLeft_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginTop {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(27)
              .cast<Pointer<NativeFunction<_get_ElasticMarginTop_Native>>>()
              .value
              .asFunction<_get_ElasticMarginTop_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_ElasticMarginTop_Native>>>()
        .value
        .asFunction<_put_ElasticMarginTop_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginRight {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(29)
              .cast<Pointer<NativeFunction<_get_ElasticMarginRight_Native>>>()
              .value
              .asFunction<_get_ElasticMarginRight_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_ElasticMarginRight_Native>>>()
        .value
        .asFunction<_put_ElasticMarginRight_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get ElasticMarginBottom {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(31)
              .cast<Pointer<NativeFunction<_get_ElasticMarginBottom_Native>>>()
              .value
              .asFunction<_get_ElasticMarginBottom_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_ElasticMarginBottom_Native>>>()
        .value
        .asFunction<_put_ElasticMarginBottom_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredDisplacement {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(33)
              .cast<Pointer<NativeFunction<_get_DesiredDisplacement_Native>>>()
              .value
              .asFunction<_get_DesiredDisplacement_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_DesiredDisplacement_Native>>>()
        .value
        .asFunction<_put_DesiredDisplacement_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredRotation {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<Pointer<NativeFunction<_get_DesiredRotation_Native>>>()
          .value
          .asFunction<_get_DesiredRotation_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_DesiredRotation_Native>>>()
        .value
        .asFunction<_put_DesiredRotation_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredExpansion {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(37)
              .cast<Pointer<NativeFunction<_get_DesiredExpansion_Native>>>()
              .value
              .asFunction<_get_DesiredExpansion_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_DesiredExpansion_Native>>>()
        .value
        .asFunction<_put_DesiredExpansion_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredDeceleration {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(39)
              .cast<Pointer<NativeFunction<_get_DesiredDeceleration_Native>>>()
              .value
              .asFunction<_get_DesiredDeceleration_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_DesiredDeceleration_Native>>>()
        .value
        .asFunction<_put_DesiredDeceleration_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredAngularDeceleration {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<NativeFunction<_get_DesiredAngularDeceleration_Native>>>()
          .value
          .asFunction<
              _get_DesiredAngularDeceleration_Dart>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_DesiredAngularDeceleration_Native>>>()
        .value
        .asFunction<
            _put_DesiredAngularDeceleration_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get DesiredExpansionDeceleration {
    final retValuePtr = calloc<Float>();

    try {
      final hr =
          ptr.ref.lpVtbl.value
                  .elementAt(43)
                  .cast<
                      Pointer<
                          NativeFunction<
                              _get_DesiredExpansionDeceleration_Native>>>()
                  .value
                  .asFunction<_get_DesiredExpansionDeceleration_Dart>()(
              ptr.ref.lpVtbl, retValuePtr);

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
            Pointer<NativeFunction<_put_DesiredExpansionDeceleration_Native>>>()
        .value
        .asFunction<
            _put_DesiredExpansionDeceleration_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get InitialTimestamp {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
              .elementAt(45)
              .cast<Pointer<NativeFunction<_get_InitialTimestamp_Native>>>()
              .value
              .asFunction<_get_InitialTimestamp_Dart>()(
          ptr.ref.lpVtbl, retValuePtr);

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
        .cast<Pointer<NativeFunction<_put_InitialTimestamp_Native>>>()
        .value
        .asFunction<_put_InitialTimestamp_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Reset() => ptr.ref.lpVtbl.value
      .elementAt(47)
      .cast<Pointer<NativeFunction<_Reset_Native>>>()
      .value
      .asFunction<_Reset_Dart>()(ptr.ref.lpVtbl);

  int Process(Pointer<Int32> completed) => ptr.ref.lpVtbl.value
      .elementAt(48)
      .cast<Pointer<NativeFunction<_Process_Native>>>()
      .value
      .asFunction<_Process_Dart>()(ptr.ref.lpVtbl, completed);

  int ProcessTime(int timestamp, Pointer<Int32> completed) => ptr
      .ref.lpVtbl.value
      .elementAt(49)
      .cast<Pointer<NativeFunction<_ProcessTime_Native>>>()
      .value
      .asFunction<_ProcessTime_Dart>()(ptr.ref.lpVtbl, timestamp, completed);

  int Complete() => ptr.ref.lpVtbl.value
      .elementAt(50)
      .cast<Pointer<NativeFunction<_Complete_Native>>>()
      .value
      .asFunction<_Complete_Dart>()(ptr.ref.lpVtbl);

  int CompleteTime(int timestamp) => ptr.ref.lpVtbl.value
      .elementAt(51)
      .cast<Pointer<NativeFunction<_CompleteTime_Native>>>()
      .value
      .asFunction<_CompleteTime_Dart>()(ptr.ref.lpVtbl, timestamp);
}

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
