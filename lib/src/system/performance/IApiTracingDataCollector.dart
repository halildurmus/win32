// IApiTracingDataCollector.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IApiTracingDataCollector = '{0383751A-098B-11D8-9414-505054503030}';

/// {@category Interface}
/// {@category com}
class IApiTracingDataCollector extends IDataCollector {
  // vtable begins at 32, is 14 entries long.
  IApiTracingDataCollector(Pointer<COMObject> ptr) : super(ptr);

  int get LogApiNamesOnly {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> logapinames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> logapinames,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LogApiNamesOnly(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(33)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 logapinames,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int logapinames,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get LogApisRecursively {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> logrecursively,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> logrecursively,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LogApisRecursively(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(35)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 logrecursively,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int logrecursively,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get ExePath {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> exepath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> exepath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ExePath(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(37)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> exepath,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> exepath,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get LogFilePath {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> logfilepath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> logfilepath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set LogFilePath(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(39)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> logfilepath,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> logfilepath,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<SAFEARRAY> get IncludeModules {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> includemodules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> includemodules,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set IncludeModules(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(41)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> includemodules,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> includemodules,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<SAFEARRAY> get IncludeApis {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> includeapis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> includeapis,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set IncludeApis(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(43)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> includeapis,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> includeapis,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<SAFEARRAY> get ExcludeApis {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> excludeapis,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> excludeapis,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ExcludeApis(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(45)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> excludeapis,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> excludeapis,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
