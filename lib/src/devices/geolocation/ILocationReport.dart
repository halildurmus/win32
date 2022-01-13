// ILocationReport.dart

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

/// @nodoc
const IID_ILocationReport = '{C8B7F7EE-75D0-4DB9-B62D-7A0F369CA456}';

/// {@category Interface}
/// {@category com}
class ILocationReport extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ILocationReport(Pointer<COMObject> ptr) : super(ptr);

  int GetSensorID(
    Pointer<GUID> pSensorID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pSensorID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pSensorID,
          )>()(
        ptr.ref.lpVtbl,
        pSensorID,
      );

  int GetTimestamp(
    Pointer<SYSTEMTIME> pCreationTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pCreationTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pCreationTime,
          )>()(
        ptr.ref.lpVtbl,
        pCreationTime,
      );

  int GetValue(
    Pointer<PROPERTYKEY> pKey,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
