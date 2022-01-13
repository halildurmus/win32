// IMbnDeviceServicesContext.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/IMbnDeviceService.dart';

/// @nodoc
const IID_IMbnDeviceServicesContext = '{FC5AC347-1592-4068-80BB-6A57580150D8}';

/// {@category Interface}
/// {@category com}
class IMbnDeviceServicesContext extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMbnDeviceServicesContext(Pointer<COMObject> ptr) : super(ptr);

  int EnumerateDeviceServices(
    Pointer<Pointer<SAFEARRAY>> deviceServices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> deviceServices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> deviceServices,
          )>()(
        ptr.ref.lpVtbl,
        deviceServices,
      );

  int GetDeviceService(
    Pointer<Utf16> deviceServiceID,
    Pointer<Pointer<COMObject>> mbnDeviceService,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> deviceServiceID,
            Pointer<Pointer<COMObject>> mbnDeviceService,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> deviceServiceID,
            Pointer<Pointer<COMObject>> mbnDeviceService,
          )>()(
        ptr.ref.lpVtbl,
        deviceServiceID,
        mbnDeviceService,
      );

  int get MaxCommandSize {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> maxCommandSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> maxCommandSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MaxDataSize {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> maxDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> maxDataSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
