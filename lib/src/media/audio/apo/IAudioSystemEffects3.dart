// IAudioSystemEffects3.dart

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

import '../../../media/audio/apo/IAudioSystemEffects2.dart';
import '../../../media/audio/apo/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioSystemEffects3 = '{C58B31CD-FC6A-4255-BC1F-AD29BB0A4A17}';

/// {@category Interface}
/// {@category com}
class IAudioSystemEffects3 extends IAudioSystemEffects2 {
  // vtable begins at 4, is 2 entries long.
  IAudioSystemEffects3(Pointer<COMObject> ptr) : super(ptr);

  int GetControllableSystemEffectsList(
    Pointer<Pointer<AUDIO_SYSTEMEFFECT>> effects,
    Pointer<Uint32> numEffects,
    int event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<AUDIO_SYSTEMEFFECT>> effects,
            Pointer<Uint32> numEffects,
            IntPtr event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<AUDIO_SYSTEMEFFECT>> effects,
            Pointer<Uint32> numEffects,
            int event,
          )>()(
        ptr.ref.lpVtbl,
        effects,
        numEffects,
        event,
      );

  int SetAudioSystemEffectState(
    GUID effectId,
    int state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID effectId,
            Int32 state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID effectId,
            int state,
          )>()(
        ptr.ref.lpVtbl,
        effectId,
        state,
      );
}
