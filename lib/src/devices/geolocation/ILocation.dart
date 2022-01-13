// ILocation.dart

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

import '../../system/com/IUnknown.dart';
import '../../devices/geolocation/ILocationEvents.dart';
import '../../foundation/structs.g.dart';
import '../../devices/geolocation/ILocationReport.dart';
import '../../devices/geolocation/structs.g.dart';
import '../../devices/sensors/structs.g.dart';

/// @nodoc
const IID_ILocation = '{AB2ECE69-56D9-4F28-B525-DE1B0EE44237}';

/// {@category Interface}
/// {@category com}
class ILocation extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ILocation(Pointer<COMObject> ptr) : super(ptr);

  int RegisterForReport(
    Pointer<COMObject> pEvents,
    Pointer<GUID> reportType,
    int dwRequestedReportInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEvents,
            Pointer<GUID> reportType,
            Uint32 dwRequestedReportInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEvents,
            Pointer<GUID> reportType,
            int dwRequestedReportInterval,
          )>()(
        ptr.ref.lpVtbl,
        pEvents,
        reportType,
        dwRequestedReportInterval,
      );

  int UnregisterForReport(
    Pointer<GUID> reportType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
      );

  int GetReport(
    Pointer<GUID> reportType,
    Pointer<Pointer<COMObject>> ppLocationReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Pointer<COMObject>> ppLocationReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Pointer<COMObject>> ppLocationReport,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        ppLocationReport,
      );

  int GetReportStatus(
    Pointer<GUID> reportType,
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        pStatus,
      );

  int GetReportInterval(
    Pointer<GUID> reportType,
    Pointer<Uint32> pMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Uint32> pMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Uint32> pMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        pMilliseconds,
      );

  int SetReportInterval(
    Pointer<GUID> reportType,
    int millisecondsRequested,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Uint32 millisecondsRequested,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            int millisecondsRequested,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        millisecondsRequested,
      );

  int GetDesiredAccuracy(
    Pointer<GUID> reportType,
    Pointer<Int32> pDesiredAccuracy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Int32> pDesiredAccuracy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<Int32> pDesiredAccuracy,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        pDesiredAccuracy,
      );

  int SetDesiredAccuracy(
    Pointer<GUID> reportType,
    int desiredAccuracy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Int32 desiredAccuracy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            int desiredAccuracy,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        desiredAccuracy,
      );

  int RequestPermissions(
    int hParent,
    Pointer<GUID> pReportTypes,
    int count,
    int fModal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hParent,
            Pointer<GUID> pReportTypes,
            Uint32 count,
            Int32 fModal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hParent,
            Pointer<GUID> pReportTypes,
            int count,
            int fModal,
          )>()(
        ptr.ref.lpVtbl,
        hParent,
        pReportTypes,
        count,
        fModal,
      );
}

/// @nodoc
const CLSID_Location = '{E5B8E079-EE6D-4E33-A438-C87F2E959254}';

/// {@category com}
class Location extends ILocation {
  Location(Pointer<COMObject> ptr) : super(ptr);

  factory Location.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Location);
    final iid = calloc<GUID>()..ref.setGUID(IID_ILocation);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Location(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
