// IAMOverlayFX.dart

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
const IID_IAMOverlayFX = '{62FAE250-7E65-4460-BFC9-6398B322073C}';

/// {@category Interface}
/// {@category com}
class IAMOverlayFX extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAMOverlayFX(Pointer<COMObject> ptr) : super(ptr);

  int QueryOverlayFXCaps(
    Pointer<Uint32> lpdwOverlayFXCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwOverlayFXCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwOverlayFXCaps,
          )>()(
        ptr.ref.lpVtbl,
        lpdwOverlayFXCaps,
      );

  int SetOverlayFX(
    int dwOverlayFX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOverlayFX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOverlayFX,
          )>()(
        ptr.ref.lpVtbl,
        dwOverlayFX,
      );

  int GetOverlayFX(
    Pointer<Uint32> lpdwOverlayFX,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwOverlayFX,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwOverlayFX,
          )>()(
        ptr.ref.lpVtbl,
        lpdwOverlayFX,
      );
}
