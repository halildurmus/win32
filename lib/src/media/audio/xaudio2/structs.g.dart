// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../media/audio/xaudio2/structs.g.dart';
import '../../../media/audio/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IUnknown.dart';
import '../../../media/audio/xaudio2/IXAudio2Voice.dart';

/// {@category Struct}
@Packed(1)
class FXECHO_INITDATA extends Struct {
  @Float()
  external double MaxDelay;
}

/// {@category Struct}
@Packed(1)
class FXECHO_PARAMETERS extends Struct {
  @Float()
  external double WetDryMix;

  @Float()
  external double Feedback;

  @Float()
  external double Delay;
}

/// {@category Struct}
@Packed(1)
class FXEQ_PARAMETERS extends Struct {
  @Float()
  external double FrequencyCenter0;

  @Float()
  external double Gain0;

  @Float()
  external double Bandwidth0;

  @Float()
  external double FrequencyCenter1;

  @Float()
  external double Gain1;

  @Float()
  external double Bandwidth1;

  @Float()
  external double FrequencyCenter2;

  @Float()
  external double Gain2;

  @Float()
  external double Bandwidth2;

  @Float()
  external double FrequencyCenter3;

  @Float()
  external double Gain3;

  @Float()
  external double Bandwidth3;
}

/// {@category Struct}
@Packed(1)
class FXMASTERINGLIMITER_PARAMETERS extends Struct {
  @Uint32()
  external int Release;

  @Uint32()
  external int Loudness;
}

/// {@category Struct}
@Packed(1)
class FXREVERB_PARAMETERS extends Struct {
  @Float()
  external double Diffusion;

  @Float()
  external double RoomSize;
}

/// {@category Struct}
class HrtfApoInit extends Struct {
  external Pointer<HrtfDistanceDecay> distanceDecay;

  external Pointer<HrtfDirectivity> directivity;
}

/// {@category Struct}
class HrtfDirectivity extends Struct {
  @Int32()
  external int type;

  @Float()
  external double scaling;
}

/// {@category Struct}
class HrtfDirectivityCardioid extends Struct {
  external HrtfDirectivity directivity;

  @Float()
  external double order;
}

/// {@category Struct}
class HrtfDirectivityCone extends Struct {
  external HrtfDirectivity directivity;

  @Float()
  external double innerAngle;

  @Float()
  external double outerAngle;
}

/// {@category Struct}
class HrtfDistanceDecay extends Struct {
  @Int32()
  external int type;

  @Float()
  external double maxGain;

  @Float()
  external double minGain;

  @Float()
  external double unityGainDistance;

  @Float()
  external double cutoffDistance;
}

/// {@category Struct}
class HrtfOrientation extends Struct {
  @Array(9)
  external Array<Float> element;
}

/// {@category Struct}
class HrtfPosition extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;
}

/// {@category Struct}
@Packed(1)
class XAPO_LOCKFORPROCESS_PARAMETERS extends Struct {
  external Pointer<WAVEFORMATEX> pFormat;

  @Uint32()
  external int MaxFrameCount;
}

/// {@category Struct}
class XAPO_PROCESS_BUFFER_PARAMETERS extends Struct {
  external Pointer pBuffer;

  @Int32()
  external int BufferFlags;

  @Uint32()
  external int ValidFrameCount;
}

/// {@category Struct}
class XAPO_REGISTRATION_PROPERTIES extends Struct {
  external GUID clsid;

  @Array(256)
  external Array<Uint16> _FriendlyName;

  String get FriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_FriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FriendlyName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _FriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _CopyrightInfo;

