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

import 'callbacks.g.dart';
import '../../guid.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/multimedia/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// {@category Struct}
@Packed(1)
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
@Packed(1)
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
@Packed(1)
class ADPCMCOEFSET extends Struct {
  @Int16()
  external int iCoef1;
  @Int16()
  external int iCoef2;
}

/// {@category Struct}
@Packed(1)
class ADPCMEWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
@Packed(1)
class ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
  @Uint16()
  external int wNumCoef;
  external ADPCMCOEFSET aCoef;
}

/// {@category Struct}
class APTXWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class AUDIOFILE_AF10WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class AUDIOFILE_AF36WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
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
class AVICOMPRESSOPTIONS extends Struct {
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  @Uint32()
  external int dwKeyFrameEvery;
  @Uint32()
  external int dwQuality;
  @Uint32()
  external int dwBytesPerSecond;
  @Uint32()
  external int dwFlags;
  external Pointer lpFormat;
  @Uint32()
  external int cbFormat;
  external Pointer lpParms;
  @Uint32()
  external int cbParms;
  @Uint32()
  external int dwInterleaveEvery;
}

/// {@category Struct}
class AVIFILEINFO extends Struct {
  @Uint32()
  external int dwMaxBytesPerSec;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwCaps;
  @Uint32()
  external int dwStreams;
  @Uint32()
  external int dwSuggestedBufferSize;
  @Uint32()
  external int dwWidth;
  @Uint32()
  external int dwHeight;
  @Uint32()
  external int dwScale;
  @Uint32()
  external int dwRate;
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwEditCount;
  @Array(64)
  external Array<Uint16> _szFileType;

