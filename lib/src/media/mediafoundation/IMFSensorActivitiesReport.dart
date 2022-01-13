// IMFSensorActivitiesReport.dart

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
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFSensorActivityReport.dart';

/// @nodoc
const IID_IMFSensorActivitiesReport = '{683F7A5E-4A19-43CD-B1A9-DBF4AB3F7777}';

/// {@category Interface}
/// {@category com}
class IMFSensorActivitiesReport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFSensorActivitiesReport(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pcCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcCount,
          )>()(
        ptr.ref.lpVtbl,
        pcCount,
      );

  int GetActivityReport(
    int Index,
    Pointer<Pointer<COMObject>> sensorActivityReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer<Pointer<COMObject>> sensorActivityReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> sensorActivityReport,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        sensorActivityReport,
      );

  int GetActivityReportByDeviceName(
    Pointer<Utf16> SymbolicName,
    Pointer<Pointer<COMObject>> sensorActivityReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> SymbolicName,
            Pointer<Pointer<COMObject>> sensorActivityReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> SymbolicName,
            Pointer<Pointer<COMObject>> sensorActivityReport,
          )>()(
        ptr.ref.lpVtbl,
        SymbolicName,
        sensorActivityReport,
      );
}
