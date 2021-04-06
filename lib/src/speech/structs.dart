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

class SpNotifyTranslator extends Struct {}

class SpObjectTokenCategory extends Struct {}

class SpObjectToken extends Struct {}

class SpResourceManager extends Struct {}

class SpStreamFormatConverter extends Struct {}

class SpMMAudioEnum extends Struct {}

class SpMMAudioIn extends Struct {}

class SpMMAudioOut extends Struct {}

class SpStream extends Struct {}

class SpVoice extends Struct {}

class SpSharedRecoContext extends Struct {}

class SpInprocRecognizer extends Struct {}

class SpSharedRecognizer extends Struct {}

class SpLexicon extends Struct {}

class SpUnCompressedLexicon extends Struct {}

class SpCompressedLexicon extends Struct {}

class SpShortcut extends Struct {}

class SpPhoneConverter extends Struct {}

class SpPhoneticAlphabetConverter extends Struct {}

class SpNullPhoneConverter extends Struct {}

class SpTextSelectionInformation extends Struct {}

class SpPhraseInfoBuilder extends Struct {}

class SpAudioFormat extends Struct {}

class SpWaveFormatEx extends Struct {}

class SpInProcRecoContext extends Struct {}

class SpCustomStream extends Struct {}

class SpFileStream extends Struct {}

class SpMemoryStream extends Struct {}

class SPEVENT extends Struct {
  @Int32()
  external int _bitfield;
  @Uint32()
  external int ulStreamNum;
  @Uint64()
  external int ullAudioStreamOffset;
  @IntPtr()
  external int wParam;
  @IntPtr()
  external int lParam;
}

class SPSERIALIZEDEVENT extends Struct {
  @Int32()
  external int _bitfield;
  @Uint32()
  external int ulStreamNum;
  @Uint64()
  external int ullAudioStreamOffset;
  @Uint32()
  external int SerializedwParam;
  @Int32()
  external int SerializedlParam;
}

class SPSERIALIZEDEVENT64 extends Struct {
  @Int32()
  external int _bitfield;
  @Uint32()
  external int ulStreamNum;
  @Uint64()
  external int ullAudioStreamOffset;
  @Uint64()
  external int SerializedwParam;
  @Int64()
  external int SerializedlParam;
}

