// IDirectMusicSynth8.dart

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

import '../../../media/audio/directmusic/IDirectMusicSynth.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/directmusic/structs.g.dart';

/// @nodoc
const IID_IDirectMusicSynth8 = '{53CAB625-2711-4C9F-9DE7-1B7F925F6FC8}';

/// {@category Interface}
/// {@category com}
class IDirectMusicSynth8 extends IDirectMusicSynth {
  // vtable begins at 20, is 5 entries long.
  IDirectMusicSynth8(Pointer<COMObject> ptr) : super(ptr);

  int PlayVoice(
    int rt,
    int dwVoiceId,
    int dwChannelGroup,
    int dwChannel,
    int dwDLId,
    int prPitch,
    int vrVolume,
    int stVoiceStart,
    int stLoopStart,
    int stLoopEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rt,
            Uint32 dwVoiceId,
            Uint32 dwChannelGroup,
            Uint32 dwChannel,
            Uint32 dwDLId,
            Int32 prPitch,
            Int32 vrVolume,
            Uint64 stVoiceStart,
            Uint64 stLoopStart,
            Uint64 stLoopEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rt,
            int dwVoiceId,
            int dwChannelGroup,
            int dwChannel,
            int dwDLId,
            int prPitch,
            int vrVolume,
            int stVoiceStart,
            int stLoopStart,
            int stLoopEnd,
          )>()(
        ptr.ref.lpVtbl,
        rt,
        dwVoiceId,
        dwChannelGroup,
        dwChannel,
        dwDLId,
        prPitch,
        vrVolume,
        stVoiceStart,
        stLoopStart,
        stLoopEnd,
      );

  int StopVoice(
    int rt,
    int dwVoiceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rt,
            Uint32 dwVoiceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rt,
            int dwVoiceId,
          )>()(
        ptr.ref.lpVtbl,
        rt,
        dwVoiceId,
      );

  int GetVoiceState(
    Pointer<Uint32> dwVoice,
    int cbVoice,
    Pointer<DMUS_VOICE_STATE> dwVoiceState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwVoice,
            Uint32 cbVoice,
            Pointer<DMUS_VOICE_STATE> dwVoiceState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwVoice,
            int cbVoice,
            Pointer<DMUS_VOICE_STATE> dwVoiceState,
          )>()(
        ptr.ref.lpVtbl,
        dwVoice,
        cbVoice,
        dwVoiceState,
      );

  int Refresh(
    int dwDownloadID,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDownloadID,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDownloadID,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwDownloadID,
        dwFlags,
      );

  int AssignChannelToBuses(
    int dwChannelGroup,
    int dwChannel,
    Pointer<Uint32> pdwBuses,
    int cBuses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwChannelGroup,
            Uint32 dwChannel,
            Pointer<Uint32> pdwBuses,
            Uint32 cBuses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwChannelGroup,
            int dwChannel,
            Pointer<Uint32> pdwBuses,
            int cBuses,
          )>()(
        ptr.ref.lpVtbl,
        dwChannelGroup,
        dwChannel,
        pdwBuses,
        cBuses,
      );
}
