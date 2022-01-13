// IStillImageW.dart

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
import '../../devices/fax/IStiDevice.dart';
import '../../specialTypes.dart';
import '../../devices/fax/structs.g.dart';

/// @nodoc
const IID_IStillImageW = '{641BD880-2DC8-11D0-90EA-00AA0060F86C}';

/// {@category Interface}
/// {@category com}
class IStillImageW extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IStillImageW(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hinst,
    int dwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hinst,
            Uint32 dwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hinst,
            int dwVersion,
          )>()(
        ptr.ref.lpVtbl,
        hinst,
        dwVersion,
      );

  int GetDeviceList(
    int dwType,
    int dwFlags,
    Pointer<Uint32> pdwItemsReturned,
    Pointer<Pointer> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwType,
            Uint32 dwFlags,
            Pointer<Uint32> pdwItemsReturned,
            Pointer<Pointer> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwType,
            int dwFlags,
            Pointer<Uint32> pdwItemsReturned,
            Pointer<Pointer> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        dwType,
        dwFlags,
        pdwItemsReturned,
        ppBuffer,
      );

  int GetDeviceInfo(
    Pointer<Utf16> pwszDeviceName,
    Pointer<Pointer> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Pointer> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Pointer> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        ppBuffer,
      );

  int CreateDevice(
    Pointer<Utf16> pwszDeviceName,
    int dwMode,
    Pointer<Pointer<COMObject>> pDevice,
    Pointer<COMObject> punkOuter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Uint32 dwMode,
            Pointer<Pointer<COMObject>> pDevice,
            Pointer<COMObject> punkOuter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            int dwMode,
            Pointer<Pointer<COMObject>> pDevice,
            Pointer<COMObject> punkOuter,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        dwMode,
        pDevice,
        punkOuter,
      );

  int GetDeviceValue(
    Pointer<Utf16> pwszDeviceName,
    Pointer<Utf16> pValueName,
    Pointer<Uint32> pType,
    Pointer<Uint8> pData,
    Pointer<Uint32> cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Utf16> pValueName,
            Pointer<Uint32> pType,
            Pointer<Uint8> pData,
            Pointer<Uint32> cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Utf16> pValueName,
            Pointer<Uint32> pType,
            Pointer<Uint8> pData,
            Pointer<Uint32> cbData,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        pValueName,
        pType,
        pData,
        cbData,
      );

  int SetDeviceValue(
    Pointer<Utf16> pwszDeviceName,
    Pointer<Utf16> pValueName,
    int Type,
    Pointer<Uint8> pData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Utf16> pValueName,
            Uint32 Type,
            Pointer<Uint8> pData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Utf16> pValueName,
            int Type,
            Pointer<Uint8> pData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        pValueName,
        Type,
        pData,
        cbData,
      );

  int GetSTILaunchInformation(
    Pointer<Utf16> pwszDeviceName,
    Pointer<Uint32> pdwEventCode,
    Pointer<Utf16> pwszEventName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Uint32> pdwEventCode,
            Pointer<Utf16> pwszEventName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Uint32> pdwEventCode,
            Pointer<Utf16> pwszEventName,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        pdwEventCode,
        pwszEventName,
      );

  int RegisterLaunchApplication(
    Pointer<Utf16> pwszAppName,
    Pointer<Utf16> pwszCommandLine,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAppName,
            Pointer<Utf16> pwszCommandLine,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAppName,
            Pointer<Utf16> pwszCommandLine,
          )>()(
        ptr.ref.lpVtbl,
        pwszAppName,
        pwszCommandLine,
      );

  int UnregisterLaunchApplication(
    Pointer<Utf16> pwszAppName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszAppName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszAppName,
          )>()(
        ptr.ref.lpVtbl,
        pwszAppName,
      );

  int EnableHwNotifications(
    Pointer<Utf16> pwszDeviceName,
    int bNewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Int32 bNewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            int bNewState,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        bNewState,
      );

  int GetHwNotificationState(
    Pointer<Utf16> pwszDeviceName,
    Pointer<Int32> pbCurrentState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Int32> pbCurrentState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Int32> pbCurrentState,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        pbCurrentState,
      );

  int RefreshDeviceBus(
    Pointer<Utf16> pwszDeviceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
      );

  int LaunchApplicationForDevice(
    Pointer<Utf16> pwszDeviceName,
    Pointer<Utf16> pwszAppName,
    Pointer<STINOTIFY> pStiNotify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Utf16> pwszAppName,
            Pointer<STINOTIFY> pStiNotify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDeviceName,
            Pointer<Utf16> pwszAppName,
            Pointer<STINOTIFY> pStiNotify,
          )>()(
        ptr.ref.lpVtbl,
        pwszDeviceName,
        pwszAppName,
        pStiNotify,
      );

  int SetupDeviceParameters(
    Pointer<STI_DEVICE_INFORMATION> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STI_DEVICE_INFORMATION> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STI_DEVICE_INFORMATION> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int WriteToErrorLog(
    int dwMessageType,
    Pointer<Utf16> pszMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMessageType,
            Pointer<Utf16> pszMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMessageType,
            Pointer<Utf16> pszMessage,
          )>()(
        ptr.ref.lpVtbl,
        dwMessageType,
        pszMessage,
      );
}