  String get szFileType {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szFileType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFileType(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szFileType[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class AVISTREAMINFO extends Struct {
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwCaps;
  @Uint16()
  external int wPriority;
  @Uint16()
  external int wLanguage;
  @Uint32()
  external int dwScale;
  @Uint32()
  external int dwRate;
  @Uint32()
  external int dwStart;
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwInitialFrames;
  @Uint32()
  external int dwSuggestedBufferSize;
  @Uint32()
  external int dwQuality;
  @Uint32()
  external int dwSampleSize;
  external RECT rcFrame;
  @Uint32()
  external int dwEditCount;
  @Uint32()
  external int dwFormatChangeCount;
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
class CAPDRIVERCAPS extends Struct {
  @Uint32()
  external int wDeviceIndex;
  @Int32()
  external int fHasOverlay;
  @Int32()
  external int fHasDlgVideoSource;
  @Int32()
  external int fHasDlgVideoFormat;
  @Int32()
  external int fHasDlgVideoDisplay;
  @Int32()
  external int fCaptureInitialized;
  @Int32()
  external int fDriverSuppliesPalettes;
  @IntPtr()
  external int hVideoIn;
  @IntPtr()
  external int hVideoOut;
  @IntPtr()
  external int hVideoExtIn;
  @IntPtr()
  external int hVideoExtOut;
}

/// {@category Struct}
class CAPINFOCHUNK extends Struct {
  @Uint32()
  external int fccInfoID;
  external Pointer lpData;
  @Int32()
  external int cbData;
}

/// {@category Struct}
class CAPSTATUS extends Struct {
  @Uint32()
  external int uiImageWidth;
  @Uint32()
  external int uiImageHeight;
  @Int32()
  external int fLiveWindow;
  @Int32()
  external int fOverlayWindow;
  @Int32()
  external int fScale;
  external POINT ptScroll;
  @Int32()
  external int fUsingDefaultPalette;
  @Int32()
  external int fAudioHardware;
  @Int32()
  external int fCapFileExists;
  @Uint32()
  external int dwCurrentVideoFrame;
  @Uint32()
  external int dwCurrentVideoFramesDropped;
  @Uint32()
  external int dwCurrentWaveSamples;
  @Uint32()
  external int dwCurrentTimeElapsedMS;
  @IntPtr()
  external int hPalCurrent;
  @Int32()
  external int fCapturingNow;
  @Uint32()
  external int dwReturn;
  @Uint32()
  external int wNumVideoAllocated;
  @Uint32()
  external int wNumAudioAllocated;
}

/// {@category Struct}
class CAPTUREPARMS extends Struct {
  @Uint32()
  external int dwRequestMicroSecPerFrame;
  @Int32()
  external int fMakeUserHitOKToCapture;
  @Uint32()
  external int wPercentDropForError;
  @Int32()
  external int fYield;
  @Uint32()
  external int dwIndexSize;
  @Uint32()
  external int wChunkGranularity;
  @Int32()
  external int fUsingDOSMemory;
  @Uint32()
  external int wNumVideoRequested;
  @Int32()
  external int fCaptureAudio;
  @Uint32()
  external int wNumAudioRequested;
  @Uint32()
  external int vKeyAbort;
  @Int32()
  external int fAbortLeftMouse;
  @Int32()
  external int fAbortRightMouse;
  @Int32()
  external int fLimitEnabled;
  @Uint32()
  external int wTimeLimit;
  @Int32()
  external int fMCIControl;
  @Int32()
  external int fStepMCIDevice;
  @Uint32()
  external int dwMCIStartTime;
  @Uint32()
  external int dwMCIStopTime;
  @Int32()
  external int fStepCaptureAt2x;
  @Uint32()
  external int wStepCaptureAverageFrames;
  @Uint32()
  external int dwAudioBufferSize;
  @Int32()
  external int fDisableWriteCache;
  @Uint32()
  external int AVStreamMaster;
}

/// {@category Struct}
class COMPVARS extends Struct {
  @Int32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hic;
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  external Pointer<BITMAPINFO> lpbiIn;
  external Pointer<BITMAPINFO> lpbiOut;
  external Pointer lpBitsOut;
  external Pointer lpBitsPrev;
  @Int32()
  external int lFrame;
  @Int32()
  external int lKey;
  @Int32()
  external int lDataRate;
  @Int32()
  external int lQ;
  @Int32()
  external int lKeyCount;
  external Pointer lpState;
  @Int32()
  external int cbState;
}

/// {@category Struct}
@Packed(1)
class CONTRESCR10WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
@Packed(1)
class CONTRESVQLPCWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
@Packed(1)
class CREATIVEADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
}

/// {@category Struct}
@Packed(1)
class CREATIVEFASTSPEECH10WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
}

/// {@category Struct}
@Packed(1)
class CREATIVEFASTSPEECH8WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
}

/// {@category Struct}
class CSIMAADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class DIALOGICOKIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX ewf;
}

/// {@category Struct}
@Packed(1)
class DIGIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
class DIGIFIXWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
@Packed(1)
class DIGIREALWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
class DIGISTDWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
@Packed(1)
class DOLBYAC2WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int nAuxBitsCode;
}

/// {@category Struct}
class DRAWDIBTIME extends Struct {
  @Int32()
  external int timeCount;
  @Int32()
  external int timeDraw;
  @Int32()
  external int timeDecompress;
  @Int32()
  external int timeDither;
  @Int32()
  external int timeStretch;
  @Int32()
  external int timeBlt;
  @Int32()
  external int timeSetDIBits;
}

/// {@category Struct}
@Packed(1)
class DRMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wReserved;
  @Uint32()
  external int ulContentId;
  external WAVEFORMATEX wfxSecure;
}

/// {@category Struct}
@Packed(1)
class DRVCONFIGINFO extends Struct {
  @Uint32()
  external int dwDCISize;
  external Pointer<Utf16> lpszDCISectionName;
  external Pointer<Utf16> lpszDCIAliasName;
}

/// {@category Struct}
@Packed(1)
class DRVCONFIGINFOEX extends Struct {
  @Uint32()
  external int dwDCISize;
  external Pointer<Utf16> lpszDCISectionName;
  external Pointer<Utf16> lpszDCIAliasName;
  @Uint32()
  external int dnDevNode;
}

