// IAMStats.dart

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
const IID_IAMStats = '{BC9BCF80-DCD2-11D2-ABF6-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IAMStats extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IAMStats(Pointer<COMObject> ptr) : super(ptr);

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

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetValueByIndex(
    int lIndex,
    Pointer<Pointer<Utf16>> szName,
    Pointer<Int32> lCount,
    Pointer<Double> dLast,
    Pointer<Double> dAverage,
    Pointer<Double> dStdDev,
    Pointer<Double> dMin,
    Pointer<Double> dMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<Utf16>> szName,
            Pointer<Int32> lCount,
            Pointer<Double> dLast,
            Pointer<Double> dAverage,
            Pointer<Double> dStdDev,
            Pointer<Double> dMin,
            Pointer<Double> dMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<Utf16>> szName,
            Pointer<Int32> lCount,
            Pointer<Double> dLast,
            Pointer<Double> dAverage,
            Pointer<Double> dStdDev,
            Pointer<Double> dMin,
            Pointer<Double> dMax,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        szName,
        lCount,
        dLast,
        dAverage,
        dStdDev,
        dMin,
        dMax,
      );

  int GetValueByName(
    Pointer<Utf16> szName,
    Pointer<Int32> lIndex,
    Pointer<Int32> lCount,
    Pointer<Double> dLast,
    Pointer<Double> dAverage,
    Pointer<Double> dStdDev,
    Pointer<Double> dMin,
    Pointer<Double> dMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szName,
            Pointer<Int32> lIndex,
            Pointer<Int32> lCount,
            Pointer<Double> dLast,
            Pointer<Double> dAverage,
            Pointer<Double> dStdDev,
            Pointer<Double> dMin,
            Pointer<Double> dMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szName,
            Pointer<Int32> lIndex,
            Pointer<Int32> lCount,
            Pointer<Double> dLast,
            Pointer<Double> dAverage,
            Pointer<Double> dStdDev,
            Pointer<Double> dMin,
            Pointer<Double> dMax,
          )>()(
        ptr.ref.lpVtbl,
        szName,
        lIndex,
        lCount,
        dLast,
        dAverage,
        dStdDev,
        dMin,
        dMax,
      );

  int GetIndex(
    Pointer<Utf16> szName,
    int lCreate,
    Pointer<Int32> plIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szName,
            Int32 lCreate,
            Pointer<Int32> plIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szName,
            int lCreate,
            Pointer<Int32> plIndex,
          )>()(
        ptr.ref.lpVtbl,
        szName,
        lCreate,
        plIndex,
      );

  int AddValue(
    int lIndex,
    double dValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Double dValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            double dValue,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        dValue,
      );
}
