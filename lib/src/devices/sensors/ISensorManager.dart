// ISensorManager.dart

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
import '../../devices/sensors/ISensorCollection.dart';
import '../../foundation/structs.g.dart';
import '../../devices/sensors/ISensor.dart';
import '../../devices/sensors/ISensorManagerEvents.dart';

/// @nodoc
const IID_ISensorManager = '{BD77DB67-45A8-42DC-8D00-6DCF15F8377A}';

/// {@category Interface}
/// {@category com}
class ISensorManager extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISensorManager(Pointer<COMObject> ptr) : super(ptr);

  int GetSensorsByCategory(
    Pointer<GUID> sensorCategory,
    Pointer<Pointer<COMObject>> ppSensorsFound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> sensorCategory,
            Pointer<Pointer<COMObject>> ppSensorsFound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> sensorCategory,
            Pointer<Pointer<COMObject>> ppSensorsFound,
          )>()(
        ptr.ref.lpVtbl,
        sensorCategory,
        ppSensorsFound,
      );

  int GetSensorsByType(
    Pointer<GUID> sensorType,
    Pointer<Pointer<COMObject>> ppSensorsFound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> sensorType,
            Pointer<Pointer<COMObject>> ppSensorsFound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> sensorType,
            Pointer<Pointer<COMObject>> ppSensorsFound,
          )>()(
        ptr.ref.lpVtbl,
        sensorType,
        ppSensorsFound,
      );

  int GetSensorByID(
    Pointer<GUID> sensorID,
    Pointer<Pointer<COMObject>> ppSensor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> sensorID,
            Pointer<Pointer<COMObject>> ppSensor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> sensorID,
            Pointer<Pointer<COMObject>> ppSensor,
          )>()(
        ptr.ref.lpVtbl,
        sensorID,
        ppSensor,
      );

  int SetEventSink(
    Pointer<COMObject> pEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEvents,
          )>()(
        ptr.ref.lpVtbl,
        pEvents,
      );

  int RequestPermissions(
    int hParent,
    Pointer<COMObject> pSensors,
    int fModal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hParent,
            Pointer<COMObject> pSensors,
            Int32 fModal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hParent,
            Pointer<COMObject> pSensors,
            int fModal,
          )>()(
        ptr.ref.lpVtbl,
        hParent,
        pSensors,
        fModal,
      );
}

/// @nodoc
const CLSID_SensorManager = '{77A1C827-FCD2-4689-8915-9D613CC5FA3E}';

/// {@category com}
class SensorManager extends ISensorManager {
  SensorManager(Pointer<COMObject> ptr) : super(ptr);

  factory SensorManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SensorManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISensorManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SensorManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
