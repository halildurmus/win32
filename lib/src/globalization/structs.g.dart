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
import '../combase.dart';
import '../guid.dart';
import '../globalization/structs.g.dart';
import '../foundation/structs.g.dart';
import '../graphics/gdi/structs.g.dart';
import '../globalization/callbacks.g.dart';

/// {@category Struct}
class CHARSETINFO extends Struct {
  @Uint32()
  external int ciCharset;

  @Uint32()
  external int ciACP;

  external FONTSIGNATURE fs;
}

/// {@category Struct}
class CPINFO extends Struct {
  @Uint32()
  external int MaxCharSize;

  @Array(2)
  external Array<Uint8> DefaultChar;

  @Array(12)
  external Array<Uint8> LeadByte;
}

/// {@category Struct}
class CPINFOEX extends Struct {
  @Uint32()
  external int MaxCharSize;

  @Array(2)
  external Array<Uint8> DefaultChar;

  @Array(12)
  external Array<Uint8> LeadByte;

  @Uint16()
  external int UnicodeDefaultChar;

  @Uint32()
  external int CodePage;

  @Array(260)
  external Array<Uint16> _CodePageName;

  String get CodePageName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_CodePageName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CodePageName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _CodePageName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CURRENCYFMT extends Struct {
  @Uint32()
  external int NumDigits;

  @Uint32()
  external int LeadingZero;

  @Uint32()
  external int Grouping;

  external Pointer<Utf16> lpDecimalSep;

  external Pointer<Utf16> lpThousandSep;

  @Uint32()
  external int NegativeOrder;

  @Uint32()
  external int PositiveOrder;

  external Pointer<Utf16> lpCurrencySymbol;
}

/// {@category Struct}
class DetectEncodingInfo extends Struct {
  @Uint32()
  external int nLangID;

  @Uint32()
  external int nCodePage;

  @Int32()
  external int nDocPercent;

  @Int32()
  external int nConfidence;
}

/// {@category Struct}
class ENUMTEXTMETRIC extends Struct {
  external NEWTEXTMETRICEX etmNewTextMetricEx;

  external AXESLIST etmAxesList;
}

/// {@category Struct}
class FILEMUIINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwFileType;

  @Array(16)
  external Array<Uint8> pChecksum;

  @Array(16)
  external Array<Uint8> pServiceChecksum;

  @Uint32()
  external int dwLanguageNameOffset;

  @Uint32()
  external int dwTypeIDMainSize;

  @Uint32()
  external int dwTypeIDMainOffset;

  @Uint32()
  external int dwTypeNameMainOffset;

  @Uint32()
  external int dwTypeIDMUISize;

  @Uint32()
  external int dwTypeIDMUIOffset;

  @Uint32()
  external int dwTypeNameMUIOffset;

  @Array(8)
  external Array<Uint8> abBuffer;
}

/// {@category Struct}
class FONTSIGNATURE extends Struct {
  @Array(4)
  external Array<Uint32> fsUsb;

  @Array(2)
  external Array<Uint32> fsCsb;
}

/// {@category Struct}
class GOFFSET extends Struct {
  @Int32()
  external int du;

  @Int32()
  external int dv;
}

/// {@category Struct}
class LOCALESIGNATURE extends Struct {
  @Array(4)
  external Array<Uint32> lsUsb;

  @Array(2)
  external Array<Uint32> lsCsbDefault;

  @Array(2)
  external Array<Uint32> lsCsbSupported;
}

/// {@category Struct}
class MAPPING_DATA_RANGE extends Struct {
  @Uint32()
  external int dwStartIndex;

  @Uint32()
  external int dwEndIndex;

  external Pointer<Utf16> pszDescription;

  @Uint32()
  external int dwDescriptionLength;

  external Pointer pData;

  @Uint32()
  external int dwDataSize;

  external Pointer<Utf16> pszContentType;

  external Pointer<Pointer<Utf16>> prgActionIds;

  @Uint32()
  external int dwActionsCount;

