// IWdsTransportCollection.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IWdsTransportCollection = '{B8BA4B1A-2FF4-43AB-996C-B2B10A91A6EB}';

/// {@category Interface}
/// {@category com}
class IWdsTransportCollection extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IWdsTransportCollection(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int ulIndex,
    Pointer<Pointer<COMObject>> ppVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        ppVal,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
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
const CLSID_WdsTransportCollection = '{C7F18B09-391E-436E-B10B-C3EF46F2C34F}';

/// {@category com}
class WdsTransportCollection extends IWdsTransportCollection {
  WdsTransportCollection(Pointer<COMObject> ptr) : super(ptr);

  factory WdsTransportCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WdsTransportCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWdsTransportCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WdsTransportCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
