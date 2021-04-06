// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class XAPO_REGISTRATION_PROPERTIES extends Struct {
  external GUID clsid;
  @Array(129)
  external Array<Uint16> FriendlyName;
  @Array(129)
  external Array<Uint16> CopyrightInfo;
  @Uint32() external int MajorVersion;
  @Uint32() external int MinorVersion;
  @Uint32() external int Flags;
  @Uint32() external int MinInputBufferCount;
  @Uint32() external int MaxInputBufferCount;
  @Uint32() external int MinOutputBufferCount;
  @Uint32() external int MaxOutputBufferCount;
}

class XAPO_LOCKFORPROCESS_PARAMETERS extends Struct {
  external Pointer<WAVEFORMATEX> pFormat;
  @Uint32() external int MaxFrameCount;
}

class XAPO_PROCESS_BUFFER_PARAMETERS extends Struct {
  external Pointer pBuffer;
  @Uint32() external int BufferFlags;
  @Uint32() external int ValidFrameCount;
}

class FXEQ extends Struct {
}

class FXMasteringLimiter extends Struct {
}

class FXReverb extends Struct {
}

class FXEcho extends Struct {
}

class FXEQ_PARAMETERS extends Struct {
  @Float() external double FrequencyCenter0;
  @Float() external double Gain0;
  @Float() external double Bandwidth0;
  @Float() external double FrequencyCenter1;
  @Float() external double Gain1;
  @Float() external double Bandwidth1;
  @Float() external double FrequencyCenter2;
  @Float() external double Gain2;
  @Float() external double Bandwidth2;
  @Float() external double FrequencyCenter3;
  @Float() external double Gain3;
  @Float() external double Bandwidth3;
}

class FXMASTERINGLIMITER_PARAMETERS extends Struct {
  @Uint32() external int Release;
  @Uint32() external int Loudness;
}

class FXREVERB_PARAMETERS extends Struct {
  @Float() external double Diffusion;
  @Float() external double RoomSize;
}

class FXECHO_INITDATA extends Struct {
  @Float() external double MaxDelay;
}

class FXECHO_PARAMETERS extends Struct {
  @Float() external double WetDryMix;
  @Float() external double Feedback;
  @Float() external double Delay;
}

class XAUDIO2_VOICE_DETAILS extends Struct {
  @Uint32() external int CreationFlags;
  @Uint32() external int ActiveFlags;
  @Uint32() external int InputChannels;
  @Uint32() external int InputSampleRate;
}

class XAUDIO2_SEND_DESCRIPTOR extends Struct {
  @Uint32() external int Flags;
  external IXAudio2Voice pOutputVoice;
}

class XAUDIO2_VOICE_SENDS extends Struct {
  @Uint32() external int SendCount;
  external Pointer<XAUDIO2_SEND_DESCRIPTOR> pSends;
}

class XAUDIO2_EFFECT_DESCRIPTOR extends Struct {
  external Pointer pEffect;
  @Int32() external int InitialState;
  @Uint32() external int OutputChannels;
}

class XAUDIO2_EFFECT_CHAIN extends Struct {
  @Uint32() external int EffectCount;
  external Pointer<XAUDIO2_EFFECT_DESCRIPTOR> pEffectDescriptors;
}

class XAUDIO2_FILTER_PARAMETERS extends Struct {
  @Uint32() external int Type;
  @Float() external double Frequency;
  @Float() external double OneOverQ;
}

class XAUDIO2_BUFFER extends Struct {
  @Uint32() external int Flags;
  @Uint32() external int AudioBytes;
  external Pointer<Uint8> pAudioData;
  @Uint32() external int PlayBegin;
  @Uint32() external int PlayLength;
  @Uint32() external int LoopBegin;
  @Uint32() external int LoopLength;
  @Uint32() external int LoopCount;
  external Pointer pContext;
}

class XAUDIO2_BUFFER_WMA extends Struct {
  external Pointer<Uint32> pDecodedPacketCumulativeBytes;
  @Uint32() external int PacketCount;
}

class XAUDIO2_VOICE_STATE extends Struct {
  external Pointer pCurrentBufferContext;
  @Uint32() external int BuffersQueued;
  @Uint64() external int SamplesPlayed;
}