  String get CopyrightInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_CopyrightInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CopyrightInfo(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _CopyrightInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int MajorVersion;

  @Uint32()
  external int MinorVersion;

  @Uint32()
  external int Flags;

  @Uint32()
  external int MinInputBufferCount;

  @Uint32()
  external int MaxInputBufferCount;

  @Uint32()
  external int MinOutputBufferCount;

  @Uint32()
  external int MaxOutputBufferCount;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2FX_REVERB_I3DL2_PARAMETERS extends Struct {
  @Float()
  external double WetDryMix;

  @Int32()
  external int Room;

  @Int32()
  external int RoomHF;

  @Float()
  external double RoomRolloffFactor;

  @Float()
  external double DecayTime;

  @Float()
  external double DecayHFRatio;

  @Int32()
  external int Reflections;

  @Float()
  external double ReflectionsDelay;

  @Int32()
  external int Reverb;

  @Float()
  external double ReverbDelay;

  @Float()
  external double Diffusion;

  @Float()
  external double Density;

  @Float()
  external double HFReference;
}

/// {@category Struct}
class XAUDIO2FX_REVERB_PARAMETERS extends Struct {
  @Float()
  external double WetDryMix;

  @Uint32()
  external int ReflectionsDelay;

  @Uint8()
  external int ReverbDelay;

  @Uint8()
  external int RearDelay;

  @Uint8()
  external int SideDelay;

  @Uint8()
  external int PositionLeft;

  @Uint8()
  external int PositionRight;

  @Uint8()
  external int PositionMatrixLeft;

  @Uint8()
  external int PositionMatrixRight;

  @Uint8()
  external int EarlyDiffusion;

  @Uint8()
  external int LateDiffusion;

  @Uint8()
  external int LowEQGain;

  @Uint8()
  external int LowEQCutoff;

  @Uint8()
  external int HighEQGain;

  @Uint8()
  external int HighEQCutoff;

  @Float()
  external double RoomFilterFreq;

  @Float()
  external double RoomFilterMain;

  @Float()
  external double RoomFilterHF;

  @Float()
  external double ReflectionsGain;

  @Float()
  external double ReverbGain;

  @Float()
  external double DecayTime;

  @Float()
  external double Density;

  @Float()
  external double RoomSize;

  @Int32()
  external int DisableLateField;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2FX_VOLUMEMETER_LEVELS extends Struct {
  external Pointer<Float> pPeakLevels;

  external Pointer<Float> pRMSLevels;

  @Uint32()
  external int ChannelCount;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_BUFFER extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int AudioBytes;

  external Pointer<Uint8> pAudioData;

  @Uint32()
  external int PlayBegin;

  @Uint32()
  external int PlayLength;

  @Uint32()
  external int LoopBegin;

  @Uint32()
  external int LoopLength;

  @Uint32()
  external int LoopCount;

  external Pointer pContext;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_BUFFER_WMA extends Struct {
  external Pointer<Uint32> pDecodedPacketCumulativeBytes;

  @Uint32()
  external int PacketCount;
}

/// {@category Struct}
class XAUDIO2_DEBUG_CONFIGURATION extends Struct {
  @Uint32()
  external int TraceMask;

  @Uint32()
  external int BreakMask;

  @Int32()
  external int LogThreadID;

  @Int32()
  external int LogFileline;

  @Int32()
  external int LogFunctionName;

  @Int32()
  external int LogTiming;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_EFFECT_CHAIN extends Struct {
  @Uint32()
  external int EffectCount;

  external Pointer<XAUDIO2_EFFECT_DESCRIPTOR> pEffectDescriptors;
}

/// {@category Struct}
class XAUDIO2_EFFECT_DESCRIPTOR extends Struct {
  external Pointer<COMObject> pEffect;

  @Int32()
  external int InitialState;

  @Uint32()
  external int OutputChannels;
}

/// {@category Struct}
class XAUDIO2_FILTER_PARAMETERS extends Struct {
  @Int32()
  external int Type;

  @Float()
  external double Frequency;

  @Float()
  external double OneOverQ;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_PERFORMANCE_DATA extends Struct {
  @Uint64()
  external int AudioCyclesSinceLastQuery;

  @Uint64()
  external int TotalCyclesSinceLastQuery;

  @Uint32()
  external int MinimumCyclesPerQuantum;

  @Uint32()
  external int MaximumCyclesPerQuantum;

  @Uint32()
  external int MemoryUsageInBytes;

  @Uint32()
  external int CurrentLatencyInSamples;

  @Uint32()
  external int GlitchesSinceEngineStarted;

  @Uint32()
  external int ActiveSourceVoiceCount;

  @Uint32()
  external int TotalSourceVoiceCount;

  @Uint32()
  external int ActiveSubmixVoiceCount;

  @Uint32()
  external int ActiveResamplerCount;

  @Uint32()
  external int ActiveMatrixMixCount;

  @Uint32()
  external int ActiveXmaSourceVoices;

  @Uint32()
  external int ActiveXmaStreams;
}

/// {@category Struct}
class XAUDIO2_SEND_DESCRIPTOR extends Struct {
  @Uint32()
  external int Flags;

  external Pointer<COMObject> pOutputVoice;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_VOICE_DETAILS extends Struct {
  @Uint32()
  external int CreationFlags;

  @Uint32()
  external int ActiveFlags;

  @Uint32()
  external int InputChannels;

  @Uint32()
  external int InputSampleRate;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_VOICE_SENDS extends Struct {
  @Uint32()
  external int SendCount;

  external Pointer<XAUDIO2_SEND_DESCRIPTOR> pSends;
}

/// {@category Struct}
@Packed(1)
class XAUDIO2_VOICE_STATE extends Struct {
  external Pointer pCurrentBufferContext;

  @Uint32()
  external int BuffersQueued;

  @Uint64()
  external int SamplesPlayed;
}
