// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class UNCOMPRESSEDAUDIOFORMAT extends Struct {
  external GUID guidFormatType;
  @Uint32()
  external int dwSamplesPerFrame;
  @Uint32()
  external int dwBytesPerSampleContainer;
  @Uint32()
  external int dwValidBitsPerSample;
  @Float()
  external double fFramesPerSecond;
  @Uint32()
  external int dwChannelMask;
}

class APO_CONNECTION_DESCRIPTOR extends Struct {
  @Uint32()
  external int Type;
  @IntPtr()
  external int pBuffer;
  @Uint32()
  external int u32MaxFrameCount;
  external Pointer pFormat;
  @Uint32()
  external int u32Signature;
}

class APO_REG_PROPERTIES extends Struct {
  external GUID clsid;
  @Uint32()
  external int Flags;
  @Array(129)
  external Array<Uint16> szFriendlyName;
  @Array(129)
  external Array<Uint16> szCopyrightInfo;
  @Uint32()
  external int u32MajorVersion;
  @Uint32()
  external int u32MinorVersion;
  @Uint32()
  external int u32MinInputConnections;
  @Uint32()
  external int u32MaxInputConnections;
  @Uint32()
  external int u32MinOutputConnections;
  @Uint32()
  external int u32MaxOutputConnections;
  @Uint32()
  external int u32MaxInstances;
  @Uint32()
  external int u32NumAPOInterfaces;
  @Array(1)
  external Array<GUID> iidAPOInterfaceList;
}

class APOInitBaseStruct extends Struct {
  @Uint32()
  external int cbSize;
  external GUID clsid;
}

class APOInitSystemEffects extends Struct {
  external APOInitBaseStruct APOInit;
  external Pointer pAPOEndpointProperties;
  external Pointer pAPOSystemEffectsProperties;
  external Pointer pReserved;
  external Pointer pDeviceCollection;
}

class APOInitSystemEffects2 extends Struct {
  external APOInitBaseStruct APOInit;
  external Pointer pAPOEndpointProperties;
  external Pointer pAPOSystemEffectsProperties;
  external Pointer pReserved;
  external Pointer pDeviceCollection;
  @Uint32()
  external int nSoftwareIoDeviceInCollection;
  @Uint32()
  external int nSoftwareIoConnectorIndex;
  external GUID AudioProcessingMode;
  @Int32()
  external int InitializeForDiscoveryOnly;
}

class AudioFXExtensionParams extends Struct {
  @IntPtr()
  external int AddPageParam;
  external Pointer<Utf16> pwstrEndpointID;
  external Pointer pFxProperties;
}

class DLSID extends Struct {
  @Uint32()
  external int ulData1;
  @Uint16()
  external int usData2;
  @Uint16()
  external int usData3;
  @Array(8)
  external Array<Uint8> abData4;
}

class DLSVERSION extends Struct {
  @Uint32()
  external int dwVersionMS;
  @Uint32()
  external int dwVersionLS;
}

class CONNECTION extends Struct {
  @Uint16()
  external int usSource;
  @Uint16()
  external int usControl;
  @Uint16()
  external int usDestination;
  @Uint16()
  external int usTransform;
  @Int32()
  external int lScale;
}

class CONNECTIONLIST extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int cConnections;
}

class RGNRANGE extends Struct {
  @Uint16()
  external int usLow;
  @Uint16()
  external int usHigh;
}

class MIDILOCALE extends Struct {
  @Uint32()
  external int ulBank;
  @Uint32()
  external int ulInstrument;
}

class RGNHEADER extends Struct {
  external RGNRANGE RangeKey;
  external RGNRANGE RangeVelocity;
  @Uint16()
  external int fusOptions;
  @Uint16()
  external int usKeyGroup;
}

class INSTHEADER extends Struct {
  @Uint32()
  external int cRegions;
  external MIDILOCALE Locale;
}

class DLSHEADER extends Struct {
  @Uint32()
  external int cInstruments;
}

