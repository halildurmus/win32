// ILatLongReportFactory.dart

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

import '../../devices/geolocation/ILocationReportFactory.dart';
import '../../devices/geolocation/IDispLatLongReport.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILatLongReportFactory = '{3F0804CB-B114-447D-83DD-390174EBB082}';

/// {@category Interface}
/// {@category com}
class ILatLongReportFactory extends ILocationReportFactory {
  // vtable begins at 15, is 1 entries long.
  ILatLongReportFactory(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get LatLongReport {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
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
const CLSID_LatLongReportFactory = '{9DCC3CC8-8609-4863-BAD4-03601F4C65E8}';

/// {@category com}
class LatLongReportFactory extends ILatLongReportFactory {
  LatLongReportFactory(Pointer<COMObject> ptr) : super(ptr);

  factory LatLongReportFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_LatLongReportFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_ILatLongReportFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return LatLongReportFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
