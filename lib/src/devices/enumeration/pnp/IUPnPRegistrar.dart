// IUPnPRegistrar.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IUPnPRegistrar = '{204810B6-73B2-11D4-BF42-00B0D0118B56}';

/// {@category Interface}
/// {@category com}
class IUPnPRegistrar extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUPnPRegistrar(Pointer<COMObject> ptr) : super(ptr);

  int RegisterDevice(
    Pointer<Utf16> bstrXMLDesc,
    Pointer<Utf16> bstrProgIDDeviceControlClass,
    Pointer<Utf16> bstrInitString,
    Pointer<Utf16> bstrContainerId,
    Pointer<Utf16> bstrResourcePath,
    int nLifeTime,
    Pointer<Pointer<Utf16>> pbstrDeviceIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXMLDesc,
            Pointer<Utf16> bstrProgIDDeviceControlClass,
            Pointer<Utf16> bstrInitString,
            Pointer<Utf16> bstrContainerId,
            Pointer<Utf16> bstrResourcePath,
            Int32 nLifeTime,
            Pointer<Pointer<Utf16>> pbstrDeviceIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXMLDesc,
            Pointer<Utf16> bstrProgIDDeviceControlClass,
            Pointer<Utf16> bstrInitString,
            Pointer<Utf16> bstrContainerId,
            Pointer<Utf16> bstrResourcePath,
            int nLifeTime,
            Pointer<Pointer<Utf16>> pbstrDeviceIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        bstrXMLDesc,
        bstrProgIDDeviceControlClass,
        bstrInitString,
        bstrContainerId,
        bstrResourcePath,
        nLifeTime,
        pbstrDeviceIdentifier,
      );

  int RegisterRunningDevice(
    Pointer<Utf16> bstrXMLDesc,
    Pointer<COMObject> punkDeviceControl,
    Pointer<Utf16> bstrInitString,
    Pointer<Utf16> bstrResourcePath,
    int nLifeTime,
    Pointer<Pointer<Utf16>> pbstrDeviceIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrXMLDesc,
            Pointer<COMObject> punkDeviceControl,
            Pointer<Utf16> bstrInitString,
            Pointer<Utf16> bstrResourcePath,
            Int32 nLifeTime,
            Pointer<Pointer<Utf16>> pbstrDeviceIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrXMLDesc,
            Pointer<COMObject> punkDeviceControl,
            Pointer<Utf16> bstrInitString,
            Pointer<Utf16> bstrResourcePath,
            int nLifeTime,
            Pointer<Pointer<Utf16>> pbstrDeviceIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        bstrXMLDesc,
        punkDeviceControl,
        bstrInitString,
        bstrResourcePath,
        nLifeTime,
        pbstrDeviceIdentifier,
      );

  int RegisterDeviceProvider(
    Pointer<Utf16> bstrProviderName,
    Pointer<Utf16> bstrProgIDProviderClass,
    Pointer<Utf16> bstrInitString,
    Pointer<Utf16> bstrContainerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<Utf16> bstrProgIDProviderClass,
            Pointer<Utf16> bstrInitString,
            Pointer<Utf16> bstrContainerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
            Pointer<Utf16> bstrProgIDProviderClass,
            Pointer<Utf16> bstrInitString,
            Pointer<Utf16> bstrContainerId,
          )>()(
        ptr.ref.lpVtbl,
        bstrProviderName,
        bstrProgIDProviderClass,
        bstrInitString,
        bstrContainerId,
      );

  int GetUniqueDeviceName(
    Pointer<Utf16> bstrDeviceIdentifier,
    Pointer<Utf16> bstrTemplateUDN,
    Pointer<Pointer<Utf16>> pbstrUDN,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceIdentifier,
            Pointer<Utf16> bstrTemplateUDN,
            Pointer<Pointer<Utf16>> pbstrUDN,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceIdentifier,
            Pointer<Utf16> bstrTemplateUDN,
            Pointer<Pointer<Utf16>> pbstrUDN,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceIdentifier,
        bstrTemplateUDN,
        pbstrUDN,
      );

  int UnregisterDevice(
    Pointer<Utf16> bstrDeviceIdentifier,
    int fPermanent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceIdentifier,
            Int32 fPermanent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceIdentifier,
            int fPermanent,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceIdentifier,
        fPermanent,
      );

  int UnregisterDeviceProvider(
    Pointer<Utf16> bstrProviderName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProviderName,
          )>()(
        ptr.ref.lpVtbl,
        bstrProviderName,
      );
}

/// @nodoc
const CLSID_UPnPRegistrar = '{204810B9-73B2-11D4-BF42-00B0D0118B56}';

/// {@category com}
class UPnPRegistrar extends IUPnPRegistrar {
  UPnPRegistrar(Pointer<COMObject> ptr) : super(ptr);

  factory UPnPRegistrar.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UPnPRegistrar);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUPnPRegistrar);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UPnPRegistrar(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
