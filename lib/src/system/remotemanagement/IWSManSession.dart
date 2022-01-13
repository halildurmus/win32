// IWSManSession.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSManSession = '{FC84FC58-1286-40C4-9DA0-C8EF6EC241E0}';

/// {@category Interface}
/// {@category com}
class IWSManSession extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  IWSManSession(Pointer<COMObject> ptr) : super(ptr);

  int Get(
    VARIANT resourceUri,
    int flags,
    Pointer<Pointer<Utf16>> resource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT resourceUri,
            Int32 flags,
            Pointer<Pointer<Utf16>> resource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT resourceUri,
            int flags,
            Pointer<Pointer<Utf16>> resource,
          )>()(
        ptr.ref.lpVtbl,
        resourceUri,
        flags,
        resource,
      );

  int Put(
    VARIANT resourceUri,
    Pointer<Utf16> resource,
    int flags,
    Pointer<Pointer<Utf16>> resultResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT resourceUri,
            Pointer<Utf16> resource,
            Int32 flags,
            Pointer<Pointer<Utf16>> resultResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT resourceUri,
            Pointer<Utf16> resource,
            int flags,
            Pointer<Pointer<Utf16>> resultResource,
          )>()(
        ptr.ref.lpVtbl,
        resourceUri,
        resource,
        flags,
        resultResource,
      );

  int Create(
    VARIANT resourceUri,
    Pointer<Utf16> resource,
    int flags,
    Pointer<Pointer<Utf16>> newUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT resourceUri,
            Pointer<Utf16> resource,
            Int32 flags,
            Pointer<Pointer<Utf16>> newUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT resourceUri,
            Pointer<Utf16> resource,
            int flags,
            Pointer<Pointer<Utf16>> newUri,
          )>()(
        ptr.ref.lpVtbl,
        resourceUri,
        resource,
        flags,
        newUri,
      );

  int Delete(
    VARIANT resourceUri,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT resourceUri,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT resourceUri,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        resourceUri,
        flags,
      );

  int Invoke_1(
    Pointer<Utf16> actionUri,
    VARIANT resourceUri,
    Pointer<Utf16> parameters,
    int flags,
    Pointer<Pointer<Utf16>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> actionUri,
            VARIANT resourceUri,
            Pointer<Utf16> parameters,
            Int32 flags,
            Pointer<Pointer<Utf16>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> actionUri,
            VARIANT resourceUri,
            Pointer<Utf16> parameters,
            int flags,
            Pointer<Pointer<Utf16>> result,
          )>()(
        ptr.ref.lpVtbl,
        actionUri,
        resourceUri,
        parameters,
        flags,
        result,
      );

  int Enumerate(
    VARIANT resourceUri,
    Pointer<Utf16> filter,
    Pointer<Utf16> dialect,
    int flags,
    Pointer<Pointer<COMObject>> resultSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT resourceUri,
            Pointer<Utf16> filter,
            Pointer<Utf16> dialect,
            Int32 flags,
            Pointer<Pointer<COMObject>> resultSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT resourceUri,
            Pointer<Utf16> filter,
            Pointer<Utf16> dialect,
            int flags,
            Pointer<Pointer<COMObject>> resultSet,
          )>()(
        ptr.ref.lpVtbl,
        resourceUri,
        filter,
        dialect,
        flags,
        resultSet,
      );

  int Identify(
    int flags,
    Pointer<Pointer<Utf16>> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
            Pointer<Pointer<Utf16>> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Pointer<Utf16>> result,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        result,
      );

  Pointer<Utf16> get Error {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int get BatchItems {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set BatchItems(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Timeout {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Timeout(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
