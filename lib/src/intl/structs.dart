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

class FONTSIGNATURE extends Struct {
  external __uint__ fsUsb;
  external __uint__ fsCsb;
}

class CHARSETINFO extends Struct {
  @Uint32() external int ciCharset;
  @Uint32() external int ciACP;
  external FONTSIGNATURE fs;
}

class LOCALESIGNATURE extends Struct {
  external __uint__ lsUsb;
  external __uint__ lsCsbDefault;
  external __uint__ lsCsbSupported;
}

class HIMC extends Struct {
  @IntPtr() external int Value;
}

class HIMCC extends Struct {
  @IntPtr() external int Value;
}

class HSAVEDUILANGUAGES extends Struct {
  @IntPtr() external int Value;
}

class CPINFO extends Struct {
  @Uint32() external int MaxCharSize;
  external __ubyte__ DefaultChar;
  external __ubyte__ LeadByte;
}

class CPINFOEXA extends Struct {
  @Uint32() external int MaxCharSize;
  external __ubyte__ DefaultChar;
  external __ubyte__ LeadByte;
  @Uint16() external int UnicodeDefaultChar;
  @Uint32() external int CodePage;
  external __byte__ CodePageName;
}

class CPINFOEXW extends Struct {
  @Uint32() external int MaxCharSize;
  external __ubyte__ DefaultChar;
  external __ubyte__ LeadByte;
  @Uint16() external int UnicodeDefaultChar;
  @Uint32() external int CodePage;
  external __ushort__ CodePageName;
}

class NUMBERFMTA extends Struct {
  @Uint32() external int NumDigits;
  @Uint32() external int LeadingZero;
  @Uint32() external int Grouping;
  external Pointer<Utf8> lpDecimalSep;
  external Pointer<Utf8> lpThousandSep;
  @Uint32() external int NegativeOrder;
}

class NUMBERFMTW extends Struct {
  @Uint32() external int NumDigits;
  @Uint32() external int LeadingZero;
  @Uint32() external int Grouping;
  external Pointer<Utf16> lpDecimalSep;
  external Pointer<Utf16> lpThousandSep;
  @Uint32() external int NegativeOrder;
}

class CURRENCYFMTA extends Struct {
  @Uint32() external int NumDigits;
  @Uint32() external int LeadingZero;
  @Uint32() external int Grouping;
  external Pointer<Utf8> lpDecimalSep;
  external Pointer<Utf8> lpThousandSep;
  @Uint32() external int NegativeOrder;
  @Uint32() external int PositiveOrder;
  external Pointer<Utf8> lpCurrencySymbol;
}

class CURRENCYFMTW extends Struct {
  @Uint32() external int NumDigits;
  @Uint32() external int LeadingZero;
  @Uint32() external int Grouping;
  external Pointer<Utf16> lpDecimalSep;
  external Pointer<Utf16> lpThousandSep;
  @Uint32() external int NegativeOrder;
  @Uint32() external int PositiveOrder;
  external Pointer<Utf16> lpCurrencySymbol;
}

class NLSVERSIONINFO extends Struct {
  @Uint32() external int dwNLSVersionInfoSize;
  @Uint32() external int dwNLSVersion;
  @Uint32() external int dwDefinedVersion;
  @Uint32() external int dwEffectiveId;
  external GUID guidCustomVersion;
}

class NLSVERSIONINFOEX extends Struct {
  @Uint32() external int dwNLSVersionInfoSize;
  @Uint32() external int dwNLSVersion;
  @Uint32() external int dwDefinedVersion;
  @Uint32() external int dwEffectiveId;
  external GUID guidCustomVersion;
}

class FILEMUIINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVersion;
  @Uint32() external int dwFileType;
  external __ubyte__ pChecksum;
  external __ubyte__ pServiceChecksum;
  @Uint32() external int dwLanguageNameOffset;
  @Uint32() external int dwTypeIDMainSize;
  @Uint32() external int dwTypeIDMainOffset;
  @Uint32() external int dwTypeNameMainOffset;
  @Uint32() external int dwTypeIDMUISize;
  @Uint32() external int dwTypeIDMUIOffset;
  @Uint32() external int dwTypeNameMUIOffset;
  external __ubyte__ abBuffer;
}

