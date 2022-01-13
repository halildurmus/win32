// IMFCameraOcclusionStateReportCallback.dart

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
import '../../media/mediafoundation/IMFCameraOcclusionStateReport.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFCameraOcclusionStateReportCallback =
    '{6E5841C7-3889-4019-9035-783FB19B5948}';

/// {@category Interface}
/// {@category com}
class IMFCameraOcclusionStateReportCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFCameraOcclusionStateReportCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnOcclusionStateReport(
    Pointer<COMObject> occlusionStateReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> occlusionStateReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> occlusionStateReport,
          )>()(
        ptr.ref.lpVtbl,
        occlusionStateReport,
      );
}
