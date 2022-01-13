// ITLegacyAddressMediaControl2.dart

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

import '../../devices/tapi/ITLegacyAddressMediaControl.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITLegacyAddressMediaControl2 =
    '{B0EE512B-A531-409E-9DD9-4099FE86C738}';

/// {@category Interface}
/// {@category com}
class ITLegacyAddressMediaControl2 extends ITLegacyAddressMediaControl {
  // vtable begins at 6, is 2 entries long.
  ITLegacyAddressMediaControl2(Pointer<COMObject> ptr) : super(ptr);

  int ConfigDialog(
    int hwndOwner,
    Pointer<Utf16> pDeviceClass,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
            Pointer<Utf16> pDeviceClass,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
            Pointer<Utf16> pDeviceClass,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
        pDeviceClass,
      );

  int ConfigDialogEdit(
    int hwndOwner,
    Pointer<Utf16> pDeviceClass,
    int dwSizeIn,
    Pointer<Uint8> pDeviceConfigIn,
    Pointer<Uint32> pdwSizeOut,
    Pointer<Pointer<Uint8>> ppDeviceConfigOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndOwner,
            Pointer<Utf16> pDeviceClass,
            Uint32 dwSizeIn,
            Pointer<Uint8> pDeviceConfigIn,
            Pointer<Uint32> pdwSizeOut,
            Pointer<Pointer<Uint8>> ppDeviceConfigOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndOwner,
            Pointer<Utf16> pDeviceClass,
            int dwSizeIn,
            Pointer<Uint8> pDeviceConfigIn,
            Pointer<Uint32> pdwSizeOut,
            Pointer<Pointer<Uint8>> ppDeviceConfigOut,
          )>()(
        ptr.ref.lpVtbl,
        hwndOwner,
        pDeviceClass,
        dwSizeIn,
        pDeviceConfigIn,
        pdwSizeOut,
        ppDeviceConfigOut,
      );
}