class COMPOSITIONFORM extends Struct {
  @Uint32() external int dwStyle;
  external POINT ptCurrentPos;
  external RECT rcArea;
}

class CANDIDATEFORM extends Struct {
  @Uint32() external int dwIndex;
  @Uint32() external int dwStyle;
  external POINT ptCurrentPos;
  external RECT rcArea;
}

class CANDIDATELIST extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwStyle;
  @Uint32() external int dwCount;
  @Uint32() external int dwSelection;
  @Uint32() external int dwPageStart;
  @Uint32() external int dwPageSize;
  external __uint__ dwOffset;
}

class REGISTERWORDA extends Struct {
  external Pointer<Utf8> lpReading;
  external Pointer<Utf8> lpWord;
}

class REGISTERWORDW extends Struct {
  external Pointer<Utf16> lpReading;
  external Pointer<Utf16> lpWord;
}

class RECONVERTSTRING extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVersion;
  @Uint32() external int dwStrLen;
  @Uint32() external int dwStrOffset;
  @Uint32() external int dwCompStrLen;
  @Uint32() external int dwCompStrOffset;
  @Uint32() external int dwTargetStrLen;
  @Uint32() external int dwTargetStrOffset;
}

class STYLEBUFA extends Struct {
  @Uint32() external int dwStyle;
  external __byte__ szDescription;
}

class STYLEBUFW extends Struct {
  @Uint32() external int dwStyle;
  external __ushort__ szDescription;
}

class IMEMENUITEMINFOA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fType;
  @Uint32() external int fState;
  @Uint32() external int wID;
  @IntPtr() external int hbmpChecked;
  @IntPtr() external int hbmpUnchecked;
  @Uint32() external int dwItemData;
  external __byte__ szString;
  @IntPtr() external int hbmpItem;
}

class IMEMENUITEMINFOW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fType;
  @Uint32() external int fState;
  @Uint32() external int wID;
  @IntPtr() external int hbmpChecked;
  @IntPtr() external int hbmpUnchecked;
  @Uint32() external int dwItemData;
  external __ushort__ szString;
  @IntPtr() external int hbmpItem;
}

class IMECHARPOSITION extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCharPos;
  external POINT pt;
  @Uint32() external int cLineHeight;
  external RECT rcDocument;
}

class MAPPING_SERVICE_INFO extends Struct {
  @IntPtr() external int Size;
  external Pointer<Utf16> pszCopyright;
  @Uint16() external int wMajorVersion;
  @Uint16() external int wMinorVersion;
  @Uint16() external int wBuildVersion;
  @Uint16() external int wStepVersion;
  @Uint32() external int dwInputContentTypesCount;
  external Pointer<Pointer<Utf16>> prgInputContentTypes;
  @Uint32() external int dwOutputContentTypesCount;
  external Pointer<Pointer<Utf16>> prgOutputContentTypes;
  @Uint32() external int dwInputLanguagesCount;
  external Pointer<Pointer<Utf16>> prgInputLanguages;
  @Uint32() external int dwOutputLanguagesCount;
  external Pointer<Pointer<Utf16>> prgOutputLanguages;
  @Uint32() external int dwInputScriptsCount;
  external Pointer<Pointer<Utf16>> prgInputScripts;
  @Uint32() external int dwOutputScriptsCount;
  external Pointer<Pointer<Utf16>> prgOutputScripts;
  external GUID guid;
  external Pointer<Utf16> pszCategory;
  external Pointer<Utf16> pszDescription;
  @Uint32() external int dwPrivateDataSize;
  external Pointer pPrivateData;
  external Pointer pContext;
  @Uint32() external int _bitfield;
}

class MAPPING_ENUM_OPTIONS extends Struct {
  @IntPtr() external int Size;
  external Pointer<Utf16> pszCategory;
  external Pointer<Utf16> pszInputLanguage;
  external Pointer<Utf16> pszOutputLanguage;
  external Pointer<Utf16> pszInputScript;
  external Pointer<Utf16> pszOutputScript;
  external Pointer<Utf16> pszInputContentType;
  external Pointer<Utf16> pszOutputContentType;
  external Pointer<GUID> pGuid;
  @Uint32() external int _bitfield;
}

