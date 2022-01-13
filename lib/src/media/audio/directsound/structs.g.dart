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
import '../../../graphics/direct3d/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/structs.g.dart';
import '../../../media/audio/directsound/structs.g.dart';

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DSBPOSITIONNOTIFY extends Struct {
  @Uint32()
  external int dwOffset;

  @IntPtr()
  external int hEventNotify;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DSCFXAec extends Struct {
  @Int32()
  external int fEnable;

  @Int32()
  external int fNoiseFill;

  @Uint32()
  external int dwMode;
}

/// {@category Struct}
class DSCFXNoiseSuppress extends Struct {
  @Int32()
  external int fEnable;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DSFXGargle extends Struct {
  @Uint32()
  external int dwRateHz;

  @Uint32()
  external int dwWaveShape;
}

/// {@category Struct}
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

/// {@category Struct}
class DSFXParamEq extends Struct {
  @Float()
  external double fCenter;

  @Float()
  external double fBandwidth;

  @Float()
  external double fGain;
}

/// {@category Struct}
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
