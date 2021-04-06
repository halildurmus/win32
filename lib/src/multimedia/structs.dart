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

class HMIDI extends Struct {
  @IntPtr() external int Value;
}

class HMIDIIN extends Struct {
  @IntPtr() external int Value;
}

class HMIDIOUT extends Struct {
  @IntPtr() external int Value;
}

class HMIDISTRM extends Struct {
  @IntPtr() external int Value;
}

class HMIXER extends Struct {
  @IntPtr() external int Value;
}

class HMIXEROBJ extends Struct {
  @IntPtr() external int Value;
}

class HWAVE extends Struct {
  @IntPtr() external int Value;
}

class HWAVEOUT extends Struct {
  @IntPtr() external int Value;
}

class HWAVEIN extends Struct {
  @IntPtr() external int Value;
}

class HMMIO extends Struct {
  @IntPtr() external int Value;
}

class HDRVR extends Struct {
  @IntPtr() external int Value;
}

class HACMDRIVERID extends Struct {
  @IntPtr() external int Value;
}

class HACMDRIVER extends Struct {
  @IntPtr() external int Value;
}

class HACMSTREAM extends Struct {
  @IntPtr() external int Value;
}

class HACMOBJ extends Struct {
  @IntPtr() external int Value;
}

class HIC extends Struct {
  @IntPtr() external int Value;
}

class HVIDEO extends Struct {
  @IntPtr() external int Value;
}

class WAVEFORMAT extends Struct {
  @Uint16() external int wFormatTag;
  @Uint16() external int nChannels;
  @Uint32() external int nSamplesPerSec;
  @Uint32() external int nAvgBytesPerSec;
  @Uint16() external int nBlockAlign;
}

class PCMWAVEFORMAT extends Struct {
  external WAVEFORMAT wf;
  @Uint16() external int wBitsPerSample;
}

class WAVEFORMATEX extends Struct {
  @Uint16() external int wFormatTag;
  @Uint16() external int nChannels;
  @Uint32() external int nSamplesPerSec;
  @Uint32() external int nAvgBytesPerSec;
  @Uint16() external int nBlockAlign;
  @Uint16() external int wBitsPerSample;
  @Uint16() external int cbSize;
}

class KSDATAFORMAT_SUBTYPE_PCM extends Struct {
}

class KSDATAFORMAT_SUBTYPE_IEEE_FLOAT extends Struct {
}

class KSDATAFORMAT_SUBTYPE_WAVEFORMATEX extends Struct {
}

class WAVEFORMATEXTENSIBLE extends Struct {
  external WAVEFORMATEX Format;
  @Uint32() external int Samples;
  @Uint32() external int dwChannelMask;
  external GUID SubFormat;
}

class ADPCMCOEFSET extends Struct {
  @Int16() external int iCoef1;
  @Int16() external int iCoef2;
}

class ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
  @Uint16() external int wNumCoef;
  external ADPCMCOEFSET aCoef;
}

class DRMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wReserved;
  @Uint32() external int ulContentId;
  external WAVEFORMATEX wfxSecure;
}

class DVIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class IMAADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class MEDIASPACEADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
}

class SIERRAADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
}

class G723_ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int cbExtraSize;
  @Uint16() external int nAuxBlockSize;
}

class DIGISTDWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class DIGIFIXWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class DIALOGICOKIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX ewf;
}

class YAMAHA_ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class SONARCWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wCompType;
}

class TRUESPEECHWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
  @Uint16() external int nSamplesPerBlock;
  @Array(28)
  external Array<Uint8> abReserved;
}

class ECHOSC1WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class AUDIOFILE_AF36WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class APTXWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class AUDIOFILE_AF10WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class DOLBYAC2WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int nAuxBitsCode;
}

class GSM610WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class ADPCMEWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class CONTRESVQLPCWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class DIGIREALWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class DIGIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class CONTRESCR10WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class NMS_VBXADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
}

class G721_ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int nAuxBlockSize;
}

class MSAUDIO1WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wSamplesPerBlock;
  @Uint16() external int wEncodeOptions;
}

class WMAUDIO2WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint32() external int dwSamplesPerBlock;
  @Uint16() external int wEncodeOptions;
  @Uint32() external int dwSuperBlockAlign;
}

class WMAUDIO3WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wValidBitsPerSample;
  @Uint32() external int dwChannelMask;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @Uint16() external int wEncodeOptions;
  @Uint16() external int wReserved3;
}

class CREATIVEADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
}

class CREATIVEFASTSPEECH8WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
}

class CREATIVEFASTSPEECH10WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
}

class FMTOWNS_SND_WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16() external int wRevision;
}

class OLIGSMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class OLIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class OLICELPWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class OLISBCWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class OLIOPRWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class CSIMAADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

class WAVEFILTER extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFilterTag;
  @Uint32() external int fdwFilter;
  @Array(5)
  external Array<Uint32> dwReserved;
}

class VOLUMEWAVEFILTER extends Struct {
  external WAVEFILTER wfltr;
  @Uint32() external int dwVolume;
}

class ECHOWAVEFILTER extends Struct {
  external WAVEFILTER wfltr;
  @Uint32() external int dwVolume;
  @Uint32() external int dwDelay;
}

class s_RIFFWAVE_inst extends Struct {
  @Uint8() external int bUnshiftedNote;
  @Int8() external int chFineTune;
  @Int8() external int chGain;
  @Uint8() external int bLowNote;
  @Uint8() external int bHighNote;
  @Uint8() external int bLowVelocity;
  @Uint8() external int bHighVelocity;
}

class EXBMINFOHEADER extends Struct {
  external BITMAPINFOHEADER bmi;
  @Uint32() external int biExtDataOffset;
}