class WAVELINK extends Struct {
  @Uint16()
  external int fusOptions;
  @Uint16()
  external int usPhaseGroup;
  @Uint32()
  external int ulChannel;
  @Uint32()
  external int ulTableIndex;
}

class POOLCUE extends Struct {
  @Uint32()
  external int ulOffset;
}

class POOLTABLE extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int cCues;
}

class _rwsmp extends Struct {
  @Uint32()
  external int cbSize;
  @Uint16()
  external int usUnityNote;
  @Int16()
  external int sFineTune;
  @Int32()
  external int lAttenuation;
  @Uint32()
  external int fulOptions;
  @Uint32()
  external int cSampleLoops;
}

class _rloop extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int ulType;
  @Uint32()
  external int ulStart;
  @Uint32()
  external int ulLength;
}

class DMUS_DOWNLOADINFO extends Struct {
  @Uint32()
  external int dwDLType;
  @Uint32()
  external int dwDLId;
  @Uint32()
  external int dwNumOffsetTableEntries;
  @Uint32()
  external int cbSize;
}

class DMUS_OFFSETTABLE extends Struct {
  @Array(1)
  external Array<Uint32> ulOffsetTable;
}

class DMUS_INSTRUMENT extends Struct {
  @Uint32()
  external int ulPatch;
  @Uint32()
  external int ulFirstRegionIdx;
  @Uint32()
  external int ulGlobalArtIdx;
  @Uint32()
  external int ulFirstExtCkIdx;
  @Uint32()
  external int ulCopyrightIdx;
  @Uint32()
  external int ulFlags;
}

class DMUS_REGION extends Struct {
  external RGNRANGE RangeKey;
  external RGNRANGE RangeVelocity;
  @Uint16()
  external int fusOptions;
  @Uint16()
  external int usKeyGroup;
  @Uint32()
  external int ulRegionArtIdx;
  @Uint32()
  external int ulNextRegionIdx;
  @Uint32()
  external int ulFirstExtCkIdx;
  external WAVELINK WaveLink;
  external _rwsmp WSMP;
  @Array(1)
  external Array<_rloop> WLOOP;
}

class DMUS_LFOPARAMS extends Struct {
  @Int32()
  external int pcFrequency;
  @Int32()
  external int tcDelay;
  @Int32()
  external int gcVolumeScale;
  @Int32()
  external int pcPitchScale;
  @Int32()
  external int gcMWToVolume;
  @Int32()
  external int pcMWToPitch;
}

class DMUS_VEGPARAMS extends Struct {
  @Int32()
  external int tcAttack;
  @Int32()
  external int tcDecay;
  @Int32()
  external int ptSustain;
  @Int32()
  external int tcRelease;
  @Int32()
  external int tcVel2Attack;
  @Int32()
  external int tcKey2Decay;
}

class DMUS_PEGPARAMS extends Struct {
  @Int32()
  external int tcAttack;
  @Int32()
  external int tcDecay;
  @Int32()
  external int ptSustain;
  @Int32()
  external int tcRelease;
  @Int32()
  external int tcVel2Attack;
  @Int32()
  external int tcKey2Decay;
  @Int32()
  external int pcRange;
}

class DMUS_MSCPARAMS extends Struct {
  @Int32()
  external int ptDefaultPan;
}

class DMUS_ARTICPARAMS extends Struct {
  external DMUS_LFOPARAMS LFO;
  external DMUS_VEGPARAMS VolEG;
  external DMUS_PEGPARAMS PitchEG;
  external DMUS_MSCPARAMS Misc;
}

class DMUS_ARTICULATION extends Struct {
  @Uint32()
  external int ulArt1Idx;
  @Uint32()
  external int ulFirstExtCkIdx;
}

class DMUS_ARTICULATION2 extends Struct {
  @Uint32()
  external int ulArtIdx;
  @Uint32()
  external int ulFirstExtCkIdx;
  @Uint32()
  external int ulNextArtIdx;
}

