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
import '../../../media/audio/directmusic/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/structs.g.dart';
import '../../../media/audio/directmusic/callbacks.g.dart';
import '../../../media/multimedia/structs.g.dart';

/// {@category Struct}
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

/// {@category Struct}
class CONNECTIONLIST extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cConnections;
}

/// {@category Struct}
class DLSHEADER extends Struct {
  @Uint32()
  external int cInstruments;
}

/// {@category Struct}
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

/// {@category Struct}
class DLSVERSION extends Struct {
  @Uint32()
  external int dwVersionMS;

  @Uint32()
  external int dwVersionLS;
}

/// {@category Struct}
class DMUS_ARTICPARAMS extends Struct {
  external DMUS_LFOPARAMS LFO;

  external DMUS_VEGPARAMS VolEG;

  external DMUS_PEGPARAMS PitchEG;

  external DMUS_MSCPARAMS Misc;
}

/// {@category Struct}
class DMUS_ARTICULATION extends Struct {
  @Uint32()
  external int ulArt1Idx;

  @Uint32()
  external int ulFirstExtCkIdx;
}

/// {@category Struct}
class DMUS_ARTICULATION2 extends Struct {
  @Uint32()
  external int ulArtIdx;

  @Uint32()
  external int ulFirstExtCkIdx;

  @Uint32()
  external int ulNextArtIdx;
}

/// {@category Struct}
class DMUS_BUFFERDESC extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external GUID guidBufferFormat;

  @Uint32()
  external int cbBuffer;
}

/// {@category Struct}
class DMUS_CLOCKINFO7 extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int ctType;

  external GUID guidClock;

  @Array(128)
  external Array<Uint16> _wszDescription;

  String get wszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DMUS_CLOCKINFO8 extends Struct {
  @Uint32()
  external int dwSize;

  @Int32()
  external int ctType;

  external GUID guidClock;

  @Array(128)
  external Array<Uint16> _wszDescription;

  String get wszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class DMUS_COPYRIGHT extends Struct {
  @Uint32()
  external int cbSize;

  @Array(4)
  external Array<Uint8> byCopyright;
}

/// {@category Struct}
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

/// {@category Struct}
@Packed(4)
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DMUS_MSCPARAMS extends Struct {
  @Int32()
  external int ptDefaultPan;
}

/// {@category Struct}
class DMUS_NOTERANGE extends Struct {
  @Uint32()
  external int dwLowNote;

  @Uint32()
  external int dwHighNote;
}

/// {@category Struct}
class DMUS_OFFSETTABLE extends Struct {
  @Array(1)
  external Array<Uint32> ulOffsetTable;
}

/// {@category Struct}
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

/// {@category Struct}
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
  external Array<Uint16> _wszDescription;

  String get wszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
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

/// {@category Struct}
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

  external rwsmp WSMP;

  @Array(1)
  external Array<rloop> WLOOP;
}

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
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

/// {@category Struct}
class DMUS_VOICE_STATE extends Struct {
  @Int32()
  external int bExists;

  @Uint64()
  external int spPosition;
}

/// {@category Struct}
@Packed(1)
class DMUS_WAVE extends Struct {
  @Uint32()
  external int ulFirstExtCkIdx;

  @Uint32()
  external int ulCopyrightIdx;

  @Uint32()
  external int ulWaveDataIdx;

  external WAVEFORMATEX WaveformatEx;
}

/// {@category Struct}
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

/// {@category Struct}
class DMUS_WAVEDATA extends Struct {
  @Uint32()
  external int cbSize;

  @Array(4)
  external Array<Uint8> byData;
}

/// {@category Struct}
class DMUS_WAVEDL extends Struct {
  @Uint32()
  external int cbWaveData;
}