class JPEGINFOHEADER extends Struct {
  @Uint32() external int JPEGSize;
  @Uint32() external int JPEGProcess;
  @Uint32() external int JPEGColorSpaceID;
  @Uint32() external int JPEGBitsPerSample;
  @Uint32() external int JPEGHSubSampling;
  @Uint32() external int JPEGVSubSampling;
}

class MMTIME extends Struct {
  @Uint32() external int wType;
  @Uint32() external int u;
}

class DRVCONFIGINFOEX extends Struct {
  @Uint32() external int dwDCISize;
  external Pointer<Utf16> lpszDCISectionName;
  external Pointer<Utf16> lpszDCIAliasName;
  @Uint32() external int dnDevNode;
}

class DRVCONFIGINFO extends Struct {
  @Uint32() external int dwDCISize;
  external Pointer<Utf16> lpszDCISectionName;
  external Pointer<Utf16> lpszDCIAliasName;
}

class MMIOINFO extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int fccIOProc;
  external Pointer<MMIOPROC> pIOProc;
  @Uint32() external int wErrorRet;
  @IntPtr() external int htask;
  @Int32() external int cchBuffer;
  external Pointer<Int8> pchBuffer;
  external Pointer<Int8> pchNext;
  external Pointer<Int8> pchEndRead;
  external Pointer<Int8> pchEndWrite;
  @Int32() external int lBufOffset;
  @Int32() external int lDiskOffset;
  @Array(3)
  external Array<Uint32> adwInfo;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
  @IntPtr() external int hmmio;
}

class MMCKINFO extends Struct {
  @Uint32() external int ckid;
  @Uint32() external int cksize;
  @Uint32() external int fccType;
  @Uint32() external int dwDataOffset;
  @Uint32() external int dwFlags;
}

class WAVEHDR extends Struct {
  external Pointer<Utf8> lpData;
  @Uint32() external int dwBufferLength;
  @Uint32() external int dwBytesRecorded;
  @IntPtr() external int dwUser;
  @Uint32() external int dwFlags;
  @Uint32() external int dwLoops;
  external Pointer<WAVEHDR> lpNext;
  @IntPtr() external int reserved;
}

class WAVEOUTCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
}

class WAVEOUTCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
}

class WAVEOUTCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class WAVEOUTCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class WAVEINCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
}

class WAVEINCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
}

class WAVEINCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class WAVEINCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int dwFormats;
  @Uint16() external int wChannels;
  @Uint16() external int wReserved1;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIDIOUTCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wVoices;
  @Uint16() external int wNotes;
  @Uint16() external int wChannelMask;
  @Uint32() external int dwSupport;
}

class MIDIOUTCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wVoices;
  @Uint16() external int wNotes;
  @Uint16() external int wChannelMask;
  @Uint32() external int dwSupport;
}

class MIDIOUTCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wVoices;
  @Uint16() external int wNotes;
  @Uint16() external int wChannelMask;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIDIOUTCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wVoices;
  @Uint16() external int wNotes;
  @Uint16() external int wChannelMask;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIDIINCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int dwSupport;
}

class MIDIINCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int dwSupport;
}

class MIDIINCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIDIINCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIDIHDR extends Struct {
  external Pointer<Utf8> lpData;
  @Uint32() external int dwBufferLength;
  @Uint32() external int dwBytesRecorded;
  @IntPtr() external int dwUser;
  @Uint32() external int dwFlags;
  external Pointer<MIDIHDR> lpNext;
  @IntPtr() external int reserved;
  @Uint32() external int dwOffset;
  @Array(8)
  external Array<IntPtr> dwReserved;
}

class MIDIEVENT extends Struct {
  @Uint32() external int dwDeltaTime;
  @Uint32() external int dwStreamID;
  @Uint32() external int dwEvent;
  @Array(1)
  external Array<Uint32> dwParms;
}

class MIDISTRMBUFFVER extends Struct {
  @Uint32() external int dwVersion;
  @Uint32() external int dwMid;
  @Uint32() external int dwOEMVersion;
}

class MIDIPROPTIMEDIV extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwTimeDiv;
}

class MIDIPROPTEMPO extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwTempo;
}

class AUXCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
}

class AUXCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
}

class AUXCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class AUXCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint16() external int wTechnology;
  @Uint16() external int wReserved1;
  @Uint32() external int dwSupport;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIXERCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int fdwSupport;
  @Uint32() external int cDestinations;
}

class MIXERCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int fdwSupport;
  @Uint32() external int cDestinations;
}

class MIXERCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int fdwSupport;
  @Uint32() external int cDestinations;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIXERCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vDriverVersion;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int fdwSupport;
  @Uint32() external int cDestinations;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class MIXERLINEA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwDestination;
  @Uint32() external int dwSource;
  @Uint32() external int dwLineID;
  @Uint32() external int fdwLine;
  @IntPtr() external int dwUser;
  @Uint32() external int dwComponentType;
  @Uint32() external int cChannels;
  @Uint32() external int cConnections;
  @Uint32() external int cControls;
  @Array(16)
  external Array<Int8> szShortName;
  @Array(64)
  external Array<Int8> szName;
  @Uint32() external int Target;
}

class MIXERLINEW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwDestination;
  @Uint32() external int dwSource;
  @Uint32() external int dwLineID;
  @Uint32() external int fdwLine;
  @IntPtr() external int dwUser;
  @Uint32() external int dwComponentType;
  @Uint32() external int cChannels;
  @Uint32() external int cConnections;
  @Uint32() external int cControls;
  @Array(16)
  external Array<Uint16> szShortName;
  @Array(64)
  external Array<Uint16> szName;
  @Uint32() external int Target;
}

