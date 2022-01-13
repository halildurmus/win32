// IDirectSoundFXI3DL2Reverb.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSoundFXI3DL2Reverb = '{4B166A6A-0D66-43F3-80E3-EE6280DEE1A4}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXI3DL2Reverb extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDirectSoundFXI3DL2Reverb(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXI3DL2Reverb> pcDsFxI3DL2Reverb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXI3DL2Reverb> pcDsFxI3DL2Reverb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXI3DL2Reverb> pcDsFxI3DL2Reverb,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxI3DL2Reverb,
      );

  int GetAllParameters(
    Pointer<DSFXI3DL2Reverb> pDsFxI3DL2Reverb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXI3DL2Reverb> pDsFxI3DL2Reverb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXI3DL2Reverb> pDsFxI3DL2Reverb,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxI3DL2Reverb,
      );

  int SetPreset(
    int dwPreset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPreset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPreset,
          )>()(
        ptr.ref.lpVtbl,
        dwPreset,
      );

  int GetPreset(
    Pointer<Uint32> pdwPreset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPreset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPreset,
          )>()(
        ptr.ref.lpVtbl,
        pdwPreset,
      );

  int SetQuality(
    int lQuality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lQuality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lQuality,
          )>()(
        ptr.ref.lpVtbl,
        lQuality,
      );

  int GetQuality(
    Pointer<Int32> plQuality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plQuality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plQuality,
          )>()(
        ptr.ref.lpVtbl,
        plQuality,
      );
}
