// IFaxDeviceProviders.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxDeviceProvider.dart';

/// @nodoc
const IID_IFaxDeviceProviders = '{9FB76F62-4C7E-43A5-B6FD-502893F7E13E}';

/// {@category Interface}
/// {@category com}
class IFaxDeviceProviders extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IFaxDeviceProviders(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    VARIANT vIndex,
    Pointer<Pointer<COMObject>> pFaxDeviceProvider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxDeviceProvider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxDeviceProvider,
          )>()(
        ptr.ref.lpVtbl,
        vIndex,
        pFaxDeviceProvider,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
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
}

/// @nodoc
const CLSID_FaxDeviceProviders = '{EB8FE768-875A-4F5F-82C5-03F23AAC1BD7}';

/// {@category com}
class FaxDeviceProviders extends IFaxDeviceProviders {
  FaxDeviceProviders(Pointer<COMObject> ptr) : super(ptr);

  factory FaxDeviceProviders.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxDeviceProviders);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxDeviceProviders);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxDeviceProviders(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
