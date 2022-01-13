// ILatLongReport.dart

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

import '../../devices/geolocation/ILocationReport.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILatLongReport = '{7FED806D-0EF8-4F07-80AC-36A0BEAE3134}';

/// {@category Interface}
/// {@category com}
class ILatLongReport extends ILocationReport {
  // vtable begins at 6, is 5 entries long.
  ILatLongReport(Pointer<COMObject> ptr) : super(ptr);

  int GetLatitude(
    Pointer<Double> pLatitude,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pLatitude,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pLatitude,
          )>()(
        ptr.ref.lpVtbl,
        pLatitude,
      );

  int GetLongitude(
    Pointer<Double> pLongitude,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pLongitude,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pLongitude,
          )>()(
        ptr.ref.lpVtbl,
        pLongitude,
      );

  int GetErrorRadius(
    Pointer<Double> pErrorRadius,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pErrorRadius,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pErrorRadius,
          )>()(
        ptr.ref.lpVtbl,
        pErrorRadius,
      );

  int GetAltitude(
    Pointer<Double> pAltitude,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pAltitude,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pAltitude,
          )>()(
        ptr.ref.lpVtbl,
        pAltitude,
      );

  int GetAltitudeError(
    Pointer<Double> pAltitudeError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pAltitudeError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pAltitudeError,
          )>()(
        ptr.ref.lpVtbl,
        pAltitudeError,
      );
}

/// @nodoc
const CLSID_LatLongReport = '{ED81C073-1F84-4CA8-A161-183C776BC651}';

/// {@category com}
class LatLongReport extends ILatLongReport {
  LatLongReport(Pointer<COMObject> ptr) : super(ptr);

  factory LatLongReport.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_LatLongReport);
    final iid = calloc<GUID>()..ref.setGUID(IID_ILatLongReport);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return LatLongReport(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