/// {@category Struct}
@Packed(1)
class DVIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
class ECHOSC1WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
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
class EXBMINFOHEADER extends Struct {
  external BITMAPINFOHEADER bmi;
  @Uint32()
  external int biExtDataOffset;
}

/// {@category Struct}
@Packed(1)
class FMTOWNS_SND_WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
}

/// {@category Struct}
@Packed(1)
class G721_ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int nAuxBlockSize;
}

/// {@category Struct}
@Packed(1)
class G723_ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int cbExtraSize;
  @Uint16()
  external int nAuxBlockSize;
}

/// {@category Struct}
@Packed(1)
class GSM610WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
class ICCOMPRESS extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiOutput;
  external Pointer lpOutput;
  external Pointer<BITMAPINFOHEADER> lpbiInput;
  external Pointer lpInput;
  external Pointer<Uint32> lpckid;
  external Pointer<Uint32> lpdwFlags;
  @Int32()
  external int lFrameNum;
  @Uint32()
  external int dwFrameSize;
  @Uint32()
  external int dwQuality;
  external Pointer<BITMAPINFOHEADER> lpbiPrev;
  external Pointer lpPrev;
}

/// {@category Struct}
class ICCOMPRESSFRAMES extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiOutput;
  @IntPtr()
  external int lOutput;
  external Pointer<BITMAPINFOHEADER> lpbiInput;
  @IntPtr()
  external int lInput;
  @Int32()
  external int lStartFrame;
  @Int32()
  external int lFrameCount;
  @Int32()
  external int lQuality;
  @Int32()
  external int lDataRate;
  @Int32()
  external int lKeyRate;
  @Uint32()
  external int dwRate;
  @Uint32()
  external int dwScale;
  @Uint32()
  external int dwOverheadPerFrame;
  @Uint32()
  external int dwReserved2;
  @IntPtr()
  external int GetData;
  @IntPtr()
  external int PutData;
}

/// {@category Struct}
class ICDECOMPRESS extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiInput;
  external Pointer lpInput;
  external Pointer<BITMAPINFOHEADER> lpbiOutput;
  external Pointer lpOutput;
  @Uint32()
  external int ckid;
}

/// {@category Struct}
class ICDECOMPRESSEX extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer<BITMAPINFOHEADER> lpbiSrc;
  external Pointer lpSrc;
  external Pointer<BITMAPINFOHEADER> lpbiDst;
  external Pointer lpDst;
  @Int32()
  external int xDst;
  @Int32()
  external int yDst;
  @Int32()
  external int dxDst;
  @Int32()
  external int dyDst;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  @Int32()
  external int dxSrc;
  @Int32()
  external int dySrc;
}

/// {@category Struct}
class ICDRA extends Struct {
  @Uint32()
  external int dwFlags;
  external Pointer lpFormat;
  external Pointer lpData;
  @Uint32()
  external int cbData;
  @Int32()
  external int lTime;
}

/// {@category Struct}
class ICDRAWBEGIN extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hpal;
  @IntPtr()
  external int hwnd;
  @IntPtr()
  external int hdc;
  @Int32()
  external int xDst;
  @Int32()
  external int yDst;
  @Int32()
  external int dxDst;
  @Int32()
  external int dyDst;
  external Pointer<BITMAPINFOHEADER> lpbi;
  @Int32()
  external int xSrc;
  @Int32()
  external int ySrc;
  @Int32()
  external int dxSrc;
  @Int32()
  external int dySrc;
  @Uint32()
  external int dwRate;
  @Uint32()
  external int dwScale;
}

