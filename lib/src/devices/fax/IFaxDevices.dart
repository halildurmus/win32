// IFaxDevices.dart

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
import '../../devices/fax/IFaxDevice.dart';

/// @nodoc
const IID_IFaxDevices = '{9E46783E-F34F-482E-A360-0416BECBBD96}';

/// {@category Interface}
/// {@category com}
class IFaxDevices extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IFaxDevices(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pFaxDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxDevice,
          )>()(
        ptr.ref.lpVtbl,
        vIndex,
        pFaxDevice,
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

  int get_ItemById(
    int lId,
    Pointer<Pointer<COMObject>> ppFaxDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lId,
            Pointer<Pointer<COMObject>> ppFaxDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lId,
            Pointer<Pointer<COMObject>> ppFaxDevice,
          )>()(
        ptr.ref.lpVtbl,
        lId,
        ppFaxDevice,
      );
}

/// @nodoc
const CLSID_FaxDevices = '{5589E28E-23CB-4919-8808-E6101846E80D}';

/// {@category com}
class FaxDevices extends IFaxDevices {
  FaxDevices(Pointer<COMObject> ptr) : super(ptr);

  factory FaxDevices.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxDevices);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxDevices);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxDevices(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
