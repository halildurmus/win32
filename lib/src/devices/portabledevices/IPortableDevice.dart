// IPortableDevice.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../devices/portabledevices/IPortableDeviceContent.dart';
import '../../devices/portabledevices/IPortableDeviceCapabilities.dart';
import '../../devices/portabledevices/IPortableDeviceEventCallback.dart';

/// @nodoc
const IID_IPortableDevice = '{625E2DF8-6392-4CF0-9AD1-3CFA5F17775C}';

/// {@category Interface}
/// {@category com}
class IPortableDevice extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IPortableDevice(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pszPnPDeviceID,
    Pointer<COMObject> pClientInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<COMObject> pClientInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<COMObject> pClientInfo,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPDeviceID,
        pClientInfo,
      );

  int SendCommand(
    int dwFlags,
    Pointer<COMObject> pParameters,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pParameters,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pParameters,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pParameters,
        ppResults,
      );

  int Content(
    Pointer<Pointer<COMObject>> ppContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContent,
          )>()(
        ptr.ref.lpVtbl,
        ppContent,
      );

  int Capabilities(
    Pointer<Pointer<COMObject>> ppCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        ppCapabilities,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Advise(
    int dwFlags,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pParameters,
    Pointer<Pointer<Utf16>> ppszCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pParameters,
            Pointer<Pointer<Utf16>> ppszCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> pParameters,
            Pointer<Pointer<Utf16>> ppszCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pCallback,
        pParameters,
        ppszCookie,
      );

  int Unadvise(
    Pointer<Utf16> pszCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCookie,
          )>()(
        ptr.ref.lpVtbl,
        pszCookie,
      );

  int GetPnPDeviceID(
    Pointer<Pointer<Utf16>> ppszPnPDeviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPnPDeviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPnPDeviceID,
          )>()(
        ptr.ref.lpVtbl,
        ppszPnPDeviceID,
      );
}

/// @nodoc
const CLSID_PortableDevice = '{728A21C5-3D9E-48D7-9810-864848F0F404}';

/// {@category com}
class PortableDevice extends IPortableDevice {
  PortableDevice(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDevice.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PortableDevice);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDevice);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDevice(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
