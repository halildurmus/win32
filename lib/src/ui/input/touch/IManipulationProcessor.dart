// IManipulationProcessor.dart

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
import '../../../ui/input/touch/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IManipulationProcessor = '{A22AC519-8300-48A0-BEF4-F1BE8737DBA4}';

/// {@category Interface}
/// {@category com}
class IManipulationProcessor extends IUnknown {
  // vtable begins at 3, is 21 entries long.
  IManipulationProcessor(Pointer<COMObject> ptr) : super(ptr);

  int get SupportedManipulations {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> manipulations,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> manipulations,
          )>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 manipulations,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int manipulations,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PivotPointX {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pivotPointX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pivotPointX,
          )>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float pivotPointX,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double pivotPointX,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PivotPointY {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pivotPointY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pivotPointY,
          )>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float pivotPointY,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double pivotPointY,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PivotRadius {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pivotRadius,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pivotRadius,
          )>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float pivotRadius,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double pivotRadius,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int CompleteManipulation() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int ProcessDown(
    int manipulatorId,
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 manipulatorId,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int manipulatorId,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        manipulatorId,
        x,
        y,
      );

  int ProcessMove(
    int manipulatorId,
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 manipulatorId,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int manipulatorId,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        manipulatorId,
        x,
        y,
      );

  int ProcessUp(
    int manipulatorId,
    double x,
    double y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 manipulatorId,
            Float x,
            Float y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int manipulatorId,
            double x,
            double y,
          )>()(
        ptr.ref.lpVtbl,
        manipulatorId,
        x,
        y,
      );

  int ProcessDownWithTime(
    int manipulatorId,
    double x,
    double y,
    int timestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 manipulatorId,
            Float x,
            Float y,
            Uint32 timestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int manipulatorId,
            double x,
            double y,
            int timestamp,
          )>()(
        ptr.ref.lpVtbl,
        manipulatorId,
        x,
        y,
        timestamp,
      );

  int ProcessMoveWithTime(
    int manipulatorId,
    double x,
    double y,
    int timestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 manipulatorId,
            Float x,
            Float y,
            Uint32 timestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int manipulatorId,
            double x,
            double y,
            int timestamp,
          )>()(
        ptr.ref.lpVtbl,
        manipulatorId,
        x,
        y,
        timestamp,
      );

  int ProcessUpWithTime(
    int manipulatorId,
    double x,
    double y,
    int timestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 manipulatorId,
            Float x,
            Float y,
            Uint32 timestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int manipulatorId,
            double x,
            double y,
            int timestamp,
          )>()(
        ptr.ref.lpVtbl,
        manipulatorId,
        x,
        y,
        timestamp,
      );

  int GetVelocityX(
    Pointer<Float> velocityX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> velocityX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> velocityX,
          )>()(
        ptr.ref.lpVtbl,
        velocityX,
      );

  int GetVelocityY(
    Pointer<Float> velocityY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> velocityY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> velocityY,
          )>()(
        ptr.ref.lpVtbl,
        velocityY,
      );

  int GetExpansionVelocity(
    Pointer<Float> expansionVelocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> expansionVelocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> expansionVelocity,
          )>()(
        ptr.ref.lpVtbl,
        expansionVelocity,
      );

  int GetAngularVelocity(
    Pointer<Float> angularVelocity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> angularVelocity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> angularVelocity,
          )>()(
        ptr.ref.lpVtbl,
        angularVelocity,
      );

  double get MinimumScaleRotateRadius {
    final retValuePtr = calloc<Float>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> minRadius,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> minRadius,
          )>()(ptr.ref.lpVtbl, retValuePtr);

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
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Float minRadius,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double minRadius,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_ManipulationProcessor = '{597D4FB0-47FD-4AFF-89B9-C6CFAE8CF08E}';

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
