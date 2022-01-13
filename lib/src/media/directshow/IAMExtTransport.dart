// IAMExtTransport.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMExtTransport = '{A03CD5F0-3045-11CF-8C44-00AA006B6814}';

/// {@category Interface}
/// {@category com}
class IAMExtTransport extends IUnknown {
  // vtable begins at 3, is 28 entries long.
  IAMExtTransport(Pointer<COMObject> ptr) : super(ptr);

  int GetCapability(
    int Capability,
    Pointer<Int32> pValue,
    Pointer<Double> pdblValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Capability,
            Pointer<Int32> pValue,
            Pointer<Double> pdblValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Capability,
            Pointer<Int32> pValue,
            Pointer<Double> pdblValue,
          )>()(
        ptr.ref.lpVtbl,
        Capability,
        pValue,
        pdblValue,
      );

  set MediaState(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 State,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int State,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get MediaState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LocalControl(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 State,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int State,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get LocalControl {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetStatus(
    int StatusItem,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StatusItem,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StatusItem,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        StatusItem,
        pValue,
      );

  int GetTransportBasicParameters(
    int Param,
    Pointer<Int32> pValue,
    Pointer<Pointer<Utf16>> ppszData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Pointer<Int32> pValue,
            Pointer<Pointer<Utf16>> ppszData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            Pointer<Int32> pValue,
            Pointer<Pointer<Utf16>> ppszData,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        pValue,
        ppszData,
      );

  int SetTransportBasicParameters(
    int Param,
    int Value,
    Pointer<Utf16> pszData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Int32 Value,
            Pointer<Utf16> pszData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            int Value,
            Pointer<Utf16> pszData,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        Value,
        pszData,
      );

  int GetTransportVideoParameters(
    int Param,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        pValue,
      );

  int SetTransportVideoParameters(
    int Param,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        Value,
      );

  int GetTransportAudioParameters(
    int Param,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        pValue,
      );

  int SetTransportAudioParameters(
    int Param,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Param,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Param,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Param,
        Value,
      );

  set Mode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Mode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Mode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Mode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Rate(double value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Double dblRate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          double dblRate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  double get Rate {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pdblRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pdblRate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetChase(
    Pointer<Int32> pEnabled,
    Pointer<Int32> pOffset,
    Pointer<IntPtr> phEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pEnabled,
            Pointer<Int32> pOffset,
            Pointer<IntPtr> phEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pEnabled,
            Pointer<Int32> pOffset,
            Pointer<IntPtr> phEvent,
          )>()(
        ptr.ref.lpVtbl,
        pEnabled,
        pOffset,
        phEvent,
      );

  int SetChase(
    int Enable,
    int Offset,
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Enable,
            Int32 Offset,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Enable,
            int Offset,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        Enable,
        Offset,
        hEvent,
      );

  int GetBump(
    Pointer<Int32> pSpeed,
    Pointer<Int32> pDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSpeed,
            Pointer<Int32> pDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSpeed,
            Pointer<Int32> pDuration,
          )>()(
        ptr.ref.lpVtbl,
        pSpeed,
        pDuration,
      );

  int SetBump(
    int Speed,
    int Duration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Speed,
            Int32 Duration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Speed,
            int Duration,
          )>()(
        ptr.ref.lpVtbl,
        Speed,
        Duration,
      );

  int get AntiClogControl {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AntiClogControl(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Enable,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Enable,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int GetEditPropertySet(
    int EditID,
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EditID,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EditID,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        EditID,
        pState,
      );

  int SetEditPropertySet(
    Pointer<Int32> pEditID,
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pEditID,
            Int32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pEditID,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        pEditID,
        State,
      );

  int GetEditProperty(
    int EditID,
    int Param,
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EditID,
            Int32 Param,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EditID,
            int Param,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        EditID,
        Param,
        pValue,
      );

  int SetEditProperty(
    int EditID,
    int Param,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 EditID,
            Int32 Param,
            Int32 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EditID,
            int Param,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        EditID,
        Param,
        Value,
      );

  int get EditStart {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EditStart(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
