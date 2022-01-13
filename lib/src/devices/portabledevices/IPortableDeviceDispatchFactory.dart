// IPortableDeviceDispatchFactory.dart

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
import '../../system/com/IDispatch.dart';

/// @nodoc
const IID_IPortableDeviceDispatchFactory =
    '{5E1EAFC3-E3D7-4132-96FA-759C0F9D1E0F}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceDispatchFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPortableDeviceDispatchFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceDispatch(
    Pointer<Utf16> pszPnPDeviceID,
    Pointer<Pointer<COMObject>> ppDeviceDispatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Pointer<COMObject>> ppDeviceDispatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPDeviceID,
            Pointer<Pointer<COMObject>> ppDeviceDispatch,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPDeviceID,
        ppDeviceDispatch,
      );
}

/// @nodoc
const CLSID_PortableDeviceDispatchFactory =
    '{43232233-8338-4658-AE01-0B4AE830B6B0}';

/// {@category com}
class PortableDeviceDispatchFactory extends IPortableDeviceDispatchFactory {
  PortableDeviceDispatchFactory(Pointer<COMObject> ptr) : super(ptr);

  factory PortableDeviceDispatchFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_PortableDeviceDispatchFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPortableDeviceDispatchFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PortableDeviceDispatchFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