class MAPPING_OPTIONS extends Struct {
  @IntPtr() external int Size;
  external Pointer<Utf16> pszInputLanguage;
  external Pointer<Utf16> pszOutputLanguage;
  external Pointer<Utf16> pszInputScript;
  external Pointer<Utf16> pszOutputScript;
  external Pointer<Utf16> pszInputContentType;
  external Pointer<Utf16> pszOutputContentType;
  external Pointer<Utf16> pszUILanguage;
  external PFN_MAPPINGCALLBACKPROC pfnRecognizeCallback;
  external Pointer pRecognizeCallerData;
  @Uint32() external int dwRecognizeCallerDataSize;
  external PFN_MAPPINGCALLBACKPROC pfnActionCallback;
  external Pointer pActionCallerData;
  @Uint32() external int dwActionCallerDataSize;
  @Uint32() external int dwServiceFlag;
  @Uint32() external int _bitfield;
}

class MAPPING_DATA_RANGE extends Struct {
  @Uint32() external int dwStartIndex;
  @Uint32() external int dwEndIndex;
  external Pointer<Utf16> pszDescription;
  @Uint32() external int dwDescriptionLength;
  external Pointer pData;
  @Uint32() external int dwDataSize;
  external Pointer<Utf16> pszContentType;
  external Pointer<Pointer<Utf16>> prgActionIds;
  @Uint32() external int dwActionsCount;
  external Pointer<Pointer<Utf16>> prgActionDisplayNames;
}

class MAPPING_PROPERTY_BAG extends Struct {
  @IntPtr() external int Size;
  external Pointer<MAPPING_DATA_RANGE> prgResultRanges;
  @Uint32() external int dwRangesCount;
  external Pointer pServiceData;
  @Uint32() external int dwServiceDataSize;
  external Pointer pCallerData;
  @Uint32() external int dwCallerDataSize;
  external Pointer pContext;
}

class SpellCheckerFactory extends Struct {
}

class IMEDLG extends Struct {
  @Int32() external int cbIMEDLG;
  @IntPtr() external int hwnd;
  external Pointer<Utf16> lpwstrWord;
  @Int32() external int nTabId;
}

class IMESHF extends Struct {
  @Uint16() external int cbShf;
  @Uint16() external int verDic;
  external __byte__ szTitle;
  external __byte__ szDescription;
  external __byte__ szCopyright;
}

class POSTBL extends Struct {
  @Uint16() external int nPos;
  external Pointer<Uint8> szName;
}

class IMEDP extends Struct {
  external IMEWRD wrdModifier;
  external IMEWRD wrdModifiee;
  @Uint32() external int relID;
}

class IMEKMSINIT extends Struct {
  @Int32() external int cbSize;
  @IntPtr() external int hWnd;
}

class IMEKMS extends Struct {
  @Int32() external int cbSize;
  external HIMC hIMC;
  @Uint32() external int cKeyList;
  external Pointer<IMEKMSKEY> pKeyList;
}

class IMEKMSNTFY extends Struct {
  @Int32() external int cbSize;
  external HIMC hIMC;
  @Int32() external int fSelect;
}

class IMEKMSKMP extends Struct {
  @Int32() external int cbSize;
  external HIMC hIMC;
  @Uint16() external int idLang;
  @Uint16() external int wVKStart;
  @Uint16() external int wVKEnd;
  @Int32() external int cKeyList;
  external Pointer<IMEKMSKEY> pKeyList;
}

class IMEKMSINVK extends Struct {
  @Int32() external int cbSize;
  external HIMC hIMC;
  @Uint32() external int dwControl;
}

class IMEKMSFUNCDESC extends Struct {
  @Int32() external int cbSize;
  @Uint16() external int idLang;
  @Uint32() external int dwControl;
  external __ushort__ pwszDescription;
}