class SPEVENTEX extends Struct {
  @Int32()
  external int _bitfield;
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

class SPEVENTSOURCEINFO extends Struct {
  @Uint64()
  external int ullEventInterest;
  @Uint64()
  external int ullQueuedInterest;
  @Uint32()
  external int ulCount;
}

class SPAUDIOSTATUS extends Struct {
  @Int32()
  external int cbFreeBuffSpace;
  @Uint32()
  external int cbNonBlockingIO;
  @Uint32()
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

class SPAUDIOBUFFERINFO extends Struct {
  @Uint32()
  external int ulMsMinNotification;
  @Uint32()
  external int ulMsBufferSize;
  @Uint32()
  external int ulMsEventBias;
}

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

class SPPHRASEPROPERTY extends Struct {
  external Pointer<Utf16> pszName;
  @Uint32()
  external int Anonymous;
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

class SPPHRASEREPLACEMENT extends Struct {
  @Uint8()
  external int bDisplayAttributes;
  external Pointer<Utf16> pszReplacementText;
  @Uint32()
  external int ulFirstElement;
  @Uint32()
  external int ulCountOfElements;
}

class SPSEMANTICERRORINFO extends Struct {
  @Uint32()
  external int ulLineNumber;
  external Pointer<Utf16> pszScriptLine;
  external Pointer<Utf16> pszSource;
  external Pointer<Utf16> pszDescription;
  @Int32()
  external int hrResultCode;
}

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

class SPPHRASE extends Struct {
  external SPPHRASE_50 __AnonymousBase_sapi53_L5517_C34;
  external Pointer<Utf16> pSML;
  external Pointer<SPSEMANTICERRORINFO> pSemanticErrorInfo;
}

class SPSERIALIZEDPHRASE extends Struct {
  @Uint32()
  external int ulSerializedSize;
}

class SPRULE extends Struct {
  external Pointer<Utf16> pszRuleName;
  @Uint32()
  external int ulRuleId;
  @Uint32()
  external int dwAttributes;
}

class SPBINARYGRAMMAR extends Struct {
  @Uint32()
  external int ulTotalSerializedSize;
}

class SPSTATEHANDLE__ extends Struct {
  @Int32()
  external int unused;
}

class SPWORDPRONUNCIATION extends Struct {
  external Pointer<SPWORDPRONUNCIATION> pNextWordPronunciation;
  @Uint32()
  external int eLexiconType;
  @Uint16()
  external int LangID;
  @Uint16()
  external int wPronunciationFlags;
  @Uint32()
  external int ePartOfSpeech;
  @Array(1)
  external Array<Uint16> szPronunciation;
}

class SPWORDPRONUNCIATIONLIST extends Struct {
  @Uint32()
  external int ulSize;
  external Pointer<Uint8> pvBuffer;
  external Pointer<SPWORDPRONUNCIATION> pFirstWordPronunciation;
}

class SPWORD extends Struct {
  external Pointer<SPWORD> pNextWord;
  @Uint16()
  external int LangID;
  @Uint16()
  external int wReserved;
  @Uint32()
  external int eWordType;
  external Pointer<Utf16> pszWord;
  external Pointer<SPWORDPRONUNCIATION> pFirstWordPronunciation;
}

class SPWORDLIST extends Struct {
  @Uint32()
  external int ulSize;
  external Pointer<Uint8> pvBuffer;
  external Pointer<SPWORD> pFirstWord;
}

class SPSHORTCUTPAIR extends Struct {
  external Pointer<SPSHORTCUTPAIR> pNextSHORTCUTPAIR;
  @Uint16()
  external int LangID;
  @Uint32()
  external int shType;
  external Pointer<Utf16> pszDisplay;
  external Pointer<Utf16> pszSpoken;
}

class SPSHORTCUTPAIRLIST extends Struct {
  @Uint32()
  external int ulSize;
  external Pointer<Uint8> pvBuffer;
  external Pointer<SPSHORTCUTPAIR> pFirstShortcutPair;
}

class SPVPITCH extends Struct {
  @Int32()
  external int MiddleAdj;
  @Int32()
  external int RangeAdj;
}

class SPVCONTEXT extends Struct {
  external Pointer<Utf16> pCategory;
  external Pointer<Utf16> pBefore;
  external Pointer<Utf16> pAfter;
}

class SPVSTATE extends Struct {
  @Uint32()
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
  @Uint32()
  external int ePartOfSpeech;
  external SPVCONTEXT Context;
}

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
  @Uint32()
  external int VisemeId;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

class SPRECORESULTTIMES extends Struct {
  external FILETIME ftStreamTime;
  @Uint64()
  external int ullLength;
  @Uint32()
  external int dwTickCount;
  @Uint64()
  external int ullStart;
}

class SPSERIALIZEDRESULT extends Struct {
  @Uint32()
  external int ulSerializedSize;
}

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

class SPPROPERTYINFO extends Struct {
  external Pointer<Utf16> pszName;
  @Uint32()
  external int ulId;
  external Pointer<Utf16> pszValue;
  external VARIANT vValue;
}

class SPRECOCONTEXTSTATUS extends Struct {
  @Uint32()
  external int eInterference;
  @Array(128)
  external Array<Uint16> szRequestTypeOfUI;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwReserved2;
}

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

class SPNORMALIZATIONLIST extends Struct {
  @Uint32()
  external int ulSize;
  external Pointer<Pointer<Uint16>> ppszzNormalizedList;
}

class SPDISPLAYTOKEN extends Struct {
  external Pointer<Utf16> pszLexical;
  external Pointer<Utf16> pszDisplay;
  @Uint8()
  external int bDisplayAttributes;
}

class SPDISPLAYPHRASE extends Struct {
  @Uint32()
  external int ulNumTokens;
  external Pointer<SPDISPLAYTOKEN> pTokens;
}
