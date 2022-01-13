// ITLegacyAddressMediaControl.dart

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

/// @nodoc
const IID_ITLegacyAddressMediaControl =
    '{AB493640-4C0B-11D2-A046-00C04FB6809F}';

/// {@category Interface}
/// {@category com}
class ITLegacyAddressMediaControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITLegacyAddressMediaControl(Pointer<COMObject> ptr) : super(ptr);

  int GetID(
    Pointer<Utf16> pDeviceClass,
    Pointer<Uint32> pdwSize,
    Pointer<Pointer<Uint8>> ppDeviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppDeviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppDeviceID,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceClass,
        pdwSize,
        ppDeviceID,
      );

  int GetDevConfig(
    Pointer<Utf16> pDeviceClass,
    Pointer<Uint32> pdwSize,
    Pointer<Pointer<Uint8>> ppDeviceConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppDeviceConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppDeviceConfig,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceClass,
        pdwSize,
        ppDeviceConfig,
      );

  int SetDevConfig(
    Pointer<Utf16> pDeviceClass,
    int dwSize,
    Pointer<Uint8> pDeviceConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Uint32 dwSize,
            Pointer<Uint8> pDeviceConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            int dwSize,
            Pointer<Uint8> pDeviceConfig,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceClass,
        dwSize,
        pDeviceConfig,
      );
}
