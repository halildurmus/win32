// IUPnPDevices.dart

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
import '../../../specialTypes.dart';
import '../../../devices/enumeration/pnp/IUPnPDevice.dart';

/// @nodoc
const IID_IUPnPDevices = '{FDBC0C73-BDA3-4C66-AC4F-F2D96FDAD68C}';

/// {@category Interface}
/// {@category com}
class IUPnPDevices extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IUPnPDevices(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    Pointer<Utf16> bstrUDN,
    Pointer<Pointer<COMObject>> ppDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Pointer<COMObject>> ppDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUDN,
            Pointer<Pointer<COMObject>> ppDevice,
          )>()(
        ptr.ref.lpVtbl,
        bstrUDN,
        ppDevice,
      );
}

/// @nodoc
const CLSID_UPnPDevices = '{B9E84FFD-AD3C-40A4-B835-0882EBCBAAA8}';

/// {@category com}
class UPnPDevices extends IUPnPDevices {
  UPnPDevices(Pointer<COMObject> ptr) : super(ptr);

  factory UPnPDevices.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UPnPDevices);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUPnPDevices);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UPnPDevices(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