class MIXERCONTROLA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwControlID;
  @Uint32() external int dwControlType;
  @Uint32() external int fdwControl;
  @Uint32() external int cMultipleItems;
  @Array(16)
  external Array<Int8> szShortName;
  @Array(64)
  external Array<Int8> szName;
  @Uint32() external int Bounds;
  @Uint32() external int Metrics;
}

class MIXERCONTROLW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwControlID;
  @Uint32() external int dwControlType;
  @Uint32() external int fdwControl;
  @Uint32() external int cMultipleItems;
  @Array(16)
  external Array<Uint16> szShortName;
  @Array(64)
  external Array<Uint16> szName;
  @Uint32() external int Bounds;
  @Uint32() external int Metrics;
}

class MIXERLINECONTROLSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwLineID;
  @Uint32() external int Anonymous;
  @Uint32() external int cControls;
  @Uint32() external int cbmxctrl;
  external Pointer<MIXERCONTROLA> pamxctrl;
}

class MIXERLINECONTROLSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwLineID;
  @Uint32() external int Anonymous;
  @Uint32() external int cControls;
  @Uint32() external int cbmxctrl;
  external Pointer<MIXERCONTROL> pamxctrl;
}

class MIXERCONTROLDETAILS extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwControlID;
  @Uint32() external int cChannels;
  @Uint32() external int Anonymous;
  @Uint32() external int cbDetails;
  external Pointer paDetails;
}

class MIXERCONTROLDETAILS_LISTTEXTA extends Struct {
  @Uint32() external int dwParam1;
  @Uint32() external int dwParam2;
  @Array(64)
  external Array<Int8> szName;
}

class MIXERCONTROLDETAILS_LISTTEXTW extends Struct {
  @Uint32() external int dwParam1;
  @Uint32() external int dwParam2;
  @Array(64)
  external Array<Uint16> szName;
}

class MIXERCONTROLDETAILS_BOOLEAN extends Struct {
  @Int32() external int fValue;
}

class MIXERCONTROLDETAILS_SIGNED extends Struct {
  @Int32() external int lValue;
}

class MIXERCONTROLDETAILS_UNSIGNED extends Struct {
  @Uint32() external int dwValue;
}

class TIMECAPS extends Struct {
  @Uint32() external int wPeriodMin;
  @Uint32() external int wPeriodMax;
}

class JOYCAPSA extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int wXmin;
  @Uint32() external int wXmax;
  @Uint32() external int wYmin;
  @Uint32() external int wYmax;
  @Uint32() external int wZmin;
  @Uint32() external int wZmax;
  @Uint32() external int wNumButtons;
  @Uint32() external int wPeriodMin;
  @Uint32() external int wPeriodMax;
  @Uint32() external int wRmin;
  @Uint32() external int wRmax;
  @Uint32() external int wUmin;
  @Uint32() external int wUmax;
  @Uint32() external int wVmin;
  @Uint32() external int wVmax;
  @Uint32() external int wCaps;
  @Uint32() external int wMaxAxes;
  @Uint32() external int wNumAxes;
  @Uint32() external int wMaxButtons;
  @Array(32)
  external Array<Int8> szRegKey;
  @Array(129)
  external Array<Int8> szOEMVxD;
}

class JOYCAPSW extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int wXmin;
  @Uint32() external int wXmax;
  @Uint32() external int wYmin;
  @Uint32() external int wYmax;
  @Uint32() external int wZmin;
  @Uint32() external int wZmax;
  @Uint32() external int wNumButtons;
  @Uint32() external int wPeriodMin;
  @Uint32() external int wPeriodMax;
  @Uint32() external int wRmin;
  @Uint32() external int wRmax;
  @Uint32() external int wUmin;
  @Uint32() external int wUmax;
  @Uint32() external int wVmin;
  @Uint32() external int wVmax;
  @Uint32() external int wCaps;
  @Uint32() external int wMaxAxes;
  @Uint32() external int wNumAxes;
  @Uint32() external int wMaxButtons;
  @Array(32)
  external Array<Uint16> szRegKey;
  @Array(129)
  external Array<Uint16> szOEMVxD;
}

class JOYCAPS2A extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Array(32)
  external Array<Int8> szPname;
  @Uint32() external int wXmin;
  @Uint32() external int wXmax;
  @Uint32() external int wYmin;
  @Uint32() external int wYmax;
  @Uint32() external int wZmin;
  @Uint32() external int wZmax;
  @Uint32() external int wNumButtons;
  @Uint32() external int wPeriodMin;
  @Uint32() external int wPeriodMax;
  @Uint32() external int wRmin;
  @Uint32() external int wRmax;
  @Uint32() external int wUmin;
  @Uint32() external int wUmax;
  @Uint32() external int wVmin;
  @Uint32() external int wVmax;
  @Uint32() external int wCaps;
  @Uint32() external int wMaxAxes;
  @Uint32() external int wNumAxes;
  @Uint32() external int wMaxButtons;
  @Array(32)
  external Array<Int8> szRegKey;
  @Array(129)
  external Array<Int8> szOEMVxD;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class JOYCAPS2W extends Struct {
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Array(32)
  external Array<Uint16> szPname;
  @Uint32() external int wXmin;
  @Uint32() external int wXmax;
  @Uint32() external int wYmin;
  @Uint32() external int wYmax;
  @Uint32() external int wZmin;
  @Uint32() external int wZmax;
  @Uint32() external int wNumButtons;
  @Uint32() external int wPeriodMin;
  @Uint32() external int wPeriodMax;
  @Uint32() external int wRmin;
  @Uint32() external int wRmax;
  @Uint32() external int wUmin;
  @Uint32() external int wUmax;
  @Uint32() external int wVmin;
  @Uint32() external int wVmax;
  @Uint32() external int wCaps;
  @Uint32() external int wMaxAxes;
  @Uint32() external int wNumAxes;
  @Uint32() external int wMaxButtons;
  @Array(32)
  external Array<Uint16> szRegKey;
  @Array(129)
  external Array<Uint16> szOEMVxD;
  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

class JOYINFO extends Struct {
  @Uint32() external int wXpos;
  @Uint32() external int wYpos;
  @Uint32() external int wZpos;
  @Uint32() external int wButtons;
}

class JOYINFOEX extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwXpos;
  @Uint32() external int dwYpos;
  @Uint32() external int dwZpos;
  @Uint32() external int dwRpos;
  @Uint32() external int dwUpos;
  @Uint32() external int dwVpos;
  @Uint32() external int dwButtons;
  @Uint32() external int dwButtonNumber;
  @Uint32() external int dwPOV;
  @Uint32() external int dwReserved1;
  @Uint32() external int dwReserved2;
}

