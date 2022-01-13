// IFaxOutboundRouting.dart

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
import '../../devices/fax/IFaxOutboundRoutingGroups.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxOutboundRoutingRules.dart';

/// @nodoc
const IID_IFaxOutboundRouting = '{25DC05A4-9909-41BD-A95B-7E5D1DEC1D43}';

/// {@category Interface}
/// {@category com}
class IFaxOutboundRouting extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IFaxOutboundRouting(Pointer<COMObject> ptr) : super(ptr);

  int GetGroups(
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroups,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroups,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingGroups,
          )>()(
        ptr.ref.lpVtbl,
        pFaxOutboundRoutingGroups,
      );

  int GetRules(
    Pointer<Pointer<COMObject>> pFaxOutboundRoutingRules,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxOutboundRoutingRules,
          )>()(
        ptr.ref.lpVtbl,
        pFaxOutboundRoutingRules,
      );
}

/// @nodoc
const CLSID_FaxOutboundRouting = '{C81B385E-B869-4AFD-86C0-616498ED9BE2}';

/// {@category com}
class FaxOutboundRouting extends IFaxOutboundRouting {
  FaxOutboundRouting(Pointer<COMObject> ptr) : super(ptr);

  factory FaxOutboundRouting.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxOutboundRouting);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxOutboundRouting);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxOutboundRouting(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
