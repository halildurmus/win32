// IWiaUIExtension.dart

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
import '../../devices/imageacquisition/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IWiaUIExtension = '{DA319113-50EE-4C80-B460-57D005D44A2C}';

/// {@category Interface}
/// {@category com}
class IWiaUIExtension extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWiaUIExtension(Pointer<COMObject> ptr) : super(ptr);

  int DeviceDialog(
    Pointer<DEVICEDIALOGDATA> pDeviceDialogData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVICEDIALOGDATA> pDeviceDialogData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVICEDIALOGDATA> pDeviceDialogData,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceDialogData,
      );

  int GetDeviceIcon(
    Pointer<Utf16> bstrDeviceId,
    Pointer<IntPtr> phIcon,
    int nSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceId,
            Pointer<IntPtr> phIcon,
            Uint32 nSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceId,
            Pointer<IntPtr> phIcon,
            int nSize,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceId,
        phIcon,
        nSize,
      );

  int GetDeviceBitmapLogo(
    Pointer<Utf16> bstrDeviceId,
    Pointer<IntPtr> phBitmap,
    int nMaxWidth,
    int nMaxHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDeviceId,
            Pointer<IntPtr> phBitmap,
            Uint32 nMaxWidth,
            Uint32 nMaxHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDeviceId,
            Pointer<IntPtr> phBitmap,
            int nMaxWidth,
            int nMaxHeight,
          )>()(
        ptr.ref.lpVtbl,
        bstrDeviceId,
        phBitmap,
        nMaxWidth,
        nMaxHeight,
      );
}
