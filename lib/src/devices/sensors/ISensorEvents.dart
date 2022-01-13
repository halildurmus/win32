// ISensorEvents.dart

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
import '../../devices/sensors/ISensor.dart';
import '../../devices/sensors/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/sensors/ISensorDataReport.dart';
import '../../devices/portabledevices/IPortableDeviceValues.dart';

/// @nodoc
const IID_ISensorEvents = '{5D8DCC91-4641-47E7-B7C3-B74F48A6C391}';

/// {@category Interface}
/// {@category com}
class ISensorEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISensorEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnStateChanged(
    Pointer<COMObject> pSensor,
    int state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSensor,
            Int32 state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSensor,
            int state,
          )>()(
        ptr.ref.lpVtbl,
        pSensor,
        state,
      );

  int OnDataUpdated(
    Pointer<COMObject> pSensor,
    Pointer<COMObject> pNewData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSensor,
            Pointer<COMObject> pNewData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSensor,
            Pointer<COMObject> pNewData,
          )>()(
        ptr.ref.lpVtbl,
        pSensor,
        pNewData,
      );

  int OnEvent(
    Pointer<COMObject> pSensor,
    Pointer<GUID> eventID,
    Pointer<COMObject> pEventData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSensor,
            Pointer<GUID> eventID,
            Pointer<COMObject> pEventData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSensor,
            Pointer<GUID> eventID,
            Pointer<COMObject> pEventData,
          )>()(
        ptr.ref.lpVtbl,
        pSensor,
        eventID,
        pEventData,
      );

  int OnLeave(
    Pointer<GUID> ID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ID,
          )>()(
        ptr.ref.lpVtbl,
        ID,
      );
}