class COMPOSITIONSTRING extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCompReadAttrLen;
  @Uint32() external int dwCompReadAttrOffset;
  @Uint32() external int dwCompReadClauseLen;
  @Uint32() external int dwCompReadClauseOffset;
  @Uint32() external int dwCompReadStrLen;
  @Uint32() external int dwCompReadStrOffset;
  @Uint32() external int dwCompAttrLen;
  @Uint32() external int dwCompAttrOffset;
  @Uint32() external int dwCompClauseLen;
  @Uint32() external int dwCompClauseOffset;
  @Uint32() external int dwCompStrLen;
  @Uint32() external int dwCompStrOffset;
  @Uint32() external int dwCursorPos;
  @Uint32() external int dwDeltaStart;
  @Uint32() external int dwResultReadClauseLen;
  @Uint32() external int dwResultReadClauseOffset;
  @Uint32() external int dwResultReadStrLen;
  @Uint32() external int dwResultReadStrOffset;
  @Uint32() external int dwResultClauseLen;
  @Uint32() external int dwResultClauseOffset;
  @Uint32() external int dwResultStrLen;
  @Uint32() external int dwResultStrOffset;
  @Uint32() external int dwPrivateSize;
  @Uint32() external int dwPrivateOffset;
}

class GUIDELINE extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwLevel;
  @Uint32() external int dwIndex;
  @Uint32() external int dwStrLen;
  @Uint32() external int dwStrOffset;
  @Uint32() external int dwPrivateSize;
  @Uint32() external int dwPrivateOffset;
}

class TRANSMSG extends Struct {
  @Uint32() external int message;
  @IntPtr() external int wParam;
  @IntPtr() external int lParam;
}

class TRANSMSGLIST extends Struct {
  @Uint32() external int uMsgCount;
  external TRANSMSG TransMsg;
}

class CANDIDATEINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwCount;
  external __uint__ dwOffset;
  @Uint32() external int dwPrivateSize;
  @Uint32() external int dwPrivateOffset;
}

class IMEINFO extends Struct {
  @Uint32() external int dwPrivateDataSize;
  @Uint32() external int fdwProperty;
  @Uint32() external int fdwConversionCaps;
  @Uint32() external int fdwSentenceCaps;
  @Uint32() external int fdwUICaps;
  @Uint32() external int fdwSCSCaps;
  @Uint32() external int fdwSelectCaps;
}

class SOFTKBDDATA extends Struct {
  @Uint32() external int uCount;
  external __ushort__ wCode;
}

class APPLETIDLIST extends Struct {
  @Int32() external int count;
  external Pointer<GUID> pIIDList;
}

class IMESTRINGCANDIDATE extends Struct {
  @Uint32() external int uCount;
  external ____ lpwstr;
}

class IMEITEM extends Struct {
  @Int32() external int cbSize;
  @Int32() external int iType;
  external Pointer lpItemData;
}

class IMEITEMCANDIDATE extends Struct {
  @Uint32() external int uCount;
  external IMEITEM imeItem;
}

class tabIMESTRINGINFO extends Struct {
  @Uint32() external int dwFarEastId;
  external Pointer<Utf16> lpwstr;
}

class tabIMEFAREASTINFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwType;
  external __uint__ dwData;
}

class IMESTRINGCANDIDATEINFO extends Struct {
  @Uint32() external int dwFarEastId;
  external Pointer<tabIMEFAREASTINFO> lpFarEastInfo;
  @Uint32() external int fInfoMask;
  @Int32() external int iSelIndex;
  @Uint32() external int uCount;
  external ____ lpwstr;
}

class IMECOMPOSITIONSTRINGINFO extends Struct {
  @Int32() external int iCompStrLen;
  @Int32() external int iCaretPos;
  @Int32() external int iEditStart;
  @Int32() external int iEditLen;
  @Int32() external int iTargetStart;
  @Int32() external int iTargetLen;
}

class IMECHARINFO extends Struct {
  @Uint16() external int wch;
  @Uint32() external int dwCharInfo;
}

class IMEAPPLETCFG extends Struct {
  @Uint32() external int dwConfig;
  external __ushort__ wchTitle;
  external __ushort__ wchTitleFontFace;
  @Uint32() external int dwCharSet;
  @Int32() external int iCategory;
  @IntPtr() external int hIcon;
  @Uint16() external int langID;
  @Uint16() external int dummy;
  @IntPtr() external int lReserved1;
}

