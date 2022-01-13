// IMbnDeviceServicesManager.dart

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
import '../../networkmanagement/mobilebroadband/IMbnDeviceServicesContext.dart';

/// @nodoc
const IID_IMbnDeviceServicesManager = '{20A26258-6811-4478-AC1D-13324E45E41C}';

/// {@category Interface}
/// {@category com}
class IMbnDeviceServicesManager extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMbnDeviceServicesManager(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceServicesContext(
    Pointer<Utf16> networkInterfaceID,
    Pointer<Pointer<COMObject>> mbnDevicesContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> networkInterfaceID,
            Pointer<Pointer<COMObject>> mbnDevicesContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> networkInterfaceID,
            Pointer<Pointer<COMObject>> mbnDevicesContext,
          )>()(
        ptr.ref.lpVtbl,
        networkInterfaceID,
        mbnDevicesContext,
      );
}

/// @nodoc
const CLSID_MbnDeviceServicesManager = '{2269DAA3-2A9F-4165-A501-CE00A6F7A75B}';

/// {@category com}
class MbnDeviceServicesManager extends IMbnDeviceServicesManager {
  MbnDeviceServicesManager(Pointer<COMObject> ptr) : super(ptr);

  factory MbnDeviceServicesManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MbnDeviceServicesManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMbnDeviceServicesManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MbnDeviceServicesManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
