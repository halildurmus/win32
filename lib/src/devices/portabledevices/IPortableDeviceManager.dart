// IPortableDeviceManager.dart

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

/// @nodoc
const IID_IPortableDeviceManager = '{A1567595-4C2F-4574-A6FA-ECEF917B9A40}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceManager extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IPortableDeviceManager(Pointer<COMObject> ptr) : super(ptr);

  int GetDevices(
    Pointer<Pointer<Utf16>> pPnPDeviceIDs,
    Pointer<Uint32> pcPnPDeviceIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pPnPDeviceIDs,
            Pointer<Uint32> pcPnPDeviceIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pPnPDeviceIDs,
            Pointer<Uint32> pcPnPDeviceIDs,
          )>()(
        ptr.ref.lpVtbl,
        pPnPDeviceIDs,
        pcPnPDeviceIDs,
      );

  int RefreshDeviceList() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetDeviceFriendlyName(
    Pointer<Utf16> pszPnPDeviceID,
    Pointer<Utf16> pDeviceFriendlyName,
    Pointer<Uint32> pcchDeviceFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pDeviceFriendlyName,
            Pointer<Uint32> pcchDeviceFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pDeviceFriendlyName,
            Pointer<Uint32> pcchDeviceFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPDeviceID,
        pDeviceFriendlyName,
        pcchDeviceFriendlyName,
      );

  int GetDeviceDescription(
    Pointer<Utf16> pszPnPDeviceID,
    Pointer<Utf16> pDeviceDescription,
    Pointer<Uint32> pcchDeviceDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pDeviceDescription,
            Pointer<Uint32> pcchDeviceDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pDeviceDescription,
            Pointer<Uint32> pcchDeviceDescription,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPDeviceID,
        pDeviceDescription,
        pcchDeviceDescription,
      );

  int GetDeviceManufacturer(
    Pointer<Utf16> pszPnPDeviceID,
    Pointer<Utf16> pDeviceManufacturer,
    Pointer<Uint32> pcchDeviceManufacturer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pDeviceManufacturer,
            Pointer<Uint32> pcchDeviceManufacturer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pDeviceManufacturer,
            Pointer<Uint32> pcchDeviceManufacturer,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPDeviceID,
        pDeviceManufacturer,
        pcchDeviceManufacturer,
      );

  int GetDeviceProperty(
    Pointer<Utf16> pszPnPDeviceID,
    Pointer<Utf16> pszDevicePropertyName,
    Pointer<Uint8> pData,
    Pointer<Uint32> pcbData,
    Pointer<Uint32> pdwType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pszDevicePropertyName,
            Pointer<Uint8> pData,
            Pointer<Uint32> pcbData,
            Pointer<Uint32> pdwType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Utf16> pszDevicePropertyName,
            Pointer<Uint8> pData,
            Pointer<Uint32> pcbData,
            Pointer<Uint32> pdwType,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPDeviceID,
        pszDevicePropertyName,
        pData,
        pcbData,
        pdwType,
      );

  int GetPrivateDevices(
    Pointer<Pointer<Utf16>> pPnPDeviceIDs,
    Pointer<Uint32> pcPnPDeviceIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pPnPDeviceIDs,
            Pointer<Uint32> pcPnPDeviceIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pPnPDeviceIDs,
            Pointer<Uint32> pcPnPDeviceIDs,
          )>()(
        ptr.ref.lpVtbl,
        pPnPDeviceIDs,
        pcPnPDeviceIDs,
      );
}

/// @nodoc
const CLSID_PortableDeviceManager = '{0AF10CEC-2ECD-4B92-9581-34F6AE0637F3}';

/// {@category com}
class PortableDeviceManager extends IPortableDeviceManager {
  PortableDeviceManager(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PortableDeviceManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDeviceManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
