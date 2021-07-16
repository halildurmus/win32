// IManipulationProcessor.dart

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
import '../../ui/touchinput/structs.g.dart';

/// @nodoc
const CLSID_ManipulationProcessor = '{597D4FB0-47FD-4AFF-89B9-C6CFAE8CF08E}';

/// @nodoc
const IID_IManipulationProcessor = '{A22AC519-8300-48A0-BEF4-F1BE8737DBA4}';

typedef _get_SupportedManipulations_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> manipulations);
typedef _get_SupportedManipulations_Dart = int Function(
    Pointer obj, Pointer<Uint32> manipulations);

typedef _put_SupportedManipulations_Native = Int32 Function(
    Pointer obj, Uint32 manipulations);
typedef _put_SupportedManipulations_Dart = int Function(
    Pointer obj, int manipulations);

typedef _get_PivotPointX_Native = Int32 Function(
    Pointer obj, Pointer<Float> pivotPointX);
typedef _get_PivotPointX_Dart = int Function(
    Pointer obj, Pointer<Float> pivotPointX);

typedef _put_PivotPointX_Native = Int32 Function(
    Pointer obj, Float pivotPointX);
typedef _put_PivotPointX_Dart = int Function(Pointer obj, double pivotPointX);

typedef _get_PivotPointY_Native = Int32 Function(
    Pointer obj, Pointer<Float> pivotPointY);
typedef _get_PivotPointY_Dart = int Function(
    Pointer obj, Pointer<Float> pivotPointY);

typedef _put_PivotPointY_Native = Int32 Function(
    Pointer obj, Float pivotPointY);
typedef _put_PivotPointY_Dart = int Function(Pointer obj, double pivotPointY);

typedef _get_PivotRadius_Native = Int32 Function(
    Pointer obj, Pointer<Float> pivotRadius);
typedef _get_PivotRadius_Dart = int Function(
    Pointer obj, Pointer<Float> pivotRadius);

typedef _put_PivotRadius_Native = Int32 Function(
    Pointer obj, Float pivotRadius);
typedef _put_PivotRadius_Dart = int Function(Pointer obj, double pivotRadius);

typedef _CompleteManipulation_Native = Int32 Function(Pointer obj);
typedef _CompleteManipulation_Dart = int Function(Pointer obj);

typedef _ProcessDown_Native = Int32 Function(
    Pointer obj, Uint32 manipulatorId, Float x, Float y);
typedef _ProcessDown_Dart = int Function(
    Pointer obj, int manipulatorId, double x, double y);

typedef _ProcessMove_Native = Int32 Function(
    Pointer obj, Uint32 manipulatorId, Float x, Float y);
typedef _ProcessMove_Dart = int Function(
    Pointer obj, int manipulatorId, double x, double y);

typedef _ProcessUp_Native = Int32 Function(
    Pointer obj, Uint32 manipulatorId, Float x, Float y);
typedef _ProcessUp_Dart = int Function(
    Pointer obj, int manipulatorId, double x, double y);

typedef _ProcessDownWithTime_Native = Int32 Function(
    Pointer obj, Uint32 manipulatorId, Float x, Float y, Uint32 timestamp);
typedef _ProcessDownWithTime_Dart = int Function(
    Pointer obj, int manipulatorId, double x, double y, int timestamp);

typedef _ProcessMoveWithTime_Native = Int32 Function(
    Pointer obj, Uint32 manipulatorId, Float x, Float y, Uint32 timestamp);
typedef _ProcessMoveWithTime_Dart = int Function(
    Pointer obj, int manipulatorId, double x, double y, int timestamp);

typedef _ProcessUpWithTime_Native = Int32 Function(
    Pointer obj, Uint32 manipulatorId, Float x, Float y, Uint32 timestamp);
typedef _ProcessUpWithTime_Dart = int Function(
    Pointer obj, int manipulatorId, double x, double y, int timestamp);

typedef _GetVelocityX_Native = Int32 Function(
    Pointer obj, Pointer<Float> velocityX);
typedef _GetVelocityX_Dart = int Function(
    Pointer obj, Pointer<Float> velocityX);

typedef _GetVelocityY_Native = Int32 Function(
    Pointer obj, Pointer<Float> velocityY);
typedef _GetVelocityY_Dart = int Function(
    Pointer obj, Pointer<Float> velocityY);

typedef _GetExpansionVelocity_Native = Int32 Function(
    Pointer obj, Pointer<Float> expansionVelocity);
typedef _GetExpansionVelocity_Dart = int Function(
    Pointer obj, Pointer<Float> expansionVelocity);

typedef _GetAngularVelocity_Native = Int32 Function(
    Pointer obj, Pointer<Float> angularVelocity);
typedef _GetAngularVelocity_Dart = int Function(
    Pointer obj, Pointer<Float> angularVelocity);

typedef _get_MinimumScaleRotateRadius_Native = Int32 Function(
    Pointer obj, Pointer<Float> minRadius);
typedef _get_MinimumScaleRotateRadius_Dart = int Function(
    Pointer obj, Pointer<Float> minRadius);

typedef _put_MinimumScaleRotateRadius_Native = Int32 Function(
    Pointer obj, Float minRadius);
typedef _put_MinimumScaleRotateRadius_Dart = int Function(
    Pointer obj, double minRadius);

/// {@category Interface}
/// {@category com}
class IManipulationProcessor extends IUnknown {
  // vtable begins at 3, ends at 23

