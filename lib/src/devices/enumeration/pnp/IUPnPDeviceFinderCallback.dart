// IUPnPDeviceFinderCallback.dart

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
const IID_IUPnPDeviceFinderCallback = '{415A984A-88B3-49F3-92AF-0508BEDF0D6C}';

/// {@category Interface}
/// {@category com}
class IUPnPDeviceFinderCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUPnPDeviceFinderCallback(Pointer<COMObject> ptr) : super(ptr);

  int DeviceAdded(
    int lFindData,
    Pointer<COMObject> pDevice,
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
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFindData,
            Pointer<COMObject> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        lFindData,
        pDevice,
      );

  int DeviceRemoved(
    int lFindData,
    Pointer<Utf16> bstrUDN,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFindData,
            Pointer<Utf16> bstrUDN,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFindData,
            Pointer<Utf16> bstrUDN,
          )>()(
        ptr.ref.lpVtbl,
        lFindData,
        bstrUDN,
      );

  int SearchComplete(
    int lFindData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFindData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFindData,
          )>()(
        ptr.ref.lpVtbl,
        lFindData,
      );
}
