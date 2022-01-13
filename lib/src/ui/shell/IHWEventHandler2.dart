// IHWEventHandler2.dart

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

import '../../ui/shell/IHWEventHandler.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IHWEventHandler2 = '{CFCC809F-295D-42E8-9FFC-424B33C487E6}';

/// {@category Interface}
/// {@category com}
class IHWEventHandler2 extends IHWEventHandler {
  // vtable begins at 6, is 1 entries long.
  IHWEventHandler2(Pointer<COMObject> ptr) : super(ptr);

  int HandleEventWithHWND(
    Pointer<Utf16> pszDeviceID,
    Pointer<Utf16> pszAltDeviceID,
    Pointer<Utf16> pszEventType,
    int hwndOwner,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Pointer<Utf16> pszAltDeviceID,
            Pointer<Utf16> pszEventType,
            IntPtr hwndOwner,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDeviceID,
            Pointer<Utf16> pszAltDeviceID,
            Pointer<Utf16> pszEventType,
            int hwndOwner,
          )>()(
        ptr.ref.lpVtbl,
        pszDeviceID,
        pszAltDeviceID,
        pszEventType,
        hwndOwner,
      );
}