/// {@category Struct}
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

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_1_DATA extends Struct {
  external GUID DeviceId;

  @Array(256)
  external Array<Uint8> DescriptionA;

  @Array(256)
  external Array<Uint16> _DescriptionW;

  String get DescriptionW {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_DescriptionW[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DescriptionW(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _DescriptionW[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint8> ModuleA;

  @Array(260)
  external Array<Uint16> _ModuleW;

  String get ModuleW {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ModuleW[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ModuleW(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ModuleW[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int Type;

  @Int32()
  external int DataFlow;

  @Uint32()
  external int WaveDeviceId;

  @Uint32()
  external int Devnode;
}

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_A_DATA extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int DataFlow;

  external GUID DeviceId;

  external Pointer<Utf8> Description;

  external Pointer<Utf8> Module;

  external Pointer<Utf8> Interface;

  @Uint32()
  external int WaveDeviceId;
}

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_DESCRIPTION_W_DATA extends Struct {
  @Int32()
  external int Type;

  @Int32()
  external int DataFlow;

  external GUID DeviceId;

  external Pointer<Utf16> Description;

  external Pointer<Utf16> Module;

  external Pointer<Utf16> Interface;

  @Uint32()
  external int WaveDeviceId;
}

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_1_DATA extends Struct {
  external Pointer<NativeFunction<LPFNDIRECTSOUNDDEVICEENUMERATECALLBACK1>>
      Callback;

  external Pointer Context;
}

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_W_DATA extends Struct {
  external Pointer<NativeFunction<LPFNDIRECTSOUNDDEVICEENUMERATECALLBACKW>>
      Callback;

  external Pointer Context;
}

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_WAVEDEVICEMAPPING_A_DATA extends Struct {
  external Pointer<Utf8> DeviceName;

  @Int32()
  external int DataFlow;

  external GUID DeviceId;
}

/// {@category Struct}
class DSPROPERTY_DIRECTSOUNDDEVICE_WAVEDEVICEMAPPING_W_DATA extends Struct {
  external Pointer<Utf16> DeviceName;

  @Int32()
  external int DataFlow;

  external GUID DeviceId;
}

/// {@category Struct}
class INSTHEADER extends Struct {
  @Uint32()
  external int cRegions;

  external MIDILOCALE Locale;
}

/// {@category Struct}
@Packed(1)
class MDEVICECAPSEX extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer pCaps;
}

/// {@category Struct}
class MIDILOCALE extends Struct {
  @Uint32()
  external int ulBank;

  @Uint32()
  external int ulInstrument;
}

/// {@category Struct}
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
  external Array<MIDIOPENSTRMID> rgIds;
}

/// {@category Struct}
class POOLCUE extends Struct {
  @Uint32()
  external int ulOffset;
}

/// {@category Struct}
class POOLTABLE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cCues;
}

/// {@category Struct}
class RGNHEADER extends Struct {
  external RGNRANGE RangeKey;

  external RGNRANGE RangeVelocity;

  @Uint16()
  external int fusOptions;

  @Uint16()
  external int usKeyGroup;
}

/// {@category Struct}
class RGNRANGE extends Struct {
  @Uint16()
  external int usLow;

  @Uint16()
  external int usHigh;
}

/// {@category Struct}
class Tag_DVAudInfo extends Struct {
  @Array(2)
  external Array<Uint8> bAudStyle;

  @Array(2)
  external Array<Uint8> bAudQu;

  @Uint8()
  external int bNumAudPin;

  @Array(2)
  external Array<Uint16> wAvgSamplesPerPinPerFrm;

  @Uint16()
  external int wBlkMode;

  @Uint16()
  external int wDIFMode;

  @Uint16()
  external int wBlkDiv;
}

/// {@category Struct}
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

/// {@category Struct}
class DMUS_PORTPARAMS extends Struct {
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

/// {@category Struct}
class rloop extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int ulType;

  @Uint32()
  external int ulStart;

  @Uint32()
  external int ulLength;
}

/// {@category Struct}
class rwsmp extends Struct {
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
