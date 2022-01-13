// IStiDeviceControl.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IStiDeviceControl = '{128A9860-52DC-11D0-9EDF-444553540000}';

/// {@category Interface}
/// {@category com}
class IStiDeviceControl extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IStiDeviceControl(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int dwDeviceType,
    int dwMode,
    Pointer<Utf16> pwszPortName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDeviceType,
            Uint32 dwMode,
            Pointer<Utf16> pwszPortName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDeviceType,
            int dwMode,
            Pointer<Utf16> pwszPortName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwDeviceType,
        dwMode,
        pwszPortName,
        dwFlags,
      );

  int RawReadData(
    Pointer lpBuffer,
    Pointer<Uint32> lpdwNumberOfBytes,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpBuffer,
            Pointer<Uint32> lpdwNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpBuffer,
            Pointer<Uint32> lpdwNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        lpBuffer,
        lpdwNumberOfBytes,
        lpOverlapped,
      );

  int RawWriteData(
    Pointer lpBuffer,
    int nNumberOfBytes,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpBuffer,
            Uint32 nNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpBuffer,
            int nNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        lpBuffer,
        nNumberOfBytes,
        lpOverlapped,
      );

  int RawReadCommand(
    Pointer lpBuffer,
    Pointer<Uint32> lpdwNumberOfBytes,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpBuffer,
            Pointer<Uint32> lpdwNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpBuffer,
            Pointer<Uint32> lpdwNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        lpBuffer,
        lpdwNumberOfBytes,
        lpOverlapped,
      );

  int RawWriteCommand(
    Pointer lpBuffer,
    int nNumberOfBytes,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpBuffer,
            Uint32 nNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpBuffer,
            int nNumberOfBytes,
            Pointer<OVERLAPPED> lpOverlapped,
          )>()(
        ptr.ref.lpVtbl,
        lpBuffer,
        nNumberOfBytes,
        lpOverlapped,
      );

  int RawDeviceControl(
    int EscapeFunction,
    Pointer lpInData,
    int cbInDataSize,
    Pointer pOutData,
    int dwOutDataSize,
    Pointer<Uint32> pdwActualData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EscapeFunction,
            Pointer lpInData,
            Uint32 cbInDataSize,
            Pointer pOutData,
            Uint32 dwOutDataSize,
            Pointer<Uint32> pdwActualData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EscapeFunction,
            Pointer lpInData,
            int cbInDataSize,
            Pointer pOutData,
            int dwOutDataSize,
            Pointer<Uint32> pdwActualData,
          )>()(
        ptr.ref.lpVtbl,
        EscapeFunction,
        lpInData,
        cbInDataSize,
        pOutData,
        dwOutDataSize,
        pdwActualData,
      );

  int GetLastError(
    Pointer<Uint32> lpdwLastError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwLastError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwLastError,
          )>()(
        ptr.ref.lpVtbl,
        lpdwLastError,
      );

  int GetMyDevicePortName(
    Pointer<Utf16> lpszDevicePath,
    int cwDevicePathSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpszDevicePath,
            Uint32 cwDevicePathSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpszDevicePath,
            int cwDevicePathSize,
          )>()(
        ptr.ref.lpVtbl,
        lpszDevicePath,
        cwDevicePathSize,
      );

  int GetMyDeviceHandle(
    Pointer<IntPtr> lph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> lph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> lph,
          )>()(
        ptr.ref.lpVtbl,
        lph,
      );

  int GetMyDeviceOpenMode(
    Pointer<Uint32> pdwOpenMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwOpenMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwOpenMode,
          )>()(
        ptr.ref.lpVtbl,
        pdwOpenMode,
      );

  int WriteToErrorLog(
    int dwMessageType,
    Pointer<Utf16> pszMessage,
    int dwErrorCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMessageType,
            Pointer<Utf16> pszMessage,
            Uint32 dwErrorCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMessageType,
            Pointer<Utf16> pszMessage,
            int dwErrorCode,
          )>()(
        ptr.ref.lpVtbl,
        dwMessageType,
        pszMessage,
        dwErrorCode,
      );
}
