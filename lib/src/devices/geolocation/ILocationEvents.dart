// ILocationEvents.dart

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
import '../../devices/geolocation/ILocationReport.dart';
import '../../foundation/structs.g.dart';
import '../../devices/geolocation/structs.g.dart';

/// @nodoc
const IID_ILocationEvents = '{CAE02BBF-798B-4508-A207-35A7906DC73D}';

/// {@category Interface}
/// {@category com}
class ILocationEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ILocationEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnLocationChanged(
    Pointer<GUID> reportType,
    Pointer<COMObject> pLocationReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<COMObject> pLocationReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            Pointer<COMObject> pLocationReport,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        pLocationReport,
      );

  int OnStatusChanged(
    Pointer<GUID> reportType,
    int newStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> reportType,
            Int32 newStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> reportType,
            int newStatus,
          )>()(
        ptr.ref.lpVtbl,
        reportType,
        newStatus,
      );
}
