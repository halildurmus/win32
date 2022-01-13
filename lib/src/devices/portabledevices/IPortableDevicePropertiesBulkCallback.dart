// IPortableDevicePropertiesBulkCallback.dart

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
import '../../devices/portabledevices/IPortableDeviceValuesCollection.dart';

/// @nodoc
const IID_IPortableDevicePropertiesBulkCallback =
    '{9DEACB80-11E8-40E3-A9F3-F557986A7845}';

/// {@category Interface}
/// {@category com}
class IPortableDevicePropertiesBulkCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPortableDevicePropertiesBulkCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnStart(
    Pointer<GUID> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int OnProgress(
    Pointer<GUID> pContext,
    Pointer<COMObject> pResults,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pContext,
            Pointer<COMObject> pResults,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pContext,
            Pointer<COMObject> pResults,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
        pResults,
      );

  int OnEnd(
    Pointer<GUID> pContext,
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pContext,
            Int32 hrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pContext,
            int hrStatus,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
        hrStatus,
      );
}