/// {@category Struct}
class ICDRAWSUGGEST extends Struct {
  external Pointer<BITMAPINFOHEADER> lpbiIn;
  external Pointer<BITMAPINFOHEADER> lpbiSuggest;
  @Int32()
  external int dxSrc;
  @Int32()
  external int dySrc;
  @Int32()
  external int dxDst;
  @Int32()
  external int dyDst;
  @IntPtr()
  external int hicDecompressor;
}

/// {@category Struct}
class ICINFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwVersionICM;
  @Array(16)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szDriver;

  String get szDriver {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szDriver[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDriver(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szDriver[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class ICOPEN extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int fccType;
  @Uint32()
  external int fccHandler;
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int dwError;
  external Pointer pV1Reserved;
  external Pointer pV2Reserved;
  @Uint32()
  external int dnDevNode;
}

/// {@category Struct}
class ICPALETTE extends Struct {
  @Uint32()
  external int dwFlags;
  @Int32()
  external int iStart;
  @Int32()
  external int iLen;
  external Pointer<PALETTEENTRY> lppe;
}

/// {@category Struct}
class ICSETSTATUSPROC extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int lParam;
  @IntPtr()
  external int Status;
}

/// {@category Struct}
@Packed(1)
class IMAADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
class JOYCAPS2 extends Struct {
  @Uint16()
  external int wMid;
  @Uint16()
  external int wPid;
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
  external int wXmin;
  @Uint32()
  external int wXmax;
  @Uint32()
  external int wYmin;
  @Uint32()
  external int wYmax;
  @Uint32()
  external int wZmin;
  @Uint32()
  external int wZmax;
  @Uint32()
  external int wNumButtons;
  @Uint32()
  external int wPeriodMin;
  @Uint32()
  external int wPeriodMax;
  @Uint32()
  external int wRmin;
  @Uint32()
  external int wRmax;
  @Uint32()
  external int wUmin;
  @Uint32()
  external int wUmax;
  @Uint32()
  external int wVmin;
  @Uint32()
  external int wVmax;
  @Uint32()
  external int wCaps;
  @Uint32()
  external int wMaxAxes;
  @Uint32()
  external int wNumAxes;
  @Uint32()
  external int wMaxButtons;
  @Array(32)
  external Array<Uint16> _szRegKey;

  String get szRegKey {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szRegKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szRegKey(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szRegKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szOEMVxD;

  String get szOEMVxD {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szOEMVxD[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOEMVxD(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szOEMVxD[i] = stringToStore.codeUnitAt(i);
    }
  }

  external GUID ManufacturerGuid;
  external GUID ProductGuid;
  external GUID NameGuid;
}

/// {@category Struct}
@Packed(1)
class JOYCAPS extends Struct {
  @Uint16()
  external int wMid;
  @Uint16()
  external int wPid;
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
  external int wXmin;
  @Uint32()
  external int wXmax;
  @Uint32()
  external int wYmin;
  @Uint32()
  external int wYmax;
  @Uint32()
  external int wZmin;
  @Uint32()
  external int wZmax;
  @Uint32()
  external int wNumButtons;
  @Uint32()
  external int wPeriodMin;
  @Uint32()
  external int wPeriodMax;
  @Uint32()
  external int wRmin;
  @Uint32()
  external int wRmax;
  @Uint32()
  external int wUmin;
  @Uint32()
  external int wUmax;
  @Uint32()
  external int wVmin;
  @Uint32()
  external int wVmax;
  @Uint32()
  external int wCaps;
  @Uint32()
  external int wMaxAxes;
  @Uint32()
  external int wNumAxes;
  @Uint32()
  external int wMaxButtons;
  @Array(32)
  external Array<Uint16> _szRegKey;

  String get szRegKey {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szRegKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szRegKey(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szRegKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szOEMVxD;

  String get szOEMVxD {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szOEMVxD[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szOEMVxD(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szOEMVxD[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class JOYINFO extends Struct {
  @Uint32()
  external int wXpos;
  @Uint32()
  external int wYpos;
  @Uint32()
  external int wZpos;
  @Uint32()
  external int wButtons;
}

/// {@category Struct}
@Packed(1)
class JOYINFOEX extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwXpos;
  @Uint32()
  external int dwYpos;
  @Uint32()
  external int dwZpos;
  @Uint32()
  external int dwRpos;
  @Uint32()
  external int dwUpos;
  @Uint32()
  external int dwVpos;
  @Uint32()
  external int dwButtons;
  @Uint32()
  external int dwButtonNumber;
  @Uint32()
  external int dwPOV;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
@Packed(1)
class JPEGINFOHEADER extends Struct {
  @Uint32()
  external int JPEGSize;
  @Uint32()
  external int JPEGProcess;
  @Uint32()
  external int JPEGColorSpaceID;
  @Uint32()
  external int JPEGBitsPerSample;
  @Uint32()
  external int JPEGHSubSampling;
  @Uint32()
  external int JPEGVSubSampling;
}

/// {@category Struct}
class MCI_DGV_CAPTURE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrFileName;
  external RECT rc;
}

/// {@category Struct}
class MCI_DGV_COPY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
  external RECT rc;
  @Uint32()
  external int dwAudioStream;
  @Uint32()
  external int dwVideoStream;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_CUE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTo;
}

/// {@category Struct}
class MCI_DGV_CUT_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
  external RECT rc;
  @Uint32()
  external int dwAudioStream;
  @Uint32()
  external int dwVideoStream;
}

/// {@category Struct}
class MCI_DGV_DELETE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
  external RECT rc;
  @Uint32()
  external int dwAudioStream;
  @Uint32()
  external int dwVideoStream;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_INFO_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrReturn;
  @Uint32()
  external int dwRetSize;
  @Uint32()
  external int dwItem;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_LIST_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrReturn;
  @Uint32()
  external int dwLength;
  @Uint32()
  external int dwNumber;
  @Uint32()
  external int dwItem;
  external Pointer<Utf16> lpstrAlgorithm;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_MONITOR_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwSource;
  @Uint32()
  external int dwMethod;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_OPEN_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
  @Uint32()
  external int dwStyle;
  @IntPtr()
  external int hWndParent;
}

/// {@category Struct}
class MCI_DGV_PASTE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTo;
  external RECT rc;
  @Uint32()
  external int dwAudioStream;
  @Uint32()
  external int dwVideoStream;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_QUALITY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwItem;
  external Pointer<Utf16> lpstrName;
  @Uint32()
  external int lpstrAlgorithm;
  @Uint32()
  external int dwHandle;
}

/// {@category Struct}
class MCI_DGV_RECORD_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
  external RECT rc;
  @Uint32()
  external int dwAudioStream;
  @Uint32()
  external int dwVideoStream;
}

/// {@category Struct}
class MCI_DGV_RECT_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external RECT rc;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_RESERVE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrPath;
  @Uint32()
  external int dwSize;
}

/// {@category Struct}
class MCI_DGV_RESTORE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrFileName;
  external RECT rc;
}

/// {@category Struct}
class MCI_DGV_SAVE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external Pointer<Utf16> lpstrFileName;
  external RECT rc;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_SETAUDIO_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwItem;
  @Uint32()
  external int dwValue;
  @Uint32()
  external int dwOver;
  external Pointer<Utf16> lpstrAlgorithm;
  external Pointer<Utf16> lpstrQuality;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_SETVIDEO_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwItem;
  @Uint32()
  external int dwValue;
  @Uint32()
  external int dwOver;
  external Pointer<Utf16> lpstrAlgorithm;
  external Pointer<Utf16> lpstrQuality;
  @Uint32()
  external int dwSourceNumber;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_SET_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTimeFormat;
  @Uint32()
  external int dwAudio;
  @Uint32()
  external int dwFileFormat;
  @Uint32()
  external int dwSpeed;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_SIGNAL_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwPosition;
  @Uint32()
  external int dwPeriod;
  @Uint32()
  external int dwUserParm;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_STATUS_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int dwReturn;
  @Uint32()
  external int dwItem;
  @Uint32()
  external int dwTrack;
  external Pointer<Utf16> lpstrDrive;
  @Uint32()
  external int dwReference;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_STEP_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrames;
}

/// {@category Struct}
class MCI_DGV_UPDATE_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  external RECT rc;
  @IntPtr()
  external int hDC;
}

/// {@category Struct}
@Packed(1)
class MCI_DGV_WINDOW_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int nCmdShow;
  external Pointer<Utf16> lpstrText;
}

/// {@category Struct}
@Packed(1)
class MCI_OPEN_DRIVER_PARMS extends Struct {
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrParams;
  @Uint32()
  external int wCustomCommandTable;
  @Uint32()
  external int wType;
}

/// {@category Struct}
@Packed(1)
class MEDIASPACEADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
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
@Packed(1)
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
@Packed(1)
class MIXERCONTROLDETAILS extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwControlID;
  @Uint32()
  external int cChannels;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int cbDetails;
  external Pointer paDetails;
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

  @Uint32()
  external int Bounds;
  @Uint32()
  external int Metrics;
}

