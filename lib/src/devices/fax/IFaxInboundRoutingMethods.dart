// IFaxInboundRoutingMethods.dart

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
import '../../devices/fax/IFaxInboundRoutingMethod.dart';

/// @nodoc
const IID_IFaxInboundRoutingMethods = '{783FCA10-8908-4473-9D69-F67FBEA0C6B9}';

/// {@category Interface}
/// {@category com}
class IFaxInboundRoutingMethods extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IFaxInboundRoutingMethods(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pFaxInboundRoutingMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingMethod,
          )>()(
        ptr.ref.lpVtbl,
        vIndex,
        pFaxInboundRoutingMethod,
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
const CLSID_FaxInboundRoutingMethods = '{25FCB76A-B750-4B82-9266-FBBBAE8922BA}';

/// {@category com}
class FaxInboundRoutingMethods extends IFaxInboundRoutingMethods {
  FaxInboundRoutingMethods(Pointer<COMObject> ptr) : super(ptr);

  factory FaxInboundRoutingMethods.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxInboundRoutingMethods);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxInboundRoutingMethods);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxInboundRoutingMethods(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
