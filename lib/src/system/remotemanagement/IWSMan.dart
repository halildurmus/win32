// IWSMan.dart

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
const IID_IWSMan = '{190D8637-5CD3-496D-AD24-69636BB5A3B5}';

/// {@category Interface}
/// {@category com}
class IWSMan extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IWSMan(Pointer<COMObject> ptr) : super(ptr);

  int CreateSession(
    Pointer<Utf16> connection,
    int flags,
    Pointer<COMObject> connectionOptions,
    Pointer<Pointer<COMObject>> session,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> connection,
            Int32 flags,
            Pointer<COMObject> connectionOptions,
            Pointer<Pointer<COMObject>> session,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> connection,
            int flags,
            Pointer<COMObject> connectionOptions,
            Pointer<Pointer<COMObject>> session,
          )>()(
        ptr.ref.lpVtbl,
        connection,
        flags,
        connectionOptions,
        session,
      );

  int CreateConnectionOptions(
    Pointer<Pointer<COMObject>> connectionOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> connectionOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> connectionOptions,
          )>()(
        ptr.ref.lpVtbl,
        connectionOptions,
      );

  Pointer<Utf16> get CommandLine {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get Error {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_WSMan = '{BCED617B-EC03-420B-8508-977DC7A686BD}';

/// {@category com}
class WSMan extends IWSMan {
  WSMan(Pointer<COMObject> ptr) : super(ptr);

  factory WSMan.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WSMan);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWSMan);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WSMan(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
