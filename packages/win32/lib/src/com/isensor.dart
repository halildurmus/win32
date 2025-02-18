// isensor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_ISensor = '{5fa08f80-2657-458e-af75-46f73fa6ac5c}';

/// Represents a sensor.
///
/// {@category com}
class ISensor extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  ISensor(super.ptr);

  factory ISensor.from(IUnknown interface) =>
      ISensor(interface.toInterface(IID_ISensor));

  int getID(Pointer<GUID> pID) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pID)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pID)>()(
    ptr.ref.lpVtbl,
    pID,
  );

  int getCategory(Pointer<GUID> pSensorCategory) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> pSensorCategory)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pSensorCategory)>()(
    ptr.ref.lpVtbl,
    pSensorCategory,
  );

  int getType(Pointer<GUID> pSensorType) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<GUID> pSensorType)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pSensorType)>()(
    ptr.ref.lpVtbl,
    pSensorType,
  );

  int getFriendlyName(Pointer<Pointer<Utf16>> pFriendlyName) =>
      (ptr.ref.vtable + 6)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(Pointer, Pointer<Pointer<Utf16>> pFriendlyName)
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<Utf16>> pFriendlyName)
          >()(ptr.ref.lpVtbl, pFriendlyName);

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pProperty) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<PROPVARIANT> pProperty,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> pProperty,
            )
          >()(ptr.ref.lpVtbl, key, pProperty);

  int getProperties(
    Pointer<COMObject> pKeys,
    Pointer<Pointer<COMObject>> ppProperties,
  ) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pKeys,
              Pointer<Pointer<COMObject>> ppProperties,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pKeys,
          Pointer<Pointer<COMObject>> ppProperties,
        )
      >()(ptr.ref.lpVtbl, pKeys, ppProperties);

  int getSupportedDataFields(Pointer<Pointer<COMObject>> ppDataFields) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> ppDataFields,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> ppDataFields)
          >()(ptr.ref.lpVtbl, ppDataFields);

  int setProperties(
    Pointer<COMObject> pProperties,
    Pointer<Pointer<COMObject>> ppResults,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pProperties,
              Pointer<Pointer<COMObject>> ppResults,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pProperties,
          Pointer<Pointer<COMObject>> ppResults,
        )
      >()(ptr.ref.lpVtbl, pProperties, ppResults);

  int supportsDataField(
    Pointer<PROPERTYKEY> key,
    Pointer<Int16> pIsSupported,
  ) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<Int16> pIsSupported,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<PROPERTYKEY> key,
          Pointer<Int16> pIsSupported,
        )
      >()(ptr.ref.lpVtbl, key, pIsSupported);

  int getState(Pointer<Int32> pState) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> pState)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pState)>()(
    ptr.ref.lpVtbl,
    pState,
  );

  int getData(Pointer<Pointer<COMObject>> ppDataReport) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppDataReport)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> ppDataReport)
      >()(ptr.ref.lpVtbl, ppDataReport);

  int supportsEvent(Pointer<GUID> eventGuid, Pointer<Int16> pIsSupported) =>
      (ptr.ref.vtable + 14)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<GUID> eventGuid,
                  Pointer<Int16> pIsSupported,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<GUID> eventGuid,
              Pointer<Int16> pIsSupported,
            )
          >()(ptr.ref.lpVtbl, eventGuid, pIsSupported);

  int getEventInterest(
    Pointer<Pointer<GUID>> ppValues,
    Pointer<Uint32> pCount,
  ) => (ptr.ref.vtable + 15)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Pointer<GUID>> ppValues,
              Pointer<Uint32> pCount,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Pointer<GUID>> ppValues,
          Pointer<Uint32> pCount,
        )
      >()(ptr.ref.lpVtbl, ppValues, pCount);

  int setEventInterest(Pointer<GUID> pValues, int count) => (ptr.ref.vtable +
          16)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<GUID> pValues, Uint32 count)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pValues, int count)>()(
    ptr.ref.lpVtbl,
    pValues,
    count,
  );

  int setEventSink(Pointer<COMObject> pEvents) => (ptr.ref.vtable + 17)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pEvents)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pEvents)>()(
    ptr.ref.lpVtbl,
    pEvents,
  );
}

/// @nodoc
const CLSID_Sensor = '{e97ced00-523a-4133-bf6f-d3a2dae7f6ba}';

/// {@category com}
class Sensor extends ISensor {
  Sensor(super.ptr);

  factory Sensor.createInstance() =>
      Sensor(COMObject.createFromID(CLSID_Sensor, IID_ISensor));
}
