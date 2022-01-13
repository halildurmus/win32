// IWiaUIExtension2.dart

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

/// @nodoc
const IID_IWiaUIExtension2 = '{305600D7-5088-46D7-9A15-B77B09CDBA7A}';

/// {@category Interface}
/// {@category com}
class IWiaUIExtension2 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWiaUIExtension2(Pointer<COMObject> ptr) : super(ptr);

  int DeviceDialog(
    Pointer<DEVICEDIALOGDATA2> pDeviceDialogData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVICEDIALOGDATA2> pDeviceDialogData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVICEDIALOGDATA2> pDeviceDialogData,
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
}
