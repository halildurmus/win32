// IFaxInboundRoutingExtensions.dart

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
import '../../devices/fax/IFaxInboundRoutingExtension.dart';

/// @nodoc
const IID_IFaxInboundRoutingExtensions =
    '{2F6C9673-7B26-42DE-8EB0-915DCD2A4F4C}';

/// {@category Interface}
/// {@category com}
class IFaxInboundRoutingExtensions extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IFaxInboundRoutingExtensions(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pFaxInboundRoutingExtension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingExtension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingExtension,
          )>()(
        ptr.ref.lpVtbl,
        vIndex,
        pFaxInboundRoutingExtension,
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
const CLSID_FaxInboundRoutingExtensions =
    '{189A48ED-623C-4C0D-80F2-D66C7B9EFEC2}';

/// {@category com}
class FaxInboundRoutingExtensions extends IFaxInboundRoutingExtensions {
  FaxInboundRoutingExtensions(Pointer<COMObject> ptr) : super(ptr);

  factory FaxInboundRoutingExtensions.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_FaxInboundRoutingExtensions);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxInboundRoutingExtensions);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxInboundRoutingExtensions(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
