// IXAudio2.dart

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
import '../../../media/audio/xaudio2/IXAudio2EngineCallback.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/xaudio2/IXAudio2SourceVoice.dart';
import '../../../media/audio/structs.g.dart';
import '../../../media/audio/xaudio2/IXAudio2VoiceCallback.dart';
import '../../../media/audio/xaudio2/structs.g.dart';
import '../../../media/audio/xaudio2/IXAudio2SubmixVoice.dart';
import '../../../media/audio/xaudio2/IXAudio2MasteringVoice.dart';

/// @nodoc
const IID_IXAudio2 = '{2B02E3CF-2E0B-4EC3-BE45-1B2A3FE7210D}';

/// {@category Interface}
/// {@category com}
class IXAudio2 extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IXAudio2(Pointer<COMObject> ptr) : super(ptr);

  int RegisterForCallbacks(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  void UnregisterForCallbacks(
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        pCallback,
      );

  int CreateSourceVoice(
    Pointer<Pointer<COMObject>> ppSourceVoice,
    Pointer<WAVEFORMATEX> pSourceFormat,
    int Flags,
    double MaxFrequencyRatio,
    Pointer<COMObject> pCallback,
    Pointer<XAUDIO2_VOICE_SENDS> pSendList,
    Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSourceVoice,
            Pointer<WAVEFORMATEX> pSourceFormat,
            Uint32 Flags,
            Float MaxFrequencyRatio,
            Pointer<COMObject> pCallback,
            Pointer<XAUDIO2_VOICE_SENDS> pSendList,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSourceVoice,
            Pointer<WAVEFORMATEX> pSourceFormat,
            int Flags,
            double MaxFrequencyRatio,
            Pointer<COMObject> pCallback,
            Pointer<XAUDIO2_VOICE_SENDS> pSendList,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
          )>()(
        ptr.ref.lpVtbl,
        ppSourceVoice,
        pSourceFormat,
        Flags,
        MaxFrequencyRatio,
        pCallback,
        pSendList,
        pEffectChain,
      );

  int CreateSubmixVoice(
    Pointer<Pointer<COMObject>> ppSubmixVoice,
    int InputChannels,
    int InputSampleRate,
    int Flags,
    int ProcessingStage,
    Pointer<XAUDIO2_VOICE_SENDS> pSendList,
    Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubmixVoice,
            Uint32 InputChannels,
            Uint32 InputSampleRate,
            Uint32 Flags,
            Uint32 ProcessingStage,
            Pointer<XAUDIO2_VOICE_SENDS> pSendList,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSubmixVoice,
            int InputChannels,
            int InputSampleRate,
            int Flags,
            int ProcessingStage,
            Pointer<XAUDIO2_VOICE_SENDS> pSendList,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
          )>()(
        ptr.ref.lpVtbl,
        ppSubmixVoice,
        InputChannels,
        InputSampleRate,
        Flags,
        ProcessingStage,
        pSendList,
        pEffectChain,
      );

  int CreateMasteringVoice(
    Pointer<Pointer<COMObject>> ppMasteringVoice,
    int InputChannels,
    int InputSampleRate,
    int Flags,
    Pointer<Utf16> szDeviceId,
    Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
    int StreamCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMasteringVoice,
            Uint32 InputChannels,
            Uint32 InputSampleRate,
            Uint32 Flags,
            Pointer<Utf16> szDeviceId,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
            Int32 StreamCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMasteringVoice,
            int InputChannels,
            int InputSampleRate,
            int Flags,
            Pointer<Utf16> szDeviceId,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
            int StreamCategory,
          )>()(
        ptr.ref.lpVtbl,
        ppMasteringVoice,
        InputChannels,
        InputSampleRate,
        Flags,
        szDeviceId,
        pEffectChain,
        StreamCategory,
      );

  int StartEngine() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void StopEngine() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CommitChanges(
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        OperationSet,
      );

  void GetPerformanceData(
    Pointer<XAUDIO2_PERFORMANCE_DATA> pPerfData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<XAUDIO2_PERFORMANCE_DATA> pPerfData,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<XAUDIO2_PERFORMANCE_DATA> pPerfData,
          )>()(
        ptr.ref.lpVtbl,
        pPerfData,
      );

  void SetDebugConfiguration(
    Pointer<XAUDIO2_DEBUG_CONFIGURATION> pDebugConfiguration,
    Pointer pReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<XAUDIO2_DEBUG_CONFIGURATION> pDebugConfiguration,
            Pointer pReserved,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<XAUDIO2_DEBUG_CONFIGURATION> pDebugConfiguration,
            Pointer pReserved,
          )>()(
        ptr.ref.lpVtbl,
        pDebugConfiguration,
        pReserved,
      );
}