class XAUDIO2_PERFORMANCE_DATA extends Struct {
  @Uint64() external int AudioCyclesSinceLastQuery;
  @Uint64() external int TotalCyclesSinceLastQuery;
  @Uint32() external int MinimumCyclesPerQuantum;
  @Uint32() external int MaximumCyclesPerQuantum;
  @Uint32() external int MemoryUsageInBytes;
  @Uint32() external int CurrentLatencyInSamples;
  @Uint32() external int GlitchesSinceEngineStarted;
  @Uint32() external int ActiveSourceVoiceCount;
  @Uint32() external int TotalSourceVoiceCount;
  @Uint32() external int ActiveSubmixVoiceCount;
  @Uint32() external int ActiveResamplerCount;
  @Uint32() external int ActiveMatrixMixCount;
  @Uint32() external int ActiveXmaSourceVoices;
  @Uint32() external int ActiveXmaStreams;
}

class XAUDIO2_DEBUG_CONFIGURATION extends Struct {
  @Uint32() external int TraceMask;
  @Uint32() external int BreakMask;
  @Int32() external int LogThreadID;
  @Int32() external int LogFileline;
  @Int32() external int LogFunctionName;
  @Int32() external int LogTiming;
}

class AudioVolumeMeter extends Struct {
}

class AudioReverb extends Struct {
}

class XAUDIO2FX_VOLUMEMETER_LEVELS extends Struct {
  external Pointer<Float> pPeakLevels;
  external Pointer<Float> pRMSLevels;
  @Uint32() external int ChannelCount;
}

class XAUDIO2FX_REVERB_PARAMETERS extends Struct {
  @Float() external double WetDryMix;
  @Uint32() external int ReflectionsDelay;
  @Uint8() external int ReverbDelay;
  @Uint8() external int RearDelay;
  @Uint8() external int SideDelay;
  @Uint8() external int PositionLeft;
  @Uint8() external int PositionRight;
  @Uint8() external int PositionMatrixLeft;
  @Uint8() external int PositionMatrixRight;
  @Uint8() external int EarlyDiffusion;
  @Uint8() external int LateDiffusion;
  @Uint8() external int LowEQGain;
  @Uint8() external int LowEQCutoff;
  @Uint8() external int HighEQGain;
  @Uint8() external int HighEQCutoff;
  @Float() external double RoomFilterFreq;
  @Float() external double RoomFilterMain;
  @Float() external double RoomFilterHF;
  @Float() external double ReflectionsGain;
  @Float() external double ReverbGain;
  @Float() external double DecayTime;
  @Float() external double Density;
  @Float() external double RoomSize;
  @Int32() external int DisableLateField;
}

class XAUDIO2FX_REVERB_I3DL2_PARAMETERS extends Struct {
  @Float() external double WetDryMix;
  @Int32() external int Room;
  @Int32() external int RoomHF;
  @Float() external double RoomRolloffFactor;
  @Float() external double DecayTime;
  @Float() external double DecayHFRatio;
  @Int32() external int Reflections;
  @Float() external double ReflectionsDelay;
  @Int32() external int Reverb;
  @Float() external double ReverbDelay;
  @Float() external double Diffusion;
  @Float() external double Density;
  @Float() external double HFReference;
}

class HrtfPosition extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double z;
}

class HrtfOrientation extends Struct {
  @Array(9)
  external Array<Float> element;
}

class HrtfDirectivity extends Struct {
  @Uint32() external int type;
  @Float() external double scaling;
}

class HrtfDirectivityCardioid extends Struct {
  external HrtfDirectivity directivity;
  @Float() external double order;
}

class HrtfDirectivityCone extends Struct {
  external HrtfDirectivity directivity;
  @Float() external double innerAngle;
  @Float() external double outerAngle;
}

class HrtfDistanceDecay extends Struct {
  @Uint32() external int type;
  @Float() external double maxGain;
  @Float() external double minGain;
  @Float() external double unityGainDistance;
  @Float() external double cutoffDistance;
}

class HrtfApoInit extends Struct {
  external Pointer<HrtfDistanceDecay> distanceDecay;
  external Pointer<HrtfDirectivity> directivity;
}

