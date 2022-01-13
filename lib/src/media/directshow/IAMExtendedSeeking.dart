// IAMExtendedSeeking.dart

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

/// @nodoc
const IID_IAMExtendedSeeking = '{FA2AA8F9-8B62-11D0-A520-000000000000}';

/// {@category Interface}
/// {@category com}
class IAMExtendedSeeking extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IAMExtendedSeeking(Pointer<COMObject> ptr) : super(ptr);

  int get ExSeekCapabilities {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pExCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pExCapabilities,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MarkerCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMarkerCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMarkerCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get CurrentMarker {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCurrentMarker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCurrentMarker,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetMarkerTime(
    int MarkerNum,
    Pointer<Double> pMarkerTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MarkerNum,
            Pointer<Double> pMarkerTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MarkerNum,
            Pointer<Double> pMarkerTime,
          )>()(
        ptr.ref.lpVtbl,
        MarkerNum,
        pMarkerTime,
      );

  int GetMarkerName(
    int MarkerNum,
    Pointer<Pointer<Utf16>> pbstrMarkerName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MarkerNum,
            Pointer<Pointer<Utf16>> pbstrMarkerName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MarkerNum,
            Pointer<Pointer<Utf16>> pbstrMarkerName,
          )>()(
        ptr.ref.lpVtbl,
        MarkerNum,
        pbstrMarkerName,
      );

  set PlaybackSpeed(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Double Speed,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double Speed,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get PlaybackSpeed {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pSpeed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pSpeed,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