  external Pointer<Pointer<Utf16>> prgActionDisplayNames;
}

/// {@category Struct}
class MAPPING_ENUM_OPTIONS extends Struct {
  @IntPtr()
  external int Size;

  external Pointer<Utf16> pszCategory;

  external Pointer<Utf16> pszInputLanguage;

  external Pointer<Utf16> pszOutputLanguage;

  external Pointer<Utf16> pszInputScript;

  external Pointer<Utf16> pszOutputScript;

  external Pointer<Utf16> pszInputContentType;

  external Pointer<Utf16> pszOutputContentType;

  external Pointer<GUID> pGuid;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class MAPPING_OPTIONS extends Struct {
  @IntPtr()
  external int Size;

  external Pointer<Utf16> pszInputLanguage;

  external Pointer<Utf16> pszOutputLanguage;

  external Pointer<Utf16> pszInputScript;

  external Pointer<Utf16> pszOutputScript;

  external Pointer<Utf16> pszInputContentType;

  external Pointer<Utf16> pszOutputContentType;

  external Pointer<Utf16> pszUILanguage;

  external Pointer<NativeFunction<PFN_MAPPINGCALLBACKPROC>>
      pfnRecognizeCallback;

  external Pointer pRecognizeCallerData;

  @Uint32()
  external int dwRecognizeCallerDataSize;

  external Pointer<NativeFunction<PFN_MAPPINGCALLBACKPROC>> pfnActionCallback;

  external Pointer pActionCallerData;

  @Uint32()
  external int dwActionCallerDataSize;

  @Uint32()
  external int dwServiceFlag;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class MAPPING_PROPERTY_BAG extends Struct {
  @IntPtr()
  external int Size;

  external Pointer<MAPPING_DATA_RANGE> prgResultRanges;

  @Uint32()
  external int dwRangesCount;

  external Pointer pServiceData;

  @Uint32()
  external int dwServiceDataSize;

  external Pointer pCallerData;

  @Uint32()
  external int dwCallerDataSize;

  external Pointer pContext;
}

/// {@category Struct}
class MAPPING_SERVICE_INFO extends Struct {
  @IntPtr()
  external int Size;

  external Pointer<Utf16> pszCopyright;

  @Uint16()
  external int wMajorVersion;

  @Uint16()
  external int wMinorVersion;

  @Uint16()
  external int wBuildVersion;

  @Uint16()
  external int wStepVersion;

  @Uint32()
  external int dwInputContentTypesCount;

  external Pointer<Pointer<Utf16>> prgInputContentTypes;

  @Uint32()
  external int dwOutputContentTypesCount;

  external Pointer<Pointer<Utf16>> prgOutputContentTypes;

  @Uint32()
  external int dwInputLanguagesCount;

  external Pointer<Pointer<Utf16>> prgInputLanguages;

  @Uint32()
  external int dwOutputLanguagesCount;

  external Pointer<Pointer<Utf16>> prgOutputLanguages;

  @Uint32()
  external int dwInputScriptsCount;

  external Pointer<Pointer<Utf16>> prgInputScripts;

  @Uint32()
  external int dwOutputScriptsCount;

  external Pointer<Pointer<Utf16>> prgOutputScripts;

  external GUID guid;

  external Pointer<Utf16> pszCategory;

  external Pointer<Utf16> pszDescription;

  @Uint32()
  external int dwPrivateDataSize;

  external Pointer pPrivateData;

  external Pointer pContext;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class MIMECPINFO extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int uiCodePage;

  @Uint32()
  external int uiFamilyCodePage;

  @Array(64)
  external Array<Uint16> _wszDescription;

  String get wszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDescription(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(50)
  external Array<Uint16> _wszWebCharset;

  String get wszWebCharset {
    final charCodes = <int>[];
    for (var i = 0; i < 50; i++) {
      charCodes.add(_wszWebCharset[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszWebCharset(String value) {
    final stringToStore = value.padRight(50, '\x00');
    for (var i = 0; i < 50; i++) {
      _wszWebCharset[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(50)
  external Array<Uint16> _wszHeaderCharset;

  String get wszHeaderCharset {
    final charCodes = <int>[];
    for (var i = 0; i < 50; i++) {
      charCodes.add(_wszHeaderCharset[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHeaderCharset(String value) {
    final stringToStore = value.padRight(50, '\x00');
    for (var i = 0; i < 50; i++) {
      _wszHeaderCharset[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(50)
  external Array<Uint16> _wszBodyCharset;

  String get wszBodyCharset {
    final charCodes = <int>[];
    for (var i = 0; i < 50; i++) {
      charCodes.add(_wszBodyCharset[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszBodyCharset(String value) {
    final stringToStore = value.padRight(50, '\x00');
    for (var i = 0; i < 50; i++) {
      _wszBodyCharset[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _wszFixedWidthFont;

  String get wszFixedWidthFont {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszFixedWidthFont[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszFixedWidthFont(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszFixedWidthFont[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _wszProportionalFont;

  String get wszProportionalFont {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszProportionalFont[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszProportionalFont(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszProportionalFont[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int bGDICharset;
}

/// {@category Struct}
class MIMECSETINFO extends Struct {
  @Uint32()
  external int uiCodePage;

  @Uint32()
  external int uiInternetEncoding;

  @Array(50)
  external Array<Uint16> _wszCharset;

  String get wszCharset {
    final charCodes = <int>[];
    for (var i = 0; i < 50; i++) {
      charCodes.add(_wszCharset[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszCharset(String value) {
    final stringToStore = value.padRight(50, '\x00');
    for (var i = 0; i < 50; i++) {
      _wszCharset[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NEWTEXTMETRICEX extends Struct {
  external NEWTEXTMETRIC ntmTm;

  external FONTSIGNATURE ntmFontSig;
}

/// {@category Struct}
class NLSVERSIONINFO extends Struct {
  @Uint32()
  external int dwNLSVersionInfoSize;

  @Uint32()
  external int dwNLSVersion;

  @Uint32()
  external int dwDefinedVersion;

  @Uint32()
  external int dwEffectiveId;

  external GUID guidCustomVersion;
}

/// {@category Struct}
class NLSVERSIONINFOEX extends Struct {
  @Uint32()
  external int dwNLSVersionInfoSize;

  @Uint32()
  external int dwNLSVersion;

  @Uint32()
  external int dwDefinedVersion;

  @Uint32()
  external int dwEffectiveId;

  external GUID guidCustomVersion;
}

/// {@category Struct}
class NUMBERFMT extends Struct {
  @Uint32()
  external int NumDigits;

  @Uint32()
  external int LeadingZero;

  @Uint32()
  external int Grouping;

  external Pointer<Utf16> lpDecimalSep;

  external Pointer<Utf16> lpThousandSep;

  @Uint32()
  external int NegativeOrder;
}

/// {@category Struct}
class RFC1766INFO extends Struct {
  @Uint32()
  external int lcid;

  @Array(6)
  external Array<Uint16> _wszRfc1766;

  String get wszRfc1766 {
    final charCodes = <int>[];
    for (var i = 0; i < 6; i++) {
      charCodes.add(_wszRfc1766[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszRfc1766(String value) {
    final stringToStore = value.padRight(6, '\x00');
    for (var i = 0; i < 6; i++) {
      _wszRfc1766[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _wszLocaleName;

  String get wszLocaleName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszLocaleName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszLocaleName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszLocaleName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SCRIPTINFO extends Struct {
  @Uint8()
  external int ScriptId;

  @Uint32()
  external int uiCodePage;

  @Array(48)
  external Array<Uint16> _wszDescription;

  String get wszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 48; i++) {
      charCodes.add(_wszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDescription(String value) {
    final stringToStore = value.padRight(48, '\x00');
    for (var i = 0; i < 48; i++) {
      _wszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _wszFixedWidthFont;

  String get wszFixedWidthFont {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszFixedWidthFont[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszFixedWidthFont(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszFixedWidthFont[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _wszProportionalFont;

  String get wszProportionalFont {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszProportionalFont[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszProportionalFont(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszProportionalFont[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SCRIPT_ANALYSIS extends Struct {
  @Uint16()
  external int bitfield;

  external SCRIPT_STATE s;
}

/// {@category Struct}
class SCRIPT_CONTROL extends Struct {
  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class SCRIPT_DIGITSUBSTITUTE extends Struct {
  @Uint32()
  external int bitfield1;

  @Uint32()
  external int bitfield2;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class SCRIPT_FONTPROPERTIES extends Struct {
  @Int32()
  external int cBytes;

  @Uint16()
  external int wgBlank;

  @Uint16()
  external int wgDefault;

  @Uint16()
  external int wgInvalid;

  @Uint16()
  external int wgKashida;

  @Int32()
  external int iKashidaWidth;
}

/// {@category Struct}
class SCRIPT_ITEM extends Struct {
  @Int32()
  external int iCharPos;

  external SCRIPT_ANALYSIS a;
}

/// {@category Struct}
class SCRIPT_LOGATTR extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class SCRIPT_PROPERTIES extends Struct {
  @Uint32()
  external int bitfield1;

  @Uint32()
  external int bitfield2;
}

/// {@category Struct}
class SCRIPT_STATE extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class SCRIPT_TABDEF extends Struct {
  @Int32()
  external int cTabStops;

  @Int32()
  external int iScale;

  external Pointer<Int32> pTabStops;

  @Int32()
  external int iTabOrigin;
}

/// {@category Struct}
class SCRIPT_VISATTR extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class UBiDi extends Opaque {}

/// {@category Struct}
class UBiDiTransform extends Opaque {}

/// {@category Struct}
class UBreakIterator extends Opaque {}

/// {@category Struct}
class UCPMap extends Opaque {}

/// {@category Struct}
class UCPTrie extends Struct {
  external Pointer<Uint16> index;

  external UCPTrieData data;

  @Int32()
  external int indexLength;

  @Int32()
  external int dataLength;

  @Int32()
  external int highStart;

  @Uint16()
  external int shifted12HighStart;

  @Int8()
  external int type;

  @Int8()
  external int valueWidth;

  @Uint32()
  external int reserved32;

  @Uint16()
  external int reserved16;

  @Uint16()
  external int index3NullOffset;

  @Int32()
  external int dataNullOffset;

  @Uint32()
  external int nullValue;
}

/// {@category Struct}
class UCPTrieData extends Union {
  external Pointer ptr0;

  external Pointer<Uint16> ptr16;

  external Pointer<Uint32> ptr32;

  external Pointer<Uint8> ptr8;
}

/// {@category Struct}
class UCaseMap extends Opaque {}

/// {@category Struct}
class UCharIterator extends Struct {
  external Pointer context;

  @Int32()
  external int length;

  @Int32()
  external int start;

  @Int32()
  external int index;

  @Int32()
  external int limit;

  @Int32()
  external int reservedField;

  external Pointer<NativeFunction<UCharIteratorGetIndex>> getIndex;

  external Pointer<NativeFunction<UCharIteratorMove>> move;

  external Pointer<NativeFunction<UCharIteratorHasNext>> hasNext;

  external Pointer<NativeFunction<UCharIteratorHasPrevious>> hasPrevious;

  external Pointer<NativeFunction<UCharIteratorCurrent>> current;

  external Pointer<NativeFunction<UCharIteratorNext>> next;

  external Pointer<NativeFunction<UCharIteratorPrevious>> previous;

  external Pointer<NativeFunction<UCharIteratorReserved>> reservedFn;

  external Pointer<NativeFunction<UCharIteratorGetState>> getState;

  external Pointer<NativeFunction<UCharIteratorSetState>> setState;
}

/// {@category Struct}
class UCharsetDetector extends Opaque {}

/// {@category Struct}
class UCharsetMatch extends Opaque {}

/// {@category Struct}
class UCollationElements extends Opaque {}

/// {@category Struct}
class UCollator extends Opaque {}

/// {@category Struct}
class UConstrainedFieldPosition extends Opaque {}

/// {@category Struct}
class UConverter extends Opaque {}

/// {@category Struct}
class UConverterFromUnicodeArgs extends Struct {
  @Uint16()
  external int size;

  @Int8()
  external int flush;

  external Pointer<UConverter> converter;

  external Pointer<Uint16> source;

  external Pointer<Uint16> sourceLimit;

  external Pointer<Utf8> target;

  external Pointer<Utf8> targetLimit;

  external Pointer<Int32> offsets;
}

/// {@category Struct}
class UConverterSelector extends Opaque {}

/// {@category Struct}
class UConverterToUnicodeArgs extends Struct {
  @Uint16()
  external int size;

  @Int8()
  external int flush;

  external Pointer<UConverter> converter;

  external Pointer<Utf8> source;

  external Pointer<Utf8> sourceLimit;

  external Pointer<Uint16> target;

  external Pointer<Uint16> targetLimit;

  external Pointer<Int32> offsets;
}

/// {@category Struct}
class UDateFormatSymbols extends Opaque {}

/// {@category Struct}
class UDateIntervalFormat extends Opaque {}

/// {@category Struct}
class UEnumeration extends Opaque {}

/// {@category Struct}
class UFieldPosition extends Struct {
  @Int32()
  external int field;

  @Int32()
  external int beginIndex;

  @Int32()
  external int endIndex;
}

/// {@category Struct}
class UFieldPositionIterator extends Opaque {}

/// {@category Struct}
class UFormattedDateInterval extends Opaque {}

/// {@category Struct}
class UFormattedList extends Opaque {}

/// {@category Struct}
class UFormattedNumber extends Opaque {}

/// {@category Struct}
class UFormattedNumberRange extends Opaque {}

/// {@category Struct}
class UFormattedRelativeDateTime extends Opaque {}

/// {@category Struct}
class UFormattedValue extends Opaque {}

/// {@category Struct}
class UGenderInfo extends Opaque {}

/// {@category Struct}
class UHashtable extends Opaque {}

/// {@category Struct}
class UIDNA extends Opaque {}

/// {@category Struct}
class UIDNAInfo extends Struct {
  @Int16()
  external int size;

  @Int8()
  external int isTransitionalDifferent;

  @Int8()
  external int reservedB3;

  @Uint32()
  external int errors;

  @Int32()
  external int reservedI2;

  @Int32()
  external int reservedI3;
}

/// {@category Struct}
class UListFormatter extends Opaque {}

/// {@category Struct}
class ULocaleData extends Opaque {}

/// {@category Struct}
class ULocaleDisplayNames extends Opaque {}

/// {@category Struct}
class UMutableCPTrie extends Opaque {}

/// {@category Struct}
class UNICODERANGE extends Struct {
  @Uint16()
  external int wcFrom;

  @Uint16()
  external int wcTo;
}

/// {@category Struct}
class UNormalizer2 extends Opaque {}

/// {@category Struct}
class UNumberFormatter extends Opaque {}

/// {@category Struct}
class UNumberingSystem extends Opaque {}

/// {@category Struct}
class UParseError extends Struct {
  @Int32()
  external int line;

  @Int32()
  external int offset;

  @Array(16)
  external Array<Uint16> preContext;

  @Array(16)
  external Array<Uint16> postContext;
}

/// {@category Struct}
class UPluralRules extends Opaque {}

/// {@category Struct}
class URegion extends Opaque {}

/// {@category Struct}
class URegularExpression extends Opaque {}

/// {@category Struct}
class URelativeDateTimeFormatter extends Opaque {}

/// {@category Struct}
class UReplaceableCallbacks extends Struct {
  @IntPtr()
  external int length;

  @IntPtr()
  external int charAt;

  @IntPtr()
  external int char32At;

  @IntPtr()
  external int replace;

  @IntPtr()
  external int extract;

  @IntPtr()
  external int copy;
}

/// {@category Struct}
class UResourceBundle extends Opaque {}

/// {@category Struct}
class USearch extends Opaque {}

/// {@category Struct}
class USerializedSet extends Struct {
  external Pointer<Uint16> array;

  @Int32()
  external int bmpLength;

  @Int32()
  external int length;

  @Array(8)
  external Array<Uint16> staticArray;
}

/// {@category Struct}
class USet extends Opaque {}

/// {@category Struct}
class USpoofCheckResult extends Opaque {}

/// {@category Struct}
class USpoofChecker extends Opaque {}

/// {@category Struct}
class UStringPrepProfile extends Opaque {}

/// {@category Struct}
class UStringSearch extends Opaque {}

/// {@category Struct}
class UText extends Struct {
  @Uint32()
  external int magic;

  @Int32()
  external int flags;

  @Int32()
  external int providerProperties;

  @Int32()
  external int sizeOfStruct;

  @Int64()
  external int chunkNativeLimit;

  @Int32()
  external int extraSize;

  @Int32()
  external int nativeIndexingLimit;

  @Int64()
  external int chunkNativeStart;

  @Int32()
  external int chunkOffset;

  @Int32()
  external int chunkLength;

  external Pointer<Uint16> chunkContents;

  external Pointer<UTextFuncs> pFuncs;

  external Pointer pExtra;

  external Pointer context;

  external Pointer p;

  external Pointer q;

  external Pointer r;

  external Pointer privP;

  @Int64()
  external int a;

  @Int32()
  external int b;

  @Int32()
  external int c;

  @Int64()
  external int privA;

  @Int32()
  external int privB;

  @Int32()
  external int privC;
}

/// {@category Struct}
class UTextFuncs extends Struct {
  @Int32()
  external int tableSize;

  @Int32()
  external int reserved1;

  @Int32()
  external int reserved2;

  @Int32()
  external int reserved3;

  external Pointer<NativeFunction<UTextClone>> clone;

  external Pointer<NativeFunction<UTextNativeLength>> nativeLength;

  external Pointer<NativeFunction<UTextAccess>> access;

  external Pointer<NativeFunction<UTextExtract>> extract;

  external Pointer<NativeFunction<UTextReplace>> replace;

  external Pointer<NativeFunction<UTextCopy>> copy;

  external Pointer<NativeFunction<UTextMapOffsetToNative>> mapOffsetToNative;

  external Pointer<NativeFunction<UTextMapNativeIndexToUTF16>>
      mapNativeIndexToUTF16;

  external Pointer<NativeFunction<UTextClose>> close;

  external Pointer<NativeFunction<UTextClose>> spare1;

  external Pointer<NativeFunction<UTextClose>> spare2;

  external Pointer<NativeFunction<UTextClose>> spare3;
}

/// {@category Struct}
class UTransPosition extends Struct {
  @Int32()
  external int contextStart;

  @Int32()
  external int contextLimit;

  @Int32()
  external int start;

  @Int32()
  external int limit;
}

/// {@category Struct}
class opentype_feature_record extends Struct {
  @Uint32()
  external int tagFeature;

  @Int32()
  external int lParameter;
}

/// {@category Struct}
class script_charprop extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class script_glyphprop extends Struct {
  external SCRIPT_VISATTR sva;

  @Uint16()
  external int reserved;
}

/// {@category Struct}
class tagSCRIPFONTINFO extends Struct {
  @Int64()
  external int scripts;

  @Array(32)
  external Array<Uint16> _wszFont;

  String get wszFont {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszFont[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszFont(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszFont[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class textrange_properties extends Struct {
  external Pointer<opentype_feature_record> potfRecords;

  @Int32()
  external int cotfRecords;
}
