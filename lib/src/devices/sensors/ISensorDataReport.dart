// ISensorDataReport.dart

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

/// @nodoc
const IID_ISensorDataReport = '{0AB9DF9B-C4B5-4796-8898-0470706A2E1D}';

/// {@category Interface}
/// {@category com}
class ISensorDataReport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISensorDataReport(Pointer<COMObject> ptr) : super(ptr);

  int GetTimestamp(
    Pointer<SYSTEMTIME> pTimeStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pTimeStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pTimeStamp,
          )>()(
        ptr.ref.lpVtbl,
        pTimeStamp,
      );

  int GetSensorValue(
    Pointer<PROPERTYKEY> pKey,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pKey,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        pValue,
      );

  int GetSensorValues(
    Pointer<COMObject> pKeys,
    Pointer<Pointer<COMObject>> ppValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pKeys,
            Pointer<Pointer<COMObject>> ppValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pKeys,
            Pointer<Pointer<COMObject>> ppValues,
          )>()(
        ptr.ref.lpVtbl,
        pKeys,
        ppValues,
      );
}

/// @nodoc
const CLSID_SensorDataReport = '{4EA9D6EF-694B-4218-8816-CCDA8DA74BBA}';

/// {@category com}
class SensorDataReport extends ISensorDataReport {
  SensorDataReport(Pointer<COMObject> ptr) : super(ptr);

  factory SensorDataReport.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SensorDataReport);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISensorDataReport);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SensorDataReport(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