  IManipulationProcessor(Pointer<COMObject> ptr) : super(ptr);

  int get SupportedManipulations {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<Pointer<NativeFunction<_get_SupportedManipulations_Native>>>()
          .value
          .asFunction<
              _get_SupportedManipulations_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SupportedManipulations(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<Pointer<NativeFunction<_put_SupportedManipulations_Native>>>()
        .value
        .asFunction<_put_SupportedManipulations_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PivotPointX {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_get_PivotPointX_Native>>>()
          .value
          .asFunction<_get_PivotPointX_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PivotPointX(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<Pointer<NativeFunction<_put_PivotPointX_Native>>>()
        .value
        .asFunction<_put_PivotPointX_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PivotPointY {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<Pointer<NativeFunction<_get_PivotPointY_Native>>>()
          .value
          .asFunction<_get_PivotPointY_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PivotPointY(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<Pointer<NativeFunction<_put_PivotPointY_Native>>>()
        .value
        .asFunction<_put_PivotPointY_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PivotRadius {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<Pointer<NativeFunction<_get_PivotRadius_Native>>>()
          .value
          .asFunction<_get_PivotRadius_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PivotRadius(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<Pointer<NativeFunction<_put_PivotRadius_Native>>>()
        .value
        .asFunction<_put_PivotRadius_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int CompleteManipulation() => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_CompleteManipulation_Native>>>()
      .value
      .asFunction<_CompleteManipulation_Dart>()(ptr.ref.lpVtbl);

  int ProcessDown(int manipulatorId, double x, double y) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_ProcessDown_Native>>>()
      .value
      .asFunction<_ProcessDown_Dart>()(ptr.ref.lpVtbl, manipulatorId, x, y);

  int ProcessMove(int manipulatorId, double x, double y) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_ProcessMove_Native>>>()
      .value
      .asFunction<_ProcessMove_Dart>()(ptr.ref.lpVtbl, manipulatorId, x, y);

  int ProcessUp(int manipulatorId, double x, double y) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_ProcessUp_Native>>>()
      .value
      .asFunction<_ProcessUp_Dart>()(ptr.ref.lpVtbl, manipulatorId, x, y);

  int ProcessDownWithTime(
          int manipulatorId, double x, double y, int timestamp) =>
      ptr.ref.lpVtbl.value
              .elementAt(15)
              .cast<Pointer<NativeFunction<_ProcessDownWithTime_Native>>>()
              .value
              .asFunction<_ProcessDownWithTime_Dart>()(
          ptr.ref.lpVtbl, manipulatorId, x, y, timestamp);

  int ProcessMoveWithTime(
          int manipulatorId, double x, double y, int timestamp) =>
      ptr.ref.lpVtbl.value
              .elementAt(16)
              .cast<Pointer<NativeFunction<_ProcessMoveWithTime_Native>>>()
              .value
              .asFunction<_ProcessMoveWithTime_Dart>()(
          ptr.ref.lpVtbl, manipulatorId, x, y, timestamp);

  int ProcessUpWithTime(int manipulatorId, double x, double y, int timestamp) =>
      ptr.ref.lpVtbl.value
              .elementAt(17)
              .cast<Pointer<NativeFunction<_ProcessUpWithTime_Native>>>()
              .value
              .asFunction<_ProcessUpWithTime_Dart>()(
          ptr.ref.lpVtbl, manipulatorId, x, y, timestamp);

  int GetVelocityX(Pointer<Float> velocityX) => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_GetVelocityX_Native>>>()
      .value
      .asFunction<_GetVelocityX_Dart>()(ptr.ref.lpVtbl, velocityX);

  int GetVelocityY(Pointer<Float> velocityY) => ptr.ref.lpVtbl.value
      .elementAt(19)
      .cast<Pointer<NativeFunction<_GetVelocityY_Native>>>()
      .value
      .asFunction<_GetVelocityY_Dart>()(ptr.ref.lpVtbl, velocityY);

  int GetExpansionVelocity(Pointer<Float> expansionVelocity) => ptr
          .ref.lpVtbl.value
          .elementAt(20)
          .cast<Pointer<NativeFunction<_GetExpansionVelocity_Native>>>()
          .value
          .asFunction<_GetExpansionVelocity_Dart>()(
      ptr.ref.lpVtbl, expansionVelocity);

  int GetAngularVelocity(Pointer<Float> angularVelocity) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_GetAngularVelocity_Native>>>()
      .value
      .asFunction<_GetAngularVelocity_Dart>()(ptr.ref.lpVtbl, angularVelocity);

  double get MinimumScaleRotateRadius {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<Pointer<NativeFunction<_get_MinimumScaleRotateRadius_Native>>>()
          .value
          .asFunction<
              _get_MinimumScaleRotateRadius_Dart>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MinimumScaleRotateRadius(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(23)
        .cast<Pointer<NativeFunction<_put_MinimumScaleRotateRadius_Native>>>()
        .value
        .asFunction<
            _put_MinimumScaleRotateRadius_Dart>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// {@category com}
class ManipulationProcessor extends IManipulationProcessor {
  ManipulationProcessor(Pointer<COMObject> ptr) : super(ptr);

  factory ManipulationProcessor.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ManipulationProcessor);
    final iid = calloc<GUID>()..ref.setGUID(IID_IManipulationProcessor);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ManipulationProcessor(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
