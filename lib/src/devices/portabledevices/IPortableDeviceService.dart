// IPortableDeviceService.dart

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
import '../../devices/portabledevices/IPortableDeviceServiceCapabilities.dart';
import '../../devices/portabledevices/IPortableDeviceContent2.dart';
import '../../devices/portabledevices/IPortableDeviceServiceMethods.dart';
import '../../devices/portabledevices/IPortableDeviceEventCallback.dart';

/// @nodoc
const IID_IPortableDeviceService = '{D3BD3A44-D7B5-40A9-98B7-2FA4D01DEC08}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceService extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IPortableDeviceService(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pszPnPServiceID,
    Pointer<COMObject> pClientInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPServiceID,
            Pointer<COMObject> pClientInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPServiceID,
            Pointer<COMObject> pClientInfo,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPServiceID,
        pClientInfo,
      );

  int Capabilities(
    Pointer<Pointer<COMObject>> ppCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Methods(
    Pointer<Pointer<COMObject>> ppMethods,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMethods,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMethods,
          )>()(
        ptr.ref.lpVtbl,
        ppMethods,
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

  int GetServiceObjectID(
    Pointer<Pointer<Utf16>> ppszServiceObjectID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszServiceObjectID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszServiceObjectID,
          )>()(
        ptr.ref.lpVtbl,
        ppszServiceObjectID,
      );

  int GetPnPServiceID(
    Pointer<Pointer<Utf16>> ppszPnPServiceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPnPServiceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPnPServiceID,
          )>()(
        ptr.ref.lpVtbl,
        ppszPnPServiceID,
      );

  int Advise(
    int dwFlags,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> pParameters,
    Pointer<Pointer<Utf16>> ppszCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
          .elementAt(12)
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

  int SendCommand(
    int dwFlags,
    Pointer<COMObject> pParameters,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
}

/// @nodoc
const CLSID_PortableDeviceService = '{EF5DB4C2-9312-422C-9152-411CD9C4DD84}';

/// {@category com}
class PortableDeviceService extends IPortableDeviceService {
  PortableDeviceService(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceService.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PortableDeviceService);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDeviceService);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceService(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
