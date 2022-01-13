// IPortableDeviceWebControl.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPortableDeviceWebControl = '{94FC7953-5CA1-483A-8AEE-DF52E7747D00}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceWebControl extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IPortableDeviceWebControl(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceFromId(
    Pointer<Utf16> deviceId,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> deviceId,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> deviceId,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        deviceId,
        ppDevice,
      );

  int GetDeviceFromIdAsync(
    Pointer<Utf16> deviceId,
    Pointer<COMObject> pCompletionHandler,
    Pointer<COMObject> pErrorHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> deviceId,
            Pointer<COMObject> pCompletionHandler,
            Pointer<COMObject> pErrorHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> deviceId,
            Pointer<COMObject> pCompletionHandler,
            Pointer<COMObject> pErrorHandler,
          )>()(
        ptr.ref.lpVtbl,
        deviceId,
        pCompletionHandler,
        pErrorHandler,
      );
}

/// @nodoc
const CLSID_PortableDeviceWebControl = '{186DD02C-2DEC-41B5-A7D4-B59056FADE51}';

/// {@category com}
class PortableDeviceWebControl extends IPortableDeviceWebControl {
  PortableDeviceWebControl(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceWebControl.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PortableDeviceWebControl);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDeviceWebControl);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceWebControl(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
