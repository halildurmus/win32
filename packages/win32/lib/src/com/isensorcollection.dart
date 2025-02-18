// isensorcollection.dart

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
const IID_ISensorCollection = '{23571e11-e545-4dd8-a337-b89bf44b10df}';

/// Represents a collection of sensors, such as all the sensors connected to
/// a computer.
///
/// {@category com}
class ISensorCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ISensorCollection(super.ptr);

  factory ISensorCollection.from(IUnknown interface) =>
      ISensorCollection(interface.toInterface(IID_ISensorCollection));

  int getAt(int ulIndex, Pointer<Pointer<COMObject>> ppSensor) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 ulIndex,
                  Pointer<Pointer<COMObject>> ppSensor,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int ulIndex,
              Pointer<Pointer<COMObject>> ppSensor,
            )
          >()(ptr.ref.lpVtbl, ulIndex, ppSensor);

  int getCount(Pointer<Uint32> pCount) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pCount)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pCount)>()(
    ptr.ref.lpVtbl,
    pCount,
  );

  int add(Pointer<COMObject> pSensor) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pSensor)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pSensor)>()(
    ptr.ref.lpVtbl,
    pSensor,
  );

  int remove(Pointer<COMObject> pSensor) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pSensor)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pSensor)>()(
    ptr.ref.lpVtbl,
    pSensor,
  );

  int removeByID(Pointer<GUID> sensorID) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> sensorID)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> sensorID)>()(
    ptr.ref.lpVtbl,
    sensorID,
  );

  int clear() => (ptr.ref.vtable + 8)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
const CLSID_SensorCollection = '{79c43adb-a429-469f-aa39-2f2b74b75937}';

/// {@category com}
class SensorCollection extends ISensorCollection {
  SensorCollection(super.ptr);

  factory SensorCollection.createInstance() => SensorCollection(
    COMObject.createFromID(CLSID_SensorCollection, IID_ISensorCollection),
  );
}