class DMUS_EXTENSIONCHUNK extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int ulNextExtCkIdx;
  @Uint32()
  external int ExtCkID;
  @Array(4)
  external Array<Uint8> byExtCk;
}

class DMUS_COPYRIGHT extends Struct {
  @Uint32()
  external int cbSize;
  @Array(4)
  external Array<Uint8> byCopyright;
}

class DMUS_WAVEDATA extends Struct {
  @Uint32()
  external int cbSize;
  @Array(4)
  external Array<Uint8> byData;
}

class DMUS_WAVE extends Struct {
  @Uint32()
  external int ulFirstExtCkIdx;
  @Uint32()
  external int ulCopyrightIdx;
  @Uint32()
  external int ulWaveDataIdx;
  external WAVEFORMATEX WaveformatEx;
}

class DMUS_NOTERANGE extends Struct {
  @Uint32()
  external int dwLowNote;
  @Uint32()
  external int dwHighNote;
}

class DMUS_WAVEARTDL extends Struct {
  @Uint32()
  external int ulDownloadIdIdx;
  @Uint32()
  external int ulBus;
  @Uint32()
  external int ulBuffers;
  @Uint32()
  external int ulMasterDLId;
  @Uint16()
  external int usOptions;
}

class DMUS_WAVEDL extends Struct {
  @Uint32()
  external int cbWaveData;
}

class DSCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwMinSecondarySampleRate;
  @Uint32()
  external int dwMaxSecondarySampleRate;
  @Uint32()
  external int dwPrimaryBuffers;
  @Uint32()
  external int dwMaxHwMixingAllBuffers;
  @Uint32()
  external int dwMaxHwMixingStaticBuffers;
  @Uint32()
  external int dwMaxHwMixingStreamingBuffers;
  @Uint32()
  external int dwFreeHwMixingAllBuffers;
  @Uint32()
  external int dwFreeHwMixingStaticBuffers;
  @Uint32()
  external int dwFreeHwMixingStreamingBuffers;
  @Uint32()
  external int dwMaxHw3DAllBuffers;
  @Uint32()
  external int dwMaxHw3DStaticBuffers;
  @Uint32()
  external int dwMaxHw3DStreamingBuffers;
  @Uint32()
  external int dwFreeHw3DAllBuffers;
  @Uint32()
  external int dwFreeHw3DStaticBuffers;
  @Uint32()
  external int dwFreeHw3DStreamingBuffers;
  @Uint32()
  external int dwTotalHwMemBytes;
  @Uint32()
  external int dwFreeHwMemBytes;
  @Uint32()
  external int dwMaxContigFreeHwMemBytes;
  @Uint32()
  external int dwUnlockTransferRateHwBuffers;
  @Uint32()
  external int dwPlayCpuOverheadSwBuffers;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

class DSBCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwBufferBytes;
  @Uint32()
  external int dwUnlockTransferRate;
  @Uint32()
  external int dwPlayCpuOverhead;
}

class DSEFFECTDESC extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external GUID guidDSFXClass;
  @IntPtr()
  external int dwReserved1;
  @IntPtr()
  external int dwReserved2;
}

class DSCEFFECTDESC extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external GUID guidDSCFXClass;
  external GUID guidDSCFXInstance;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

class DSBUFFERDESC extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwBufferBytes;
  @Uint32()
  external int dwReserved;
  external Pointer<WAVEFORMATEX> lpwfxFormat;
  external GUID guid3DAlgorithm;
}

class DSBUFFERDESC1 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwBufferBytes;
  @Uint32()
  external int dwReserved;
  external Pointer<WAVEFORMATEX> lpwfxFormat;
}

class DS3DBUFFER extends Struct {
  @Uint32()
  external int dwSize;
  external D3DVECTOR vPosition;
  external D3DVECTOR vVelocity;
  @Uint32()
  external int dwInsideConeAngle;
  @Uint32()
  external int dwOutsideConeAngle;
  external D3DVECTOR vConeOrientation;
  @Int32()
  external int lConeOutsideVolume;
  @Float()
  external double flMinDistance;
  @Float()
  external double flMaxDistance;
  @Uint32()
  external int dwMode;
}