/// {@category Struct}
@Packed(1)
class MIXERLINECONTROLS extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwLineID;
  @Uint32()
  external int Anonymous;
  @Uint32()
  external int cControls;
  @Uint32()
  external int cbmxctrl;
  external Pointer<MIXERCONTROL> pamxctrl;
}

/// {@category Struct}
@Packed(1)
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

  @Uint32()
  external int Target;
}

/// {@category Struct}
@Packed(1)
class MMCKINFO extends Struct {
  @Uint32()
  external int ckid;
  @Uint32()
  external int cksize;
  @Uint32()
  external int fccType;
  @Uint32()
  external int dwDataOffset;
  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
@Packed(1)
class MMIOINFO extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int fccIOProc;
  external Pointer<NativeFunction<LPMMIOPROC>> pIOProc;
  @Uint32()
  external int wErrorRet;
  @IntPtr()
  external int htask;
  @Int32()
  external int cchBuffer;
  external Pointer<Int8> pchBuffer;
  external Pointer<Int8> pchNext;
  external Pointer<Int8> pchEndRead;
  external Pointer<Int8> pchEndWrite;
  @Int32()
  external int lBufOffset;
  @Int32()
  external int lDiskOffset;
  @Array(3)
  external Array<Uint32> adwInfo;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
  @IntPtr()
  external int hmmio;
}

