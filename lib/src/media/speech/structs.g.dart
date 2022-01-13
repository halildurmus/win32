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
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// {@category Struct}
class SPAUDIOBUFFERINFO extends Struct {
  @Uint32()
  external int ulMsMinNotification;

  @Uint32()
  external int ulMsBufferSize;

  @Uint32()
  external int ulMsEventBias;
}

/// {@category Struct}
class SPAUDIOSTATUS extends Struct {
  @Int32()
  external int cbFreeBuffSpace;

  @Uint32()
  external int cbNonBlockingIO;

  @Int32()
  external int State;

  @Uint64()
  external int CurSeekPos;

  @Uint64()
  external int CurDevicePos;

  @Uint32()
  external int dwAudioLevel;

  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
class SPBINARYGRAMMAR extends Struct {
  @Uint32()
  external int ulTotalSerializedSize;
}

/// {@category Struct}
class SPDISPLAYPHRASE extends Struct {
  @Uint32()
  external int ulNumTokens;

  external Pointer<SPDISPLAYTOKEN> pTokens;
}

/// {@category Struct}
class SPDISPLAYTOKEN extends Struct {
  external Pointer<Utf16> pszLexical;

  external Pointer<Utf16> pszDisplay;

  @Uint8()
  external int bDisplayAttributes;
}

/// {@category Struct}
class SPEVENT extends Struct {
  @Int32()
  external int bitfield;

  @Uint32()
  external int ulStreamNum;

  @Uint64()
  external int ullAudioStreamOffset;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class SPEVENTEX extends Struct {
  @Int32()
  external int bitfield;

  @Uint32()
  external int ulStreamNum;

  @Uint64()
  external int ullAudioStreamOffset;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;

  @Uint64()
  external int ullAudioTimeOffset;
}

/// {@category Struct}
class SPEVENTSOURCEINFO extends Struct {
  @Uint64()
  external int ullEventInterest;

  @Uint64()
  external int ullQueuedInterest;

  @Uint32()
  external int ulCount;
}

/// {@category Struct}
class SPNORMALIZATIONLIST extends Struct {
  @Uint32()
  external int ulSize;

  external Pointer<Pointer<Uint16>> ppszzNormalizedList;
}

/// {@category Struct}
class SPPHRASE extends Struct {
  external SPPHRASE_50 AnonymousBase_sapi53_L5821_C34;

  external Pointer<Utf16> pSML;

  external Pointer<SPSEMANTICERRORINFO> pSemanticErrorInfo;
}

/// {@category Struct}
class SPPHRASEELEMENT extends Struct {
  @Uint32()
  external int ulAudioTimeOffset;

  @Uint32()
  external int ulAudioSizeTime;

  @Uint32()
  external int ulAudioStreamOffset;

  @Uint32()
  external int ulAudioSizeBytes;

  @Uint32()
  external int ulRetainedStreamOffset;

  @Uint32()
  external int ulRetainedSizeBytes;

  external Pointer<Utf16> pszDisplayText;

  external Pointer<Utf16> pszLexicalForm;

  external Pointer<Uint16> pszPronunciation;

  @Uint8()
  external int bDisplayAttributes;

  @Int8()
  external int RequiredConfidence;

  @Int8()
  external int ActualConfidence;

  @Uint8()
  external int Reserved;

  @Float()
  external double SREngineConfidence;
}

/// {@category Struct}
class SPPHRASEPROPERTY extends Struct {
  external Pointer<Utf16> pszName;

  external _SPPHRASEPROPERTY__Anonymous_e__Union Anonymous;

  external Pointer<Utf16> pszValue;

  external VARIANT vValue;

  @Uint32()
  external int ulFirstElement;

  @Uint32()
  external int ulCountOfElements;

  external Pointer<SPPHRASEPROPERTY> pNextSibling;

  external Pointer<SPPHRASEPROPERTY> pFirstChild;

  @Float()
  external double SREngineConfidence;

  @Int8()
  external int Confidence;
}

/// {@category Struct}
class _SPPHRASEPROPERTY__Anonymous_e__Union extends Union {
  @Uint32()
  external int ulId;

  external _SPPHRASEPROPERTY__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _SPPHRASEPROPERTY__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int bType;

  @Uint8()
  external int bReserved;

  @Uint16()
  external int usArrayIndex;
}

extension SPPHRASEPROPERTY__Anonymous_e__Union_Extension on SPPHRASEPROPERTY {
  int get bType => this.Anonymous.Anonymous.bType;
  set bType(int value) => this.Anonymous.Anonymous.bType = value;