class DS3DLISTENER extends Struct {
  @Uint32()
  external int dwSize;
  external D3DVECTOR vPosition;
  external D3DVECTOR vVelocity;
  external D3DVECTOR vOrientFront;
  external D3DVECTOR vOrientTop;
  @Float()
  external double flDistanceFactor;
  @Float()
  external double flRolloffFactor;
  @Float()
  external double flDopplerFactor;
}

class DSCCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwFormats;
  @Uint32()
  external int dwChannels;
}

class DSCBUFFERDESC1 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwBufferBytes;
  @Uint32()
  external int dwReserved;
  external Pointer<WAVEFORMATEX> lpwfxFormat;
}

class DSCBUFFERDESC extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwBufferBytes;
  @Uint32()
  external int dwReserved;
  external Pointer<WAVEFORMATEX> lpwfxFormat;
  @Uint32()
  external int dwFXCount;
  external Pointer<DSCEFFECTDESC> lpDSCFXDesc;
}

class DSCBCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwBufferBytes;
  @Uint32()
  external int dwReserved;
}

class DSBPOSITIONNOTIFY extends Struct {
  @Uint32()
  external int dwOffset;
  @IntPtr()
  external int hEventNotify;
}

class DSFXGargle extends Struct {
  @Uint32()
  external int dwRateHz;
  @Uint32()
  external int dwWaveShape;
}

class DSFXChorus extends Struct {
  @Float()
  external double fWetDryMix;
  @Float()
  external double fDepth;
  @Float()
  external double fFeedback;
  @Float()
  external double fFrequency;
  @Int32()
  external int lWaveform;
  @Float()
  external double fDelay;
  @Int32()
  external int lPhase;
}

class DSFXFlanger extends Struct {
  @Float()
  external double fWetDryMix;
  @Float()
  external double fDepth;
  @Float()
  external double fFeedback;
  @Float()
  external double fFrequency;
  @Int32()
  external int lWaveform;
  @Float()
  external double fDelay;
  @Int32()
  external int lPhase;
}

class DSFXEcho extends Struct {
  @Float()
  external double fWetDryMix;
  @Float()
  external double fFeedback;
  @Float()
  external double fLeftDelay;
  @Float()
  external double fRightDelay;
  @Int32()
  external int lPanDelay;
}

class DSFXDistortion extends Struct {
  @Float()
  external double fGain;
  @Float()
  external double fEdge;
  @Float()
  external double fPostEQCenterFrequency;
  @Float()
  external double fPostEQBandwidth;
  @Float()
  external double fPreLowpassCutoff;
}

class DSFXCompressor extends Struct {
  @Float()
  external double fGain;
  @Float()
  external double fAttack;
  @Float()
  external double fRelease;
  @Float()
  external double fThreshold;
  @Float()
  external double fRatio;
  @Float()
  external double fPredelay;
}

class DSFXParamEq extends Struct {
  @Float()
  external double fCenter;
  @Float()
  external double fBandwidth;
  @Float()
  external double fGain;
}

class DSFXI3DL2Reverb extends Struct {
  @Int32()
  external int lRoom;
  @Int32()
  external int lRoomHF;
  @Float()
  external double flRoomRolloffFactor;
  @Float()
  external double flDecayTime;
  @Float()
  external double flDecayHFRatio;
  @Int32()
  external int lReflections;
  @Float()
  external double flReflectionsDelay;
  @Int32()
  external int lReverb;
  @Float()
  external double flReverbDelay;
  @Float()
  external double flDiffusion;
  @Float()
  external double flDensity;
  @Float()
  external double flHFReference;
}

class DSFXWavesReverb extends Struct {
  @Float()
  external double fInGain;
  @Float()
  external double fReverbMix;
  @Float()
  external double fReverbTime;
  @Float()
  external double fHighFreqRTRatio;
}

