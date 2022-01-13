// IMMDeviceActivator.dart

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
import '../../media/audio/IMMDevice.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMMDeviceActivator = '{3B0D0EA4-D0A9-4B0E-935B-09516746FAC0}';

/// {@category Interface}
/// {@category com}
class IMMDeviceActivator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMMDeviceActivator(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    Pointer<GUID> iid,
    Pointer<COMObject> pDevice,
    Pointer<PROPVARIANT> pActivationParams,
    Pointer<Pointer> ppInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<COMObject> pDevice,
            Pointer<PROPVARIANT> pActivationParams,
            Pointer<Pointer> ppInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<COMObject> pDevice,
            Pointer<PROPVARIANT> pActivationParams,
            Pointer<Pointer> ppInterface,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        pDevice,
        pActivationParams,
        ppInterface,
      );
}
