// ICivicAddressReportFactory.dart

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
import '../../devices/geolocation/IDispCivicAddressReport.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICivicAddressReportFactory = '{BF773B93-C64F-4BEE-BEB2-67C0B8DF66E0}';

/// {@category Interface}
/// {@category com}
class ICivicAddressReportFactory extends ILocationReportFactory {
  // vtable begins at 15, is 1 entries long.
  ICivicAddressReportFactory(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get CivicAddressReport {
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
const CLSID_CivicAddressReportFactory =
    '{2A11F42C-3E81-4AD4-9CBE-45579D89671A}';

/// {@category com}
class CivicAddressReportFactory extends ICivicAddressReportFactory {
  CivicAddressReportFactory(Pointer<COMObject> ptr) : super(ptr);

  factory CivicAddressReportFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_CivicAddressReportFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICivicAddressReportFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return CivicAddressReportFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
