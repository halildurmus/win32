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
import '../../combase.dart';
import '../../guid.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/callbacks.g.dart';
import '../../media/audio/IMMDevice.dart';
import '../../media/audio/ISpatialAudioObjectRenderStreamNotify.dart';
import '../../specialTypes.dart';

/// {@category Struct}
class ACMDRIVERDETAILS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fccType;

  @Uint32()
  external int fccComp;

  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vdwACM;

  @Uint32()
  external int vdwDriver;

  @Uint32()
  external int fdwSupport;

  @Uint32()
  external int cFormatTags;

  @Uint32()
  external int cFilterTags;

  @IntPtr()
  external int hicon;

  @Array(32)
  external Array<Uint16> _szShortName;

  String get szShortName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szShortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szShortName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szShortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szLongName;

  String get szLongName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szLongName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szLongName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szLongName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szCopyright;

  String get szCopyright {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szCopyright[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCopyright(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szCopyright[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szLicensing;

  String get szLicensing {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szLicensing[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szLicensing(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szLicensing[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(512)
  external Array<Uint16> _szFeatures;

  String get szFeatures {
    final charCodes = <int>[];
    for (var i = 0; i < 512; i++) {
      charCodes.add(_szFeatures[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFeatures(String value) {
    final stringToStore = value.padRight(512, '\x00');
    for (var i = 0; i < 512; i++) {
      _szFeatures[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class ACMDRVFORMATSUGGEST extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fdwSuggest;

  external Pointer<WAVEFORMATEX> pwfxSrc;

  @Uint32()
  external int cbwfxSrc;

  external Pointer<WAVEFORMATEX> pwfxDst;

  @Uint32()
  external int cbwfxDst;
}

/// {@category Struct}
@Packed(1)
class ACMDRVSTREAMHEADER extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fdwStatus;

  @IntPtr()
  external int dwUser;

  external Pointer<Uint8> pbSrc;

  @Uint32()
  external int cbSrcLength;

  @Uint32()
  external int cbSrcLengthUsed;

  @IntPtr()
  external int dwSrcUser;

  external Pointer<Uint8> pbDst;

  @Uint32()
  external int cbDstLength;

  @Uint32()
  external int cbDstLengthUsed;

  @IntPtr()
  external int dwDstUser;

  @Uint32()
  external int fdwConvert;

  external Pointer<ACMDRVSTREAMHEADER> padshNext;

  @Uint32()
  external int fdwDriver;

  @IntPtr()
  external int dwDriver;

  @Uint32()
  external int fdwPrepared;

  @IntPtr()
  external int dwPrepared;

  external Pointer<Uint8> pbPreparedSrc;

  @Uint32()
  external int cbPreparedSrcLength;

  external Pointer<Uint8> pbPreparedDst;

  @Uint32()
  external int cbPreparedDstLength;
}

/// {@category Struct}
class ACMDRVSTREAMINSTANCE extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<WAVEFORMATEX> pwfxSrc;

  external Pointer<WAVEFORMATEX> pwfxDst;

  external Pointer<WAVEFILTER> pwfltr;

  @IntPtr()
  external int dwCallback;

  @IntPtr()
  external int dwInstance;

  @Uint32()
  external int fdwOpen;

  @Uint32()
  external int fdwDriver;

  @IntPtr()
  external int dwDriver;

  @IntPtr()
  external int has;
}

/// {@category Struct}
@Packed(1)
class ACMDRVSTREAMSIZE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fdwSize;

  @Uint32()
  external int cbSrcLength;

  @Uint32()
  external int cbDstLength;
}

/// {@category Struct}
class ACMFILTERCHOOSE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fdwStyle;

  @IntPtr()
  external int hwndOwner;

  external Pointer<WAVEFILTER> pwfltr;

  @Uint32()
  external int cbwfltr;

  external Pointer<Utf16> pszTitle;

  @Array(48)
  external Array<Uint16> _szFilterTag;

  String get szFilterTag {
    final charCodes = <int>[];
    for (var i = 0; i < 48; i++) {
      charCodes.add(_szFilterTag[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFilterTag(String value) {
    final stringToStore = value.padRight(48, '\x00');
    for (var i = 0; i < 48; i++) {
      _szFilterTag[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szFilter;

  String get szFilter {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szFilter[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFilter(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szFilter[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<Utf16> pszName;

  @Uint32()
  external int cchName;

  @Uint32()
  external int fdwEnum;

  external Pointer<WAVEFILTER> pwfltrEnum;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> pszTemplateName;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<ACMFILTERCHOOSEHOOKPROCW>> pfnHook;
}

/// {@category Struct}
@Packed(1)
class ACMFILTERDETAILS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFilterIndex;

  @Uint32()
  external int dwFilterTag;

  @Uint32()
  external int fdwSupport;

  external Pointer<WAVEFILTER> pwfltr;

  @Uint32()
  external int cbwfltr;

  @Array(128)
  external Array<Uint16> _szFilter;

  String get szFilter {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szFilter[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFilter(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szFilter[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class ACMFILTERTAGDETAILS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFilterTagIndex;

  @Uint32()
  external int dwFilterTag;

  @Uint32()
  external int cbFilterSize;

  @Uint32()
  external int fdwSupport;

  @Uint32()
  external int cStandardFilters;

  @Array(48)
  external Array<Uint16> _szFilterTag;

  String get szFilterTag {
    final charCodes = <int>[];
    for (var i = 0; i < 48; i++) {
      charCodes.add(_szFilterTag[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFilterTag(String value) {
    final stringToStore = value.padRight(48, '\x00');
    for (var i = 0; i < 48; i++) {
      _szFilterTag[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class ACMFORMATCHOOSE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fdwStyle;

  @IntPtr()
  external int hwndOwner;

  external Pointer<WAVEFORMATEX> pwfx;

  @Uint32()
  external int cbwfx;

  external Pointer<Utf16> pszTitle;

  @Array(48)
  external Array<Uint16> _szFormatTag;

  String get szFormatTag {
    final charCodes = <int>[];
    for (var i = 0; i < 48; i++) {
      charCodes.add(_szFormatTag[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFormatTag(String value) {
    final stringToStore = value.padRight(48, '\x00');
    for (var i = 0; i < 48; i++) {
      _szFormatTag[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szFormat;

  String get szFormat {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szFormat[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFormat(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szFormat[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<Utf16> pszName;

  @Uint32()
  external int cchName;

  @Uint32()
  external int fdwEnum;

  external Pointer<WAVEFORMATEX> pwfxEnum;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> pszTemplateName;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<ACMFORMATCHOOSEHOOKPROCW>> pfnHook;
}

/// {@category Struct}
@Packed(1)
class ACMFORMATTAGDETAILS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFormatTagIndex;

  @Uint32()
  external int dwFormatTag;

  @Uint32()
  external int cbFormatSize;

  @Uint32()
  external int fdwSupport;

  @Uint32()
  external int cStandardFormats;

  @Array(48)
  external Array<Uint16> _szFormatTag;

  String get szFormatTag {
    final charCodes = <int>[];
    for (var i = 0; i < 48; i++) {
      charCodes.add(_szFormatTag[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFormatTag(String value) {
    final stringToStore = value.padRight(48, '\x00');
    for (var i = 0; i < 48; i++) {
      _szFormatTag[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class ACMSTREAMHEADER extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fdwStatus;

  @IntPtr()
  external int dwUser;

  external Pointer<Uint8> pbSrc;

  @Uint32()
  external int cbSrcLength;

  @Uint32()
  external int cbSrcLengthUsed;

  @IntPtr()
  external int dwSrcUser;

  external Pointer<Uint8> pbDst;

  @Uint32()
  external int cbDstLength;

  @Uint32()
  external int cbDstLengthUsed;

  @IntPtr()
  external int dwDstUser;

  @Array(15)
  external Array<Uint32> dwReservedDriver;
}

/// {@category Struct}
class AMBISONICS_PARAMS extends Struct {
  @Uint32()
  external int u32Size;

  @Uint32()
  external int u32Version;

  @Int32()
  external int u32Type;

  @Int32()
  external int u32ChannelOrdering;

  @Int32()
  external int u32Normalization;

  @Uint32()
  external int u32Order;

  @Uint32()
  external int u32NumChannels;

  external Pointer<Uint32> pu32ChannelMap;
}

/// {@category Struct}
class AUDIOCLIENT_ACTIVATION_PARAMS extends Struct {
  @Int32()
  external int ActivationType;

  external _AUDIOCLIENT_ACTIVATION_PARAMS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _AUDIOCLIENT_ACTIVATION_PARAMS__Anonymous_e__Union extends Union {
  external AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS ProcessLoopbackParams;
}

extension AUDIOCLIENT_ACTIVATION_PARAMS_Extension
    on AUDIOCLIENT_ACTIVATION_PARAMS {
  AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS get ProcessLoopbackParams =>
      this.Anonymous.ProcessLoopbackParams;
  set ProcessLoopbackParams(AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS value) =>
      this.Anonymous.ProcessLoopbackParams = value;
}

/// {@category Struct}
class AUDIOCLIENT_PROCESS_LOOPBACK_PARAMS extends Struct {
  @Uint32()
  external int TargetProcessId;

  @Int32()
  external int ProcessLoopbackMode;
}

/// {@category Struct}
class AUDIO_EFFECT extends Struct {
  external GUID id;

  @Int32()
  external int canSetState;

  @Int32()
  external int state;
}

/// {@category Struct}
class AUDIO_VOLUME_NOTIFICATION_DATA extends Struct {
  external GUID guidEventContext;

  @Int32()
  external int bMuted;

  @Float()
  external double fMasterVolume;

  @Uint32()
  external int nChannels;

  @Array(1)
  external Array<Float> afChannelVolumes;
}

/// {@category Struct}
class AUXCAPS2 extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wTechnology;

  @Uint16()
  external int wReserved1;

  @Uint32()
  external int dwSupport;

  external GUID ManufacturerGuid;

  external GUID ProductGuid;

  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class AUXCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wTechnology;

  @Uint16()
  external int wReserved1;

  @Uint32()
  external int dwSupport;
}

/// {@category Struct}
class AudioClient3ActivationParams extends Struct {
  external GUID tracingContextId;
}

/// {@category Struct}
class AudioClientProperties extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int bIsOffload;

  @Int32()
  external int eCategory;

  @Uint32()
  external int Options;
}

/// {@category Struct}
class AudioExtensionParams extends Struct {
  @IntPtr()
  external int AddPageParam;

  external Pointer<COMObject> pEndpoint;

  external Pointer<COMObject> pPnpInterface;

  external Pointer<COMObject> pPnpDevnode;
}

/// {@category Struct}
class DIRECTX_AUDIO_ACTIVATION_PARAMS extends Struct {
  @Uint32()
  external int cbDirectXAudioActivationParams;

  external GUID guidAudioSession;

  @Uint32()
  external int dwAudioStreamFlags;
}

/// {@category Struct}
@Packed(1)
class ECHOWAVEFILTER extends Struct {
  external WAVEFILTER wfltr;

  @Uint32()
  external int dwVolume;

  @Uint32()
  external int dwDelay;
}

/// {@category Struct}
@Packed(1)
class MIDIEVENT extends Struct {
  @Uint32()
  external int dwDeltaTime;

  @Uint32()
  external int dwStreamID;

  @Uint32()
  external int dwEvent;

  @Array(1)
  external Array<Uint32> dwParms;
}

/// {@category Struct}
class MIDIHDR extends Struct {
  external Pointer<Utf8> lpData;

  @Uint32()
  external int dwBufferLength;

  @Uint32()
  external int dwBytesRecorded;

  @IntPtr()
  external int dwUser;

  @Uint32()
  external int dwFlags;

  external Pointer<MIDIHDR> lpNext;

  @IntPtr()
  external int reserved;

  @Uint32()
  external int dwOffset;

  @Array(8)
  external Array<IntPtr> dwReserved;
}

/// {@category Struct}
class MIDIINCAPS2 extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwSupport;

  external GUID ManufacturerGuid;

  external GUID ProductGuid;

  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class MIDIINCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwSupport;
}

/// {@category Struct}
class MIDIOUTCAPS2 extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wTechnology;

  @Uint16()
  external int wVoices;

  @Uint16()
  external int wNotes;

  @Uint16()
  external int wChannelMask;

  @Uint32()
  external int dwSupport;

  external GUID ManufacturerGuid;

  external GUID ProductGuid;

  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class MIDIOUTCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wTechnology;

  @Uint16()
  external int wVoices;

  @Uint16()
  external int wNotes;

  @Uint16()
  external int wChannelMask;

  @Uint32()
  external int dwSupport;
}

/// {@category Struct}
@Packed(1)
class MIDIPROPTEMPO extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwTempo;
}

/// {@category Struct}
@Packed(1)
class MIDIPROPTIMEDIV extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwTimeDiv;
}

/// {@category Struct}
@Packed(1)
class MIDISTRMBUFFVER extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwMid;

  @Uint32()
  external int dwOEMVersion;
}

/// {@category Struct}
class MIXERCAPS2 extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int fdwSupport;

  @Uint32()
  external int cDestinations;

  external GUID ManufacturerGuid;

  external GUID ProductGuid;

  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class MIXERCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int fdwSupport;

  @Uint32()
  external int cDestinations;
}

/// {@category Struct}
class MIXERCONTROLDETAILS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwControlID;

  @Uint32()
  external int cChannels;

  external _MIXERCONTROLDETAILS__Anonymous_e__Union Anonymous;

  @Uint32()
  external int cbDetails;

  external Pointer paDetails;
}

/// {@category Struct}
class _MIXERCONTROLDETAILS__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hwndOwner;

  @Uint32()
  external int cMultipleItems;
}

extension MIXERCONTROLDETAILS_Extension on MIXERCONTROLDETAILS {
  int get hwndOwner => this.Anonymous.hwndOwner;
  set hwndOwner(int value) => this.Anonymous.hwndOwner = value;

  int get cMultipleItems => this.Anonymous.cMultipleItems;
  set cMultipleItems(int value) => this.Anonymous.cMultipleItems = value;
}

/// {@category Struct}
@Packed(1)
class MIXERCONTROLDETAILS_BOOLEAN extends Struct {
  @Int32()
  external int fValue;
}

/// {@category Struct}
@Packed(1)
class MIXERCONTROLDETAILS_LISTTEXT extends Struct {
  @Uint32()
  external int dwParam1;

  @Uint32()
  external int dwParam2;

  @Array(64)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class MIXERCONTROLDETAILS_SIGNED extends Struct {
  @Int32()
  external int lValue;
}

/// {@category Struct}
@Packed(1)
class MIXERCONTROLDETAILS_UNSIGNED extends Struct {
  @Uint32()
  external int dwValue;
}

/// {@category Struct}
@Packed(1)
class MIXERCONTROL extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwControlID;

  @Uint32()
  external int dwControlType;

  @Uint32()
  external int fdwControl;

  @Uint32()
  external int cMultipleItems;

  @Array(16)
  external Array<Uint16> _szShortName;

  String get szShortName {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_szShortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szShortName(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _szShortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external _MIXERCONTROLW__Bounds_e__Union Bounds;

  external _MIXERCONTROLW__Metrics_e__Union Metrics;
}

/// {@category Struct}
@Packed(1)
class _MIXERCONTROLW__Bounds_e__Union extends Union {
  external _MIXERCONTROLW__Bounds_e__Union__Anonymous1_e__Struct Anonymous1;

  external _MIXERCONTROLW__Bounds_e__Union__Anonymous2_e__Struct Anonymous2;

  @Array(6)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
@Packed(1)
class _MIXERCONTROLW__Bounds_e__Union__Anonymous1_e__Struct extends Struct {
  @Int32()
  external int lMinimum;

  @Int32()
  external int lMaximum;
}

extension MIXERCONTROLW__Bounds_e__Union_Extension on MIXERCONTROL {
  int get lMinimum => this.Bounds.Anonymous1.lMinimum;
  set lMinimum(int value) => this.Bounds.Anonymous1.lMinimum = value;

  int get lMaximum => this.Bounds.Anonymous1.lMaximum;
  set lMaximum(int value) => this.Bounds.Anonymous1.lMaximum = value;
}

/// {@category Struct}
@Packed(1)
class _MIXERCONTROLW__Bounds_e__Union__Anonymous2_e__Struct extends Struct {
  @Uint32()
  external int dwMinimum;

  @Uint32()
  external int dwMaximum;
}

extension MIXERCONTROLW__Bounds_e__Union_Extension_1 on MIXERCONTROL {
  int get dwMinimum => this.Bounds.Anonymous2.dwMinimum;
  set dwMinimum(int value) => this.Bounds.Anonymous2.dwMinimum = value;

  int get dwMaximum => this.Bounds.Anonymous2.dwMaximum;
  set dwMaximum(int value) => this.Bounds.Anonymous2.dwMaximum = value;
}

extension MIXERCONTROLW_Extension on MIXERCONTROL {
  _MIXERCONTROLW__Bounds_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Bounds.Anonymous1;
  set Anonymous1(_MIXERCONTROLW__Bounds_e__Union__Anonymous1_e__Struct value) =>
      this.Bounds.Anonymous1 = value;

  _MIXERCONTROLW__Bounds_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Bounds.Anonymous2;
  set Anonymous2(_MIXERCONTROLW__Bounds_e__Union__Anonymous2_e__Struct value) =>
      this.Bounds.Anonymous2 = value;

  Array<Uint32> get dwReserved => this.Bounds.dwReserved;
  set dwReserved(Array<Uint32> value) => this.Bounds.dwReserved = value;
}

/// {@category Struct}
@Packed(1)
class _MIXERCONTROLW__Metrics_e__Union extends Union {
  @Uint32()
  external int cSteps;

  @Uint32()
  external int cbCustomData;

  @Array(6)
  external Array<Uint32> dwReserved;
}

extension MIXERCONTROLW_Extension_1 on MIXERCONTROL {
  int get cSteps => this.Metrics.cSteps;
  set cSteps(int value) => this.Metrics.cSteps = value;

  int get cbCustomData => this.Metrics.cbCustomData;
  set cbCustomData(int value) => this.Metrics.cbCustomData = value;

  Array<Uint32> get dwReserved => this.Metrics.dwReserved;
  set dwReserved(Array<Uint32> value) => this.Metrics.dwReserved = value;
}

/// {@category Struct}
@Packed(1)
class MIXERLINECONTROLS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwLineID;

  external _MIXERLINECONTROLSW__Anonymous_e__Union Anonymous;

  @Uint32()
  external int cControls;

  @Uint32()
  external int cbmxctrl;

  external Pointer<MIXERCONTROL> pamxctrl;
}

/// {@category Struct}
@Packed(1)
class _MIXERLINECONTROLSW__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwControlID;

  @Uint32()
  external int dwControlType;
}

extension MIXERLINECONTROLSW_Extension on MIXERLINECONTROLS {
  int get dwControlID => this.Anonymous.dwControlID;
  set dwControlID(int value) => this.Anonymous.dwControlID = value;

  int get dwControlType => this.Anonymous.dwControlType;
  set dwControlType(int value) => this.Anonymous.dwControlType = value;
}

/// {@category Struct}
class MIXERLINE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwDestination;

  @Uint32()
  external int dwSource;

  @Uint32()
  external int dwLineID;

  @Uint32()
  external int fdwLine;

  @IntPtr()
  external int dwUser;

  @Uint32()
  external int dwComponentType;

  @Uint32()
  external int cChannels;

  @Uint32()
  external int cConnections;

  @Uint32()
  external int cControls;

  @Array(16)
  external Array<Uint16> _szShortName;

  String get szShortName {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_szShortName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szShortName(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _szShortName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external _MIXERLINEW__Target_e__Struct Target;
}

/// {@category Struct}
@Packed(1)
class _MIXERLINEW__Target_e__Struct extends Struct {
  @Uint32()
  external int dwType;

  @Uint32()
  external int dwDeviceID;

  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension MIXERLINEW_Extension on MIXERLINE {
  int get dwType => this.Target.dwType;
  set dwType(int value) => this.Target.dwType = value;

  int get dwDeviceID => this.Target.dwDeviceID;
  set dwDeviceID(int value) => this.Target.dwDeviceID = value;

  int get wMid => this.Target.wMid;
  set wMid(int value) => this.Target.wMid = value;

  int get wPid => this.Target.wPid;
  set wPid(int value) => this.Target.wPid = value;

  int get vDriverVersion => this.Target.vDriverVersion;
  set vDriverVersion(int value) => this.Target.vDriverVersion = value;

  String get szPname => this.Target.szPname;
  set szPname(String value) => this.Target.szPname = value;
}

/// {@category Struct}
@Packed(1)
class PCMWAVEFORMAT extends Struct {
  external WAVEFORMAT wf;

  @Uint16()
  external int wBitsPerSample;
}

/// {@category Struct}
class SpatialAudioClientActivationParams extends Struct {
  external GUID tracingContextId;

  external GUID appId;

  @Int32()
  external int majorVersion;

  @Int32()
  external int minorVersion1;

  @Int32()
  external int minorVersion2;

  @Int32()
  external int minorVersion3;
}

/// {@category Struct}
class SpatialAudioHrtfActivationParams extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;

  @Uint32()
  external int StaticObjectTypeMask;

  @Uint32()
  external int MinDynamicObjectCount;

  @Uint32()
  external int MaxDynamicObjectCount;

  @Int32()
  external int Category;

  @IntPtr()
  external int EventHandle;

  external Pointer<COMObject> NotifyObject;

  external Pointer<SpatialAudioHrtfDistanceDecay> DistanceDecay;

  external Pointer<SpatialAudioHrtfDirectivityUnion> Directivity;

  external Pointer<Int32> Environment;

  external Pointer<Float> Orientation;
}

/// {@category Struct}
class SpatialAudioHrtfActivationParams2 extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;

  @Uint32()
  external int StaticObjectTypeMask;

  @Uint32()
  external int MinDynamicObjectCount;

  @Uint32()
  external int MaxDynamicObjectCount;

  @Int32()
  external int Category;

  @IntPtr()
  external int EventHandle;

  external Pointer<COMObject> NotifyObject;

  external Pointer<SpatialAudioHrtfDistanceDecay> DistanceDecay;

  external Pointer<SpatialAudioHrtfDirectivityUnion> Directivity;

  external Pointer<Int32> Environment;

  external Pointer<Float> Orientation;

  @Uint32()
  external int Options;
}

/// {@category Struct}
class SpatialAudioHrtfDirectivity extends Struct {
  @Int32()
  external int Type;

  @Float()
  external double Scaling;
}

/// {@category Struct}
class SpatialAudioHrtfDirectivityCardioid extends Struct {
  external SpatialAudioHrtfDirectivity directivity;

  @Float()
  external double Order;
}

/// {@category Struct}
class SpatialAudioHrtfDirectivityCone extends Struct {
  external SpatialAudioHrtfDirectivity directivity;

  @Float()
  external double InnerAngle;

  @Float()
  external double OuterAngle;
}

/// {@category Struct}
class SpatialAudioHrtfDirectivityUnion extends Union {
  external SpatialAudioHrtfDirectivityCone Cone;

  external SpatialAudioHrtfDirectivityCardioid Cardiod;

  external SpatialAudioHrtfDirectivity Omni;
}

/// {@category Struct}
class SpatialAudioHrtfDistanceDecay extends Struct {
  @Int32()
  external int Type;

  @Float()
  external double MaxGain;

  @Float()
  external double MinGain;

  @Float()
  external double UnityGainDistance;

  @Float()
  external double CutoffDistance;
}

/// {@category Struct}
@Packed(1)
class SpatialAudioMetadataItemsInfo extends Struct {
  @Uint16()
  external int FrameCount;

  @Uint16()
  external int ItemCount;

  @Uint16()
  external int MaxItemCount;

  @Uint32()
  external int MaxValueBufferLength;
}

/// {@category Struct}
class SpatialAudioObjectRenderStreamActivationParams extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;

  @Uint32()
  external int StaticObjectTypeMask;

  @Uint32()
  external int MinDynamicObjectCount;

  @Uint32()
  external int MaxDynamicObjectCount;

  @Int32()
  external int Category;

  @IntPtr()
  external int EventHandle;

  external Pointer<COMObject> NotifyObject;
}

/// {@category Struct}
class SpatialAudioObjectRenderStreamActivationParams2 extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;

  @Uint32()
  external int StaticObjectTypeMask;

  @Uint32()
  external int MinDynamicObjectCount;

  @Uint32()
  external int MaxDynamicObjectCount;

  @Int32()
  external int Category;

  @IntPtr()
  external int EventHandle;

  external Pointer<COMObject> NotifyObject;

  @Uint32()
  external int Options;
}

/// {@category Struct}
class SpatialAudioObjectRenderStreamForMetadataActivationParams extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;

  @Uint32()
  external int StaticObjectTypeMask;

  @Uint32()
  external int MinDynamicObjectCount;

  @Uint32()
  external int MaxDynamicObjectCount;

  @Int32()
  external int Category;

  @IntPtr()
  external int EventHandle;

  external GUID MetadataFormatId;

  @Uint16()
  external int MaxMetadataItemCount;

  external Pointer<PROPVARIANT> MetadataActivationParams;

  external Pointer<COMObject> NotifyObject;
}

/// {@category Struct}
class SpatialAudioObjectRenderStreamForMetadataActivationParams2
    extends Struct {
  external Pointer<WAVEFORMATEX> ObjectFormat;

  @Uint32()
  external int StaticObjectTypeMask;

  @Uint32()
  external int MinDynamicObjectCount;

  @Uint32()
  external int MaxDynamicObjectCount;

  @Int32()
  external int Category;

  @IntPtr()
  external int EventHandle;

  external GUID MetadataFormatId;

  @Uint32()
  external int MaxMetadataItemCount;

  external Pointer<PROPVARIANT> MetadataActivationParams;

  external Pointer<COMObject> NotifyObject;

  @Uint32()
  external int Options;
}

/// {@category Struct}
@Packed(1)
class VOLUMEWAVEFILTER extends Struct {
  external WAVEFILTER wfltr;

  @Uint32()
  external int dwVolume;
}

/// {@category Struct}
@Packed(1)
class WAVEFILTER extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFilterTag;

  @Uint32()
  external int fdwFilter;

  @Array(5)
  external Array<Uint32> dwReserved;
}

/// {@category Struct}
@Packed(1)
class WAVEFORMAT extends Struct {
  @Uint16()
  external int wFormatTag;

  @Uint16()
  external int nChannels;

  @Uint32()
  external int nSamplesPerSec;

  @Uint32()
  external int nAvgBytesPerSec;

  @Uint16()
  external int nBlockAlign;
}

/// {@category Struct}
@Packed(1)
class WAVEFORMATEX extends Struct {
  @Uint16()
  external int wFormatTag;

  @Uint16()
  external int nChannels;

  @Uint32()
  external int nSamplesPerSec;

  @Uint32()
  external int nAvgBytesPerSec;

  @Uint16()
  external int nBlockAlign;

  @Uint16()
  external int wBitsPerSample;

  @Uint16()
  external int cbSize;
}

/// {@category Struct}
class WAVEFORMATEXTENSIBLE extends Struct {
  external WAVEFORMATEX Format;

  external _WAVEFORMATEXTENSIBLE__Samples_e__Union Samples;

  @Uint32()
  external int dwChannelMask;

  external GUID SubFormat;
}

/// {@category Struct}
@Packed(1)
class _WAVEFORMATEXTENSIBLE__Samples_e__Union extends Union {
  @Uint16()
  external int wValidBitsPerSample;

  @Uint16()
  external int wSamplesPerBlock;

  @Uint16()
  external int wReserved;
}

extension WAVEFORMATEXTENSIBLE_Extension on WAVEFORMATEXTENSIBLE {
  int get wValidBitsPerSample => this.Samples.wValidBitsPerSample;
  set wValidBitsPerSample(int value) =>
      this.Samples.wValidBitsPerSample = value;

  int get wSamplesPerBlock => this.Samples.wSamplesPerBlock;
  set wSamplesPerBlock(int value) => this.Samples.wSamplesPerBlock = value;

  int get wReserved => this.Samples.wReserved;
  set wReserved(int value) => this.Samples.wReserved = value;
}

/// {@category Struct}
class WAVEHDR extends Struct {
  external Pointer<Utf8> lpData;

  @Uint32()
  external int dwBufferLength;

  @Uint32()
  external int dwBytesRecorded;

  @IntPtr()
  external int dwUser;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwLoops;

  external Pointer<WAVEHDR> lpNext;

  @IntPtr()
  external int reserved;
}

/// {@category Struct}
class WAVEINCAPS2 extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;

  external GUID ManufacturerGuid;

  external GUID ProductGuid;

  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class WAVEINCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;
}

/// {@category Struct}
class WAVEOUTCAPS2 extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;

  @Uint32()
  external int dwSupport;

  external GUID ManufacturerGuid;

  external GUID ProductGuid;

  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class WAVEOUTCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;

  @Uint32()
  external int dwSupport;
}

/// {@category Struct}
class tACMDRVOPENDESC extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int fccType;

  @Uint32()
  external int fccComp;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwError;

  external Pointer<Utf16> pszSectionName;

  external Pointer<Utf16> pszAliasName;

  @Uint32()
  external int dnDevNode;
}

/// {@category Struct}
@Packed(1)
class tACMFORMATDETAILS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFormatIndex;

  @Uint32()
  external int dwFormatTag;

  @Uint32()
  external int fdwSupport;

  external Pointer<WAVEFORMATEX> pwfx;

  @Uint32()
  external int cbwfx;

  @Array(128)
  external Array<Uint16> _szFormat;

  String get szFormat {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szFormat[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFormat(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szFormat[i] = stringToStore.codeUnitAt(i);
    }
  }
}