class IMEAPPLETUI extends Struct {
  @IntPtr() external int hwnd;
  @Uint32() external int dwStyle;
  @Int32() external int width;
  @Int32() external int height;
  @Int32() external int minWidth;
  @Int32() external int minHeight;
  @Int32() external int maxWidth;
  @Int32() external int maxHeight;
  @IntPtr() external int lReserved1;
  @IntPtr() external int lReserved2;
}

class APPLYCANDEXPARAM extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> lpwstrDisplay;
  external Pointer<Utf16> lpwstrReading;
  @Uint32() external int dwReserved;
}

class SCRIPT_CONTROL extends Struct {
  @Uint32() external int _bitfield;
}

class SCRIPT_STATE extends Struct {
  @Uint16() external int _bitfield;
}

class SCRIPT_ANALYSIS extends Struct {
  @Uint16() external int _bitfield;
  external SCRIPT_STATE s;
}

class SCRIPT_ITEM extends Struct {
  @Int32() external int iCharPos;
  external SCRIPT_ANALYSIS a;
}

class SCRIPT_VISATTR extends Struct {
  @Uint16() external int _bitfield;
}

class GOFFSET extends Struct {
  @Int32() external int du;
  @Int32() external int dv;
}

class SCRIPT_LOGATTR extends Struct {
  @Uint8() external int _bitfield;
}

class SCRIPT_PROPERTIES extends Struct {
  @Uint32() external int _bitfield1;
  @Uint32() external int _bitfield2;
}

class SCRIPT_FONTPROPERTIES extends Struct {
  @Int32() external int cBytes;
  @Uint16() external int wgBlank;
  @Uint16() external int wgDefault;
  @Uint16() external int wgInvalid;
  @Uint16() external int wgKashida;
  @Int32() external int iKashidaWidth;
}

class SCRIPT_TABDEF extends Struct {
  @Int32() external int cTabStops;
  @Int32() external int iScale;
  external Pointer<Int32> pTabStops;
  @Int32() external int iTabOrigin;
}

class SCRIPT_DIGITSUBSTITUTE extends Struct {
  @Uint32() external int _bitfield1;
  @Uint32() external int _bitfield2;
  @Uint32() external int dwReserved;
}

class opentype_feature_record extends Struct {
  @Uint32() external int tagFeature;
  @Int32() external int lParameter;
}

class textrange_properties extends Struct {
  external Pointer<opentype_feature_record> potfRecords;
  @Int32() external int cotfRecords;
}

class script_charprop extends Struct {
  @Uint16() external int _bitfield;
}

class script_glyphprop extends Struct {
  external SCRIPT_VISATTR sva;
  @Uint16() external int reserved;
}

class UReplaceableCallbacks extends Struct {
  @IntPtr() external int length;
  @IntPtr() external int charAt;
  @IntPtr() external int char32At;
  @IntPtr() external int replace;
  @IntPtr() external int extract;
  @IntPtr() external int copy;
}

class UFieldPosition extends Struct {
  @Int32() external int field;
  @Int32() external int beginIndex;
  @Int32() external int endIndex;
}

class UCharIterator extends Struct {
  external Pointer context;
  @Int32() external int length;
  @Int32() external int start;
  @Int32() external int index;
  @Int32() external int limit;
  @Int32() external int reservedField;
  external UCharIteratorGetIndex getIndex;
  external UCharIteratorMove move;
  external UCharIteratorHasNext hasNext;
  external UCharIteratorHasPrevious hasPrevious;
  external UCharIteratorCurrent current;
  external UCharIteratorNext next;
  external UCharIteratorPrevious previous;
  external UCharIteratorReserved reservedFn;
  external UCharIteratorGetState getState;
  external UCharIteratorSetState setState;
}

class UEnumeration extends Struct {
}

class UResourceBundle extends Struct {
}

class ULocaleDisplayNames extends Struct {
}

class UConverter extends Struct {
}