class MCI_DGV_RECT_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  external RECT rc;
}

class MCI_DGV_CAPTURE_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf8> lpstrFileName;
  external RECT rc;
}

class MCI_DGV_CAPTURE_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf16> lpstrFileName;
  external RECT rc;
}

class MCI_DGV_COPY_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwFrom;
  @Uint32() external int dwTo;
  external RECT rc;
  @Uint32() external int dwAudioStream;
  @Uint32() external int dwVideoStream;
}

class MCI_DGV_CUE_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwTo;
}

class MCI_DGV_CUT_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwFrom;
  @Uint32() external int dwTo;
  external RECT rc;
  @Uint32() external int dwAudioStream;
  @Uint32() external int dwVideoStream;
}

class MCI_DGV_DELETE_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwFrom;
  @Uint32() external int dwTo;
  external RECT rc;
  @Uint32() external int dwAudioStream;
  @Uint32() external int dwVideoStream;
}

class MCI_DGV_INFO_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf8> lpstrReturn;
  @Uint32() external int dwRetSize;
  @Uint32() external int dwItem;
}

class MCI_DGV_INFO_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf16> lpstrReturn;
  @Uint32() external int dwRetSize;
  @Uint32() external int dwItem;
}

class MCI_DGV_LIST_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf8> lpstrReturn;
  @Uint32() external int dwLength;
  @Uint32() external int dwNumber;
  @Uint32() external int dwItem;
  external Pointer<Utf8> lpstrAlgorithm;
}

class MCI_DGV_LIST_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf16> lpstrReturn;
  @Uint32() external int dwLength;
  @Uint32() external int dwNumber;
  @Uint32() external int dwItem;
  external Pointer<Utf16> lpstrAlgorithm;
}

class MCI_DGV_MONITOR_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwSource;
  @Uint32() external int dwMethod;
}

class MCI_DGV_OPEN_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int wDeviceID;
  external Pointer<Utf8> lpstrDeviceType;
  external Pointer<Utf8> lpstrElementName;
  external Pointer<Utf8> lpstrAlias;
  @Uint32() external int dwStyle;
  @IntPtr() external int hWndParent;
}

class MCI_DGV_OPEN_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
  @Uint32() external int dwStyle;
  @IntPtr() external int hWndParent;
}

class MCI_DGV_PASTE_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwTo;
  external RECT rc;
  @Uint32() external int dwAudioStream;
  @Uint32() external int dwVideoStream;
}

class MCI_DGV_QUALITY_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwItem;
  external Pointer<Utf8> lpstrName;
  @Uint32() external int lpstrAlgorithm;
  @Uint32() external int dwHandle;
}

class MCI_DGV_QUALITY_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwItem;
  external Pointer<Utf16> lpstrName;
  @Uint32() external int lpstrAlgorithm;
  @Uint32() external int dwHandle;
}

class MCI_DGV_RECORD_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwFrom;
  @Uint32() external int dwTo;
  external RECT rc;
  @Uint32() external int dwAudioStream;
  @Uint32() external int dwVideoStream;
}

class MCI_DGV_RESERVE_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf8> lpstrPath;
  @Uint32() external int dwSize;
}

class MCI_DGV_RESERVE_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf16> lpstrPath;
  @Uint32() external int dwSize;
}

class MCI_DGV_RESTORE_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf8> lpstrFileName;
  external RECT rc;
}

class MCI_DGV_RESTORE_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf16> lpstrFileName;
  external RECT rc;
}

class MCI_DGV_SAVE_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf8> lpstrFileName;
  external RECT rc;
}

class MCI_DGV_SAVE_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  external Pointer<Utf16> lpstrFileName;
  external RECT rc;
}

class MCI_DGV_SET_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwTimeFormat;
  @Uint32() external int dwAudio;
  @Uint32() external int dwFileFormat;
  @Uint32() external int dwSpeed;
}

class MCI_DGV_SETAUDIO_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwItem;
  @Uint32() external int dwValue;
  @Uint32() external int dwOver;
  external Pointer<Utf8> lpstrAlgorithm;
  external Pointer<Utf8> lpstrQuality;
}

class MCI_DGV_SETAUDIO_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwItem;
  @Uint32() external int dwValue;
  @Uint32() external int dwOver;
  external Pointer<Utf16> lpstrAlgorithm;
  external Pointer<Utf16> lpstrQuality;
}

class MCI_DGV_SIGNAL_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwPosition;
  @Uint32() external int dwPeriod;
  @Uint32() external int dwUserParm;
}

class MCI_DGV_SETVIDEO_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwItem;
  @Uint32() external int dwValue;
  @Uint32() external int dwOver;
  external Pointer<Utf8> lpstrAlgorithm;
  external Pointer<Utf8> lpstrQuality;
  @Uint32() external int dwSourceNumber;
}

