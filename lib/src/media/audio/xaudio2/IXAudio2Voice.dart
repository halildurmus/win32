// IXAudio2Voice.dart

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

import '../../../media/audio/xaudio2/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/xaudio2/IXAudio2Voice.dart';

/// @nodoc
const IID_IXAudio2Voice = 'null';

/// {@category Interface}
/// {@category com}
class IXAudio2Voice {
  // vtable begins at 0, is 19 entries long.
  Pointer<COMObject> ptr;

  IXAudio2Voice(this.ptr);

  void GetVoiceDetails(
    Pointer<XAUDIO2_VOICE_DETAILS> pVoiceDetails,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<XAUDIO2_VOICE_DETAILS> pVoiceDetails,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<XAUDIO2_VOICE_DETAILS> pVoiceDetails,
          )>()(
        ptr.ref.lpVtbl,
        pVoiceDetails,
      );

  int SetOutputVoices(
    Pointer<XAUDIO2_VOICE_SENDS> pSendList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XAUDIO2_VOICE_SENDS> pSendList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XAUDIO2_VOICE_SENDS> pSendList,
          )>()(
        ptr.ref.lpVtbl,
        pSendList,
      );

  int SetEffectChain(
    Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XAUDIO2_EFFECT_CHAIN> pEffectChain,
          )>()(
        ptr.ref.lpVtbl,
        pEffectChain,
      );

  int EnableEffect(
    int EffectIndex,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EffectIndex,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EffectIndex,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        EffectIndex,
        OperationSet,
      );

  int DisableEffect(
    int EffectIndex,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EffectIndex,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EffectIndex,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        EffectIndex,
        OperationSet,
      );

  void GetEffectState(
    int EffectIndex,
    Pointer<Int32> pEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 EffectIndex,
            Pointer<Int32> pEnabled,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int EffectIndex,
            Pointer<Int32> pEnabled,
          )>()(
        ptr.ref.lpVtbl,
        EffectIndex,
        pEnabled,
      );

  int SetEffectParameters(
    int EffectIndex,
    Pointer pParameters,
    int ParametersByteSize,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EffectIndex,
            Pointer pParameters,
            Uint32 ParametersByteSize,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EffectIndex,
            Pointer pParameters,
            int ParametersByteSize,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        EffectIndex,
        pParameters,
        ParametersByteSize,
        OperationSet,
      );

  int GetEffectParameters(
    int EffectIndex,
    Pointer pParameters,
    int ParametersByteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EffectIndex,
            Pointer pParameters,
            Uint32 ParametersByteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EffectIndex,
            Pointer pParameters,
            int ParametersByteSize,
          )>()(
        ptr.ref.lpVtbl,
        EffectIndex,
        pParameters,
        ParametersByteSize,
      );

  int SetFilterParameters(
    Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
        OperationSet,
      );

  void GetFilterParameters(
    Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pParameters,
      );

  int SetOutputFilterParameters(
    Pointer<COMObject> pDestinationVoice,
    Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationVoice,
        pParameters,
        OperationSet,
      );

  void GetOutputFilterParameters(
    Pointer<COMObject> pDestinationVoice,
    Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            Pointer<XAUDIO2_FILTER_PARAMETERS> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationVoice,
        pParameters,
      );

  int SetVolume(
    double Volume,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float Volume,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double Volume,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        Volume,
        OperationSet,
      );

  void GetVolume(
    Pointer<Float> pVolume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Float> pVolume,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Float> pVolume,
          )>()(
        ptr.ref.lpVtbl,
        pVolume,
      );

  int SetChannelVolumes(
    int Channels,
    Pointer<Float> pVolumes,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Channels,
            Pointer<Float> pVolumes,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Channels,
            Pointer<Float> pVolumes,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        Channels,
        pVolumes,
        OperationSet,
      );

  void GetChannelVolumes(
    int Channels,
    Pointer<Float> pVolumes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Channels,
            Pointer<Float> pVolumes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Channels,
            Pointer<Float> pVolumes,
          )>()(
        ptr.ref.lpVtbl,
        Channels,
        pVolumes,
      );

  int SetOutputMatrix(
    Pointer<COMObject> pDestinationVoice,
    int SourceChannels,
    int DestinationChannels,
    Pointer<Float> pLevelMatrix,
    int OperationSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            Uint32 SourceChannels,
            Uint32 DestinationChannels,
            Pointer<Float> pLevelMatrix,
            Uint32 OperationSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            int SourceChannels,
            int DestinationChannels,
            Pointer<Float> pLevelMatrix,
            int OperationSet,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationVoice,
        SourceChannels,
        DestinationChannels,
        pLevelMatrix,
        OperationSet,
      );

  void GetOutputMatrix(
    Pointer<COMObject> pDestinationVoice,
    int SourceChannels,
    int DestinationChannels,
    Pointer<Float> pLevelMatrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            Uint32 SourceChannels,
            Uint32 DestinationChannels,
            Pointer<Float> pLevelMatrix,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDestinationVoice,
            int SourceChannels,
            int DestinationChannels,
            Pointer<Float> pLevelMatrix,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationVoice,
        SourceChannels,
        DestinationChannels,
        pLevelMatrix,
      );

  void DestroyVoice() => ptr.ref.lpVtbl.value
          .elementAt(18)
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
}
