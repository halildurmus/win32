// IUPnPDeviceFinder.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../devices/enumeration/pnp/IUPnPDevices.dart';
import '../../../specialTypes.dart';
import '../../../devices/enumeration/pnp/IUPnPDevice.dart';

/// @nodoc
const IID_IUPnPDeviceFinder = '{ADDA3D55-6F72-4319-BFF9-18600A539B10}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceFinder extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IUPnPDeviceFinder(Pointer<COMObject> ptr) : super(ptr);

  int FindByType(
    Pointer<Utf16> bstrTypeURI,
    int dwFlags,
    Pointer<Pointer<COMObject>> pDevices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTypeURI,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> pDevices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTypeURI,
            int dwFlags,
            Pointer<Pointer<COMObject>> pDevices,
          )>()(
        ptr.ref.lpVtbl,
        bstrTypeURI,
        dwFlags,
        pDevices,
      );

  int CreateAsyncFind(
    Pointer<Utf16> bstrTypeURI,
    int dwFlags,
    Pointer<COMObject> punkDeviceFinderCallback,
    Pointer<Int32> plFindData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTypeURI,
            Uint32 dwFlags,
            Pointer<COMObject> punkDeviceFinderCallback,
            Pointer<Int32> plFindData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTypeURI,
            int dwFlags,
            Pointer<COMObject> punkDeviceFinderCallback,
            Pointer<Int32> plFindData,
          )>()(
        ptr.ref.lpVtbl,
        bstrTypeURI,
        dwFlags,
        punkDeviceFinderCallback,
        plFindData,
      );

  int StartAsyncFind(
    int lFindData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFindData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFindData,
          )>()(
        ptr.ref.lpVtbl,
        lFindData,
      );

  int CancelAsyncFind(
    int lFindData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFindData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFindData,
          )>()(
        ptr.ref.lpVtbl,
        lFindData,
      );

  int FindByUDN(
    Pointer<Utf16> bstrUDN,
    Pointer<Pointer<COMObject>> pDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Pointer<COMObject>> pDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Pointer<COMObject>> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        bstrUDN,
        pDevice,
      );
}

/// @nodoc
const CLSID_UPnPDeviceFinder = '{E2085F28-FEB7-404A-B8E7-E659BDEAAA02}';

/// {@category com}
class UPnPDeviceFinder extends IUPnPDeviceFinder {
  UPnPDeviceFinder(Pointer<COMObject> ptr) : super(ptr);

  factory UPnPDeviceFinder.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UPnPDeviceFinder);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUPnPDeviceFinder);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UPnPDeviceFinder(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