  int get bReserved => this.Anonymous.Anonymous.bReserved;
  set bReserved(int value) => this.Anonymous.Anonymous.bReserved = value;

  int get usArrayIndex => this.Anonymous.Anonymous.usArrayIndex;
  set usArrayIndex(int value) => this.Anonymous.Anonymous.usArrayIndex = value;
}

extension SPPHRASEPROPERTY_Extension on SPPHRASEPROPERTY {
  int get ulId => this.Anonymous.ulId;
  set ulId(int value) => this.Anonymous.ulId = value;

  _SPPHRASEPROPERTY__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _SPPHRASEPROPERTY__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class SPPHRASEREPLACEMENT extends Struct {
  @Uint8()
  external int bDisplayAttributes;

  external Pointer<Utf16> pszReplacementText;

  @Uint32()
  external int ulFirstElement;

  @Uint32()
  external int ulCountOfElements;
}

/// {@category Struct}
class SPPHRASERULE extends Struct {
  external Pointer<Utf16> pszName;

  @Uint32()
  external int ulId;

  @Uint32()
  external int ulFirstElement;

  @Uint32()
  external int ulCountOfElements;

  external Pointer<SPPHRASERULE> pNextSibling;

  external Pointer<SPPHRASERULE> pFirstChild;

  @Float()
  external double SREngineConfidence;

  @Int8()
  external int Confidence;
}

/// {@category Struct}
class SPPHRASE_50 extends Struct {
  @Uint32()
  external int cbSize;

  @Uint16()
  external int LangID;

  @Uint16()
  external int wHomophoneGroupId;

  @Uint64()
  external int ullGrammarID;

  @Uint64()
  external int ftStartTime;

  @Uint64()
  external int ullAudioStreamPosition;

  @Uint32()
  external int ulAudioSizeBytes;

  @Uint32()
  external int ulRetainedSizeBytes;

  @Uint32()
  external int ulAudioSizeTime;

  external SPPHRASERULE Rule;

  external Pointer<SPPHRASEPROPERTY> pProperties;

  external Pointer<SPPHRASEELEMENT> pElements;

  @Uint32()
  external int cReplacements;

  external Pointer<SPPHRASEREPLACEMENT> pReplacements;

  external GUID SREngineID;

  @Uint32()
  external int ulSREnginePrivateDataSize;

  external Pointer<Uint8> pSREnginePrivateData;
}

/// {@category Struct}
class SPPROPERTYINFO extends Struct {
  external Pointer<Utf16> pszName;

  @Uint32()
  external int ulId;

  external Pointer<Utf16> pszValue;

  external VARIANT vValue;
}

/// {@category Struct}
class SPRECOCONTEXTSTATUS extends Struct {
  @Int32()
  external int eInterference;

  @Array(255)
  external Array<Uint16> _szRequestTypeOfUI;