/// {@category Struct}
@Packed(1)
class MMTIME extends Struct {
  @Uint32()
  external int wType;
  @Uint32()
  external int u;
}

/// {@category Struct}
@Packed(1)
class MSAUDIO1WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
  @Uint16()
  external int wEncodeOptions;
}

/// {@category Struct}
@Packed(1)
class NMS_VBXADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wSamplesPerBlock;
}

/// {@category Struct}
class OLIADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class OLICELPWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class OLIGSMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class OLIOPRWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class OLISBCWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
@Packed(1)
class PCMWAVEFORMAT extends Struct {
  external WAVEFORMAT wf;
  @Uint16()
  external int wBitsPerSample;
}

/// {@category Struct}
@Packed(1)
class SIERRAADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
}

/// {@category Struct}
@Packed(1)
class SONARCWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wCompType;
}

/// {@category Struct}
@Packed(1)
class TIMECAPS extends Struct {
  @Uint32()
  external int wPeriodMin;
  @Uint32()
  external int wPeriodMax;
}

/// {@category Struct}
@Packed(1)
class TRUESPEECHWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wRevision;
  @Uint16()
  external int nSamplesPerBlock;
  @Array(28)
  external Array<Uint8> abReserved;
}

/// {@category Struct}
class VIDEOHDR extends Struct {
  external Pointer<Uint8> lpData;
  @Uint32()
  external int dwBufferLength;
  @Uint32()
  external int dwBytesUsed;
  @Uint32()
  external int dwTimeCaptured;
  @IntPtr()
  external int dwUser;
  @Uint32()
  external int dwFlags;
  @Array(4)
  external Array<IntPtr> dwReserved;
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
  @Uint32()
  external int Samples;
  @Uint32()
  external int dwChannelMask;
  external GUID SubFormat;
}

