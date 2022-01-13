// IFaxOutboundRoutingGroups.dart

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
import '../../devices/fax/IFaxOutboundRoutingGroup.dart';

/// @nodoc
const IID_IFaxOutboundRoutingGroups = '{235CBEF7-C2DE-4BFD-B8DA-75097C82C87F}';

/// {@category Interface}
/// {@category com}
class IFaxOutboundRoutingGroups extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IFaxOutboundRoutingGroups(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vIndex,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroup,
          )>()(
        ptr.ref.lpVtbl,
        vIndex,
        pFaxOutboundRoutingGroup,
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
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroup,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        pFaxOutboundRoutingGroup,
      );

  int Remove(
    VARIANT vIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vIndex,
          )>()(
        ptr.ref.lpVtbl,
        vIndex,
      );
}

/// @nodoc
const CLSID_FaxOutboundRoutingGroups = '{CCBEA1A5-E2B4-4B57-9421-B04B6289464B}';

/// {@category com}
class FaxOutboundRoutingGroups extends IFaxOutboundRoutingGroups {
  FaxOutboundRoutingGroups(Pointer<COMObject> ptr) : super(ptr);

  factory FaxOutboundRoutingGroups.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxOutboundRoutingGroups);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxOutboundRoutingGroups);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxOutboundRoutingGroups(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
