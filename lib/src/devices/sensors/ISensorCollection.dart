// ISensorCollection.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISensorCollection = '{23571E11-E545-4DD8-A337-B89BF44B10DF}';

/// {@category Interface}
/// {@category com}
class ISensorCollection extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ISensorCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetAt(
    int ulIndex,
    Pointer<Pointer<COMObject>> ppSensor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulIndex,
            Pointer<Pointer<COMObject>> ppSensor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulIndex,
            Pointer<Pointer<COMObject>> ppSensor,
          )>()(
        ptr.ref.lpVtbl,
        ulIndex,
        ppSensor,
      );

  int GetCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int Add(
    Pointer<COMObject> pSensor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSensor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSensor,
          )>()(
        ptr.ref.lpVtbl,
        pSensor,
      );

  int Remove(
    Pointer<COMObject> pSensor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSensor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSensor,
          )>()(
        ptr.ref.lpVtbl,
        pSensor,
      );

  int RemoveByID(
    Pointer<GUID> sensorID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> sensorID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> sensorID,
          )>()(
        ptr.ref.lpVtbl,
        sensorID,
      );

  int Clear() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

/// @nodoc
const CLSID_SensorCollection = '{79C43ADB-A429-469F-AA39-2F2B74B75937}';

/// {@category com}
class SensorCollection extends ISensorCollection {
  SensorCollection(Pointer<COMObject> ptr) : super(ptr);

  factory SensorCollection.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SensorCollection);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISensorCollection);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SensorCollection(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
