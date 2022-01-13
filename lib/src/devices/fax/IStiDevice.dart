// IStiDevice.dart

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
import '../../devices/fax/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IStiDevice = '{6CFA5A80-2DC8-11D0-90EA-00AA0060F86C}';

/// {@category Interface}
/// {@category com}
class IStiDevice extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IStiDevice(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hinst,
    Pointer<Utf16> pwszDeviceName,
    int dwVersion,
    int dwMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hinst,
            Pointer<Utf16> pwszDeviceName,
            Uint32 dwVersion,
            Uint32 dwMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hinst,
            Pointer<Utf16> pwszDeviceName,
            int dwVersion,
            int dwMode,
          )>()(
        ptr.ref.lpVtbl,
        hinst,
        pwszDeviceName,
        dwVersion,
        dwMode,
      );

  int GetCapabilities(
    Pointer<STI_DEV_CAPS> pDevCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STI_DEV_CAPS> pDevCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STI_DEV_CAPS> pDevCaps,
          )>()(
        ptr.ref.lpVtbl,
        pDevCaps,
      );

  int GetStatus(
    Pointer<STI_DEVICE_STATUS> pDevStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STI_DEVICE_STATUS> pDevStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STI_DEVICE_STATUS> pDevStatus,
          )>()(
        ptr.ref.lpVtbl,
        pDevStatus,
      );

  int DeviceReset() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int Diagnostic(
    Pointer<STI_DIAG> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STI_DIAG> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STI_DIAG> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pBuffer,
      );

  int Escape(
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
    Pointer<Uint32> pdwLastDeviceError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwLastDeviceError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwLastDeviceError,
          )>()(
        ptr.ref.lpVtbl,
        pdwLastDeviceError,
      );

  int LockDevice(
    int dwTimeOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTimeOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTimeOut,
          )>()(
        ptr.ref.lpVtbl,
        dwTimeOut,
      );

  int UnLockDevice() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int RawReadData(
    Pointer lpBuffer,
    Pointer<Uint32> lpdwNumberOfBytes,
    Pointer<OVERLAPPED> lpOverlapped,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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
          .elementAt(13)
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
          .elementAt(14)
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
          .elementAt(15)
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

  int Subscribe(
    Pointer<STISUBSCRIBE> lpSubsribe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STISUBSCRIBE> lpSubsribe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STISUBSCRIBE> lpSubsribe,
          )>()(
        ptr.ref.lpVtbl,
        lpSubsribe,
      );

  int GetLastNotificationData(
    Pointer<STINOTIFY> lpNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STINOTIFY> lpNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STINOTIFY> lpNotify,
          )>()(
        ptr.ref.lpVtbl,
        lpNotify,
      );

  int UnSubscribe() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetLastErrorInfo(
    Pointer<ERROR_INFO> pLastErrorInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ERROR_INFO> pLastErrorInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ERROR_INFO> pLastErrorInfo,
          )>()(
        ptr.ref.lpVtbl,
        pLastErrorInfo,
      );
}
