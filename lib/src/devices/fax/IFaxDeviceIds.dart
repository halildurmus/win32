// IFaxDeviceIds.dart

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

/// @nodoc
const IID_IFaxDeviceIds = '{2F0F813F-4CE9-443E-8CA1-738CFAEEE149}';

/// {@category Interface}
/// {@category com}
class IFaxDeviceIds extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IFaxDeviceIds(Pointer<COMObject> ptr) : super(ptr);

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
    int lIndex,
    Pointer<Int32> plDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Int32> plDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Int32> plDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        plDeviceId,
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

  int Add(
    int lDeviceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDeviceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDeviceId,
          )>()(
        ptr.ref.lpVtbl,
        lDeviceId,
      );

  int Remove(
    int lIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
      );

  int SetOrder(
    int lDeviceId,
    int lNewOrder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDeviceId,
            Int32 lNewOrder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDeviceId,
            int lNewOrder,
          )>()(
        ptr.ref.lpVtbl,
        lDeviceId,
        lNewOrder,
      );
}

/// @nodoc
const CLSID_FaxDeviceIds = '{CDC539EA-7277-460E-8DE0-48A0A5760D1F}';

/// {@category com}
class FaxDeviceIds extends IFaxDeviceIds {
  FaxDeviceIds(Pointer<COMObject> ptr) : super(ptr);

  factory FaxDeviceIds.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxDeviceIds);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxDeviceIds);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxDeviceIds(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
