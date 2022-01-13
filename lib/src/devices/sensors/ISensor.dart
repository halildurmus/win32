// ISensor.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../devices/portabledevices/IPortableDeviceKeyCollection.dart';
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../devices/sensors/structs.g.dart';
import '../../devices/sensors/ISensorDataReport.dart';
import '../../devices/sensors/ISensorEvents.dart';

/// @nodoc
const IID_ISensor = '{5FA08F80-2657-458E-AF75-46F73FA6AC5C}';

/// {@category Interface}
/// {@category com}
class ISensor extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  ISensor(Pointer<COMObject> ptr) : super(ptr);

  int GetID(
    Pointer<GUID> pID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pID,
          )>()(
        ptr.ref.lpVtbl,
        pID,
      );

  int GetCategory(
    Pointer<GUID> pSensorCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pSensorCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pSensorCategory,
          )>()(
        ptr.ref.lpVtbl,
        pSensorCategory,
      );

  int GetType(
    Pointer<GUID> pSensorType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pSensorType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pSensorType,
          )>()(
        ptr.ref.lpVtbl,
        pSensorType,
      );

  int GetFriendlyName(
    Pointer<Pointer<Utf16>> pFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pFriendlyName,
      );

  int GetProperty(
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> pProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> pProperty,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pProperty,
      );

  int GetProperties(
    Pointer<COMObject> pKeys,
    Pointer<Pointer<COMObject>> ppProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKeys,
            Pointer<Pointer<COMObject>> ppProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKeys,
            Pointer<Pointer<COMObject>> ppProperties,
          )>()(
        ptr.ref.lpVtbl,
        pKeys,
        ppProperties,
      );

  int GetSupportedDataFields(
    Pointer<Pointer<COMObject>> ppDataFields,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDataFields,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDataFields,
          )>()(
        ptr.ref.lpVtbl,
        ppDataFields,
      );

  int SetProperties(
    Pointer<COMObject> pProperties,
    Pointer<Pointer<COMObject>> ppResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProperties,
            Pointer<Pointer<COMObject>> ppResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProperties,
            Pointer<Pointer<COMObject>> ppResults,
          )>()(
        ptr.ref.lpVtbl,
        pProperties,
        ppResults,
      );

  int SupportsDataField(
    Pointer<PROPERTYKEY> key,
    Pointer<Int16> pIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int16> pIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Pointer<Int16> pIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        key,
        pIsSupported,
      );

  int GetState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );

  int GetData(
    Pointer<Pointer<COMObject>> ppDataReport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDataReport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDataReport,
          )>()(
        ptr.ref.lpVtbl,
        ppDataReport,
      );

  int SupportsEvent(
    Pointer<GUID> eventGuid,
    Pointer<Int16> pIsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> eventGuid,
            Pointer<Int16> pIsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> eventGuid,
            Pointer<Int16> pIsSupported,
          )>()(
        ptr.ref.lpVtbl,
        eventGuid,
        pIsSupported,
      );

  int GetEventInterest(
    Pointer<Pointer<GUID>> ppValues,
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<GUID>> ppValues,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<GUID>> ppValues,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        ppValues,
        pCount,
      );

  int SetEventInterest(
    Pointer<GUID> pValues,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pValues,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pValues,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        pValues,
        count,
      );

  int SetEventSink(
    Pointer<COMObject> pEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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
}

/// @nodoc
const CLSID_Sensor = '{E97CED00-523A-4133-BF6F-D3A2DAE7F6BA}';

/// {@category com}
class Sensor extends ISensor {
  Sensor(Pointer<COMObject> ptr) : super(ptr);

  factory Sensor.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Sensor);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISensor);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Sensor(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
