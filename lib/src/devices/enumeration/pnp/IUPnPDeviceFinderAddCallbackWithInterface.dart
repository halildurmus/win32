// IUPnPDeviceFinderAddCallbackWithInterface.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../devices/enumeration/pnp/IUPnPDevice.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUPnPDeviceFinderAddCallbackWithInterface =
    '{983DFC0B-1796-44DF-8975-CA545B620EE5}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceFinderAddCallbackWithInterface extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUPnPDeviceFinderAddCallbackWithInterface(Pointer<COMObject> ptr)
      : super(ptr);

  int DeviceAddedWithInterface(
    int lFindData,
    Pointer<COMObject> pDevice,
    Pointer<GUID> pguidInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFindData,
            Pointer<COMObject> pDevice,
            Pointer<GUID> pguidInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFindData,
            Pointer<COMObject> pDevice,
            Pointer<GUID> pguidInterface,
          )>()(
        ptr.ref.lpVtbl,
        lFindData,
        pDevice,
        pguidInterface,
      );
}