class UConverterFromUnicodeArgs extends Struct {
  @Uint16() external int size;
  @Int8() external int flush;
  external Pointer<UConverter> converter;
  external Pointer<Uint16> source;
  external Pointer<Uint16> sourceLimit;
  external Pointer<Int8> target;
  external Pointer<Int8> targetLimit;
  external Pointer<Int32> offsets;
}

class UConverterToUnicodeArgs extends Struct {
  @Uint16() external int size;
  @Int8() external int flush;
  external Pointer<UConverter> converter;
  external Pointer<Int8> source;
  external Pointer<Int8> sourceLimit;
  external Pointer<Uint16> target;
  external Pointer<Uint16> targetLimit;
  external Pointer<Int32> offsets;
}

class USet extends Struct {
}

class UBiDi extends Struct {
}

class UBiDiTransform extends Struct {
}

class UTextFuncs extends Struct {
  @Int32() external int tableSize;
  @Int32() external int reserved1;
  @Int32() external int reserved2;
  @Int32() external int reserved3;
  external UTextClone clone;
  external UTextNativeLength nativeLength;
  external UTextAccess access;
  external UTextExtract extract;
  external UTextReplace replace;
  external UTextCopy copy;
  external UTextMapOffsetToNative mapOffsetToNative;
  external UTextMapNativeIndexToUTF16 mapNativeIndexToUTF16;
  external UTextClose close;
  external UTextClose spare1;
  external UTextClose spare2;
  external UTextClose spare3;
}

class UText extends Struct {
  @Uint32() external int magic;
  @Int32() external int flags;
  @Int32() external int providerProperties;
  @Int32() external int sizeOfStruct;
  @Int64() external int chunkNativeLimit;
  @Int32() external int extraSize;
  @Int32() external int nativeIndexingLimit;
  @Int64() external int chunkNativeStart;
  @Int32() external int chunkOffset;
  @Int32() external int chunkLength;
  external Pointer<Uint16> chunkContents;
  external Pointer<UTextFuncs> pFuncs;
  external Pointer pExtra;
  external Pointer context;
  external Pointer p;
  external Pointer q;
  external Pointer r;
  external Pointer privP;
  @Int64() external int a;
  @Int32() external int b;
  @Int32() external int c;
  @Int64() external int privA;
  @Int32() external int privB;
  @Int32() external int privC;
}

class USerializedSet extends Struct {
  external Pointer<Uint16> array;
  @Int32() external int bmpLength;
  @Int32() external int length;
  external __ushort__ staticArray;
}

class UNormalizer2 extends Struct {
}

class UConverterSelector extends Struct {
}

class UBreakIterator extends Struct {
}

class UCaseMap extends Struct {
}

class UParseError extends Struct {
  @Int32() external int line;
  @Int32() external int offset;
  external __ushort__ preContext;
  external __ushort__ postContext;
}

class UStringPrepProfile extends Struct {
}

class UIDNA extends Struct {
}

class UIDNAInfo extends Struct {
  @Int16() external int size;
  @Int8() external int isTransitionalDifferent;
  @Int8() external int reservedB3;
  @Uint32() external int errors;
  @Int32() external int reservedI2;
  @Int32() external int reservedI3;
}

class UCollator extends Struct {
}

class UCollationElements extends Struct {
}

class UCharsetDetector extends Struct {
}

class UCharsetMatch extends Struct {
}

class UFieldPositionIterator extends Struct {
}

class UDateIntervalFormat extends Struct {
}

class UGenderInfo extends Struct {
}

class UListFormatter extends Struct {
}

class ULocaleData extends Struct {
}

class UDateFormatSymbols extends Struct {
}

class UNumberFormatter extends Struct {
}

class UFormattedNumber extends Struct {
}

class UNumberingSystem extends Struct {
}

class UPluralRules extends Struct {
}

class URegularExpression extends Struct {
}

class URegion extends Struct {
}

class URelativeDateTimeFormatter extends Struct {
}

class UStringSearch extends Struct {
}

class USpoofChecker extends Struct {
}

class USpoofCheckResult extends Struct {
}

class UTransPosition extends Struct {
  @Int32() external int contextStart;
  @Int32() external int contextLimit;
  @Int32() external int start;
  @Int32() external int limit;
}

class CActiveIMM extends Struct {
}

