// IMFExtendedCameraController.dart

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
import '../../media/mediafoundation/IMFExtendedCameraControl.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFExtendedCameraController =
    '{B91EBFEE-CA03-4AF4-8A82-A31752F4A0FC}';

/// {@category Interface}
/// {@category com}
class IMFExtendedCameraController extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFExtendedCameraController(Pointer<COMObject> ptr) : super(ptr);

  int GetExtendedCameraControl(
    int dwStreamIndex,
    int ulPropertyId,
    Pointer<Pointer<COMObject>> ppControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 ulPropertyId,
            Pointer<Pointer<COMObject>> ppControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int ulPropertyId,
            Pointer<Pointer<COMObject>> ppControl,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        ulPropertyId,
        ppControl,
      );
}
