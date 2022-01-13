// IPortableDeviceServiceActivation.dart

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
import '../../devices/portabledevices/IPortableDeviceValues.dart';
import '../../devices/portabledevices/IPortableDeviceServiceOpenCallback.dart';

/// @nodoc
const IID_IPortableDeviceServiceActivation =
    '{E56B0534-D9B9-425C-9B99-75F97CB3D7C8}';

/// {@category Interface}
/// {@category com}
class IPortableDeviceServiceActivation extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPortableDeviceServiceActivation(Pointer<COMObject> ptr) : super(ptr);

  int OpenAsync(
    Pointer<Utf16> pszPnPServiceID,
    Pointer<COMObject> pClientInfo,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPnPServiceID,
            Pointer<COMObject> pClientInfo,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPnPServiceID,
            Pointer<COMObject> pClientInfo,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pszPnPServiceID,
        pClientInfo,
        pCallback,
      );

  int CancelOpenAsync() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