  String get szRequestTypeOfUI {
    final charCodes = <int>[];
    for (var i = 0; i < 255; i++) {
      charCodes.add(_szRequestTypeOfUI[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szRequestTypeOfUI(String value) {
    final stringToStore = value.padRight(255, '\x00');
    for (var i = 0; i < 255; i++) {
      _szRequestTypeOfUI[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
class SPRECOGNIZERSTATUS extends Struct {
  external SPAUDIOSTATUS AudioStatus;

  @Uint64()
  external int ullRecognitionStreamPos;

  @Uint32()
  external int ulStreamNumber;

  @Uint32()
  external int ulNumActive;

  external GUID clsidEngine;

  @Uint32()
  external int cLangIDs;

  @Array(20)
  external Array<Uint16> aLangID;

  @Uint64()
  external int ullRecognitionStreamTime;
}

/// {@category Struct}
class SPRECORESULTTIMES extends Struct {
  external FILETIME ftStreamTime;

  @Uint64()
  external int ullLength;

  @Uint32()
  external int dwTickCount;

  @Uint64()
  external int ullStart;
}

/// {@category Struct}
class SPRULE extends Struct {
  external Pointer<Utf16> pszRuleName;

  @Uint32()
  external int ulRuleId;

  @Uint32()
  external int dwAttributes;
}

/// {@category Struct}
class SPSEMANTICERRORINFO extends Struct {
  @Uint32()
  external int ulLineNumber;

  external Pointer<Utf16> pszScriptLine;

  external Pointer<Utf16> pszSource;

  external Pointer<Utf16> pszDescription;

  @Int32()
  external int hrResultCode;
}

/// {@category Struct}
class SPSERIALIZEDEVENT extends Struct {
  @Int32()
  external int bitfield;

  @Uint32()
  external int ulStreamNum;

  @Uint64()
  external int ullAudioStreamOffset;

  @Uint32()
  external int SerializedwParam;

  @Int32()
  external int SerializedlParam;
}

/// {@category Struct}
class SPSERIALIZEDEVENT64 extends Struct {
  @Int32()
  external int bitfield;

  @Uint32()
  external int ulStreamNum;

  @Uint64()
  external int ullAudioStreamOffset;

  @Uint64()
  external int SerializedwParam;

  @Int64()
  external int SerializedlParam;
}

/// {@category Struct}
class SPSERIALIZEDPHRASE extends Struct {
  @Uint32()
  external int ulSerializedSize;
}

/// {@category Struct}
class SPSERIALIZEDRESULT extends Struct {
  @Uint32()
  external int ulSerializedSize;
}

/// {@category Struct}
class SPSHORTCUTPAIR extends Struct {
  external Pointer<SPSHORTCUTPAIR> pNextSHORTCUTPAIR;

  @Uint16()
  external int LangID;

  @Int32()
  external int shType;

  external Pointer<Utf16> pszDisplay;

  external Pointer<Utf16> pszSpoken;
}

/// {@category Struct}
class SPSHORTCUTPAIRLIST extends Struct {
  @Uint32()
  external int ulSize;

  external Pointer<Uint8> pvBuffer;

  external Pointer<SPSHORTCUTPAIR> pFirstShortcutPair;
}

/// {@category Struct}
class SPSTATEHANDLE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class SPTEXTSELECTIONINFO extends Struct {
  @Uint32()
  external int ulStartActiveOffset;

  @Uint32()
  external int cchActiveChars;

  @Uint32()
  external int ulStartSelection;

  @Uint32()
  external int cchSelection;
}

/// {@category Struct}
class SPVCONTEXT extends Struct {
  external Pointer<Utf16> pCategory;

  external Pointer<Utf16> pBefore;

  external Pointer<Utf16> pAfter;
}

/// {@category Struct}
class SPVOICESTATUS extends Struct {
  @Uint32()
  external int ulCurrentStream;

  @Uint32()
  external int ulLastStreamQueued;

  @Int32()
  external int hrLastResult;

  @Uint32()
  external int dwRunningState;

  @Uint32()
  external int ulInputWordPos;

  @Uint32()
  external int ulInputWordLen;

  @Uint32()
  external int ulInputSentPos;

  @Uint32()
  external int ulInputSentLen;

  @Int32()
  external int lBookmarkId;

  @Uint16()
  external int PhonemeId;

  @Int32()
  external int VisemeId;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
class SPVPITCH extends Struct {
  @Int32()
  external int MiddleAdj;

  @Int32()
  external int RangeAdj;
}

/// {@category Struct}
class SPVSTATE extends Struct {
  @Int32()
  external int eAction;

  @Uint16()
  external int LangID;

  @Uint16()
  external int wReserved;

  @Int32()
  external int EmphAdj;

  @Int32()
  external int RateAdj;

  @Uint32()
  external int Volume;

  external SPVPITCH PitchAdj;

  @Uint32()
  external int SilenceMSecs;

  external Pointer<Uint16> pPhoneIds;

  @Int32()
  external int ePartOfSpeech;

  external SPVCONTEXT Context;
}

/// {@category Struct}
class SPWORD extends Struct {
  external Pointer<SPWORD> pNextWord;

  @Uint16()
  external int LangID;

  @Uint16()
  external int wReserved;

  @Int32()
  external int eWordType;

  external Pointer<Utf16> pszWord;

  external Pointer<SPWORDPRONUNCIATION> pFirstWordPronunciation;
}

/// {@category Struct}
class SPWORDLIST extends Struct {
  @Uint32()
  external int ulSize;

  external Pointer<Uint8> pvBuffer;

  external Pointer<SPWORD> pFirstWord;
}

/// {@category Struct}
class SPWORDPRONUNCIATION extends Struct {
  external Pointer<SPWORDPRONUNCIATION> pNextWordPronunciation;

  @Int32()
  external int eLexiconType;

  @Uint16()
  external int LangID;

  @Uint16()
  external int wPronunciationFlags;

  @Int32()
  external int ePartOfSpeech;

  @Array(1)
  external Array<Uint16> szPronunciation;
}

/// {@category Struct}
class SPWORDPRONUNCIATIONLIST extends Struct {
  @Uint32()
  external int ulSize;

  external Pointer<Uint8> pvBuffer;

  external Pointer<SPWORDPRONUNCIATION> pFirstWordPronunciation;
}