class MCI_DGV_SETVIDEO_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwItem;
  @Uint32() external int dwValue;
  @Uint32() external int dwOver;
  external Pointer<Utf16> lpstrAlgorithm;
  external Pointer<Utf16> lpstrQuality;
  @Uint32() external int dwSourceNumber;
}

class MCI_DGV_STATUS_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  @IntPtr() external int dwReturn;
  @Uint32() external int dwItem;
  @Uint32() external int dwTrack;
  external Pointer<Utf8> lpstrDrive;
  @Uint32() external int dwReference;
}

class MCI_DGV_STATUS_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  @IntPtr() external int dwReturn;
  @Uint32() external int dwItem;
  @Uint32() external int dwTrack;
  external Pointer<Utf16> lpstrDrive;
  @Uint32() external int dwReference;
}

class MCI_DGV_STEP_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  @Uint32() external int dwFrames;
}

class MCI_DGV_UPDATE_PARMS extends Struct {
  @IntPtr() external int dwCallback;
  external RECT rc;
  @IntPtr() external int hDC;
}

class MCI_DGV_WINDOW_PARMSA extends Struct {
  @IntPtr() external int dwCallback;
  @IntPtr() external int hWnd;
  @Uint32() external int nCmdShow;
  external Pointer<Utf8> lpstrText;
}

class MCI_DGV_WINDOW_PARMSW extends Struct {
  @IntPtr() external int dwCallback;
  @IntPtr() external int hWnd;
  @Uint32() external int nCmdShow;
  external Pointer<Utf16> lpstrText;
}

class ACMDRIVERDETAILSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fccType;
  @Uint32() external int fccComp;
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vdwACM;
  @Uint32() external int vdwDriver;
  @Uint32() external int fdwSupport;
  @Uint32() external int cFormatTags;
  @Uint32() external int cFilterTags;
  @IntPtr() external int hicon;
  @Array(32)
  external Array<Int8> szShortName;
  @Array(128)
  external Array<Int8> szLongName;
  @Array(80)
  external Array<Int8> szCopyright;
  @Array(128)
  external Array<Int8> szLicensing;
  @Array(130)
  external Array<Int8> szFeatures;
}

class ACMDRIVERDETAILSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fccType;
  @Uint32() external int fccComp;
  @Uint16() external int wMid;
  @Uint16() external int wPid;
  @Uint32() external int vdwACM;
  @Uint32() external int vdwDriver;
  @Uint32() external int fdwSupport;
  @Uint32() external int cFormatTags;
  @Uint32() external int cFilterTags;
  @IntPtr() external int hicon;
  @Array(32)
  external Array<Uint16> szShortName;
  @Array(128)
  external Array<Uint16> szLongName;
  @Array(80)
  external Array<Uint16> szCopyright;
  @Array(128)
  external Array<Uint16> szLicensing;
  @Array(130)
  external Array<Uint16> szFeatures;
}

class ACMFORMATTAGDETAILSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFormatTagIndex;
  @Uint32() external int dwFormatTag;
  @Uint32() external int cbFormatSize;
  @Uint32() external int fdwSupport;
  @Uint32() external int cStandardFormats;
  @Array(48)
  external Array<Int8> szFormatTag;
}

class ACMFORMATTAGDETAILSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFormatTagIndex;
  @Uint32() external int dwFormatTag;
  @Uint32() external int cbFormatSize;
  @Uint32() external int fdwSupport;
  @Uint32() external int cStandardFormats;
  @Array(48)
  external Array<Uint16> szFormatTag;
}

class ACMFORMATDETAILSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFormatIndex;
  @Uint32() external int dwFormatTag;
  @Uint32() external int fdwSupport;
  external Pointer<WAVEFORMATEX> pwfx;
  @Uint32() external int cbwfx;
  @Array(128)
  external Array<Int8> szFormat;
}

class tACMFORMATDETAILSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFormatIndex;
  @Uint32() external int dwFormatTag;
  @Uint32() external int fdwSupport;
  external Pointer<WAVEFORMATEX> pwfx;
  @Uint32() external int cbwfx;
  @Array(128)
  external Array<Uint16> szFormat;
}

class ACMFORMATCHOOSEA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fdwStyle;
  @IntPtr() external int hwndOwner;
  external Pointer<WAVEFORMATEX> pwfx;
  @Uint32() external int cbwfx;
  external Pointer<Utf8> pszTitle;
  @Array(48)
  external Array<Int8> szFormatTag;
  @Array(128)
  external Array<Int8> szFormat;
  external Pointer<Utf8> pszName;
  @Uint32() external int cchName;
  @Uint32() external int fdwEnum;
  external Pointer<WAVEFORMATEX> pwfxEnum;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> pszTemplateName;
  @IntPtr() external int lCustData;
  external ACMFORMATCHOOSEHOOKPROCA pfnHook;
}

class ACMFORMATCHOOSEW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fdwStyle;
  @IntPtr() external int hwndOwner;
  external Pointer<WAVEFORMATEX> pwfx;
  @Uint32() external int cbwfx;
  external Pointer<Utf16> pszTitle;
  @Array(48)
  external Array<Uint16> szFormatTag;
  @Array(128)
  external Array<Uint16> szFormat;
  external Pointer<Utf16> pszName;
  @Uint32() external int cchName;
  @Uint32() external int fdwEnum;
  external Pointer<WAVEFORMATEX> pwfxEnum;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> pszTemplateName;
  @IntPtr() external int lCustData;
  external ACMFORMATCHOOSEHOOKPROCW pfnHook;
}

class ACMFILTERTAGDETAILSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFilterTagIndex;
  @Uint32() external int dwFilterTag;
  @Uint32() external int cbFilterSize;
  @Uint32() external int fdwSupport;
  @Uint32() external int cStandardFilters;
  @Array(48)
  external Array<Int8> szFilterTag;
}

class ACMFILTERTAGDETAILSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFilterTagIndex;
  @Uint32() external int dwFilterTag;
  @Uint32() external int cbFilterSize;
  @Uint32() external int fdwSupport;
  @Uint32() external int cStandardFilters;
  @Array(48)
  external Array<Uint16> szFilterTag;
}

class ACMFILTERDETAILSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFilterIndex;
  @Uint32() external int dwFilterTag;
  @Uint32() external int fdwSupport;
  external Pointer<WAVEFILTER> pwfltr;
  @Uint32() external int cbwfltr;
  @Array(128)
  external Array<Int8> szFilter;
}

class ACMFILTERDETAILSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFilterIndex;
  @Uint32() external int dwFilterTag;
  @Uint32() external int fdwSupport;
  external Pointer<WAVEFILTER> pwfltr;
  @Uint32() external int cbwfltr;
  @Array(128)
  external Array<Uint16> szFilter;
}

class ACMFILTERCHOOSEA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fdwStyle;
  @IntPtr() external int hwndOwner;
  external Pointer<WAVEFILTER> pwfltr;
  @Uint32() external int cbwfltr;
  external Pointer<Utf8> pszTitle;
  @Array(48)
  external Array<Int8> szFilterTag;
  @Array(128)
  external Array<Int8> szFilter;
  external Pointer<Utf8> pszName;
  @Uint32() external int cchName;
  @Uint32() external int fdwEnum;
  external Pointer<WAVEFILTER> pwfltrEnum;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> pszTemplateName;
  @IntPtr() external int lCustData;
  external ACMFILTERCHOOSEHOOKPROCA pfnHook;
}

class ACMFILTERCHOOSEW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fdwStyle;
  @IntPtr() external int hwndOwner;
  external Pointer<WAVEFILTER> pwfltr;
  @Uint32() external int cbwfltr;
  external Pointer<Utf16> pszTitle;
  @Array(48)
  external Array<Uint16> szFilterTag;
  @Array(128)
  external Array<Uint16> szFilter;
  external Pointer<Utf16> pszName;
  @Uint32() external int cchName;
  @Uint32() external int fdwEnum;
  external Pointer<WAVEFILTER> pwfltrEnum;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> pszTemplateName;
  @IntPtr() external int lCustData;
  external ACMFILTERCHOOSEHOOKPROCW pfnHook;
}

class ACMSTREAMHEADER extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int fdwStatus;
  @IntPtr() external int dwUser;
  external Pointer<Uint8> pbSrc;
  @Uint32() external int cbSrcLength;
  @Uint32() external int cbSrcLengthUsed;
  @IntPtr() external int dwSrcUser;
  external Pointer<Uint8> pbDst;
  @Uint32() external int cbDstLength;
  @Uint32() external int cbDstLengthUsed;
  @IntPtr() external int dwDstUser;
  @Array(15)
  external Array<Uint32> dwReservedDriver;
}

class ICOPEN extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int fccType;
  @Uint32() external int fccHandler;
  @Uint32() external int dwVersion;
  @Uint32() external int dwFlags;
  @IntPtr() external int dwError;
  external Pointer pV1Reserved;
  external Pointer pV2Reserved;
  @Uint32() external int dnDevNode;
}

class ICINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int fccType;
  @Uint32() external int fccHandler;
  @Uint32() external int dwFlags;
  @Uint32() external int dwVersion;
  @Uint32() external int dwVersionICM;
  @Array(16)
  external Array<Uint16> szName;
  @Array(128)
  external Array<Uint16> szDescription;
  @Array(128)
  external Array<Uint16> szDriver;
}

class ICCOMPRESS extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiOutput;
  external Pointer lpOutput;
  external Pointer<BITMAPINFOHEADER> lpbiInput;
  external Pointer lpInput;
  external Pointer<Uint32> lpckid;
  external Pointer<Uint32> lpdwFlags;
  @Int32() external int lFrameNum;
  @Uint32() external int dwFrameSize;
  @Uint32() external int dwQuality;
  external Pointer<BITMAPINFOHEADER> lpbiPrev;
  external Pointer lpPrev;
}

class ICCOMPRESSFRAMES extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiOutput;
  @IntPtr() external int lOutput;
  external Pointer<BITMAPINFOHEADER> lpbiInput;
  @IntPtr() external int lInput;
  @Int32() external int lStartFrame;
  @Int32() external int lFrameCount;
  @Int32() external int lQuality;
  @Int32() external int lDataRate;
  @Int32() external int lKeyRate;
  @Uint32() external int dwRate;
  @Uint32() external int dwScale;
  @Uint32() external int dwOverheadPerFrame;
  @Uint32() external int dwReserved2;
  @IntPtr() external int GetData;
  @IntPtr() external int PutData;
}

class ICSETSTATUSPROC extends Struct {
  @Uint32() external int dwFlags;
  @IntPtr() external int lParam;
  @IntPtr() external int Status;
}

class ICDECOMPRESS extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiInput;
  external Pointer lpInput;
  external Pointer<BITMAPINFOHEADER> lpbiOutput;
  external Pointer lpOutput;
  @Uint32() external int ckid;
}

class ICDECOMPRESSEX extends Struct {
  @Uint32() external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiSrc;
  external Pointer lpSrc;
  external Pointer<BITMAPINFOHEADER> lpbiDst;
  external Pointer lpDst;
  @Int32() external int xDst;
  @Int32() external int yDst;
  @Int32() external int dxDst;
  @Int32() external int dyDst;
  @Int32() external int xSrc;
  @Int32() external int ySrc;
  @Int32() external int dxSrc;
  @Int32() external int dySrc;
}

