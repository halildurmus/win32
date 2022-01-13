// ITsSbSession.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_ITsSbSession = '{D453AAC7-B1D8-4C5E-BA34-9AFB4C8C5510}';

/// {@category Interface}
/// {@category com}
class ITsSbSession extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  ITsSbSession(Pointer<COMObject> ptr) : super(ptr);

  int get SessionId {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get TargetName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> targetName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> targetName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set TargetName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(5)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> targetName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> targetName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Username {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> userName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> userName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Domain {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> domain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> domain,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get State {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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

  set State(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
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

  FILETIME get CreateTime {
    final retValuePtr = calloc<FILETIME>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pTime,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CreateTime(FILETIME value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          FILETIME Time,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          FILETIME Time,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  FILETIME get DisconnectTime {
    final retValuePtr = calloc<FILETIME>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pTime,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DisconnectTime(FILETIME value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          FILETIME Time,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          FILETIME Time,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get InitialProgram {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> app,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> app,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set InitialProgram(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> Application,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> Application,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  CLIENT_DISPLAY get ClientDisplay {
    final retValuePtr = calloc<CLIENT_DISPLAY>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CLIENT_DISPLAY> pClientDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CLIENT_DISPLAY> pClientDisplay,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClientDisplay(CLIENT_DISPLAY value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          CLIENT_DISPLAY pClientDisplay,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          CLIENT_DISPLAY pClientDisplay,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ProtocolType {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ProtocolType(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 Val,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Val,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
