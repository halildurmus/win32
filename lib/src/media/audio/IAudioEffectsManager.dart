// IAudioEffectsManager.dart

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
import '../../media/audio/IAudioEffectsChangedNotificationClient.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_IAudioEffectsManager = '{4460B3AE-4B44-4527-8676-7548A8ACD260}';

/// {@category Interface}
/// {@category com}
class IAudioEffectsManager extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAudioEffectsManager(Pointer<COMObject> ptr) : super(ptr);

  int RegisterAudioEffectsChangedNotificationCallback(
    Pointer<COMObject> client,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> client,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> client,
          )>()(
        ptr.ref.lpVtbl,
        client,
      );

  int UnregisterAudioEffectsChangedNotificationCallback(
    Pointer<COMObject> client,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> client,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> client,
          )>()(
        ptr.ref.lpVtbl,
        client,
      );

  int GetAudioEffects(
    Pointer<Pointer<AUDIO_EFFECT>> effects,
    Pointer<Uint32> numEffects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<AUDIO_EFFECT>> effects,
            Pointer<Uint32> numEffects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<AUDIO_EFFECT>> effects,
            Pointer<Uint32> numEffects,
          )>()(
        ptr.ref.lpVtbl,
        effects,
        numEffects,
      );

  int SetAudioEffectState(
    GUID effectId,
    int state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
