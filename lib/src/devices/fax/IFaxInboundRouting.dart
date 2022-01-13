// IFaxInboundRouting.dart

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
import '../../devices/fax/IFaxInboundRoutingExtensions.dart';
import '../../foundation/structs.g.dart';
import '../../devices/fax/IFaxInboundRoutingMethods.dart';

/// @nodoc
const IID_IFaxInboundRouting = '{8148C20F-9D52-45B1-BF96-38FC12713527}';

/// {@category Interface}
/// {@category com}
class IFaxInboundRouting extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IFaxInboundRouting(Pointer<COMObject> ptr) : super(ptr);

  int GetExtensions(
    Pointer<Pointer<COMObject>> pFaxInboundRoutingExtensions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingExtensions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingExtensions,
          )>()(
        ptr.ref.lpVtbl,
        pFaxInboundRoutingExtensions,
      );

  int GetMethods(
    Pointer<Pointer<COMObject>> pFaxInboundRoutingMethods,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingMethods,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pFaxInboundRoutingMethods,
          )>()(
        ptr.ref.lpVtbl,
        pFaxInboundRoutingMethods,
      );
}

/// @nodoc
const CLSID_FaxInboundRouting = '{E80248ED-AD65-4218-8108-991924D4E7ED}';

/// {@category com}
class FaxInboundRouting extends IFaxInboundRouting {
  FaxInboundRouting(Pointer<COMObject> ptr) : super(ptr);

  factory FaxInboundRouting.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FaxInboundRouting);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFaxInboundRouting);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FaxInboundRouting(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
