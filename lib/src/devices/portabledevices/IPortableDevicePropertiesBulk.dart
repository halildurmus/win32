// IPortableDevicePropertiesBulk.dart

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
import '../../devices/portabledevices/IPortableDevicePropVariantCollection.dart';
import '../../devices/portabledevices/IPortableDeviceKeyCollection.dart';
import '../../devices/portabledevices/IPortableDevicePropertiesBulkCallback.dart';
import '../../foundation/structs.g.dart';
import '../../devices/portabledevices/IPortableDeviceValuesCollection.dart';

/// @nodoc
const IID_IPortableDevicePropertiesBulk =
    '{482B05C0-4056-44ED-9E0F-5E23B009DA93}';

/// {@category Interface}
/// {@category com}
class IPortableDevicePropertiesBulk extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPortableDevicePropertiesBulk(Pointer<COMObject> ptr) : super(ptr);

  int QueueGetValuesByObjectList(
    Pointer<COMObject> pObjectIDs,
    Pointer<COMObject> pKeys,
    Pointer<COMObject> pCallback,
    Pointer<GUID> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObjectIDs,
            Pointer<COMObject> pKeys,
            Pointer<COMObject> pCallback,
            Pointer<GUID> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObjectIDs,
            Pointer<COMObject> pKeys,
            Pointer<COMObject> pCallback,
            Pointer<GUID> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pObjectIDs,
        pKeys,
        pCallback,
        pContext,
      );

  int QueueGetValuesByObjectFormat(
    Pointer<GUID> pguidObjectFormat,
    Pointer<Utf16> pszParentObjectID,
    int dwDepth,
    Pointer<COMObject> pKeys,
    Pointer<COMObject> pCallback,
    Pointer<GUID> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidObjectFormat,
            Pointer<Utf16> pszParentObjectID,
            Uint32 dwDepth,
            Pointer<COMObject> pKeys,
            Pointer<COMObject> pCallback,
            Pointer<GUID> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidObjectFormat,
            Pointer<Utf16> pszParentObjectID,
            int dwDepth,
            Pointer<COMObject> pKeys,
            Pointer<COMObject> pCallback,
            Pointer<GUID> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pguidObjectFormat,
        pszParentObjectID,
        dwDepth,
        pKeys,
        pCallback,
        pContext,
      );

  int QueueSetValuesByObjectList(
    Pointer<COMObject> pObjectValues,
    Pointer<COMObject> pCallback,
    Pointer<GUID> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObjectValues,
            Pointer<COMObject> pCallback,
            Pointer<GUID> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObjectValues,
            Pointer<COMObject> pCallback,
            Pointer<GUID> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pObjectValues,
        pCallback,
        pContext,
      );

  int Start(
    Pointer<GUID> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );

  int Cancel(
    Pointer<GUID> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );
}
