// IMSVidPlayback.dart

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

import '../../media/directshow/IMSVidInputDevice.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMSVidPlayback = '{37B03538-A4C8-11D2-B634-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidPlayback extends IMSVidInputDevice {
  // vtable begins at 18, is 14 entries long.
  IMSVidPlayback(Pointer<COMObject> ptr) : super(ptr);

  int get EnableResetOnStop {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EnableResetOnStop(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int Run() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int Pause() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int get_CanStep(
    int fBackwards,
    Pointer<Int16> pfCan,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fBackwards,
            Pointer<Int16> pfCan,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fBackwards,
            Pointer<Int16> pfCan,
          )>()(
        ptr.ref.lpVtbl,
        fBackwards,
        pfCan,
      );

  int Step(
    int lStep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStep,
          )>()(
        ptr.ref.lpVtbl,
        lStep,
      );

  set Rate(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Double plRate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double plRate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get Rate {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> plRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> plRate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CurrentPosition(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lPosition,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lPosition,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CurrentPosition {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lPosition,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PositionMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 lPositionMode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int lPositionMode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get PositionMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lPositionMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lPositionMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lLength,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