/// {@category Struct}
@Packed(1)
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
@Packed(1)
class WAVEOPENDESC extends Struct {
  @IntPtr()
  external int hWave;
  external Pointer<WAVEFORMAT> lpFormat;
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int dwInstance;
  @Uint32()
  external int uMappedDeviceID;
  @IntPtr()
  external int dnDevNode;
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
@Packed(1)
class WMAUDIO2WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint32()
  external int dwSamplesPerBlock;
  @Uint16()
  external int wEncodeOptions;
  @Uint32()
  external int dwSuperBlockAlign;
}

/// {@category Struct}
@Packed(1)
class WMAUDIO3WAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
  @Uint16()
  external int wValidBitsPerSample;
  @Uint32()
  external int dwChannelMask;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
  @Uint16()
  external int wEncodeOptions;
  @Uint16()
  external int wReserved3;
}

/// {@category Struct}
class YAMAHA_ADPCMWAVEFORMAT extends Struct {
  external WAVEFORMATEX wfx;
}

/// {@category Struct}
class channel_caps_tag extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwSrcRectXMod;
  @Uint32()
  external int dwSrcRectYMod;
  @Uint32()
  external int dwSrcRectWidthMod;
  @Uint32()
  external int dwSrcRectHeightMod;
  @Uint32()
  external int dwDstRectXMod;
  @Uint32()
  external int dwDstRectYMod;
  @Uint32()
  external int dwDstRectWidthMod;
  @Uint32()
  external int dwDstRectHeightMod;
}

/// {@category Struct}
@Packed(1)
class joycalibrate_tag extends Struct {
  @Uint16()
  external int wXbase;
  @Uint16()
  external int wXdelta;
  @Uint16()
  external int wYbase;
  @Uint16()
  external int wYdelta;
  @Uint16()
  external int wZbase;
  @Uint16()
  external int wZdelta;
}

/// {@category Struct}
@Packed(1)
class joypos_tag extends Struct {
  @Uint32()
  external int dwX;
  @Uint32()
  external int dwY;
  @Uint32()
  external int dwZ;
  @Uint32()
  external int dwR;
  @Uint32()
  external int dwU;
  @Uint32()
  external int dwV;
}

/// {@category Struct}
class joyrange_tag extends Struct {
  external joypos_tag jpMin;
  external joypos_tag jpMax;
  external joypos_tag jpCenter;
}

/// {@category Struct}
@Packed(1)
class joyreghwsettings_tag extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwNumButtons;
}

/// {@category Struct}
class joyreguservalues_tag extends Struct {
  @Uint32()
  external int dwTimeOut;
  external joyrange_tag jrvRanges;
  external joypos_tag jpDeadZone;
}

/// {@category Struct}
@Packed(1)
class midiopenstrmid_tag extends Struct {
  @Uint32()
  external int dwStreamID;
  @Uint32()
  external int uDeviceID;
}

/// {@category Struct}
class s_RIFFWAVE_inst extends Struct {
  @Uint8()
  external int bUnshiftedNote;
  @Uint8()
  external int chFineTune;
  @Uint8()
  external int chGain;
  @Uint8()
  external int bLowNote;
  @Uint8()
  external int bHighNote;
  @Uint8()
  external int bLowVelocity;
  @Uint8()
  external int bHighVelocity;
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

/// {@category Struct}
@Packed(1)
class tMIXEROPENDESC extends Struct {
  @IntPtr()
  external int hmx;
  external Pointer pReserved0;
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int dwInstance;
  @IntPtr()
  external int dnDevNode;
}