class ICDRAWBEGIN extends Struct {
  @Uint32() external int dwFlags;
  @IntPtr() external int hpal;
  @IntPtr() external int hwnd;
  @IntPtr() external int hdc;
  @Int32() external int xDst;
  @Int32() external int yDst;
  @Int32() external int dxDst;
  @Int32() external int dyDst;
  external Pointer<BITMAPINFOHEADER> lpbi;
  @Int32() external int xSrc;
  @Int32() external int ySrc;
  @Int32() external int dxSrc;
  @Int32() external int dySrc;
  @Uint32() external int dwRate;
  @Uint32() external int dwScale;
}

class ICDRAW extends Struct {
  @Uint32() external int dwFlags;
  external Pointer lpFormat;
  external Pointer lpData;
  @Uint32() external int cbData;
  @Int32() external int lTime;
}

class ICDRAWSUGGEST extends Struct {
  external Pointer<BITMAPINFOHEADER> lpbiIn;
  external Pointer<BITMAPINFOHEADER> lpbiSuggest;
  @Int32() external int dxSrc;
  @Int32() external int dySrc;
  @Int32() external int dxDst;
  @Int32() external int dyDst;
  @IntPtr() external int hicDecompressor;
}

class ICPALETTE extends Struct {
  @Uint32() external int dwFlags;
  @Int32() external int iStart;
  @Int32() external int iLen;
  external Pointer<PALETTEENTRY> lppe;
}

class COMPVARS extends Struct {
  @Int32() external int cbSize;
  @Uint32() external int dwFlags;
  @IntPtr() external int hic;
  @Uint32() external int fccType;
  @Uint32() external int fccHandler;
  external Pointer<BITMAPINFO> lpbiIn;
  external Pointer<BITMAPINFO> lpbiOut;
  external Pointer lpBitsOut;
  external Pointer lpBitsPrev;
  @Int32() external int lFrame;
  @Int32() external int lKey;
  @Int32() external int lDataRate;
  @Int32() external int lQ;
  @Int32() external int lKeyCount;
  external Pointer lpState;
  @Int32() external int cbState;
}

class DRAWDIBTIME extends Struct {
  @Int32() external int timeCount;
  @Int32() external int timeDraw;
  @Int32() external int timeDecompress;
  @Int32() external int timeDither;
  @Int32() external int timeStretch;
  @Int32() external int timeBlt;
  @Int32() external int timeSetDIBits;
}

class AVISTREAMINFOW extends Struct {
  @Uint32() external int fccType;
  @Uint32() external int fccHandler;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCaps;
  @Uint16() external int wPriority;
  @Uint16() external int wLanguage;
  @Uint32() external int dwScale;
  @Uint32() external int dwRate;
  @Uint32() external int dwStart;
  @Uint32() external int dwLength;
  @Uint32() external int dwInitialFrames;
  @Uint32() external int dwSuggestedBufferSize;
  @Uint32() external int dwQuality;
  @Uint32() external int dwSampleSize;
  external RECT rcFrame;
  @Uint32() external int dwEditCount;
  @Uint32() external int dwFormatChangeCount;
  @Array(64)
  external Array<Uint16> szName;
}

class AVISTREAMINFOA extends Struct {
  @Uint32() external int fccType;
  @Uint32() external int fccHandler;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCaps;
  @Uint16() external int wPriority;
  @Uint16() external int wLanguage;
  @Uint32() external int dwScale;
  @Uint32() external int dwRate;
  @Uint32() external int dwStart;
  @Uint32() external int dwLength;
  @Uint32() external int dwInitialFrames;
  @Uint32() external int dwSuggestedBufferSize;
  @Uint32() external int dwQuality;
  @Uint32() external int dwSampleSize;
  external RECT rcFrame;
  @Uint32() external int dwEditCount;
  @Uint32() external int dwFormatChangeCount;
  @Array(64)
  external Array<Int8> szName;
}

class AVIFILEINFOW extends Struct {
  @Uint32() external int dwMaxBytesPerSec;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCaps;
  @Uint32() external int dwStreams;
  @Uint32() external int dwSuggestedBufferSize;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Uint32() external int dwScale;
  @Uint32() external int dwRate;
  @Uint32() external int dwLength;
  @Uint32() external int dwEditCount;
  @Array(64)
  external Array<Uint16> szFileType;
}

class AVIFILEINFOA extends Struct {
  @Uint32() external int dwMaxBytesPerSec;
  @Uint32() external int dwFlags;
  @Uint32() external int dwCaps;
  @Uint32() external int dwStreams;
  @Uint32() external int dwSuggestedBufferSize;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Uint32() external int dwScale;
  @Uint32() external int dwRate;
  @Uint32() external int dwLength;
  @Uint32() external int dwEditCount;
  @Array(64)
  external Array<Int8> szFileType;
}

class AVICOMPRESSOPTIONS extends Struct {
  @Uint32() external int fccType;
  @Uint32() external int fccHandler;
  @Uint32() external int dwKeyFrameEvery;
  @Uint32() external int dwQuality;
  @Uint32() external int dwBytesPerSecond;
  @Uint32() external int dwFlags;
  external Pointer lpFormat;
  @Uint32() external int cbFormat;
  external Pointer lpParms;
  @Uint32() external int cbParms;
  @Uint32() external int dwInterleaveEvery;
}

class VIDEOHDR extends Struct {
  external Pointer<Uint8> lpData;
  @Uint32() external int dwBufferLength;
  @Uint32() external int dwBytesUsed;
  @Uint32() external int dwTimeCaptured;
  @IntPtr() external int dwUser;
  @Uint32() external int dwFlags;
  @Array(4)
  external Array<IntPtr> dwReserved;
}

