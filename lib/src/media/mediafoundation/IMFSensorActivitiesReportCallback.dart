// IMFSensorActivitiesReportCallback.dart

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
import '../../media/mediafoundation/IMFSensorActivitiesReport.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSensorActivitiesReportCallback =
    '{DE5072EE-DBE3-46DC-8A87-B6F631194751}';

/// {@category Interface}
/// {@category com}
class IMFSensorActivitiesReportCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFSensorActivitiesReportCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnActivitiesReport(
    Pointer<COMObject> sensorActivitiesReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sensorActivitiesReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sensorActivitiesReport,
          )>()(
        ptr.ref.lpVtbl,
        sensorActivitiesReport,
      );
}
