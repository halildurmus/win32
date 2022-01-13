// IMixerPinConfig2.dart

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

import '../../media/directshow/IMixerPinConfig.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMixerPinConfig2 = 'null';

/// {@category Interface}
/// {@category com}
class IMixerPinConfig2 extends IMixerPinConfig {
  // vtable begins at 15, is 2 entries long.
  IMixerPinConfig2(Pointer<COMObject> ptr) : super(ptr);

  int SetOverlaySurfaceColorControls(
    Pointer<DDCOLORCONTROL> pColorControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORCONTROL> pColorControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORCONTROL> pColorControl,
          )>()(
        ptr.ref.lpVtbl,
        pColorControl,
      );

  int GetOverlaySurfaceColorControls(
    Pointer<DDCOLORCONTROL> pColorControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORCONTROL> pColorControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORCONTROL> pColorControl,
          )>()(
        ptr.ref.lpVtbl,
        pColorControl,
      );
}