class channel_caps_tag extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwSrcRectXMod;
  @Uint32() external int dwSrcRectYMod;
  @Uint32() external int dwSrcRectWidthMod;
  @Uint32() external int dwSrcRectHeightMod;
  @Uint32() external int dwDstRectXMod;
  @Uint32() external int dwDstRectYMod;
  @Uint32() external int dwDstRectWidthMod;
  @Uint32() external int dwDstRectHeightMod;
}

class CAPDRIVERCAPS extends Struct {
  @Uint32() external int wDeviceIndex;
  @Int32() external int fHasOverlay;
  @Int32() external int fHasDlgVideoSource;
  @Int32() external int fHasDlgVideoFormat;
  @Int32() external int fHasDlgVideoDisplay;
  @Int32() external int fCaptureInitialized;
  @Int32() external int fDriverSuppliesPalettes;
  @IntPtr() external int hVideoIn;
  @IntPtr() external int hVideoOut;
  @IntPtr() external int hVideoExtIn;
  @IntPtr() external int hVideoExtOut;
}

class CAPSTATUS extends Struct {
  @Uint32() external int uiImageWidth;
  @Uint32() external int uiImageHeight;
  @Int32() external int fLiveWindow;
  @Int32() external int fOverlayWindow;
  @Int32() external int fScale;
  external POINT ptScroll;
  @Int32() external int fUsingDefaultPalette;
  @Int32() external int fAudioHardware;
  @Int32() external int fCapFileExists;
  @Uint32() external int dwCurrentVideoFrame;
  @Uint32() external int dwCurrentVideoFramesDropped;
  @Uint32() external int dwCurrentWaveSamples;
  @Uint32() external int dwCurrentTimeElapsedMS;
  @IntPtr() external int hPalCurrent;
  @Int32() external int fCapturingNow;
  @Uint32() external int dwReturn;
  @Uint32() external int wNumVideoAllocated;
  @Uint32() external int wNumAudioAllocated;
}

class CAPTUREPARMS extends Struct {
  @Uint32() external int dwRequestMicroSecPerFrame;
  @Int32() external int fMakeUserHitOKToCapture;
  @Uint32() external int wPercentDropForError;
  @Int32() external int fYield;
  @Uint32() external int dwIndexSize;
  @Uint32() external int wChunkGranularity;
  @Int32() external int fUsingDOSMemory;
  @Uint32() external int wNumVideoRequested;
  @Int32() external int fCaptureAudio;
  @Uint32() external int wNumAudioRequested;
  @Uint32() external int vKeyAbort;
  @Int32() external int fAbortLeftMouse;
  @Int32() external int fAbortRightMouse;
  @Int32() external int fLimitEnabled;
  @Uint32() external int wTimeLimit;
  @Int32() external int fMCIControl;
  @Int32() external int fStepMCIDevice;
  @Uint32() external int dwMCIStartTime;
  @Uint32() external int dwMCIStopTime;
  @Int32() external int fStepCaptureAt2x;
  @Uint32() external int wStepCaptureAverageFrames;
  @Uint32() external int dwAudioBufferSize;
  @Int32() external int fDisableWriteCache;
  @Uint32() external int AVStreamMaster;
}

class CAPINFOCHUNK extends Struct {
  @Uint32() external int fccInfoID;
  external Pointer lpData;
  @Int32() external int cbData;
}

class DRVM_IOCTL_DATA extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCmd;
}

class WAVEOPENDESC extends Struct {
  @IntPtr() external int hWave;
  external Pointer<WAVEFORMAT> lpFormat;
  @IntPtr() external int dwCallback;
  @IntPtr() external int dwInstance;
  @Uint32() external int uMappedDeviceID;
  @IntPtr() external int dnDevNode;
}

class midiopenstrmid_tag extends Struct {
  @Uint32() external int dwStreamID;
  @Uint32() external int uDeviceID;
}

class tMIXEROPENDESC extends Struct {
  @IntPtr() external int hmx;
  external Pointer pReserved0;
  @IntPtr() external int dwCallback;
  @IntPtr() external int dwInstance;
  @IntPtr() external int dnDevNode;
}

class TIMEREVENT extends Struct {
  @Uint16() external int wDelay;
  @Uint16() external int wResolution;
  external Pointer<TIMECALLBACK> lpFunction;
  @Uint32() external int dwUser;
  @Uint16() external int wFlags;
  @Uint16() external int wReserved1;
}

class joypos_tag extends Struct {
  @Uint32() external int dwX;
  @Uint32() external int dwY;
  @Uint32() external int dwZ;
  @Uint32() external int dwR;
  @Uint32() external int dwU;
  @Uint32() external int dwV;
}

class joyrange_tag extends Struct {
  external joypos_tag jpMin;
  external joypos_tag jpMax;
  external joypos_tag jpCenter;
}

class joyreguservalues_tag extends Struct {
  @Uint32() external int dwTimeOut;
  external joyrange_tag jrvRanges;
  external joypos_tag jpDeadZone;
}

class joyreghwsettings_tag extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwNumButtons;
}

class joyreghwconfig_tag extends Struct {
  external joyreghwsettings_tag hws;
  @Uint32() external int dwUsageSettings;
  external JOYREGHWVALUES hwv;
  @Uint32() external int dwType;
  @Uint32() external int dwReserved;
}

class joycalibrate_tag extends Struct {
  @Uint16() external int wXbase;
  @Uint16() external int wXdelta;
  @Uint16() external int wYbase;
  @Uint16() external int wYdelta;
  @Uint16() external int wZbase;
  @Uint16() external int wZdelta;
}

class MCI_OPEN_DRIVER_PARMS extends Struct {
  @Uint32() external int wDeviceID;
  external Pointer<Utf16> lpstrParams;
  @Uint32() external int wCustomCommandTable;
  @Uint32() external int wType;
}

