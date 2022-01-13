// IEnhancedStorageSilo.dart

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
import '../../storage/enhancedstorage/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/enhancedstorage/IEnhancedStorageSiloAction.dart';
import '../../devices/portabledevices/IPortableDevice.dart';

/// @nodoc
const IID_IEnhancedStorageSilo = '{5AEF78C6-2242-4703-BF49-44B29357A359}';

/// {@category Interface}
/// {@category com}
class IEnhancedStorageSilo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEnhancedStorageSilo(Pointer<COMObject> ptr) : super(ptr);

  int GetInfo(
    Pointer<SILO_INFO> pSiloInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SILO_INFO> pSiloInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SILO_INFO> pSiloInfo,
          )>()(
        ptr.ref.lpVtbl,
        pSiloInfo,
      );

  int GetActions(
    Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageSiloActions,
    Pointer<Uint32> pcEnhancedStorageSiloActions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageSiloActions,
            Pointer<Uint32> pcEnhancedStorageSiloActions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<COMObject>>> pppIEnhancedStorageSiloActions,
            Pointer<Uint32> pcEnhancedStorageSiloActions,
          )>()(
        ptr.ref.lpVtbl,
        pppIEnhancedStorageSiloActions,
        pcEnhancedStorageSiloActions,
      );

  int SendCommand(
    int Command,
    Pointer<Uint8> pbCommandBuffer,
    int cbCommandBuffer,
    Pointer<Uint8> pbResponseBuffer,
    Pointer<Uint32> pcbResponseBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 Command,
            Pointer<Uint8> pbCommandBuffer,
            Uint32 cbCommandBuffer,
            Pointer<Uint8> pbResponseBuffer,
            Pointer<Uint32> pcbResponseBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Command,
            Pointer<Uint8> pbCommandBuffer,
            int cbCommandBuffer,
            Pointer<Uint8> pbResponseBuffer,
            Pointer<Uint32> pcbResponseBuffer,
          )>()(
        ptr.ref.lpVtbl,
        Command,
        pbCommandBuffer,
        cbCommandBuffer,
        pbResponseBuffer,
        pcbResponseBuffer,
      );

  int GetPortableDevice(
    Pointer<Pointer<COMObject>> ppIPortableDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPortableDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIPortableDevice,
          )>()(
        ptr.ref.lpVtbl,
        ppIPortableDevice,
      );

  int GetDevicePath(
    Pointer<Pointer<Utf16>> ppwszSiloDevicePath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszSiloDevicePath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszSiloDevicePath,
          )>()(
        ptr.ref.lpVtbl,
        ppwszSiloDevicePath,
      );
}

/// @nodoc
const CLSID_EnhancedStorageSilo = '{CB25220C-76C7-4FEE-842B-F3383CD022BC}';

/// {@category com}
class EnhancedStorageSilo extends IEnhancedStorageSilo {
  EnhancedStorageSilo(Pointer<COMObject> ptr) : super(ptr);

  factory EnhancedStorageSilo.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_EnhancedStorageSilo);
    final iid = calloc<GUID>()..ref.setGUID(IID_IEnhancedStorageSilo);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return EnhancedStorageSilo(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
