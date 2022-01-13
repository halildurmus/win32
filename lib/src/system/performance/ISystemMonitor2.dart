// ISystemMonitor2.dart

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

import '../../system/performance/ISystemMonitor.dart';
import '../../foundation/structs.g.dart';
import '../../system/performance/structs.g.dart';

/// @nodoc
const IID_ISystemMonitor2 = '{08E3206A-5FD2-4FDE-A8A5-8CB3B63D2677}';

/// {@category Interface}
/// {@category com}
class ISystemMonitor2 extends ISystemMonitor {
  // vtable begins at 79, is 20 entries long.
  ISystemMonitor2(Pointer<COMObject> ptr) : super(ptr);

  set EnableDigitGrouping(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(79)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bState,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bState,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EnableDigitGrouping {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EnableToolTips(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(81)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bState,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bState,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EnableToolTips {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ShowTimeAxisLabels(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(83)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bState,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bState,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ShowTimeAxisLabels {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ChartScroll(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(85)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bScroll,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bScroll,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ChartScroll {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbScroll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbScroll,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DataPointCount(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(87)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 iNewCount,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int iNewCount,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get DataPointCount {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> piDataPointCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> piDataPointCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ScaleToFit(
    int bSelectedCountersOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 bSelectedCountersOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bSelectedCountersOnly,
          )>()(
        ptr.ref.lpVtbl,
        bSelectedCountersOnly,
      );

  int SaveAs(
    Pointer<Utf16> bstrFileName,
    int eSysmonFileType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Int32 eSysmonFileType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            int eSysmonFileType,
          )>()(
        ptr.ref.lpVtbl,
        bstrFileName,
        eSysmonFileType,
      );

  int Relog(
    Pointer<Utf16> bstrFileName,
    int eSysmonFileType,
    int iFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Int32 eSysmonFileType,
            Int32 iFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            int eSysmonFileType,
            int iFilter,
          )>()(
        ptr.ref.lpVtbl,
        bstrFileName,
        eSysmonFileType,
        iFilter,
      );

  int ClearData() => ptr.ref.lpVtbl.value
          .elementAt(92)
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

  double get LogSourceStartTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get LogSourceStopTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(94)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetLogViewRange(
    double StartTime,
    double StopTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(95)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double StartTime,
            Double StopTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double StartTime,
            double StopTime,
          )>()(
        ptr.ref.lpVtbl,
        StartTime,
        StopTime,
      );

  int GetLogViewRange(
    Pointer<Double> StartTime,
    Pointer<Double> StopTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(96)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> StartTime,
            Pointer<Double> StopTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> StartTime,
            Pointer<Double> StopTime,
          )>()(
        ptr.ref.lpVtbl,
        StartTime,
        StopTime,
      );

  int BatchingLock(
    int fLock,
    int eBatchReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(97)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fLock,
            Int32 eBatchReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fLock,
            int eBatchReason,
          )>()(
        ptr.ref.lpVtbl,
        fLock,
        eBatchReason,
      );

  int LoadSettings(
    Pointer<Utf16> bstrSettingFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(98)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSettingFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSettingFileName,
          )>()(
        ptr.ref.lpVtbl,
        bstrSettingFileName,
      );
}

/// @nodoc
const CLSID_SystemMonitor2 = '{7F30578C-5F38-4612-ACFE-6ED04C7B7AF8}';

/// {@category com}
class SystemMonitor2 extends ISystemMonitor2 {
  SystemMonitor2(Pointer<COMObject> ptr) : super(ptr);

  factory SystemMonitor2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SystemMonitor2);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISystemMonitor2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SystemMonitor2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
