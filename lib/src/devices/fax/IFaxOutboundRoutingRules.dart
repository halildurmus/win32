// IFaxOutboundRoutingRules.dart

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
import '../../devices/fax/IFaxOutboundRoutingRule.dart';

/// @nodoc
const IID_IFaxOutboundRoutingRules = '{DCEFA1E7-AE7D-4ED6-8521-369EDCCA5120}';

/// {@category Interface}
/// {@category com}
class IFaxOutboundRoutingRules extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IFaxOutboundRoutingRules(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        pFaxOutboundRoutingRule,
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

  int ItemByCountryAndArea(
    int lCountryCode,
    int lAreaCode,
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCountryCode,
            Int32 lAreaCode,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCountryCode,
            int lAreaCode,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
          )>()(
        ptr.ref.lpVtbl,
        lCountryCode,
        lAreaCode,
        pFaxOutboundRoutingRule,
      );

  int RemoveByCountryAndArea(
    int lCountryCode,
    int lAreaCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCountryCode,
            Int32 lAreaCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCountryCode,
            int lAreaCode,
          )>()(
        ptr.ref.lpVtbl,
        lCountryCode,
        lAreaCode,
      );

  int Remove(
    int lIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int Add(
    int lCountryCode,
    int lAreaCode,
    int bUseDevice,
    Pointer<Utf16> bstrGroupName,
    int lDeviceId,
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCountryCode,
            Int32 lAreaCode,
            Int16 bUseDevice,
            Pointer<Utf16> bstrGroupName,
            Int32 lDeviceId,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCountryCode,
            int lAreaCode,
            int bUseDevice,
            Pointer<Utf16> bstrGroupName,
            int lDeviceId,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRule,
          )>()(
        ptr.ref.lpVtbl,
        lCountryCode,
        lAreaCode,
        bUseDevice,
        bstrGroupName,
        lDeviceId,
        pFaxOutboundRoutingRule,
      );
}

/// @nodoc
const CLSID_FaxOutboundRoutingRules = '{D385BECA-E624-4473-BFAA-9F4000831F54}';

/// {@category com}
class FaxOutboundRoutingRules extends IFaxOutboundRoutingRules {
  FaxOutboundRoutingRules(Pointer<COMObject> ptr) : super(ptr);

  factory FaxOutboundRoutingRules.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxOutboundRoutingRules);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxOutboundRoutingRules);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxOutboundRoutingRules(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
