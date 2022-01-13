// IMbnDeviceService.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMbnDeviceService = '{B3BB9A71-DC70-4BE9-A4DA-7886AE8B191B}';

/// {@category Interface}
/// {@category com}
class IMbnDeviceService extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMbnDeviceService(Pointer<COMObject> ptr) : super(ptr);

  int QuerySupportedCommands(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );

  int OpenCommandSession(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );

  int CloseCommandSession(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );

  int SetCommand(
    int commandID,
    Pointer<SAFEARRAY> deviceServiceData,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandID,
            Pointer<SAFEARRAY> deviceServiceData,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandID,
            Pointer<SAFEARRAY> deviceServiceData,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        commandID,
        deviceServiceData,
        requestID,
      );

  int QueryCommand(
    int commandID,
    Pointer<SAFEARRAY> deviceServiceData,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandID,
            Pointer<SAFEARRAY> deviceServiceData,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandID,
            Pointer<SAFEARRAY> deviceServiceData,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        commandID,
        deviceServiceData,
        requestID,
      );

  int OpenDataSession(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );

  int CloseDataSession(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );

  int WriteData(
    Pointer<SAFEARRAY> deviceServiceData,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> deviceServiceData,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> deviceServiceData,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceServiceData,
        requestID,
      );

  Pointer<Utf16> get InterfaceID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> InterfaceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> InterfaceID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get DeviceServiceID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> DeviceServiceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> DeviceServiceID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get IsCommandSessionOpen {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int get IsDataSessionOpen {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
