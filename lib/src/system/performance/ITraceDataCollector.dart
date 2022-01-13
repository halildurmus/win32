// ITraceDataCollector.dart

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

import '../../system/performance/IDataCollector.dart';
import '../../foundation/structs.g.dart';
import '../../system/performance/structs.g.dart';
import '../../system/performance/ITraceDataProviderCollection.dart';

/// @nodoc
const IID_ITraceDataCollector = '{0383750B-098B-11D8-9414-505054503030}';

/// {@category Interface}
/// {@category com}
class ITraceDataCollector extends IDataCollector {
  // vtable begins at 32, is 40 entries long.
  ITraceDataCollector(Pointer<COMObject> ptr) : super(ptr);

  int get BufferSize {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> size,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> size,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BufferSize(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(33)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 size,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int size,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get BuffersLost {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BuffersLost(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(35)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get BuffersWritten {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BuffersWritten(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(37)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ClockType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> clock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> clock,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClockType(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(39)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 clock,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int clock,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EventsLost {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> events,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> events,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EventsLost(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(41)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 events,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int events,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ExtendedModes {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> mode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ExtendedModes(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(43)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 mode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int mode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get FlushTimer {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> seconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> seconds,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set FlushTimer(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(45)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 seconds,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int seconds,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get FreeBuffers {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set FreeBuffers(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(47)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  GUID get Guid {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Guid(GUID value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(49)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          GUID guid,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          GUID guid,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get IsKernelTrace {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> kernel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> kernel,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MaximumBuffers {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MaximumBuffers(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(52)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get MinimumBuffers {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set MinimumBuffers(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(54)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get NumberOfBuffers {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set NumberOfBuffers(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(56)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get PreallocateFile {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> allocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> allocate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PreallocateFile(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(58)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 allocate,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int allocate,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ProcessMode {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> process,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> process,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ProcessMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(60)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 process,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int process,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get RealTimeBuffersLost {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> buffers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set RealTimeBuffersLost(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(62)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 buffers,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int buffers,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SessionId {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> id,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SessionId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(64)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint64 id,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int id,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get SessionName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SessionName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(66)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> name,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> name,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SessionThreadId {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> tid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> tid,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SessionThreadId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(68)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 tid,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int tid,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get StreamMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> mode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set StreamMode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(70)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 mode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int mode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<COMObject> get TraceDataProviders {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> providers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> providers,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