class DSCFXAec extends Struct {
  @Int32()
  external int fEnable;
  @Int32()
  external int fNoiseFill;
  @Uint32()
  external int dwMode;
}

class DSCFXNoiseSuppress extends Struct {
  @Int32()
  external int fEnable;
}

class DMUS_EVENTHEADER extends Struct {
  @Uint32()
  external int cbEvent;
  @Uint32()
  external int dwChannelGroup;
  @Int64()
  external int rtDelta;
  @Uint32()
  external int dwFlags;
}

class DMUS_BUFFERDESC extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external GUID guidBufferFormat;
  @Uint32()
  external int cbBuffer;
}

class DMUS_PORTCAPS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external GUID guidPort;
  @Uint32()
  external int dwClass;
  @Uint32()
  external int dwType;
  @Uint32()
  external int dwMemorySize;
  @Uint32()
  external int dwMaxChannelGroups;
  @Uint32()
  external int dwMaxVoices;
  @Uint32()
  external int dwMaxAudioChannels;
  @Uint32()
  external int dwEffectFlags;
  @Array(128)
  external Array<Uint16> wszDescription;
}

class _DMUS_PORTPARAMS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwValidParams;
  @Uint32()
  external int dwVoices;
  @Uint32()
  external int dwChannelGroups;
  @Uint32()
  external int dwAudioChannels;
  @Uint32()
  external int dwSampleRate;
  @Uint32()
  external int dwEffectFlags;
  @Int32()
  external int fShare;
}

class DMUS_PORTPARAMS8 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwValidParams;
  @Uint32()
  external int dwVoices;
  @Uint32()
  external int dwChannelGroups;
  @Uint32()
  external int dwAudioChannels;
  @Uint32()
  external int dwSampleRate;
  @Uint32()
  external int dwEffectFlags;
  @Int32()
  external int fShare;
  @Uint32()
  external int dwFeatures;
}

class DMUS_SYNTHSTATS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwValidStats;
  @Uint32()
  external int dwVoices;
  @Uint32()
  external int dwTotalCPU;
  @Uint32()
  external int dwCPUPerVoice;
  @Uint32()
  external int dwLostNotes;
  @Uint32()
  external int dwFreeMemory;
  @Int32()
  external int lPeakVolume;
}

class DMUS_SYNTHSTATS8 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwValidStats;
  @Uint32()
  external int dwVoices;
  @Uint32()
  external int dwTotalCPU;
  @Uint32()
  external int dwCPUPerVoice;
  @Uint32()
  external int dwLostNotes;
  @Uint32()
  external int dwFreeMemory;
  @Int32()
  external int lPeakVolume;
  @Uint32()
  external int dwSynthMemUse;
}

class DMUS_WAVES_REVERB_PARAMS extends Struct {
  @Float()
  external double fInGain;
  @Float()
  external double fReverbMix;
  @Float()
  external double fReverbTime;
  @Float()
  external double fHighFreqRTRatio;
}

class DMUS_CLOCKINFO7 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int ctType;
  external GUID guidClock;
  @Array(128)
  external Array<Uint16> wszDescription;
}

class DMUS_CLOCKINFO8 extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int ctType;
  external GUID guidClock;
  @Array(128)
  external Array<Uint16> wszDescription;
  @Uint32()
  external int dwFlags;
}

class DMUS_VOICE_STATE extends Struct {
  @Int32()
  external int bExists;
  @Uint64()
  external int spPosition;
}

class KSPROPSETID_AudioEffectsDiscovery extends Struct {}

class KSP_PINMODE extends Struct {
  external KSP_PIN PinProperty;
  external GUID AudioProcessingMode;
}

class MDEVICECAPSEX extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer pCaps;
}

class MIDIOPENDESC extends Struct {
  @IntPtr()
  external int hMidi;
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int dwInstance;
  @IntPtr()
  external int dnDevNode;
  @Uint32()
  external int cIds;
  @Array(1)
  external Array<midiopenstrmid_tag> rgIds;
}
