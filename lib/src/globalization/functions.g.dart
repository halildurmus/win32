// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../combase.dart';
import '../guid.dart';
import '../graphics/gdi/structs.g.dart';
import '../globalization/structs.g.dart';
import '../foundation/structs.g.dart';
import '../globalization/callbacks.g.dart'; // -----------------------------------------------------------------------

// gdi32.dll
// -----------------------------------------------------------------------
final _gdi32 = DynamicLibrary.open('gdi32.dll');

int GetTextCharset(
  int hdc,
) =>
    _GetTextCharset(
      hdc,
    );

late final _GetTextCharset = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('GetTextCharset');

int GetTextCharsetInfo(
  int hdc,
  Pointer<FONTSIGNATURE> lpSig,
  int dwFlags,
) =>
    _GetTextCharsetInfo(
      hdc,
      lpSig,
      dwFlags,
    );

late final _GetTextCharsetInfo = _gdi32.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<FONTSIGNATURE> lpSig,
  Uint32 dwFlags,
),
    int Function(
  int hdc,
  Pointer<FONTSIGNATURE> lpSig,
  int dwFlags,
)>('GetTextCharsetInfo');

int TranslateCharsetInfo(
  Pointer<Uint32> lpSrc,
  Pointer<CHARSETINFO> lpCs,
  int dwFlags,
) =>
    _TranslateCharsetInfo(
      lpSrc,
      lpCs,
      dwFlags,
    );

late final _TranslateCharsetInfo = _gdi32.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpSrc,
  Pointer<CHARSETINFO> lpCs,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Uint32> lpSrc,
  Pointer<CHARSETINFO> lpCs,
  int dwFlags,
)>('TranslateCharsetInfo');

// -----------------------------------------------------------------------
// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int CompareStringEx(
  Pointer<Utf16> lpLocaleName,
  int dwCmpFlags,
  Pointer<Utf16> lpString1,
  int cchCount1,
  Pointer<Utf16> lpString2,
  int cchCount2,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  int lParam,
) =>
    _CompareStringEx(
      lpLocaleName,
      dwCmpFlags,
      lpString1,
      cchCount1,
      lpString2,
      cchCount2,
      lpVersionInformation,
      lpReserved,
      lParam,
    );

late final _CompareStringEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwCmpFlags,
  Pointer<Utf16> lpString1,
  Int32 cchCount1,
  Pointer<Utf16> lpString2,
  Int32 cchCount2,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  IntPtr lParam,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwCmpFlags,
  Pointer<Utf16> lpString1,
  int cchCount1,
  Pointer<Utf16> lpString2,
  int cchCount2,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  int lParam,
)>('CompareStringEx');

int CompareStringOrdinal(
  Pointer<Utf16> lpString1,
  int cchCount1,
  Pointer<Utf16> lpString2,
  int cchCount2,
  int bIgnoreCase,
) =>
    _CompareStringOrdinal(
      lpString1,
      cchCount1,
      lpString2,
      cchCount2,
      bIgnoreCase,
    );

late final _CompareStringOrdinal = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpString1,
  Int32 cchCount1,
  Pointer<Utf16> lpString2,
  Int32 cchCount2,
  Int32 bIgnoreCase,
),
    int Function(
  Pointer<Utf16> lpString1,
  int cchCount1,
  Pointer<Utf16> lpString2,
  int cchCount2,
  int bIgnoreCase,
)>('CompareStringOrdinal');

int CompareString(
  int Locale,
  int dwCmpFlags,
  Pointer<Utf16> lpString1,
  int cchCount1,
  Pointer<Utf16> lpString2,
  int cchCount2,
) =>
    _CompareString(
      Locale,
      dwCmpFlags,
      lpString1,
      cchCount1,
      lpString2,
      cchCount2,
    );

late final _CompareString = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwCmpFlags,
  Pointer<Utf16> lpString1,
  Int32 cchCount1,
  Pointer<Utf16> lpString2,
  Int32 cchCount2,
),
    int Function(
  int Locale,
  int dwCmpFlags,
  Pointer<Utf16> lpString1,
  int cchCount1,
  Pointer<Utf16> lpString2,
  int cchCount2,
)>('CompareStringW');

int ConvertDefaultLocale(
  int Locale,
) =>
    _ConvertDefaultLocale(
      Locale,
    );

late final _ConvertDefaultLocale = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 Locale,
),
    int Function(
  int Locale,
)>('ConvertDefaultLocale');

int EnumCalendarInfoExEx(
  Pointer<NativeFunction<CALINFO_ENUMPROCEXEX>> pCalInfoEnumProcExEx,
  Pointer<Utf16> lpLocaleName,
  int Calendar,
  Pointer<Utf16> lpReserved,
  int CalType,
  int lParam,
) =>
    _EnumCalendarInfoExEx(
      pCalInfoEnumProcExEx,
      lpLocaleName,
      Calendar,
      lpReserved,
      CalType,
      lParam,
    );

late final _EnumCalendarInfoExEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<CALINFO_ENUMPROCEXEX>> pCalInfoEnumProcExEx,
  Pointer<Utf16> lpLocaleName,
  Uint32 Calendar,
  Pointer<Utf16> lpReserved,
  Uint32 CalType,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<CALINFO_ENUMPROCEXEX>> pCalInfoEnumProcExEx,
  Pointer<Utf16> lpLocaleName,
  int Calendar,
  Pointer<Utf16> lpReserved,
  int CalType,
  int lParam,
)>('EnumCalendarInfoExEx');

int EnumCalendarInfoEx(
  Pointer<NativeFunction<CALINFO_ENUMPROCEXW>> lpCalInfoEnumProcEx,
  int Locale,
  int Calendar,
  int CalType,
) =>
    _EnumCalendarInfoEx(
      lpCalInfoEnumProcEx,
      Locale,
      Calendar,
      CalType,
    );

late final _EnumCalendarInfoEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<CALINFO_ENUMPROCEXW>> lpCalInfoEnumProcEx,
  Uint32 Locale,
  Uint32 Calendar,
  Uint32 CalType,
),
    int Function(
  Pointer<NativeFunction<CALINFO_ENUMPROCEXW>> lpCalInfoEnumProcEx,
  int Locale,
  int Calendar,
  int CalType,
)>('EnumCalendarInfoExW');

int EnumCalendarInfo(
  Pointer<NativeFunction<CALINFO_ENUMPROCW>> lpCalInfoEnumProc,
  int Locale,
  int Calendar,
  int CalType,
) =>
    _EnumCalendarInfo(
      lpCalInfoEnumProc,
      Locale,
      Calendar,
      CalType,
    );

late final _EnumCalendarInfo = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<CALINFO_ENUMPROCW>> lpCalInfoEnumProc,
  Uint32 Locale,
  Uint32 Calendar,
  Uint32 CalType,
),
    int Function(
  Pointer<NativeFunction<CALINFO_ENUMPROCW>> lpCalInfoEnumProc,
  int Locale,
  int Calendar,
  int CalType,
)>('EnumCalendarInfoW');

int EnumDateFormatsExEx(
  Pointer<NativeFunction<DATEFMT_ENUMPROCEXEX>> lpDateFmtEnumProcExEx,
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  int lParam,
) =>
    _EnumDateFormatsExEx(
      lpDateFmtEnumProcExEx,
      lpLocaleName,
      dwFlags,
      lParam,
    );

late final _EnumDateFormatsExEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<DATEFMT_ENUMPROCEXEX>> lpDateFmtEnumProcExEx,
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<DATEFMT_ENUMPROCEXEX>> lpDateFmtEnumProcExEx,
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  int lParam,
)>('EnumDateFormatsExEx');

int EnumDateFormatsEx(
  Pointer<NativeFunction<DATEFMT_ENUMPROCEXW>> lpDateFmtEnumProcEx,
  int Locale,
  int dwFlags,
) =>
    _EnumDateFormatsEx(
      lpDateFmtEnumProcEx,
      Locale,
      dwFlags,
    );

late final _EnumDateFormatsEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<DATEFMT_ENUMPROCEXW>> lpDateFmtEnumProcEx,
  Uint32 Locale,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NativeFunction<DATEFMT_ENUMPROCEXW>> lpDateFmtEnumProcEx,
  int Locale,
  int dwFlags,
)>('EnumDateFormatsExW');

int EnumDateFormats(
  Pointer<NativeFunction<DATEFMT_ENUMPROCW>> lpDateFmtEnumProc,
  int Locale,
  int dwFlags,
) =>
    _EnumDateFormats(
      lpDateFmtEnumProc,
      Locale,
      dwFlags,
    );

late final _EnumDateFormats = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<DATEFMT_ENUMPROCW>> lpDateFmtEnumProc,
  Uint32 Locale,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NativeFunction<DATEFMT_ENUMPROCW>> lpDateFmtEnumProc,
  int Locale,
  int dwFlags,
)>('EnumDateFormatsW');

int EnumLanguageGroupLocales(
  Pointer<NativeFunction<LANGGROUPLOCALE_ENUMPROCW>> lpLangGroupLocaleEnumProc,
  int LanguageGroup,
  int dwFlags,
  int lParam,
) =>
    _EnumLanguageGroupLocales(
      lpLangGroupLocaleEnumProc,
      LanguageGroup,
      dwFlags,
      lParam,
    );

late final _EnumLanguageGroupLocales = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LANGGROUPLOCALE_ENUMPROCW>> lpLangGroupLocaleEnumProc,
  Uint32 LanguageGroup,
  Uint32 dwFlags,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<LANGGROUPLOCALE_ENUMPROCW>> lpLangGroupLocaleEnumProc,
  int LanguageGroup,
  int dwFlags,
  int lParam,
)>('EnumLanguageGroupLocalesW');

int EnumSystemCodePages(
  Pointer<NativeFunction<CODEPAGE_ENUMPROCW>> lpCodePageEnumProc,
  int dwFlags,
) =>
    _EnumSystemCodePages(
      lpCodePageEnumProc,
      dwFlags,
    );

late final _EnumSystemCodePages = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<CODEPAGE_ENUMPROCW>> lpCodePageEnumProc,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NativeFunction<CODEPAGE_ENUMPROCW>> lpCodePageEnumProc,
  int dwFlags,
)>('EnumSystemCodePagesW');

int EnumSystemGeoID(
  int GeoClass,
  int ParentGeoId,
  Pointer<NativeFunction<GEO_ENUMPROC>> lpGeoEnumProc,
) =>
    _EnumSystemGeoID(
      GeoClass,
      ParentGeoId,
      lpGeoEnumProc,
    );

late final _EnumSystemGeoID = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 GeoClass,
  Int32 ParentGeoId,
  Pointer<NativeFunction<GEO_ENUMPROC>> lpGeoEnumProc,
),
    int Function(
  int GeoClass,
  int ParentGeoId,
  Pointer<NativeFunction<GEO_ENUMPROC>> lpGeoEnumProc,
)>('EnumSystemGeoID');

int EnumSystemGeoNames(
  int geoClass,
  Pointer<NativeFunction<GEO_ENUMNAMEPROC>> geoEnumProc,
  int data,
) =>
    _EnumSystemGeoNames(
      geoClass,
      geoEnumProc,
      data,
    );

late final _EnumSystemGeoNames = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 geoClass,
  Pointer<NativeFunction<GEO_ENUMNAMEPROC>> geoEnumProc,
  IntPtr data,
),
    int Function(
  int geoClass,
  Pointer<NativeFunction<GEO_ENUMNAMEPROC>> geoEnumProc,
  int data,
)>('EnumSystemGeoNames');

int EnumSystemLanguageGroups(
  Pointer<NativeFunction<LANGUAGEGROUP_ENUMPROCW>> lpLanguageGroupEnumProc,
  int dwFlags,
  int lParam,
) =>
    _EnumSystemLanguageGroups(
      lpLanguageGroupEnumProc,
      dwFlags,
      lParam,
    );

late final _EnumSystemLanguageGroups = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LANGUAGEGROUP_ENUMPROCW>> lpLanguageGroupEnumProc,
  Uint32 dwFlags,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<LANGUAGEGROUP_ENUMPROCW>> lpLanguageGroupEnumProc,
  int dwFlags,
  int lParam,
)>('EnumSystemLanguageGroupsW');

int EnumSystemLocalesEx(
  Pointer<NativeFunction<LOCALE_ENUMPROCEX>> lpLocaleEnumProcEx,
  int dwFlags,
  int lParam,
  Pointer lpReserved,
) =>
    _EnumSystemLocalesEx(
      lpLocaleEnumProcEx,
      dwFlags,
      lParam,
      lpReserved,
    );

late final _EnumSystemLocalesEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LOCALE_ENUMPROCEX>> lpLocaleEnumProcEx,
  Uint32 dwFlags,
  IntPtr lParam,
  Pointer lpReserved,
),
    int Function(
  Pointer<NativeFunction<LOCALE_ENUMPROCEX>> lpLocaleEnumProcEx,
  int dwFlags,
  int lParam,
  Pointer lpReserved,
)>('EnumSystemLocalesEx');

int EnumSystemLocales(
  Pointer<NativeFunction<LOCALE_ENUMPROCW>> lpLocaleEnumProc,
  int dwFlags,
) =>
    _EnumSystemLocales(
      lpLocaleEnumProc,
      dwFlags,
    );

late final _EnumSystemLocales = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LOCALE_ENUMPROCW>> lpLocaleEnumProc,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NativeFunction<LOCALE_ENUMPROCW>> lpLocaleEnumProc,
  int dwFlags,
)>('EnumSystemLocalesW');

int EnumTimeFormatsEx(
  Pointer<NativeFunction<TIMEFMT_ENUMPROCEX>> lpTimeFmtEnumProcEx,
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  int lParam,
) =>
    _EnumTimeFormatsEx(
      lpTimeFmtEnumProcEx,
      lpLocaleName,
      dwFlags,
      lParam,
    );

late final _EnumTimeFormatsEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<TIMEFMT_ENUMPROCEX>> lpTimeFmtEnumProcEx,
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<TIMEFMT_ENUMPROCEX>> lpTimeFmtEnumProcEx,
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  int lParam,
)>('EnumTimeFormatsEx');

int EnumTimeFormats(
  Pointer<NativeFunction<TIMEFMT_ENUMPROCW>> lpTimeFmtEnumProc,
  int Locale,
  int dwFlags,
) =>
    _EnumTimeFormats(
      lpTimeFmtEnumProc,
      Locale,
      dwFlags,
    );

late final _EnumTimeFormats = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<TIMEFMT_ENUMPROCW>> lpTimeFmtEnumProc,
  Uint32 Locale,
  Uint32 dwFlags,
),
    int Function(
  Pointer<NativeFunction<TIMEFMT_ENUMPROCW>> lpTimeFmtEnumProc,
  int Locale,
  int dwFlags,
)>('EnumTimeFormatsW');

int EnumUILanguages(
  Pointer<NativeFunction<UILANGUAGE_ENUMPROCW>> lpUILanguageEnumProc,
  int dwFlags,
  int lParam,
) =>
    _EnumUILanguages(
      lpUILanguageEnumProc,
      dwFlags,
      lParam,
    );

late final _EnumUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<UILANGUAGE_ENUMPROCW>> lpUILanguageEnumProc,
  Uint32 dwFlags,
  IntPtr lParam,
),
    int Function(
  Pointer<NativeFunction<UILANGUAGE_ENUMPROCW>> lpUILanguageEnumProc,
  int dwFlags,
  int lParam,
)>('EnumUILanguagesW');

int FindNLSString(
  int Locale,
  int dwFindNLSStringFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  Pointer<Int32> pcchFound,
) =>
    _FindNLSString(
      Locale,
      dwFindNLSStringFlags,
      lpStringSource,
      cchSource,
      lpStringValue,
      cchValue,
      pcchFound,
    );

late final _FindNLSString = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFindNLSStringFlags,
  Pointer<Utf16> lpStringSource,
  Int32 cchSource,
  Pointer<Utf16> lpStringValue,
  Int32 cchValue,
  Pointer<Int32> pcchFound,
),
    int Function(
  int Locale,
  int dwFindNLSStringFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  Pointer<Int32> pcchFound,
)>('FindNLSString');

int FindNLSStringEx(
  Pointer<Utf16> lpLocaleName,
  int dwFindNLSStringFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  Pointer<Int32> pcchFound,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  int sortHandle,
) =>
    _FindNLSStringEx(
      lpLocaleName,
      dwFindNLSStringFlags,
      lpStringSource,
      cchSource,
      lpStringValue,
      cchValue,
      pcchFound,
      lpVersionInformation,
      lpReserved,
      sortHandle,
    );

late final _FindNLSStringEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFindNLSStringFlags,
  Pointer<Utf16> lpStringSource,
  Int32 cchSource,
  Pointer<Utf16> lpStringValue,
  Int32 cchValue,
  Pointer<Int32> pcchFound,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  IntPtr sortHandle,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwFindNLSStringFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  Pointer<Int32> pcchFound,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  int sortHandle,
)>('FindNLSStringEx');

int FindStringOrdinal(
  int dwFindStringOrdinalFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  int bIgnoreCase,
) =>
    _FindStringOrdinal(
      dwFindStringOrdinalFlags,
      lpStringSource,
      cchSource,
      lpStringValue,
      cchValue,
      bIgnoreCase,
    );

late final _FindStringOrdinal = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFindStringOrdinalFlags,
  Pointer<Utf16> lpStringSource,
  Int32 cchSource,
  Pointer<Utf16> lpStringValue,
  Int32 cchValue,
  Int32 bIgnoreCase,
),
    int Function(
  int dwFindStringOrdinalFlags,
  Pointer<Utf16> lpStringSource,
  int cchSource,
  Pointer<Utf16> lpStringValue,
  int cchValue,
  int bIgnoreCase,
)>('FindStringOrdinal');

int FoldString(
  int dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
) =>
    _FoldString(
      dwMapFlags,
      lpSrcStr,
      cchSrc,
      lpDestStr,
      cchDest,
    );

late final _FoldString = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  Int32 cchSrc,
  Pointer<Utf16> lpDestStr,
  Int32 cchDest,
),
    int Function(
  int dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
)>('FoldStringW');

int GetACP() => _GetACP();

late final _GetACP =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetACP');

int GetCPInfo(
  int CodePage,
  Pointer<CPINFO> lpCPInfo,
) =>
    _GetCPInfo(
      CodePage,
      lpCPInfo,
    );

late final _GetCPInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Pointer<CPINFO> lpCPInfo,
),
    int Function(
  int CodePage,
  Pointer<CPINFO> lpCPInfo,
)>('GetCPInfo');

int GetCPInfoEx(
  int CodePage,
  int dwFlags,
  Pointer<CPINFOEX> lpCPInfoEx,
) =>
    _GetCPInfoEx(
      CodePage,
      dwFlags,
      lpCPInfoEx,
    );

late final _GetCPInfoEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Uint32 dwFlags,
  Pointer<CPINFOEX> lpCPInfoEx,
),
    int Function(
  int CodePage,
  int dwFlags,
  Pointer<CPINFOEX> lpCPInfoEx,
)>('GetCPInfoExW');

int GetCalendarInfoEx(
  Pointer<Utf16> lpLocaleName,
  int Calendar,
  Pointer<Utf16> lpReserved,
  int CalType,
  Pointer<Utf16> lpCalData,
  int cchData,
  Pointer<Uint32> lpValue,
) =>
    _GetCalendarInfoEx(
      lpLocaleName,
      Calendar,
      lpReserved,
      CalType,
      lpCalData,
      cchData,
      lpValue,
    );

late final _GetCalendarInfoEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 Calendar,
  Pointer<Utf16> lpReserved,
  Uint32 CalType,
  Pointer<Utf16> lpCalData,
  Int32 cchData,
  Pointer<Uint32> lpValue,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int Calendar,
  Pointer<Utf16> lpReserved,
  int CalType,
  Pointer<Utf16> lpCalData,
  int cchData,
  Pointer<Uint32> lpValue,
)>('GetCalendarInfoEx');

int GetCalendarInfo(
  int Locale,
  int Calendar,
  int CalType,
  Pointer<Utf16> lpCalData,
  int cchData,
  Pointer<Uint32> lpValue,
) =>
    _GetCalendarInfo(
      Locale,
      Calendar,
      CalType,
      lpCalData,
      cchData,
      lpValue,
    );

late final _GetCalendarInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 Calendar,
  Uint32 CalType,
  Pointer<Utf16> lpCalData,
  Int32 cchData,
  Pointer<Uint32> lpValue,
),
    int Function(
  int Locale,
  int Calendar,
  int CalType,
  Pointer<Utf16> lpCalData,
  int cchData,
  Pointer<Uint32> lpValue,
)>('GetCalendarInfoW');

int GetCurrencyFormatEx(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<CURRENCYFMT> lpFormat,
  Pointer<Utf16> lpCurrencyStr,
  int cchCurrency,
) =>
    _GetCurrencyFormatEx(
      lpLocaleName,
      dwFlags,
      lpValue,
      lpFormat,
      lpCurrencyStr,
      cchCurrency,
    );

late final _GetCurrencyFormatEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<CURRENCYFMT> lpFormat,
  Pointer<Utf16> lpCurrencyStr,
  Int32 cchCurrency,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<CURRENCYFMT> lpFormat,
  Pointer<Utf16> lpCurrencyStr,
  int cchCurrency,
)>('GetCurrencyFormatEx');

int GetCurrencyFormat(
  int Locale,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<CURRENCYFMT> lpFormat,
  Pointer<Utf16> lpCurrencyStr,
  int cchCurrency,
) =>
    _GetCurrencyFormat(
      Locale,
      dwFlags,
      lpValue,
      lpFormat,
      lpCurrencyStr,
      cchCurrency,
    );

late final _GetCurrencyFormat = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<CURRENCYFMT> lpFormat,
  Pointer<Utf16> lpCurrencyStr,
  Int32 cchCurrency,
),
    int Function(
  int Locale,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<CURRENCYFMT> lpFormat,
  Pointer<Utf16> lpCurrencyStr,
  int cchCurrency,
)>('GetCurrencyFormatW');

int GetDateFormatEx(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDate,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDateStr,
  int cchDate,
  Pointer<Utf16> lpCalendar,
) =>
    _GetDateFormatEx(
      lpLocaleName,
      dwFlags,
      lpDate,
      lpFormat,
      lpDateStr,
      cchDate,
      lpCalendar,
    );

late final _GetDateFormatEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  Pointer<SYSTEMTIME> lpDate,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDateStr,
  Int32 cchDate,
  Pointer<Utf16> lpCalendar,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDate,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDateStr,
  int cchDate,
  Pointer<Utf16> lpCalendar,
)>('GetDateFormatEx');

int GetDateFormat(
  int Locale,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDate,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDateStr,
  int cchDate,
) =>
    _GetDateFormat(
      Locale,
      dwFlags,
      lpDate,
      lpFormat,
      lpDateStr,
      cchDate,
    );

late final _GetDateFormat = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFlags,
  Pointer<SYSTEMTIME> lpDate,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDateStr,
  Int32 cchDate,
),
    int Function(
  int Locale,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDate,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDateStr,
  int cchDate,
)>('GetDateFormatW');

int GetDurationFormat(
  int Locale,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDuration,
  int ullDuration,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDurationStr,
  int cchDuration,
) =>
    _GetDurationFormat(
      Locale,
      dwFlags,
      lpDuration,
      ullDuration,
      lpFormat,
      lpDurationStr,
      cchDuration,
    );

late final _GetDurationFormat = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFlags,
  Pointer<SYSTEMTIME> lpDuration,
  Uint64 ullDuration,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDurationStr,
  Int32 cchDuration,
),
    int Function(
  int Locale,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDuration,
  int ullDuration,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDurationStr,
  int cchDuration,
)>('GetDurationFormat');

int GetDurationFormatEx(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDuration,
  int ullDuration,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDurationStr,
  int cchDuration,
) =>
    _GetDurationFormatEx(
      lpLocaleName,
      dwFlags,
      lpDuration,
      ullDuration,
      lpFormat,
      lpDurationStr,
      cchDuration,
    );

late final _GetDurationFormatEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  Pointer<SYSTEMTIME> lpDuration,
  Uint64 ullDuration,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDurationStr,
  Int32 cchDuration,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<SYSTEMTIME> lpDuration,
  int ullDuration,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpDurationStr,
  int cchDuration,
)>('GetDurationFormatEx');

int GetFileMUIInfo(
  int dwFlags,
  Pointer<Utf16> pcwszFilePath,
  Pointer<FILEMUIINFO> pFileMUIInfo,
  Pointer<Uint32> pcbFileMUIInfo,
) =>
    _GetFileMUIInfo(
      dwFlags,
      pcwszFilePath,
      pFileMUIInfo,
      pcbFileMUIInfo,
    );

late final _GetFileMUIInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pcwszFilePath,
  Pointer<FILEMUIINFO> pFileMUIInfo,
  Pointer<Uint32> pcbFileMUIInfo,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pcwszFilePath,
  Pointer<FILEMUIINFO> pFileMUIInfo,
  Pointer<Uint32> pcbFileMUIInfo,
)>('GetFileMUIInfo');

int GetFileMUIPath(
  int dwFlags,
  Pointer<Utf16> pcwszFilePath,
  Pointer<Utf16> pwszLanguage,
  Pointer<Uint32> pcchLanguage,
  Pointer<Utf16> pwszFileMUIPath,
  Pointer<Uint32> pcchFileMUIPath,
  Pointer<Uint64> pululEnumerator,
) =>
    _GetFileMUIPath(
      dwFlags,
      pcwszFilePath,
      pwszLanguage,
      pcchLanguage,
      pwszFileMUIPath,
      pcchFileMUIPath,
      pululEnumerator,
    );

late final _GetFileMUIPath = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pcwszFilePath,
  Pointer<Utf16> pwszLanguage,
  Pointer<Uint32> pcchLanguage,
  Pointer<Utf16> pwszFileMUIPath,
  Pointer<Uint32> pcchFileMUIPath,
  Pointer<Uint64> pululEnumerator,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pcwszFilePath,
  Pointer<Utf16> pwszLanguage,
  Pointer<Uint32> pcchLanguage,
  Pointer<Utf16> pwszFileMUIPath,
  Pointer<Uint32> pcchFileMUIPath,
  Pointer<Uint64> pululEnumerator,
)>('GetFileMUIPath');

int GetGeoInfoEx(
  Pointer<Utf16> location,
  int geoType,
  Pointer<Utf16> geoData,
  int geoDataCount,
) =>
    _GetGeoInfoEx(
      location,
      geoType,
      geoData,
      geoDataCount,
    );

late final _GetGeoInfoEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> location,
  Uint32 geoType,
  Pointer<Utf16> geoData,
  Int32 geoDataCount,
),
    int Function(
  Pointer<Utf16> location,
  int geoType,
  Pointer<Utf16> geoData,
  int geoDataCount,
)>('GetGeoInfoEx');

int GetGeoInfo(
  int Location,
  int GeoType,
  Pointer<Utf16> lpGeoData,
  int cchData,
  int LangId,
) =>
    _GetGeoInfo(
      Location,
      GeoType,
      lpGeoData,
      cchData,
      LangId,
    );

late final _GetGeoInfo = _kernel32.lookupFunction<
    Int32 Function(
  Int32 Location,
  Uint32 GeoType,
  Pointer<Utf16> lpGeoData,
  Int32 cchData,
  Uint16 LangId,
),
    int Function(
  int Location,
  int GeoType,
  Pointer<Utf16> lpGeoData,
  int cchData,
  int LangId,
)>('GetGeoInfoW');

int GetLocaleInfoEx(
  Pointer<Utf16> lpLocaleName,
  int LCType,
  Pointer<Utf16> lpLCData,
  int cchData,
) =>
    _GetLocaleInfoEx(
      lpLocaleName,
      LCType,
      lpLCData,
      cchData,
    );

late final _GetLocaleInfoEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 LCType,
  Pointer<Utf16> lpLCData,
  Int32 cchData,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int LCType,
  Pointer<Utf16> lpLCData,
  int cchData,
)>('GetLocaleInfoEx');

int GetLocaleInfo(
  int Locale,
  int LCType,
  Pointer<Utf16> lpLCData,
  int cchData,
) =>
    _GetLocaleInfo(
      Locale,
      LCType,
      lpLCData,
      cchData,
    );

late final _GetLocaleInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 LCType,
  Pointer<Utf16> lpLCData,
  Int32 cchData,
),
    int Function(
  int Locale,
  int LCType,
  Pointer<Utf16> lpLCData,
  int cchData,
)>('GetLocaleInfoW');

int GetNLSVersion(
  int Function,
  int Locale,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
) =>
    _GetNLSVersion(
      Function,
      Locale,
      lpVersionInformation,
    );

late final _GetNLSVersion = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Function,
  Uint32 Locale,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
),
    int Function(
  int Function,
  int Locale,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
)>('GetNLSVersion');

int GetNLSVersionEx(
  int function,
  Pointer<Utf16> lpLocaleName,
  Pointer<NLSVERSIONINFOEX> lpVersionInformation,
) =>
    _GetNLSVersionEx(
      function,
      lpLocaleName,
      lpVersionInformation,
    );

late final _GetNLSVersionEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 function,
  Pointer<Utf16> lpLocaleName,
  Pointer<NLSVERSIONINFOEX> lpVersionInformation,
),
    int Function(
  int function,
  Pointer<Utf16> lpLocaleName,
  Pointer<NLSVERSIONINFOEX> lpVersionInformation,
)>('GetNLSVersionEx');

int GetNumberFormatEx(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<NUMBERFMT> lpFormat,
  Pointer<Utf16> lpNumberStr,
  int cchNumber,
) =>
    _GetNumberFormatEx(
      lpLocaleName,
      dwFlags,
      lpValue,
      lpFormat,
      lpNumberStr,
      cchNumber,
    );

late final _GetNumberFormatEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<NUMBERFMT> lpFormat,
  Pointer<Utf16> lpNumberStr,
  Int32 cchNumber,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<NUMBERFMT> lpFormat,
  Pointer<Utf16> lpNumberStr,
  int cchNumber,
)>('GetNumberFormatEx');

int GetNumberFormat(
  int Locale,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<NUMBERFMT> lpFormat,
  Pointer<Utf16> lpNumberStr,
  int cchNumber,
) =>
    _GetNumberFormat(
      Locale,
      dwFlags,
      lpValue,
      lpFormat,
      lpNumberStr,
      cchNumber,
    );

late final _GetNumberFormat = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<NUMBERFMT> lpFormat,
  Pointer<Utf16> lpNumberStr,
  Int32 cchNumber,
),
    int Function(
  int Locale,
  int dwFlags,
  Pointer<Utf16> lpValue,
  Pointer<NUMBERFMT> lpFormat,
  Pointer<Utf16> lpNumberStr,
  int cchNumber,
)>('GetNumberFormatW');

int GetOEMCP() => _GetOEMCP();

late final _GetOEMCP =
    _kernel32.lookupFunction<Uint32 Function(), int Function()>('GetOEMCP');

int GetProcessPreferredUILanguages(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
) =>
    _GetProcessPreferredUILanguages(
      dwFlags,
      pulNumLanguages,
      pwszLanguagesBuffer,
      pcchLanguagesBuffer,
    );

late final _GetProcessPreferredUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
),
    int Function(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
)>('GetProcessPreferredUILanguages');

int GetStringScripts(
  int dwFlags,
  Pointer<Utf16> lpString,
  int cchString,
  Pointer<Utf16> lpScripts,
  int cchScripts,
) =>
    _GetStringScripts(
      dwFlags,
      lpString,
      cchString,
      lpScripts,
      cchScripts,
    );

late final _GetStringScripts = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpString,
  Int32 cchString,
  Pointer<Utf16> lpScripts,
  Int32 cchScripts,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpString,
  int cchString,
  Pointer<Utf16> lpScripts,
  int cchScripts,
)>('GetStringScripts');

int GetStringTypeEx(
  int Locale,
  int dwInfoType,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Uint16> lpCharType,
) =>
    _GetStringTypeEx(
      Locale,
      dwInfoType,
      lpSrcStr,
      cchSrc,
      lpCharType,
    );

late final _GetStringTypeEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwInfoType,
  Pointer<Utf16> lpSrcStr,
  Int32 cchSrc,
  Pointer<Uint16> lpCharType,
),
    int Function(
  int Locale,
  int dwInfoType,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Uint16> lpCharType,
)>('GetStringTypeExW');

int GetStringType(
  int dwInfoType,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Uint16> lpCharType,
) =>
    _GetStringType(
      dwInfoType,
      lpSrcStr,
      cchSrc,
      lpCharType,
    );

late final _GetStringType = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwInfoType,
  Pointer<Utf16> lpSrcStr,
  Int32 cchSrc,
  Pointer<Uint16> lpCharType,
),
    int Function(
  int dwInfoType,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Uint16> lpCharType,
)>('GetStringTypeW');

int GetSystemDefaultLCID() => _GetSystemDefaultLCID();

late final _GetSystemDefaultLCID = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetSystemDefaultLCID');

int GetSystemDefaultLangID() => _GetSystemDefaultLangID();

late final _GetSystemDefaultLangID =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetSystemDefaultLangID');

int GetSystemDefaultLocaleName(
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
) =>
    _GetSystemDefaultLocaleName(
      lpLocaleName,
      cchLocaleName,
    );

late final _GetSystemDefaultLocaleName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Int32 cchLocaleName,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
)>('GetSystemDefaultLocaleName');

int GetSystemDefaultUILanguage() => _GetSystemDefaultUILanguage();

late final _GetSystemDefaultUILanguage =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetSystemDefaultUILanguage');

int GetSystemPreferredUILanguages(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
) =>
    _GetSystemPreferredUILanguages(
      dwFlags,
      pulNumLanguages,
      pwszLanguagesBuffer,
      pcchLanguagesBuffer,
    );

late final _GetSystemPreferredUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
),
    int Function(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
)>('GetSystemPreferredUILanguages');

int GetThreadLocale() => _GetThreadLocale();

late final _GetThreadLocale = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetThreadLocale');

int GetThreadPreferredUILanguages(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
) =>
    _GetThreadPreferredUILanguages(
      dwFlags,
      pulNumLanguages,
      pwszLanguagesBuffer,
      pcchLanguagesBuffer,
    );

late final _GetThreadPreferredUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
),
    int Function(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
)>('GetThreadPreferredUILanguages');

int GetThreadUILanguage() => _GetThreadUILanguage();

late final _GetThreadUILanguage = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetThreadUILanguage');

int GetTimeFormatEx(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<SYSTEMTIME> lpTime,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpTimeStr,
  int cchTime,
) =>
    _GetTimeFormatEx(
      lpLocaleName,
      dwFlags,
      lpTime,
      lpFormat,
      lpTimeStr,
      cchTime,
    );

late final _GetTimeFormatEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwFlags,
  Pointer<SYSTEMTIME> lpTime,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpTimeStr,
  Int32 cchTime,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwFlags,
  Pointer<SYSTEMTIME> lpTime,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpTimeStr,
  int cchTime,
)>('GetTimeFormatEx');

int GetTimeFormat(
  int Locale,
  int dwFlags,
  Pointer<SYSTEMTIME> lpTime,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpTimeStr,
  int cchTime,
) =>
    _GetTimeFormat(
      Locale,
      dwFlags,
      lpTime,
      lpFormat,
      lpTimeStr,
      cchTime,
    );

late final _GetTimeFormat = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFlags,
  Pointer<SYSTEMTIME> lpTime,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpTimeStr,
  Int32 cchTime,
),
    int Function(
  int Locale,
  int dwFlags,
  Pointer<SYSTEMTIME> lpTime,
  Pointer<Utf16> lpFormat,
  Pointer<Utf16> lpTimeStr,
  int cchTime,
)>('GetTimeFormatW');

int GetUILanguageInfo(
  int dwFlags,
  Pointer<Utf16> pwmszLanguage,
  Pointer<Utf16> pwszFallbackLanguages,
  Pointer<Uint32> pcchFallbackLanguages,
  Pointer<Uint32> pAttributes,
) =>
    _GetUILanguageInfo(
      dwFlags,
      pwmszLanguage,
      pwszFallbackLanguages,
      pcchFallbackLanguages,
      pAttributes,
    );

late final _GetUILanguageInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pwmszLanguage,
  Pointer<Utf16> pwszFallbackLanguages,
  Pointer<Uint32> pcchFallbackLanguages,
  Pointer<Uint32> pAttributes,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pwmszLanguage,
  Pointer<Utf16> pwszFallbackLanguages,
  Pointer<Uint32> pcchFallbackLanguages,
  Pointer<Uint32> pAttributes,
)>('GetUILanguageInfo');

int GetUserDefaultGeoName(
  Pointer<Utf16> geoName,
  int geoNameCount,
) =>
    _GetUserDefaultGeoName(
      geoName,
      geoNameCount,
    );

late final _GetUserDefaultGeoName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> geoName,
  Int32 geoNameCount,
),
    int Function(
  Pointer<Utf16> geoName,
  int geoNameCount,
)>('GetUserDefaultGeoName');

int GetUserDefaultLCID() => _GetUserDefaultLCID();

late final _GetUserDefaultLCID = _kernel32
    .lookupFunction<Uint32 Function(), int Function()>('GetUserDefaultLCID');

int GetUserDefaultLangID() => _GetUserDefaultLangID();

late final _GetUserDefaultLangID = _kernel32
    .lookupFunction<Uint16 Function(), int Function()>('GetUserDefaultLangID');

int GetUserDefaultLocaleName(
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
) =>
    _GetUserDefaultLocaleName(
      lpLocaleName,
      cchLocaleName,
    );

late final _GetUserDefaultLocaleName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Int32 cchLocaleName,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
)>('GetUserDefaultLocaleName');

int GetUserDefaultUILanguage() => _GetUserDefaultUILanguage();

late final _GetUserDefaultUILanguage =
    _kernel32.lookupFunction<Uint16 Function(), int Function()>(
        'GetUserDefaultUILanguage');

int GetUserGeoID(
  int GeoClass,
) =>
    _GetUserGeoID(
      GeoClass,
    );

late final _GetUserGeoID = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 GeoClass,
),
    int Function(
  int GeoClass,
)>('GetUserGeoID');

int GetUserPreferredUILanguages(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
) =>
    _GetUserPreferredUILanguages(
      dwFlags,
      pulNumLanguages,
      pwszLanguagesBuffer,
      pcchLanguagesBuffer,
    );

late final _GetUserPreferredUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
),
    int Function(
  int dwFlags,
  Pointer<Uint32> pulNumLanguages,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pcchLanguagesBuffer,
)>('GetUserPreferredUILanguages');

int IdnToNameprepUnicode(
  int dwFlags,
  Pointer<Utf16> lpUnicodeCharStr,
  int cchUnicodeChar,
  Pointer<Utf16> lpNameprepCharStr,
  int cchNameprepChar,
) =>
    _IdnToNameprepUnicode(
      dwFlags,
      lpUnicodeCharStr,
      cchUnicodeChar,
      lpNameprepCharStr,
      cchNameprepChar,
    );

late final _IdnToNameprepUnicode = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpUnicodeCharStr,
  Int32 cchUnicodeChar,
  Pointer<Utf16> lpNameprepCharStr,
  Int32 cchNameprepChar,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpUnicodeCharStr,
  int cchUnicodeChar,
  Pointer<Utf16> lpNameprepCharStr,
  int cchNameprepChar,
)>('IdnToNameprepUnicode');

int IsDBCSLeadByte(
  int TestChar,
) =>
    _IsDBCSLeadByte(
      TestChar,
    );

late final _IsDBCSLeadByte = _kernel32.lookupFunction<
    Int32 Function(
  Uint8 TestChar,
),
    int Function(
  int TestChar,
)>('IsDBCSLeadByte');

int IsDBCSLeadByteEx(
  int CodePage,
  int TestChar,
) =>
    _IsDBCSLeadByteEx(
      CodePage,
      TestChar,
    );

late final _IsDBCSLeadByteEx = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Uint8 TestChar,
),
    int Function(
  int CodePage,
  int TestChar,
)>('IsDBCSLeadByteEx');

int IsNLSDefinedString(
  int Function,
  int dwFlags,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer<Utf16> lpString,
  int cchStr,
) =>
    _IsNLSDefinedString(
      Function,
      dwFlags,
      lpVersionInformation,
      lpString,
      cchStr,
    );

late final _IsNLSDefinedString = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Function,
  Uint32 dwFlags,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer<Utf16> lpString,
  Int32 cchStr,
),
    int Function(
  int Function,
  int dwFlags,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer<Utf16> lpString,
  int cchStr,
)>('IsNLSDefinedString');

int IsNormalizedString(
  int NormForm,
  Pointer<Utf16> lpString,
  int cwLength,
) =>
    _IsNormalizedString(
      NormForm,
      lpString,
      cwLength,
    );

late final _IsNormalizedString = _kernel32.lookupFunction<
    Int32 Function(
  Int32 NormForm,
  Pointer<Utf16> lpString,
  Int32 cwLength,
),
    int Function(
  int NormForm,
  Pointer<Utf16> lpString,
  int cwLength,
)>('IsNormalizedString');

int IsValidCodePage(
  int CodePage,
) =>
    _IsValidCodePage(
      CodePage,
    );

late final _IsValidCodePage = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
),
    int Function(
  int CodePage,
)>('IsValidCodePage');

int IsValidLanguageGroup(
  int LanguageGroup,
  int dwFlags,
) =>
    _IsValidLanguageGroup(
      LanguageGroup,
      dwFlags,
    );

late final _IsValidLanguageGroup = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 LanguageGroup,
  Uint32 dwFlags,
),
    int Function(
  int LanguageGroup,
  int dwFlags,
)>('IsValidLanguageGroup');

int IsValidLocale(
  int Locale,
  int dwFlags,
) =>
    _IsValidLocale(
      Locale,
      dwFlags,
    );

late final _IsValidLocale = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwFlags,
),
    int Function(
  int Locale,
  int dwFlags,
)>('IsValidLocale');

int IsValidLocaleName(
  Pointer<Utf16> lpLocaleName,
) =>
    _IsValidLocaleName(
      lpLocaleName,
    );

late final _IsValidLocaleName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
)>('IsValidLocaleName');

int IsValidNLSVersion(
  int function,
  Pointer<Utf16> lpLocaleName,
  Pointer<NLSVERSIONINFOEX> lpVersionInformation,
) =>
    _IsValidNLSVersion(
      function,
      lpLocaleName,
      lpVersionInformation,
    );

late final _IsValidNLSVersion = _kernel32.lookupFunction<
    Uint32 Function(
  Uint32 function,
  Pointer<Utf16> lpLocaleName,
  Pointer<NLSVERSIONINFOEX> lpVersionInformation,
),
    int Function(
  int function,
  Pointer<Utf16> lpLocaleName,
  Pointer<NLSVERSIONINFOEX> lpVersionInformation,
)>('IsValidNLSVersion');

int LCIDToLocaleName(
  int Locale,
  Pointer<Utf16> lpName,
  int cchName,
  int dwFlags,
) =>
    _LCIDToLocaleName(
      Locale,
      lpName,
      cchName,
      dwFlags,
    );

late final _LCIDToLocaleName = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Pointer<Utf16> lpName,
  Int32 cchName,
  Uint32 dwFlags,
),
    int Function(
  int Locale,
  Pointer<Utf16> lpName,
  int cchName,
  int dwFlags,
)>('LCIDToLocaleName');

int LCMapStringEx(
  Pointer<Utf16> lpLocaleName,
  int dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  int sortHandle,
) =>
    _LCMapStringEx(
      lpLocaleName,
      dwMapFlags,
      lpSrcStr,
      cchSrc,
      lpDestStr,
      cchDest,
      lpVersionInformation,
      lpReserved,
      sortHandle,
    );

late final _LCMapStringEx = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpLocaleName,
  Uint32 dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  Int32 cchSrc,
  Pointer<Utf16> lpDestStr,
  Int32 cchDest,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  IntPtr sortHandle,
),
    int Function(
  Pointer<Utf16> lpLocaleName,
  int dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
  Pointer<NLSVERSIONINFO> lpVersionInformation,
  Pointer lpReserved,
  int sortHandle,
)>('LCMapStringEx');

int LCMapString(
  int Locale,
  int dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
) =>
    _LCMapString(
      Locale,
      dwMapFlags,
      lpSrcStr,
      cchSrc,
      lpDestStr,
      cchDest,
    );

late final _LCMapString = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  Int32 cchSrc,
  Pointer<Utf16> lpDestStr,
  Int32 cchDest,
),
    int Function(
  int Locale,
  int dwMapFlags,
  Pointer<Utf16> lpSrcStr,
  int cchSrc,
  Pointer<Utf16> lpDestStr,
  int cchDest,
)>('LCMapStringW');

int LocaleNameToLCID(
  Pointer<Utf16> lpName,
  int dwFlags,
) =>
    _LocaleNameToLCID(
      lpName,
      dwFlags,
    );

late final _LocaleNameToLCID = _kernel32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpName,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> lpName,
  int dwFlags,
)>('LocaleNameToLCID');

int MultiByteToWideChar(
  int CodePage,
  int dwFlags,
  Pointer<Utf8> lpMultiByteStr,
  int cbMultiByte,
  Pointer<Utf16> lpWideCharStr,
  int cchWideChar,
) =>
    _MultiByteToWideChar(
      CodePage,
      dwFlags,
      lpMultiByteStr,
      cbMultiByte,
      lpWideCharStr,
      cchWideChar,
    );

late final _MultiByteToWideChar = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Uint32 dwFlags,
  Pointer<Utf8> lpMultiByteStr,
  Int32 cbMultiByte,
  Pointer<Utf16> lpWideCharStr,
  Int32 cchWideChar,
),
    int Function(
  int CodePage,
  int dwFlags,
  Pointer<Utf8> lpMultiByteStr,
  int cbMultiByte,
  Pointer<Utf16> lpWideCharStr,
  int cchWideChar,
)>('MultiByteToWideChar');

int NormalizeString(
  int NormForm,
  Pointer<Utf16> lpSrcString,
  int cwSrcLength,
  Pointer<Utf16> lpDstString,
  int cwDstLength,
) =>
    _NormalizeString(
      NormForm,
      lpSrcString,
      cwSrcLength,
      lpDstString,
      cwDstLength,
    );

late final _NormalizeString = _kernel32.lookupFunction<
    Int32 Function(
  Int32 NormForm,
  Pointer<Utf16> lpSrcString,
  Int32 cwSrcLength,
  Pointer<Utf16> lpDstString,
  Int32 cwDstLength,
),
    int Function(
  int NormForm,
  Pointer<Utf16> lpSrcString,
  int cwSrcLength,
  Pointer<Utf16> lpDstString,
  int cwDstLength,
)>('NormalizeString');

int NotifyUILanguageChange(
  int dwFlags,
  Pointer<Utf16> pcwstrNewLanguage,
  Pointer<Utf16> pcwstrPreviousLanguage,
  int dwReserved,
  Pointer<Uint32> pdwStatusRtrn,
) =>
    _NotifyUILanguageChange(
      dwFlags,
      pcwstrNewLanguage,
      pcwstrPreviousLanguage,
      dwReserved,
      pdwStatusRtrn,
    );

late final _NotifyUILanguageChange = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pcwstrNewLanguage,
  Pointer<Utf16> pcwstrPreviousLanguage,
  Uint32 dwReserved,
  Pointer<Uint32> pdwStatusRtrn,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pcwstrNewLanguage,
  Pointer<Utf16> pcwstrPreviousLanguage,
  int dwReserved,
  Pointer<Uint32> pdwStatusRtrn,
)>('NotifyUILanguageChange');

int ResolveLocaleName(
  Pointer<Utf16> lpNameToResolve,
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
) =>
    _ResolveLocaleName(
      lpNameToResolve,
      lpLocaleName,
      cchLocaleName,
    );

late final _ResolveLocaleName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpNameToResolve,
  Pointer<Utf16> lpLocaleName,
  Int32 cchLocaleName,
),
    int Function(
  Pointer<Utf16> lpNameToResolve,
  Pointer<Utf16> lpLocaleName,
  int cchLocaleName,
)>('ResolveLocaleName');

void RestoreThreadPreferredUILanguages(
  int snapshot,
) =>
    _RestoreThreadPreferredUILanguages(
      snapshot,
    );

late final _RestoreThreadPreferredUILanguages = _kernel32.lookupFunction<
    Void Function(
  IntPtr snapshot,
),
    void Function(
  int snapshot,
)>('RestoreThreadPreferredUILanguages');

int SetCalendarInfo(
  int Locale,
  int Calendar,
  int CalType,
  Pointer<Utf16> lpCalData,
) =>
    _SetCalendarInfo(
      Locale,
      Calendar,
      CalType,
      lpCalData,
    );

late final _SetCalendarInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 Calendar,
  Uint32 CalType,
  Pointer<Utf16> lpCalData,
),
    int Function(
  int Locale,
  int Calendar,
  int CalType,
  Pointer<Utf16> lpCalData,
)>('SetCalendarInfoW');

int SetLocaleInfo(
  int Locale,
  int LCType,
  Pointer<Utf16> lpLCData,
) =>
    _SetLocaleInfo(
      Locale,
      LCType,
      lpLCData,
    );

late final _SetLocaleInfo = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Uint32 LCType,
  Pointer<Utf16> lpLCData,
),
    int Function(
  int Locale,
  int LCType,
  Pointer<Utf16> lpLCData,
)>('SetLocaleInfoW');

int SetProcessPreferredUILanguages(
  int dwFlags,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pulNumLanguages,
) =>
    _SetProcessPreferredUILanguages(
      dwFlags,
      pwszLanguagesBuffer,
      pulNumLanguages,
    );

late final _SetProcessPreferredUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pulNumLanguages,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pulNumLanguages,
)>('SetProcessPreferredUILanguages');

int SetThreadLocale(
  int Locale,
) =>
    _SetThreadLocale(
      Locale,
    );

late final _SetThreadLocale = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 Locale,
),
    int Function(
  int Locale,
)>('SetThreadLocale');

int SetThreadPreferredUILanguages(
  int dwFlags,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pulNumLanguages,
) =>
    _SetThreadPreferredUILanguages(
      dwFlags,
      pwszLanguagesBuffer,
      pulNumLanguages,
    );

late final _SetThreadPreferredUILanguages = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pulNumLanguages,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> pwszLanguagesBuffer,
  Pointer<Uint32> pulNumLanguages,
)>('SetThreadPreferredUILanguages');

int SetThreadPreferredUILanguages2(
  int flags,
  Pointer<Utf16> languages,
  Pointer<Uint32> numLanguagesSet,
  Pointer<IntPtr> snapshot,
) =>
    _SetThreadPreferredUILanguages2(
      flags,
      languages,
      numLanguagesSet,
      snapshot,
    );

late final _SetThreadPreferredUILanguages2 = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Utf16> languages,
  Pointer<Uint32> numLanguagesSet,
  Pointer<IntPtr> snapshot,
),
    int Function(
  int flags,
  Pointer<Utf16> languages,
  Pointer<Uint32> numLanguagesSet,
  Pointer<IntPtr> snapshot,
)>('SetThreadPreferredUILanguages2');

int SetThreadUILanguage(
  int LangId,
) =>
    _SetThreadUILanguage(
      LangId,
    );

late final _SetThreadUILanguage = _kernel32.lookupFunction<
    Uint16 Function(
  Uint16 LangId,
),
    int Function(
  int LangId,
)>('SetThreadUILanguage');

int SetUserGeoID(
  int GeoId,
) =>
    _SetUserGeoID(
      GeoId,
    );

late final _SetUserGeoID = _kernel32.lookupFunction<
    Int32 Function(
  Int32 GeoId,
),
    int Function(
  int GeoId,
)>('SetUserGeoID');

int SetUserGeoName(
  Pointer<Utf16> geoName,
) =>
    _SetUserGeoName(
      geoName,
    );

late final _SetUserGeoName = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> geoName,
),
    int Function(
  Pointer<Utf16> geoName,
)>('SetUserGeoName');

int VerifyScripts(
  int dwFlags,
  Pointer<Utf16> lpLocaleScripts,
  int cchLocaleScripts,
  Pointer<Utf16> lpTestScripts,
  int cchTestScripts,
) =>
    _VerifyScripts(
      dwFlags,
      lpLocaleScripts,
      cchLocaleScripts,
      lpTestScripts,
      cchTestScripts,
    );

late final _VerifyScripts = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpLocaleScripts,
  Int32 cchLocaleScripts,
  Pointer<Utf16> lpTestScripts,
  Int32 cchTestScripts,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpLocaleScripts,
  int cchLocaleScripts,
  Pointer<Utf16> lpTestScripts,
  int cchTestScripts,
)>('VerifyScripts');

int WideCharToMultiByte(
  int CodePage,
  int dwFlags,
  Pointer<Utf16> lpWideCharStr,
  int cchWideChar,
  Pointer<Utf8> lpMultiByteStr,
  int cbMultiByte,
  Pointer<Utf8> lpDefaultChar,
  Pointer<Int32> lpUsedDefaultChar,
) =>
    _WideCharToMultiByte(
      CodePage,
      dwFlags,
      lpWideCharStr,
      cchWideChar,
      lpMultiByteStr,
      cbMultiByte,
      lpDefaultChar,
      lpUsedDefaultChar,
    );

late final _WideCharToMultiByte = _kernel32.lookupFunction<
    Int32 Function(
  Uint32 CodePage,
  Uint32 dwFlags,
  Pointer<Utf16> lpWideCharStr,
  Int32 cchWideChar,
  Pointer<Utf8> lpMultiByteStr,
  Int32 cbMultiByte,
  Pointer<Utf8> lpDefaultChar,
  Pointer<Int32> lpUsedDefaultChar,
),
    int Function(
  int CodePage,
  int dwFlags,
  Pointer<Utf16> lpWideCharStr,
  int cchWideChar,
  Pointer<Utf8> lpMultiByteStr,
  int cbMultiByte,
  Pointer<Utf8> lpDefaultChar,
  Pointer<Int32> lpUsedDefaultChar,
)>('WideCharToMultiByte');

Pointer<Utf16> lstrcat(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
) =>
    _lstrcat(
      lpString1,
      lpString2,
    );

late final _lstrcat = _kernel32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
)>('lstrcatW');

int lstrcmp(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
) =>
    _lstrcmp(
      lpString1,
      lpString2,
    );

late final _lstrcmp = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
),
    int Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
)>('lstrcmpW');

int lstrcmpi(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
) =>
    _lstrcmpi(
      lpString1,
      lpString2,
    );

late final _lstrcmpi = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
),
    int Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
)>('lstrcmpiW');

Pointer<Utf16> lstrcpy(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
) =>
    _lstrcpy(
      lpString1,
      lpString2,
    );

late final _lstrcpy = _kernel32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
)>('lstrcpyW');

Pointer<Utf16> lstrcpyn(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
  int iMaxLength,
) =>
    _lstrcpyn(
      lpString1,
      lpString2,
      iMaxLength,
    );

late final _lstrcpyn = _kernel32.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
  Int32 iMaxLength,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
  int iMaxLength,
)>('lstrcpynW');

int lstrlen(
  Pointer<Utf16> lpString,
) =>
    _lstrlen(
      lpString,
    );

late final _lstrlen = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpString,
),
    int Function(
  Pointer<Utf16> lpString,
)>('lstrlenW');

// -----------------------------------------------------------------------
// normaliz.dll
// -----------------------------------------------------------------------
final _normaliz = DynamicLibrary.open('normaliz.dll');

int IdnToAscii(
  int dwFlags,
  Pointer<Utf16> lpUnicodeCharStr,
  int cchUnicodeChar,
  Pointer<Utf16> lpASCIICharStr,
  int cchASCIIChar,
) =>
    _IdnToAscii(
      dwFlags,
      lpUnicodeCharStr,
      cchUnicodeChar,
      lpASCIICharStr,
      cchASCIIChar,
    );

late final _IdnToAscii = _normaliz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpUnicodeCharStr,
  Int32 cchUnicodeChar,
  Pointer<Utf16> lpASCIICharStr,
  Int32 cchASCIIChar,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpUnicodeCharStr,
  int cchUnicodeChar,
  Pointer<Utf16> lpASCIICharStr,
  int cchASCIIChar,
)>('IdnToAscii');

int IdnToUnicode(
  int dwFlags,
  Pointer<Utf16> lpASCIICharStr,
  int cchASCIIChar,
  Pointer<Utf16> lpUnicodeCharStr,
  int cchUnicodeChar,
) =>
    _IdnToUnicode(
      dwFlags,
      lpASCIICharStr,
      cchASCIIChar,
      lpUnicodeCharStr,
      cchUnicodeChar,
    );

late final _IdnToUnicode = _normaliz.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  Pointer<Utf16> lpASCIICharStr,
  Int32 cchASCIIChar,
  Pointer<Utf16> lpUnicodeCharStr,
  Int32 cchUnicodeChar,
),
    int Function(
  int dwFlags,
  Pointer<Utf16> lpASCIICharStr,
  int cchASCIIChar,
  Pointer<Utf16> lpUnicodeCharStr,
  int cchUnicodeChar,
)>('IdnToUnicode');

// -----------------------------------------------------------------------
// elscore.dll
// -----------------------------------------------------------------------
final _elscore = DynamicLibrary.open('elscore.dll');

int MappingDoAction(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
  int dwRangeIndex,
  Pointer<Utf16> pszActionId,
) =>
    _MappingDoAction(
      pBag,
      dwRangeIndex,
      pszActionId,
    );

late final _MappingDoAction = _elscore.lookupFunction<
    Int32 Function(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
  Uint32 dwRangeIndex,
  Pointer<Utf16> pszActionId,
),
    int Function(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
  int dwRangeIndex,
  Pointer<Utf16> pszActionId,
)>('MappingDoAction');

int MappingFreePropertyBag(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
) =>
    _MappingFreePropertyBag(
      pBag,
    );

late final _MappingFreePropertyBag = _elscore.lookupFunction<
    Int32 Function(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
),
    int Function(
  Pointer<MAPPING_PROPERTY_BAG> pBag,
)>('MappingFreePropertyBag');

int MappingFreeServices(
  Pointer<MAPPING_SERVICE_INFO> pServiceInfo,
) =>
    _MappingFreeServices(
      pServiceInfo,
    );

late final _MappingFreeServices = _elscore.lookupFunction<
    Int32 Function(
  Pointer<MAPPING_SERVICE_INFO> pServiceInfo,
),
    int Function(
  Pointer<MAPPING_SERVICE_INFO> pServiceInfo,
)>('MappingFreeServices');

int MappingGetServices(
  Pointer<MAPPING_ENUM_OPTIONS> pOptions,
  Pointer<Pointer<MAPPING_SERVICE_INFO>> prgServices,
  Pointer<Uint32> pdwServicesCount,
) =>
    _MappingGetServices(
      pOptions,
      prgServices,
      pdwServicesCount,
    );

late final _MappingGetServices = _elscore.lookupFunction<
    Int32 Function(
  Pointer<MAPPING_ENUM_OPTIONS> pOptions,
  Pointer<Pointer<MAPPING_SERVICE_INFO>> prgServices,
  Pointer<Uint32> pdwServicesCount,
),
    int Function(
  Pointer<MAPPING_ENUM_OPTIONS> pOptions,
  Pointer<Pointer<MAPPING_SERVICE_INFO>> prgServices,
  Pointer<Uint32> pdwServicesCount,
)>('MappingGetServices');

int MappingRecognizeText(
  Pointer<MAPPING_SERVICE_INFO> pServiceInfo,
  Pointer<Utf16> pszText,
  int dwLength,
  int dwIndex,
  Pointer<MAPPING_OPTIONS> pOptions,
  Pointer<MAPPING_PROPERTY_BAG> pbag,
) =>
    _MappingRecognizeText(
      pServiceInfo,
      pszText,
      dwLength,
      dwIndex,
      pOptions,
      pbag,
    );

late final _MappingRecognizeText = _elscore.lookupFunction<
    Int32 Function(
  Pointer<MAPPING_SERVICE_INFO> pServiceInfo,
  Pointer<Utf16> pszText,
  Uint32 dwLength,
  Uint32 dwIndex,
  Pointer<MAPPING_OPTIONS> pOptions,
  Pointer<MAPPING_PROPERTY_BAG> pbag,
),
    int Function(
  Pointer<MAPPING_SERVICE_INFO> pServiceInfo,
  Pointer<Utf16> pszText,
  int dwLength,
  int dwIndex,
  Pointer<MAPPING_OPTIONS> pOptions,
  Pointer<MAPPING_PROPERTY_BAG> pbag,
)>('MappingRecognizeText');

// -----------------------------------------------------------------------
// usp10.dll
// -----------------------------------------------------------------------
final _usp10 = DynamicLibrary.open('usp10.dll');

int ScriptApplyDigitSubstitution(
  Pointer<SCRIPT_DIGITSUBSTITUTE> psds,
  Pointer<SCRIPT_CONTROL> psc,
  Pointer<SCRIPT_STATE> pss,
) =>
    _ScriptApplyDigitSubstitution(
      psds,
      psc,
      pss,
    );

late final _ScriptApplyDigitSubstitution = _usp10.lookupFunction<
    Int32 Function(
  Pointer<SCRIPT_DIGITSUBSTITUTE> psds,
  Pointer<SCRIPT_CONTROL> psc,
  Pointer<SCRIPT_STATE> pss,
),
    int Function(
  Pointer<SCRIPT_DIGITSUBSTITUTE> psds,
  Pointer<SCRIPT_CONTROL> psc,
  Pointer<SCRIPT_STATE> pss,
)>('ScriptApplyDigitSubstitution');

int ScriptApplyLogicalWidth(
  Pointer<Int32> piDx,
  int cChars,
  int cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<ABC> pABC,
  Pointer<Int32> piJustify,
) =>
    _ScriptApplyLogicalWidth(
      piDx,
      cChars,
      cGlyphs,
      pwLogClust,
      psva,
      piAdvance,
      psa,
      pABC,
      piJustify,
    );

late final _ScriptApplyLogicalWidth = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Int32> piDx,
  Int32 cChars,
  Int32 cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<ABC> pABC,
  Pointer<Int32> piJustify,
),
    int Function(
  Pointer<Int32> piDx,
  int cChars,
  int cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<ABC> pABC,
  Pointer<Int32> piJustify,
)>('ScriptApplyLogicalWidth');

int ScriptBreak(
  Pointer<Utf16> pwcChars,
  int cChars,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<SCRIPT_LOGATTR> psla,
) =>
    _ScriptBreak(
      pwcChars,
      cChars,
      psa,
      psla,
    );

late final _ScriptBreak = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcChars,
  Int32 cChars,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<SCRIPT_LOGATTR> psla,
),
    int Function(
  Pointer<Utf16> pwcChars,
  int cChars,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<SCRIPT_LOGATTR> psla,
)>('ScriptBreak');

int ScriptCPtoX(
  int iCP,
  int fTrailing,
  int cChars,
  int cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piX,
) =>
    _ScriptCPtoX(
      iCP,
      fTrailing,
      cChars,
      cGlyphs,
      pwLogClust,
      psva,
      piAdvance,
      psa,
      piX,
    );

late final _ScriptCPtoX = _usp10.lookupFunction<
    Int32 Function(
  Int32 iCP,
  Int32 fTrailing,
  Int32 cChars,
  Int32 cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piX,
),
    int Function(
  int iCP,
  int fTrailing,
  int cChars,
  int cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piX,
)>('ScriptCPtoX');

int ScriptCacheGetHeight(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Int32> tmHeight,
) =>
    _ScriptCacheGetHeight(
      hdc,
      psc,
      tmHeight,
    );

late final _ScriptCacheGetHeight = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<Int32> tmHeight,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Int32> tmHeight,
)>('ScriptCacheGetHeight');

int ScriptFreeCache(
  Pointer<Pointer> psc,
) =>
    _ScriptFreeCache(
      psc,
    );

late final _ScriptFreeCache = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Pointer> psc,
),
    int Function(
  Pointer<Pointer> psc,
)>('ScriptFreeCache');

int ScriptGetCMap(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Utf16> pwcInChars,
  int cChars,
  int dwFlags,
  Pointer<Uint16> pwOutGlyphs,
) =>
    _ScriptGetCMap(
      hdc,
      psc,
      pwcInChars,
      cChars,
      dwFlags,
      pwOutGlyphs,
    );

late final _ScriptGetCMap = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<Utf16> pwcInChars,
  Int32 cChars,
  Uint32 dwFlags,
  Pointer<Uint16> pwOutGlyphs,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Utf16> pwcInChars,
  int cChars,
  int dwFlags,
  Pointer<Uint16> pwOutGlyphs,
)>('ScriptGetCMap');

int ScriptGetFontAlternateGlyphs(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int tagFeature,
  int wGlyphId,
  int cMaxAlternates,
  Pointer<Uint16> pAlternateGlyphs,
  Pointer<Int32> pcAlternates,
) =>
    _ScriptGetFontAlternateGlyphs(
      hdc,
      psc,
      psa,
      tagScript,
      tagLangSys,
      tagFeature,
      wGlyphId,
      cMaxAlternates,
      pAlternateGlyphs,
      pcAlternates,
    );

late final _ScriptGetFontAlternateGlyphs = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Uint32 tagLangSys,
  Uint32 tagFeature,
  Uint16 wGlyphId,
  Int32 cMaxAlternates,
  Pointer<Uint16> pAlternateGlyphs,
  Pointer<Int32> pcAlternates,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int tagFeature,
  int wGlyphId,
  int cMaxAlternates,
  Pointer<Uint16> pAlternateGlyphs,
  Pointer<Int32> pcAlternates,
)>('ScriptGetFontAlternateGlyphs');

int ScriptGetFontFeatureTags(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int cMaxTags,
  Pointer<Uint32> pFeatureTags,
  Pointer<Int32> pcTags,
) =>
    _ScriptGetFontFeatureTags(
      hdc,
      psc,
      psa,
      tagScript,
      tagLangSys,
      cMaxTags,
      pFeatureTags,
      pcTags,
    );

late final _ScriptGetFontFeatureTags = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Uint32 tagLangSys,
  Int32 cMaxTags,
  Pointer<Uint32> pFeatureTags,
  Pointer<Int32> pcTags,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int cMaxTags,
  Pointer<Uint32> pFeatureTags,
  Pointer<Int32> pcTags,
)>('ScriptGetFontFeatureTags');

int ScriptGetFontLanguageTags(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int cMaxTags,
  Pointer<Uint32> pLangsysTags,
  Pointer<Int32> pcTags,
) =>
    _ScriptGetFontLanguageTags(
      hdc,
      psc,
      psa,
      tagScript,
      cMaxTags,
      pLangsysTags,
      pcTags,
    );

late final _ScriptGetFontLanguageTags = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Int32 cMaxTags,
  Pointer<Uint32> pLangsysTags,
  Pointer<Int32> pcTags,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int cMaxTags,
  Pointer<Uint32> pLangsysTags,
  Pointer<Int32> pcTags,
)>('ScriptGetFontLanguageTags');

int ScriptGetFontProperties(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_FONTPROPERTIES> sfp,
) =>
    _ScriptGetFontProperties(
      hdc,
      psc,
      sfp,
    );

late final _ScriptGetFontProperties = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_FONTPROPERTIES> sfp,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_FONTPROPERTIES> sfp,
)>('ScriptGetFontProperties');

int ScriptGetFontScriptTags(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int cMaxTags,
  Pointer<Uint32> pScriptTags,
  Pointer<Int32> pcTags,
) =>
    _ScriptGetFontScriptTags(
      hdc,
      psc,
      psa,
      cMaxTags,
      pScriptTags,
      pcTags,
    );

late final _ScriptGetFontScriptTags = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Int32 cMaxTags,
  Pointer<Uint32> pScriptTags,
  Pointer<Int32> pcTags,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int cMaxTags,
  Pointer<Uint32> pScriptTags,
  Pointer<Int32> pcTags,
)>('ScriptGetFontScriptTags');

int ScriptGetGlyphABCWidth(
  int hdc,
  Pointer<Pointer> psc,
  int wGlyph,
  Pointer<ABC> pABC,
) =>
    _ScriptGetGlyphABCWidth(
      hdc,
      psc,
      wGlyph,
      pABC,
    );

late final _ScriptGetGlyphABCWidth = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Uint16 wGlyph,
  Pointer<ABC> pABC,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  int wGlyph,
  Pointer<ABC> pABC,
)>('ScriptGetGlyphABCWidth');

int ScriptGetLogicalWidths(
  Pointer<SCRIPT_ANALYSIS> psa,
  int cChars,
  int cGlyphs,
  Pointer<Int32> piGlyphWidth,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piDx,
) =>
    _ScriptGetLogicalWidths(
      psa,
      cChars,
      cGlyphs,
      piGlyphWidth,
      pwLogClust,
      psva,
      piDx,
    );

late final _ScriptGetLogicalWidths = _usp10.lookupFunction<
    Int32 Function(
  Pointer<SCRIPT_ANALYSIS> psa,
  Int32 cChars,
  Int32 cGlyphs,
  Pointer<Int32> piGlyphWidth,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piDx,
),
    int Function(
  Pointer<SCRIPT_ANALYSIS> psa,
  int cChars,
  int cGlyphs,
  Pointer<Int32> piGlyphWidth,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piDx,
)>('ScriptGetLogicalWidths');

int ScriptGetProperties(
  Pointer<Pointer<Pointer<SCRIPT_PROPERTIES>>> ppSp,
  Pointer<Int32> piNumScripts,
) =>
    _ScriptGetProperties(
      ppSp,
      piNumScripts,
    );

late final _ScriptGetProperties = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Pointer<SCRIPT_PROPERTIES>>> ppSp,
  Pointer<Int32> piNumScripts,
),
    int Function(
  Pointer<Pointer<Pointer<SCRIPT_PROPERTIES>>> ppSp,
  Pointer<Int32> piNumScripts,
)>('ScriptGetProperties');

int ScriptIsComplex(
  Pointer<Utf16> pwcInChars,
  int cInChars,
  int dwFlags,
) =>
    _ScriptIsComplex(
      pwcInChars,
      cInChars,
      dwFlags,
    );

late final _ScriptIsComplex = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcInChars,
  Int32 cInChars,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwcInChars,
  int cInChars,
  int dwFlags,
)>('ScriptIsComplex');

int ScriptItemize(
  Pointer<Utf16> pwcInChars,
  int cInChars,
  int cMaxItems,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<SCRIPT_ITEM> pItems,
  Pointer<Int32> pcItems,
) =>
    _ScriptItemize(
      pwcInChars,
      cInChars,
      cMaxItems,
      psControl,
      psState,
      pItems,
      pcItems,
    );

late final _ScriptItemize = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcInChars,
  Int32 cInChars,
  Int32 cMaxItems,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<SCRIPT_ITEM> pItems,
  Pointer<Int32> pcItems,
),
    int Function(
  Pointer<Utf16> pwcInChars,
  int cInChars,
  int cMaxItems,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<SCRIPT_ITEM> pItems,
  Pointer<Int32> pcItems,
)>('ScriptItemize');

int ScriptItemizeOpenType(
  Pointer<Utf16> pwcInChars,
  int cInChars,
  int cMaxItems,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<SCRIPT_ITEM> pItems,
  Pointer<Uint32> pScriptTags,
  Pointer<Int32> pcItems,
) =>
    _ScriptItemizeOpenType(
      pwcInChars,
      cInChars,
      cMaxItems,
      psControl,
      psState,
      pItems,
      pScriptTags,
      pcItems,
    );

late final _ScriptItemizeOpenType = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwcInChars,
  Int32 cInChars,
  Int32 cMaxItems,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<SCRIPT_ITEM> pItems,
  Pointer<Uint32> pScriptTags,
  Pointer<Int32> pcItems,
),
    int Function(
  Pointer<Utf16> pwcInChars,
  int cInChars,
  int cMaxItems,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<SCRIPT_ITEM> pItems,
  Pointer<Uint32> pScriptTags,
  Pointer<Int32> pcItems,
)>('ScriptItemizeOpenType');

int ScriptJustify(
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  int cGlyphs,
  int iDx,
  int iMinKashida,
  Pointer<Int32> piJustify,
) =>
    _ScriptJustify(
      psva,
      piAdvance,
      cGlyphs,
      iDx,
      iMinKashida,
      piJustify,
    );

late final _ScriptJustify = _usp10.lookupFunction<
    Int32 Function(
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Int32 cGlyphs,
  Int32 iDx,
  Int32 iMinKashida,
  Pointer<Int32> piJustify,
),
    int Function(
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  int cGlyphs,
  int iDx,
  int iMinKashida,
  Pointer<Int32> piJustify,
)>('ScriptJustify');

int ScriptLayout(
  int cRuns,
  Pointer<Uint8> pbLevel,
  Pointer<Int32> piVisualToLogical,
  Pointer<Int32> piLogicalToVisual,
) =>
    _ScriptLayout(
      cRuns,
      pbLevel,
      piVisualToLogical,
      piLogicalToVisual,
    );

late final _ScriptLayout = _usp10.lookupFunction<
    Int32 Function(
  Int32 cRuns,
  Pointer<Uint8> pbLevel,
  Pointer<Int32> piVisualToLogical,
  Pointer<Int32> piLogicalToVisual,
),
    int Function(
  int cRuns,
  Pointer<Uint8> pbLevel,
  Pointer<Int32> piVisualToLogical,
  Pointer<Int32> piLogicalToVisual,
)>('ScriptLayout');

int ScriptPlace(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Uint16> pwGlyphs,
  int cGlyphs,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piAdvance,
  Pointer<GOFFSET> pGoffset,
  Pointer<ABC> pABC,
) =>
    _ScriptPlace(
      hdc,
      psc,
      pwGlyphs,
      cGlyphs,
      psva,
      psa,
      piAdvance,
      pGoffset,
      pABC,
    );

late final _ScriptPlace = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<Uint16> pwGlyphs,
  Int32 cGlyphs,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piAdvance,
  Pointer<GOFFSET> pGoffset,
  Pointer<ABC> pABC,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Uint16> pwGlyphs,
  int cGlyphs,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piAdvance,
  Pointer<GOFFSET> pGoffset,
  Pointer<ABC> pABC,
)>('ScriptPlace');

int ScriptPlaceOpenType(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  Pointer<Int32> rcRangeChars,
  Pointer<Pointer<textrange_properties>> rpRangeProperties,
  int cRanges,
  Pointer<Utf16> pwcChars,
  Pointer<Uint16> pwLogClust,
  Pointer<script_charprop> pCharProps,
  int cChars,
  Pointer<Uint16> pwGlyphs,
  Pointer<script_glyphprop> pGlyphProps,
  int cGlyphs,
  Pointer<Int32> piAdvance,
  Pointer<GOFFSET> pGoffset,
  Pointer<ABC> pABC,
) =>
    _ScriptPlaceOpenType(
      hdc,
      psc,
      psa,
      tagScript,
      tagLangSys,
      rcRangeChars,
      rpRangeProperties,
      cRanges,
      pwcChars,
      pwLogClust,
      pCharProps,
      cChars,
      pwGlyphs,
      pGlyphProps,
      cGlyphs,
      piAdvance,
      pGoffset,
      pABC,
    );

late final _ScriptPlaceOpenType = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Uint32 tagLangSys,
  Pointer<Int32> rcRangeChars,
  Pointer<Pointer<textrange_properties>> rpRangeProperties,
  Int32 cRanges,
  Pointer<Utf16> pwcChars,
  Pointer<Uint16> pwLogClust,
  Pointer<script_charprop> pCharProps,
  Int32 cChars,
  Pointer<Uint16> pwGlyphs,
  Pointer<script_glyphprop> pGlyphProps,
  Int32 cGlyphs,
  Pointer<Int32> piAdvance,
  Pointer<GOFFSET> pGoffset,
  Pointer<ABC> pABC,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  Pointer<Int32> rcRangeChars,
  Pointer<Pointer<textrange_properties>> rpRangeProperties,
  int cRanges,
  Pointer<Utf16> pwcChars,
  Pointer<Uint16> pwLogClust,
  Pointer<script_charprop> pCharProps,
  int cChars,
  Pointer<Uint16> pwGlyphs,
  Pointer<script_glyphprop> pGlyphProps,
  int cGlyphs,
  Pointer<Int32> piAdvance,
  Pointer<GOFFSET> pGoffset,
  Pointer<ABC> pABC,
)>('ScriptPlaceOpenType');

int ScriptPositionSingleGlyph(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int tagFeature,
  int lParameter,
  int wGlyphId,
  int iAdvance,
  GOFFSET GOffset,
  Pointer<Int32> piOutAdvance,
  Pointer<GOFFSET> pOutGoffset,
) =>
    _ScriptPositionSingleGlyph(
      hdc,
      psc,
      psa,
      tagScript,
      tagLangSys,
      tagFeature,
      lParameter,
      wGlyphId,
      iAdvance,
      GOffset,
      piOutAdvance,
      pOutGoffset,
    );

late final _ScriptPositionSingleGlyph = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Uint32 tagLangSys,
  Uint32 tagFeature,
  Int32 lParameter,
  Uint16 wGlyphId,
  Int32 iAdvance,
  GOFFSET GOffset,
  Pointer<Int32> piOutAdvance,
  Pointer<GOFFSET> pOutGoffset,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int tagFeature,
  int lParameter,
  int wGlyphId,
  int iAdvance,
  GOFFSET GOffset,
  Pointer<Int32> piOutAdvance,
  Pointer<GOFFSET> pOutGoffset,
)>('ScriptPositionSingleGlyph');

int ScriptRecordDigitSubstitution(
  int Locale,
  Pointer<SCRIPT_DIGITSUBSTITUTE> psds,
) =>
    _ScriptRecordDigitSubstitution(
      Locale,
      psds,
    );

late final _ScriptRecordDigitSubstitution = _usp10.lookupFunction<
    Int32 Function(
  Uint32 Locale,
  Pointer<SCRIPT_DIGITSUBSTITUTE> psds,
),
    int Function(
  int Locale,
  Pointer<SCRIPT_DIGITSUBSTITUTE> psds,
)>('ScriptRecordDigitSubstitution');

int ScriptShape(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Utf16> pwcChars,
  int cChars,
  int cMaxGlyphs,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Uint16> pwOutGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> pcGlyphs,
) =>
    _ScriptShape(
      hdc,
      psc,
      pwcChars,
      cChars,
      cMaxGlyphs,
      psa,
      pwOutGlyphs,
      pwLogClust,
      psva,
      pcGlyphs,
    );

late final _ScriptShape = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<Utf16> pwcChars,
  Int32 cChars,
  Int32 cMaxGlyphs,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Uint16> pwOutGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> pcGlyphs,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<Utf16> pwcChars,
  int cChars,
  int cMaxGlyphs,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Uint16> pwOutGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> pcGlyphs,
)>('ScriptShape');

int ScriptShapeOpenType(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  Pointer<Int32> rcRangeChars,
  Pointer<Pointer<textrange_properties>> rpRangeProperties,
  int cRanges,
  Pointer<Utf16> pwcChars,
  int cChars,
  int cMaxGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<script_charprop> pCharProps,
  Pointer<Uint16> pwOutGlyphs,
  Pointer<script_glyphprop> pOutGlyphProps,
  Pointer<Int32> pcGlyphs,
) =>
    _ScriptShapeOpenType(
      hdc,
      psc,
      psa,
      tagScript,
      tagLangSys,
      rcRangeChars,
      rpRangeProperties,
      cRanges,
      pwcChars,
      cChars,
      cMaxGlyphs,
      pwLogClust,
      pCharProps,
      pwOutGlyphs,
      pOutGlyphProps,
      pcGlyphs,
    );

late final _ScriptShapeOpenType = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Uint32 tagLangSys,
  Pointer<Int32> rcRangeChars,
  Pointer<Pointer<textrange_properties>> rpRangeProperties,
  Int32 cRanges,
  Pointer<Utf16> pwcChars,
  Int32 cChars,
  Int32 cMaxGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<script_charprop> pCharProps,
  Pointer<Uint16> pwOutGlyphs,
  Pointer<script_glyphprop> pOutGlyphProps,
  Pointer<Int32> pcGlyphs,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  Pointer<Int32> rcRangeChars,
  Pointer<Pointer<textrange_properties>> rpRangeProperties,
  int cRanges,
  Pointer<Utf16> pwcChars,
  int cChars,
  int cMaxGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<script_charprop> pCharProps,
  Pointer<Uint16> pwOutGlyphs,
  Pointer<script_glyphprop> pOutGlyphProps,
  Pointer<Int32> pcGlyphs,
)>('ScriptShapeOpenType');

int ScriptStringAnalyse(
  int hdc,
  Pointer pString,
  int cString,
  int cGlyphs,
  int iCharset,
  int dwFlags,
  int iReqWidth,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<Int32> piDx,
  Pointer<SCRIPT_TABDEF> pTabdef,
  Pointer<Uint8> pbInClass,
  Pointer<Pointer> pssa,
) =>
    _ScriptStringAnalyse(
      hdc,
      pString,
      cString,
      cGlyphs,
      iCharset,
      dwFlags,
      iReqWidth,
      psControl,
      psState,
      piDx,
      pTabdef,
      pbInClass,
      pssa,
    );

late final _ScriptStringAnalyse = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer pString,
  Int32 cString,
  Int32 cGlyphs,
  Int32 iCharset,
  Uint32 dwFlags,
  Int32 iReqWidth,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<Int32> piDx,
  Pointer<SCRIPT_TABDEF> pTabdef,
  Pointer<Uint8> pbInClass,
  Pointer<Pointer> pssa,
),
    int Function(
  int hdc,
  Pointer pString,
  int cString,
  int cGlyphs,
  int iCharset,
  int dwFlags,
  int iReqWidth,
  Pointer<SCRIPT_CONTROL> psControl,
  Pointer<SCRIPT_STATE> psState,
  Pointer<Int32> piDx,
  Pointer<SCRIPT_TABDEF> pTabdef,
  Pointer<Uint8> pbInClass,
  Pointer<Pointer> pssa,
)>('ScriptStringAnalyse');

int ScriptStringCPtoX(
  Pointer ssa,
  int icp,
  int fTrailing,
  Pointer<Int32> pX,
) =>
    _ScriptStringCPtoX(
      ssa,
      icp,
      fTrailing,
      pX,
    );

late final _ScriptStringCPtoX = _usp10.lookupFunction<
    Int32 Function(
  Pointer ssa,
  Int32 icp,
  Int32 fTrailing,
  Pointer<Int32> pX,
),
    int Function(
  Pointer ssa,
  int icp,
  int fTrailing,
  Pointer<Int32> pX,
)>('ScriptStringCPtoX');

int ScriptStringFree(
  Pointer<Pointer> pssa,
) =>
    _ScriptStringFree(
      pssa,
    );

late final _ScriptStringFree = _usp10.lookupFunction<
    Int32 Function(
  Pointer<Pointer> pssa,
),
    int Function(
  Pointer<Pointer> pssa,
)>('ScriptStringFree');

int ScriptStringGetLogicalWidths(
  Pointer ssa,
  Pointer<Int32> piDx,
) =>
    _ScriptStringGetLogicalWidths(
      ssa,
      piDx,
    );

late final _ScriptStringGetLogicalWidths = _usp10.lookupFunction<
    Int32 Function(
  Pointer ssa,
  Pointer<Int32> piDx,
),
    int Function(
  Pointer ssa,
  Pointer<Int32> piDx,
)>('ScriptStringGetLogicalWidths');

int ScriptStringGetOrder(
  Pointer ssa,
  Pointer<Uint32> puOrder,
) =>
    _ScriptStringGetOrder(
      ssa,
      puOrder,
    );

late final _ScriptStringGetOrder = _usp10.lookupFunction<
    Int32 Function(
  Pointer ssa,
  Pointer<Uint32> puOrder,
),
    int Function(
  Pointer ssa,
  Pointer<Uint32> puOrder,
)>('ScriptStringGetOrder');

int ScriptStringOut(
  Pointer ssa,
  int iX,
  int iY,
  int uOptions,
  Pointer<RECT> prc,
  int iMinSel,
  int iMaxSel,
  int fDisabled,
) =>
    _ScriptStringOut(
      ssa,
      iX,
      iY,
      uOptions,
      prc,
      iMinSel,
      iMaxSel,
      fDisabled,
    );

late final _ScriptStringOut = _usp10.lookupFunction<
    Int32 Function(
  Pointer ssa,
  Int32 iX,
  Int32 iY,
  Uint32 uOptions,
  Pointer<RECT> prc,
  Int32 iMinSel,
  Int32 iMaxSel,
  Int32 fDisabled,
),
    int Function(
  Pointer ssa,
  int iX,
  int iY,
  int uOptions,
  Pointer<RECT> prc,
  int iMinSel,
  int iMaxSel,
  int fDisabled,
)>('ScriptStringOut');

int ScriptStringValidate(
  Pointer ssa,
) =>
    _ScriptStringValidate(
      ssa,
    );

late final _ScriptStringValidate = _usp10.lookupFunction<
    Int32 Function(
  Pointer ssa,
),
    int Function(
  Pointer ssa,
)>('ScriptStringValidate');

int ScriptStringXtoCP(
  Pointer ssa,
  int iX,
  Pointer<Int32> piCh,
  Pointer<Int32> piTrailing,
) =>
    _ScriptStringXtoCP(
      ssa,
      iX,
      piCh,
      piTrailing,
    );

late final _ScriptStringXtoCP = _usp10.lookupFunction<
    Int32 Function(
  Pointer ssa,
  Int32 iX,
  Pointer<Int32> piCh,
  Pointer<Int32> piTrailing,
),
    int Function(
  Pointer ssa,
  int iX,
  Pointer<Int32> piCh,
  Pointer<Int32> piTrailing,
)>('ScriptStringXtoCP');

Pointer<SCRIPT_LOGATTR> ScriptString_pLogAttr(
  Pointer ssa,
) =>
    _ScriptString_pLogAttr(
      ssa,
    );

late final _ScriptString_pLogAttr = _usp10.lookupFunction<
    Pointer<SCRIPT_LOGATTR> Function(
  Pointer ssa,
),
    Pointer<SCRIPT_LOGATTR> Function(
  Pointer ssa,
)>('ScriptString_pLogAttr');

Pointer<SIZE> ScriptString_pSize(
  Pointer ssa,
) =>
    _ScriptString_pSize(
      ssa,
    );

late final _ScriptString_pSize = _usp10.lookupFunction<
    Pointer<SIZE> Function(
  Pointer ssa,
),
    Pointer<SIZE> Function(
  Pointer ssa,
)>('ScriptString_pSize');

Pointer<Int32> ScriptString_pcOutChars(
  Pointer ssa,
) =>
    _ScriptString_pcOutChars(
      ssa,
    );

late final _ScriptString_pcOutChars = _usp10.lookupFunction<
    Pointer<Int32> Function(
  Pointer ssa,
),
    Pointer<Int32> Function(
  Pointer ssa,
)>('ScriptString_pcOutChars');

int ScriptSubstituteSingleGlyph(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int tagFeature,
  int lParameter,
  int wGlyphId,
  Pointer<Uint16> pwOutGlyphId,
) =>
    _ScriptSubstituteSingleGlyph(
      hdc,
      psc,
      psa,
      tagScript,
      tagLangSys,
      tagFeature,
      lParameter,
      wGlyphId,
      pwOutGlyphId,
    );

late final _ScriptSubstituteSingleGlyph = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Uint32 tagScript,
  Uint32 tagLangSys,
  Uint32 tagFeature,
  Int32 lParameter,
  Uint16 wGlyphId,
  Pointer<Uint16> pwOutGlyphId,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  Pointer<SCRIPT_ANALYSIS> psa,
  int tagScript,
  int tagLangSys,
  int tagFeature,
  int lParameter,
  int wGlyphId,
  Pointer<Uint16> pwOutGlyphId,
)>('ScriptSubstituteSingleGlyph');

int ScriptTextOut(
  int hdc,
  Pointer<Pointer> psc,
  int x,
  int y,
  int fuOptions,
  Pointer<RECT> lprc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Utf16> pwcReserved,
  int iReserved,
  Pointer<Uint16> pwGlyphs,
  int cGlyphs,
  Pointer<Int32> piAdvance,
  Pointer<Int32> piJustify,
  Pointer<GOFFSET> pGoffset,
) =>
    _ScriptTextOut(
      hdc,
      psc,
      x,
      y,
      fuOptions,
      lprc,
      psa,
      pwcReserved,
      iReserved,
      pwGlyphs,
      cGlyphs,
      piAdvance,
      piJustify,
      pGoffset,
    );

late final _ScriptTextOut = _usp10.lookupFunction<
    Int32 Function(
  IntPtr hdc,
  Pointer<Pointer> psc,
  Int32 x,
  Int32 y,
  Uint32 fuOptions,
  Pointer<RECT> lprc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Utf16> pwcReserved,
  Int32 iReserved,
  Pointer<Uint16> pwGlyphs,
  Int32 cGlyphs,
  Pointer<Int32> piAdvance,
  Pointer<Int32> piJustify,
  Pointer<GOFFSET> pGoffset,
),
    int Function(
  int hdc,
  Pointer<Pointer> psc,
  int x,
  int y,
  int fuOptions,
  Pointer<RECT> lprc,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Utf16> pwcReserved,
  int iReserved,
  Pointer<Uint16> pwGlyphs,
  int cGlyphs,
  Pointer<Int32> piAdvance,
  Pointer<Int32> piJustify,
  Pointer<GOFFSET> pGoffset,
)>('ScriptTextOut');

int ScriptXtoCP(
  int iX,
  int cChars,
  int cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piCP,
  Pointer<Int32> piTrailing,
) =>
    _ScriptXtoCP(
      iX,
      cChars,
      cGlyphs,
      pwLogClust,
      psva,
      piAdvance,
      psa,
      piCP,
      piTrailing,
    );

late final _ScriptXtoCP = _usp10.lookupFunction<
    Int32 Function(
  Int32 iX,
  Int32 cChars,
  Int32 cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piCP,
  Pointer<Int32> piTrailing,
),
    int Function(
  int iX,
  int cChars,
  int cGlyphs,
  Pointer<Uint16> pwLogClust,
  Pointer<SCRIPT_VISATTR> psva,
  Pointer<Int32> piAdvance,
  Pointer<SCRIPT_ANALYSIS> psa,
  Pointer<Int32> piCP,
  Pointer<Int32> piTrailing,
)>('ScriptXtoCP');

// -----------------------------------------------------------------------
// icu.dll
// -----------------------------------------------------------------------
final _icu = DynamicLibrary.open('icu.dll');

void UCNV_FROM_U_CALLBACK_ESCAPE(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_FROM_U_CALLBACK_ESCAPE(
      context,
      fromUArgs,
      codeUnits,
      length,
      codePoint,
      reason,
      err,
    );

late final _UCNV_FROM_U_CALLBACK_ESCAPE = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  Int32 length,
  Int32 codePoint,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
)>('UCNV_FROM_U_CALLBACK_ESCAPE');

void UCNV_FROM_U_CALLBACK_SKIP(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_FROM_U_CALLBACK_SKIP(
      context,
      fromUArgs,
      codeUnits,
      length,
      codePoint,
      reason,
      err,
    );

late final _UCNV_FROM_U_CALLBACK_SKIP = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  Int32 length,
  Int32 codePoint,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
)>('UCNV_FROM_U_CALLBACK_SKIP');

void UCNV_FROM_U_CALLBACK_STOP(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_FROM_U_CALLBACK_STOP(
      context,
      fromUArgs,
      codeUnits,
      length,
      codePoint,
      reason,
      err,
    );

late final _UCNV_FROM_U_CALLBACK_STOP = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  Int32 length,
  Int32 codePoint,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
)>('UCNV_FROM_U_CALLBACK_STOP');

void UCNV_FROM_U_CALLBACK_SUBSTITUTE(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_FROM_U_CALLBACK_SUBSTITUTE(
      context,
      fromUArgs,
      codeUnits,
      length,
      codePoint,
      reason,
      err,
    );

late final _UCNV_FROM_U_CALLBACK_SUBSTITUTE = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  Int32 length,
  Int32 codePoint,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterFromUnicodeArgs> fromUArgs,
  Pointer<Uint16> codeUnits,
  int length,
  int codePoint,
  int reason,
  Pointer<Int32> err,
)>('UCNV_FROM_U_CALLBACK_SUBSTITUTE');

void UCNV_TO_U_CALLBACK_ESCAPE(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_TO_U_CALLBACK_ESCAPE(
      context,
      toUArgs,
      codeUnits,
      length,
      reason,
      err,
    );

late final _UCNV_TO_U_CALLBACK_ESCAPE = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  Int32 length,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
)>('UCNV_TO_U_CALLBACK_ESCAPE');

void UCNV_TO_U_CALLBACK_SKIP(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_TO_U_CALLBACK_SKIP(
      context,
      toUArgs,
      codeUnits,
      length,
      reason,
      err,
    );

late final _UCNV_TO_U_CALLBACK_SKIP = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  Int32 length,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
)>('UCNV_TO_U_CALLBACK_SKIP');

void UCNV_TO_U_CALLBACK_STOP(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_TO_U_CALLBACK_STOP(
      context,
      toUArgs,
      codeUnits,
      length,
      reason,
      err,
    );

late final _UCNV_TO_U_CALLBACK_STOP = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  Int32 length,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
)>('UCNV_TO_U_CALLBACK_STOP');

void UCNV_TO_U_CALLBACK_SUBSTITUTE(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
) =>
    _UCNV_TO_U_CALLBACK_SUBSTITUTE(
      context,
      toUArgs,
      codeUnits,
      length,
      reason,
      err,
    );

late final _UCNV_TO_U_CALLBACK_SUBSTITUTE = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  Int32 length,
  Int32 reason,
  Pointer<Int32> err,
),
    void Function(
  Pointer context,
  Pointer<UConverterToUnicodeArgs> toUArgs,
  Pointer<Utf8> codeUnits,
  int length,
  int reason,
  Pointer<Int32> err,
)>('UCNV_TO_U_CALLBACK_SUBSTITUTE');

void u_UCharsToChars(
  Pointer<Uint16> us,
  Pointer<Utf8> cs,
  int length,
) =>
    _u_UCharsToChars(
      us,
      cs,
      length,
    );

late final _u_UCharsToChars = _icu.lookupFunction<
    Void Function(
  Pointer<Uint16> us,
  Pointer<Utf8> cs,
  Int32 length,
),
    void Function(
  Pointer<Uint16> us,
  Pointer<Utf8> cs,
  int length,
)>('u_UCharsToChars');

Pointer<Utf8> u_austrcpy(
  Pointer<Utf8> dst,
  Pointer<Uint16> src,
) =>
    _u_austrcpy(
      dst,
      src,
    );

late final _u_austrcpy = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> dst,
  Pointer<Uint16> src,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> dst,
  Pointer<Uint16> src,
)>('u_austrcpy');

Pointer<Utf8> u_austrncpy(
  Pointer<Utf8> dst,
  Pointer<Uint16> src,
  int n,
) =>
    _u_austrncpy(
      dst,
      src,
      n,
    );

late final _u_austrncpy = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> dst,
  Pointer<Uint16> src,
  Int32 n,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> dst,
  Pointer<Uint16> src,
  int n,
)>('u_austrncpy');

void u_catclose(
  Pointer<UResourceBundle> catd,
) =>
    _u_catclose(
      catd,
    );

late final _u_catclose = _icu.lookupFunction<
    Void Function(
  Pointer<UResourceBundle> catd,
),
    void Function(
  Pointer<UResourceBundle> catd,
)>('u_catclose');

Pointer<Uint16> u_catgets(
  Pointer<UResourceBundle> catd,
  int set_num,
  int msg_num,
  Pointer<Uint16> s,
  Pointer<Int32> len,
  Pointer<Int32> ec,
) =>
    _u_catgets(
      catd,
      set_num,
      msg_num,
      s,
      len,
      ec,
    );

late final _u_catgets = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> catd,
  Int32 set_num,
  Int32 msg_num,
  Pointer<Uint16> s,
  Pointer<Int32> len,
  Pointer<Int32> ec,
),
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> catd,
  int set_num,
  int msg_num,
  Pointer<Uint16> s,
  Pointer<Int32> len,
  Pointer<Int32> ec,
)>('u_catgets');

Pointer<UResourceBundle> u_catopen(
  Pointer<Utf8> name,
  Pointer<Utf8> locale,
  Pointer<Int32> ec,
) =>
    _u_catopen(
      name,
      locale,
      ec,
    );

late final _u_catopen = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<Utf8> name,
  Pointer<Utf8> locale,
  Pointer<Int32> ec,
),
    Pointer<UResourceBundle> Function(
  Pointer<Utf8> name,
  Pointer<Utf8> locale,
  Pointer<Int32> ec,
)>('u_catopen');

void u_charAge(
  int c,
  Pointer<Uint8> versionArray,
) =>
    _u_charAge(
      c,
      versionArray,
    );

late final _u_charAge = _icu.lookupFunction<
    Void Function(
  Int32 c,
  Pointer<Uint8> versionArray,
),
    void Function(
  int c,
  Pointer<Uint8> versionArray,
)>('u_charAge');

int u_charDigitValue(
  int c,
) =>
    _u_charDigitValue(
      c,
    );

late final _u_charDigitValue = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_charDigitValue');

int u_charDirection(
  int c,
) =>
    _u_charDirection(
      c,
    );

late final _u_charDirection = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_charDirection');

int u_charFromName(
  int nameChoice,
  Pointer<Utf8> name,
  Pointer<Int32> pErrorCode,
) =>
    _u_charFromName(
      nameChoice,
      name,
      pErrorCode,
    );

late final _u_charFromName = _icu.lookupFunction<
    Int32 Function(
  Int32 nameChoice,
  Pointer<Utf8> name,
  Pointer<Int32> pErrorCode,
),
    int Function(
  int nameChoice,
  Pointer<Utf8> name,
  Pointer<Int32> pErrorCode,
)>('u_charFromName');

int u_charMirror(
  int c,
) =>
    _u_charMirror(
      c,
    );

late final _u_charMirror = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_charMirror');

int u_charName(
  int code,
  int nameChoice,
  Pointer<Utf8> buffer,
  int bufferLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_charName(
      code,
      nameChoice,
      buffer,
      bufferLength,
      pErrorCode,
    );

late final _u_charName = _icu.lookupFunction<
    Int32 Function(
  Int32 code,
  Int32 nameChoice,
  Pointer<Utf8> buffer,
  Int32 bufferLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  int code,
  int nameChoice,
  Pointer<Utf8> buffer,
  int bufferLength,
  Pointer<Int32> pErrorCode,
)>('u_charName');

int u_charType(
  int c,
) =>
    _u_charType(
      c,
    );

late final _u_charType = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_charType');

void u_charsToUChars(
  Pointer<Utf8> cs,
  Pointer<Uint16> us,
  int length,
) =>
    _u_charsToUChars(
      cs,
      us,
      length,
    );

late final _u_charsToUChars = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> cs,
  Pointer<Uint16> us,
  Int32 length,
),
    void Function(
  Pointer<Utf8> cs,
  Pointer<Uint16> us,
  int length,
)>('u_charsToUChars');

void u_cleanup() => _u_cleanup();

late final _u_cleanup =
    _icu.lookupFunction<Void Function(), void Function()>('u_cleanup');

int u_countChar32(
  Pointer<Uint16> s,
  int length,
) =>
    _u_countChar32(
      s,
      length,
    );

late final _u_countChar32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s,
  Int32 length,
),
    int Function(
  Pointer<Uint16> s,
  int length,
)>('u_countChar32');

int u_digit(
  int ch,
  int radix,
) =>
    _u_digit(
      ch,
      radix,
    );

late final _u_digit = _icu.lookupFunction<
    Int32 Function(
  Int32 ch,
  Int8 radix,
),
    int Function(
  int ch,
  int radix,
)>('u_digit');

void u_enumCharNames(
  int start,
  int limit,
  Pointer<Pointer<NativeFunction<UEnumCharNamesFn>>> fn,
  Pointer context,
  int nameChoice,
  Pointer<Int32> pErrorCode,
) =>
    _u_enumCharNames(
      start,
      limit,
      fn,
      context,
      nameChoice,
      pErrorCode,
    );

late final _u_enumCharNames = _icu.lookupFunction<
    Void Function(
  Int32 start,
  Int32 limit,
  Pointer<Pointer<NativeFunction<UEnumCharNamesFn>>> fn,
  Pointer context,
  Int32 nameChoice,
  Pointer<Int32> pErrorCode,
),
    void Function(
  int start,
  int limit,
  Pointer<Pointer<NativeFunction<UEnumCharNamesFn>>> fn,
  Pointer context,
  int nameChoice,
  Pointer<Int32> pErrorCode,
)>('u_enumCharNames');

void u_enumCharTypes(
  Pointer<Pointer<NativeFunction<UCharEnumTypeRange>>> enumRange,
  Pointer context,
) =>
    _u_enumCharTypes(
      enumRange,
      context,
    );

late final _u_enumCharTypes = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer<NativeFunction<UCharEnumTypeRange>>> enumRange,
  Pointer context,
),
    void Function(
  Pointer<Pointer<NativeFunction<UCharEnumTypeRange>>> enumRange,
  Pointer context,
)>('u_enumCharTypes');

Pointer<Utf8> u_errorName(
  int code,
) =>
    _u_errorName(
      code,
    );

late final _u_errorName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 code,
),
    Pointer<Utf8> Function(
  int code,
)>('u_errorName');

int u_foldCase(
  int c,
  int options,
) =>
    _u_foldCase(
      c,
      options,
    );

late final _u_foldCase = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
  Uint32 options,
),
    int Function(
  int c,
  int options,
)>('u_foldCase');

int u_forDigit(
  int digit,
  int radix,
) =>
    _u_forDigit(
      digit,
      radix,
    );

late final _u_forDigit = _icu.lookupFunction<
    Int32 Function(
  Int32 digit,
  Int8 radix,
),
    int Function(
  int digit,
  int radix,
)>('u_forDigit');

int u_formatMessage(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _u_formatMessage(
      locale,
      pattern,
      patternLength,
      result,
      resultLength,
      status,
    );

late final _u_formatMessage = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('u_formatMessage');

int u_formatMessageWithError(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _u_formatMessageWithError(
      locale,
      pattern,
      patternLength,
      result,
      resultLength,
      parseError,
      status,
    );

late final _u_formatMessageWithError = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('u_formatMessageWithError');

int u_getBidiPairedBracket(
  int c,
) =>
    _u_getBidiPairedBracket(
      c,
    );

late final _u_getBidiPairedBracket = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_getBidiPairedBracket');

Pointer<USet> u_getBinaryPropertySet(
  int property,
  Pointer<Int32> pErrorCode,
) =>
    _u_getBinaryPropertySet(
      property,
      pErrorCode,
    );

late final _u_getBinaryPropertySet = _icu.lookupFunction<
    Pointer<USet> Function(
  Int32 property,
  Pointer<Int32> pErrorCode,
),
    Pointer<USet> Function(
  int property,
  Pointer<Int32> pErrorCode,
)>('u_getBinaryPropertySet');

int u_getCombiningClass(
  int c,
) =>
    _u_getCombiningClass(
      c,
    );

late final _u_getCombiningClass = _icu.lookupFunction<
    Uint8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_getCombiningClass');

void u_getDataVersion(
  Pointer<Uint8> dataVersionFillin,
  Pointer<Int32> status,
) =>
    _u_getDataVersion(
      dataVersionFillin,
      status,
    );

late final _u_getDataVersion = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> dataVersionFillin,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Uint8> dataVersionFillin,
  Pointer<Int32> status,
)>('u_getDataVersion');

int u_getFC_NFKC_Closure(
  int c,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
) =>
    _u_getFC_NFKC_Closure(
      c,
      dest,
      destCapacity,
      pErrorCode,
    );

late final _u_getFC_NFKC_Closure = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  int c,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
)>('u_getFC_NFKC_Closure');

Pointer<UCPMap> u_getIntPropertyMap(
  int property,
  Pointer<Int32> pErrorCode,
) =>
    _u_getIntPropertyMap(
      property,
      pErrorCode,
    );

late final _u_getIntPropertyMap = _icu.lookupFunction<
    Pointer<UCPMap> Function(
  Int32 property,
  Pointer<Int32> pErrorCode,
),
    Pointer<UCPMap> Function(
  int property,
  Pointer<Int32> pErrorCode,
)>('u_getIntPropertyMap');

int u_getIntPropertyMaxValue(
  int which,
) =>
    _u_getIntPropertyMaxValue(
      which,
    );

late final _u_getIntPropertyMaxValue = _icu.lookupFunction<
    Int32 Function(
  Int32 which,
),
    int Function(
  int which,
)>('u_getIntPropertyMaxValue');

int u_getIntPropertyMinValue(
  int which,
) =>
    _u_getIntPropertyMinValue(
      which,
    );

late final _u_getIntPropertyMinValue = _icu.lookupFunction<
    Int32 Function(
  Int32 which,
),
    int Function(
  int which,
)>('u_getIntPropertyMinValue');

int u_getIntPropertyValue(
  int c,
  int which,
) =>
    _u_getIntPropertyValue(
      c,
      which,
    );

late final _u_getIntPropertyValue = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
  Int32 which,
),
    int Function(
  int c,
  int which,
)>('u_getIntPropertyValue');

double u_getNumericValue(
  int c,
) =>
    _u_getNumericValue(
      c,
    );

late final _u_getNumericValue = _icu.lookupFunction<
    Double Function(
  Int32 c,
),
    double Function(
  int c,
)>('u_getNumericValue');

int u_getPropertyEnum(
  Pointer<Utf8> alias,
) =>
    _u_getPropertyEnum(
      alias,
    );

late final _u_getPropertyEnum = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> alias,
),
    int Function(
  Pointer<Utf8> alias,
)>('u_getPropertyEnum');

Pointer<Utf8> u_getPropertyName(
  int property,
  int nameChoice,
) =>
    _u_getPropertyName(
      property,
      nameChoice,
    );

late final _u_getPropertyName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 property,
  Int32 nameChoice,
),
    Pointer<Utf8> Function(
  int property,
  int nameChoice,
)>('u_getPropertyName');

int u_getPropertyValueEnum(
  int property,
  Pointer<Utf8> alias,
) =>
    _u_getPropertyValueEnum(
      property,
      alias,
    );

late final _u_getPropertyValueEnum = _icu.lookupFunction<
    Int32 Function(
  Int32 property,
  Pointer<Utf8> alias,
),
    int Function(
  int property,
  Pointer<Utf8> alias,
)>('u_getPropertyValueEnum');

Pointer<Utf8> u_getPropertyValueName(
  int property,
  int value,
  int nameChoice,
) =>
    _u_getPropertyValueName(
      property,
      value,
      nameChoice,
    );

late final _u_getPropertyValueName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 property,
  Int32 value,
  Int32 nameChoice,
),
    Pointer<Utf8> Function(
  int property,
  int value,
  int nameChoice,
)>('u_getPropertyValueName');

void u_getUnicodeVersion(
  Pointer<Uint8> versionArray,
) =>
    _u_getUnicodeVersion(
      versionArray,
    );

late final _u_getUnicodeVersion = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> versionArray,
),
    void Function(
  Pointer<Uint8> versionArray,
)>('u_getUnicodeVersion');

void u_getVersion(
  Pointer<Uint8> versionArray,
) =>
    _u_getVersion(
      versionArray,
    );

late final _u_getVersion = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> versionArray,
),
    void Function(
  Pointer<Uint8> versionArray,
)>('u_getVersion');

int u_hasBinaryProperty(
  int c,
  int which,
) =>
    _u_hasBinaryProperty(
      c,
      which,
    );

late final _u_hasBinaryProperty = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
  Int32 which,
),
    int Function(
  int c,
  int which,
)>('u_hasBinaryProperty');

void u_init(
  Pointer<Int32> status,
) =>
    _u_init(
      status,
    );

late final _u_init = _icu.lookupFunction<
    Void Function(
  Pointer<Int32> status,
),
    void Function(
  Pointer<Int32> status,
)>('u_init');

int u_isIDIgnorable(
  int c,
) =>
    _u_isIDIgnorable(
      c,
    );

late final _u_isIDIgnorable = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isIDIgnorable');

int u_isIDPart(
  int c,
) =>
    _u_isIDPart(
      c,
    );

late final _u_isIDPart = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isIDPart');

int u_isIDStart(
  int c,
) =>
    _u_isIDStart(
      c,
    );

late final _u_isIDStart = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isIDStart');

int u_isISOControl(
  int c,
) =>
    _u_isISOControl(
      c,
    );

late final _u_isISOControl = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isISOControl');

int u_isJavaIDPart(
  int c,
) =>
    _u_isJavaIDPart(
      c,
    );

late final _u_isJavaIDPart = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isJavaIDPart');

int u_isJavaIDStart(
  int c,
) =>
    _u_isJavaIDStart(
      c,
    );

late final _u_isJavaIDStart = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isJavaIDStart');

int u_isJavaSpaceChar(
  int c,
) =>
    _u_isJavaSpaceChar(
      c,
    );

late final _u_isJavaSpaceChar = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isJavaSpaceChar');

int u_isMirrored(
  int c,
) =>
    _u_isMirrored(
      c,
    );

late final _u_isMirrored = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isMirrored');

int u_isUAlphabetic(
  int c,
) =>
    _u_isUAlphabetic(
      c,
    );

late final _u_isUAlphabetic = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isUAlphabetic');

int u_isULowercase(
  int c,
) =>
    _u_isULowercase(
      c,
    );

late final _u_isULowercase = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isULowercase');

int u_isUUppercase(
  int c,
) =>
    _u_isUUppercase(
      c,
    );

late final _u_isUUppercase = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isUUppercase');

int u_isUWhiteSpace(
  int c,
) =>
    _u_isUWhiteSpace(
      c,
    );

late final _u_isUWhiteSpace = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isUWhiteSpace');

int u_isWhitespace(
  int c,
) =>
    _u_isWhitespace(
      c,
    );

late final _u_isWhitespace = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isWhitespace');

int u_isalnum(
  int c,
) =>
    _u_isalnum(
      c,
    );

late final _u_isalnum = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isalnum');

int u_isalpha(
  int c,
) =>
    _u_isalpha(
      c,
    );

late final _u_isalpha = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isalpha');

int u_isbase(
  int c,
) =>
    _u_isbase(
      c,
    );

late final _u_isbase = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isbase');

int u_isblank(
  int c,
) =>
    _u_isblank(
      c,
    );

late final _u_isblank = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isblank');

int u_iscntrl(
  int c,
) =>
    _u_iscntrl(
      c,
    );

late final _u_iscntrl = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_iscntrl');

int u_isdefined(
  int c,
) =>
    _u_isdefined(
      c,
    );

late final _u_isdefined = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isdefined');

int u_isdigit(
  int c,
) =>
    _u_isdigit(
      c,
    );

late final _u_isdigit = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isdigit');

int u_isgraph(
  int c,
) =>
    _u_isgraph(
      c,
    );

late final _u_isgraph = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isgraph');

int u_islower(
  int c,
) =>
    _u_islower(
      c,
    );

late final _u_islower = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_islower');

int u_isprint(
  int c,
) =>
    _u_isprint(
      c,
    );

late final _u_isprint = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isprint');

int u_ispunct(
  int c,
) =>
    _u_ispunct(
      c,
    );

late final _u_ispunct = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_ispunct');

int u_isspace(
  int c,
) =>
    _u_isspace(
      c,
    );

late final _u_isspace = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isspace');

int u_istitle(
  int c,
) =>
    _u_istitle(
      c,
    );

late final _u_istitle = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_istitle');

int u_isupper(
  int c,
) =>
    _u_isupper(
      c,
    );

late final _u_isupper = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isupper');

int u_isxdigit(
  int c,
) =>
    _u_isxdigit(
      c,
    );

late final _u_isxdigit = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_isxdigit');

int u_memcasecmp(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int length,
  int options,
) =>
    _u_memcasecmp(
      s1,
      s2,
      length,
      options,
    );

late final _u_memcasecmp = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  Int32 length,
  Uint32 options,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int length,
  int options,
)>('u_memcasecmp');

Pointer<Uint16> u_memchr(
  Pointer<Uint16> s,
  int c,
  int count,
) =>
    _u_memchr(
      s,
      c,
      count,
    );

late final _u_memchr = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Uint16 c,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
  int count,
)>('u_memchr');

Pointer<Uint16> u_memchr32(
  Pointer<Uint16> s,
  int c,
  int count,
) =>
    _u_memchr32(
      s,
      c,
      count,
    );

late final _u_memchr32 = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Int32 c,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
  int count,
)>('u_memchr32');

int u_memcmp(
  Pointer<Uint16> buf1,
  Pointer<Uint16> buf2,
  int count,
) =>
    _u_memcmp(
      buf1,
      buf2,
      count,
    );

late final _u_memcmp = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> buf1,
  Pointer<Uint16> buf2,
  Int32 count,
),
    int Function(
  Pointer<Uint16> buf1,
  Pointer<Uint16> buf2,
  int count,
)>('u_memcmp');

int u_memcmpCodePointOrder(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int count,
) =>
    _u_memcmpCodePointOrder(
      s1,
      s2,
      count,
    );

late final _u_memcmpCodePointOrder = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  Int32 count,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int count,
)>('u_memcmpCodePointOrder');

Pointer<Uint16> u_memcpy(
  Pointer<Uint16> dest,
  Pointer<Uint16> src,
  int count,
) =>
    _u_memcpy(
      dest,
      src,
      count,
    );

late final _u_memcpy = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Pointer<Uint16> src,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Pointer<Uint16> src,
  int count,
)>('u_memcpy');

Pointer<Uint16> u_memmove(
  Pointer<Uint16> dest,
  Pointer<Uint16> src,
  int count,
) =>
    _u_memmove(
      dest,
      src,
      count,
    );

late final _u_memmove = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Pointer<Uint16> src,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Pointer<Uint16> src,
  int count,
)>('u_memmove');

Pointer<Uint16> u_memrchr(
  Pointer<Uint16> s,
  int c,
  int count,
) =>
    _u_memrchr(
      s,
      c,
      count,
    );

late final _u_memrchr = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Uint16 c,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
  int count,
)>('u_memrchr');

Pointer<Uint16> u_memrchr32(
  Pointer<Uint16> s,
  int c,
  int count,
) =>
    _u_memrchr32(
      s,
      c,
      count,
    );

late final _u_memrchr32 = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Int32 c,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
  int count,
)>('u_memrchr32');

Pointer<Uint16> u_memset(
  Pointer<Uint16> dest,
  int c,
  int count,
) =>
    _u_memset(
      dest,
      c,
      count,
    );

late final _u_memset = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Uint16 c,
  Int32 count,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int c,
  int count,
)>('u_memset');

void u_parseMessage(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int32> status,
) =>
    _u_parseMessage(
      locale,
      pattern,
      patternLength,
      source,
      sourceLength,
      status,
    );

late final _u_parseMessage = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int32> status,
)>('u_parseMessage');

void u_parseMessageWithError(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _u_parseMessageWithError(
      locale,
      pattern,
      patternLength,
      source,
      sourceLength,
      parseError,
      status,
    );

late final _u_parseMessageWithError = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('u_parseMessageWithError');

void u_setMemoryFunctions(
  Pointer context,
  Pointer<Pointer<NativeFunction<UMemAllocFn>>> a,
  Pointer<Pointer<NativeFunction<UMemReallocFn>>> r,
  Pointer<Pointer<NativeFunction<UMemFreeFn>>> f,
  Pointer<Int32> status,
) =>
    _u_setMemoryFunctions(
      context,
      a,
      r,
      f,
      status,
    );

late final _u_setMemoryFunctions = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<Pointer<NativeFunction<UMemAllocFn>>> a,
  Pointer<Pointer<NativeFunction<UMemReallocFn>>> r,
  Pointer<Pointer<NativeFunction<UMemFreeFn>>> f,
  Pointer<Int32> status,
),
    void Function(
  Pointer context,
  Pointer<Pointer<NativeFunction<UMemAllocFn>>> a,
  Pointer<Pointer<NativeFunction<UMemReallocFn>>> r,
  Pointer<Pointer<NativeFunction<UMemFreeFn>>> f,
  Pointer<Int32> status,
)>('u_setMemoryFunctions');

int u_shapeArabic(
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> dest,
  int destSize,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _u_shapeArabic(
      source,
      sourceLength,
      dest,
      destSize,
      options,
      pErrorCode,
    );

late final _u_shapeArabic = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Uint16> dest,
  Int32 destSize,
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> dest,
  int destSize,
  int options,
  Pointer<Int32> pErrorCode,
)>('u_shapeArabic');

int u_strCaseCompare(
  Pointer<Uint16> s1,
  int length1,
  Pointer<Uint16> s2,
  int length2,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _u_strCaseCompare(
      s1,
      length1,
      s2,
      length2,
      options,
      pErrorCode,
    );

late final _u_strCaseCompare = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Int32 length1,
  Pointer<Uint16> s2,
  Int32 length2,
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> s1,
  int length1,
  Pointer<Uint16> s2,
  int length2,
  int options,
  Pointer<Int32> pErrorCode,
)>('u_strCaseCompare');

int u_strCompare(
  Pointer<Uint16> s1,
  int length1,
  Pointer<Uint16> s2,
  int length2,
  int codePointOrder,
) =>
    _u_strCompare(
      s1,
      length1,
      s2,
      length2,
      codePointOrder,
    );

late final _u_strCompare = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Int32 length1,
  Pointer<Uint16> s2,
  Int32 length2,
  Int8 codePointOrder,
),
    int Function(
  Pointer<Uint16> s1,
  int length1,
  Pointer<Uint16> s2,
  int length2,
  int codePointOrder,
)>('u_strCompare');

int u_strCompareIter(
  Pointer<UCharIterator> iter1,
  Pointer<UCharIterator> iter2,
  int codePointOrder,
) =>
    _u_strCompareIter(
      iter1,
      iter2,
      codePointOrder,
    );

late final _u_strCompareIter = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCharIterator> iter1,
  Pointer<UCharIterator> iter2,
  Int8 codePointOrder,
),
    int Function(
  Pointer<UCharIterator> iter1,
  Pointer<UCharIterator> iter2,
  int codePointOrder,
)>('u_strCompareIter');

Pointer<Uint16> u_strFindFirst(
  Pointer<Uint16> s,
  int length,
  Pointer<Uint16> substring,
  int subLength,
) =>
    _u_strFindFirst(
      s,
      length,
      substring,
      subLength,
    );

late final _u_strFindFirst = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Uint16> substring,
  Int32 subLength,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int length,
  Pointer<Uint16> substring,
  int subLength,
)>('u_strFindFirst');

Pointer<Uint16> u_strFindLast(
  Pointer<Uint16> s,
  int length,
  Pointer<Uint16> substring,
  int subLength,
) =>
    _u_strFindLast(
      s,
      length,
      substring,
      subLength,
    );

late final _u_strFindLast = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Uint16> substring,
  Int32 subLength,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int length,
  Pointer<Uint16> substring,
  int subLength,
)>('u_strFindLast');

int u_strFoldCase(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFoldCase(
      dest,
      destCapacity,
      src,
      srcLength,
      options,
      pErrorCode,
    );

late final _u_strFoldCase = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  int options,
  Pointer<Int32> pErrorCode,
)>('u_strFoldCase');

Pointer<Uint16> u_strFromJavaModifiedUTF8WithSub(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromJavaModifiedUTF8WithSub(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      subchar,
      pNumSubstitutions,
      pErrorCode,
    );

late final _u_strFromJavaModifiedUTF8WithSub = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  Int32 srcLength,
  Int32 subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
)>('u_strFromJavaModifiedUTF8WithSub');

Pointer<Uint16> u_strFromUTF32(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Int32> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromUTF32(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strFromUTF32 = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Int32> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Int32> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strFromUTF32');

Pointer<Uint16> u_strFromUTF32WithSub(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Int32> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromUTF32WithSub(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      subchar,
      pNumSubstitutions,
      pErrorCode,
    );

late final _u_strFromUTF32WithSub = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Int32> src,
  Int32 srcLength,
  Int32 subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Int32> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
)>('u_strFromUTF32WithSub');

Pointer<Uint16> u_strFromUTF8(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromUTF8(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strFromUTF8 = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strFromUTF8');

Pointer<Uint16> u_strFromUTF8Lenient(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromUTF8Lenient(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strFromUTF8Lenient = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strFromUTF8Lenient');

Pointer<Uint16> u_strFromUTF8WithSub(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromUTF8WithSub(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      subchar,
      pNumSubstitutions,
      pErrorCode,
    );

late final _u_strFromUTF8WithSub = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  Int32 srcLength,
  Int32 subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf8> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
)>('u_strFromUTF8WithSub');

Pointer<Uint16> u_strFromWCS(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strFromWCS(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strFromWCS = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Utf16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strFromWCS');

int u_strHasMoreChar32Than(
  Pointer<Uint16> s,
  int length,
  int number,
) =>
    _u_strHasMoreChar32Than(
      s,
      length,
      number,
    );

late final _u_strHasMoreChar32Than = _icu.lookupFunction<
    Int8 Function(
  Pointer<Uint16> s,
  Int32 length,
  Int32 number,
),
    int Function(
  Pointer<Uint16> s,
  int length,
  int number,
)>('u_strHasMoreChar32Than');

Pointer<Utf8> u_strToJavaModifiedUTF8(
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToJavaModifiedUTF8(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strToJavaModifiedUTF8 = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strToJavaModifiedUTF8');

int u_strToLower(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToLower(
      dest,
      destCapacity,
      src,
      srcLength,
      locale,
      pErrorCode,
    );

late final _u_strToLower = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
)>('u_strToLower');

int u_strToTitle(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<UBreakIterator> titleIter,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToTitle(
      dest,
      destCapacity,
      src,
      srcLength,
      titleIter,
      locale,
      pErrorCode,
    );

late final _u_strToTitle = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<UBreakIterator> titleIter,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<UBreakIterator> titleIter,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
)>('u_strToTitle');

Pointer<Int32> u_strToUTF32(
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToUTF32(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strToUTF32 = _icu.lookupFunction<
    Pointer<Int32> Function(
  Pointer<Int32> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Int32> Function(
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strToUTF32');

Pointer<Int32> u_strToUTF32WithSub(
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToUTF32WithSub(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      subchar,
      pNumSubstitutions,
      pErrorCode,
    );

late final _u_strToUTF32WithSub = _icu.lookupFunction<
    Pointer<Int32> Function(
  Pointer<Int32> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  Int32 srcLength,
  Int32 subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
),
    Pointer<Int32> Function(
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
)>('u_strToUTF32WithSub');

Pointer<Utf8> u_strToUTF8(
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToUTF8(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strToUTF8 = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strToUTF8');

Pointer<Utf8> u_strToUTF8WithSub(
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToUTF8WithSub(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      subchar,
      pNumSubstitutions,
      pErrorCode,
    );

late final _u_strToUTF8WithSub = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  Int32 srcLength,
  Int32 subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  int subchar,
  Pointer<Int32> pNumSubstitutions,
  Pointer<Int32> pErrorCode,
)>('u_strToUTF8WithSub');

int u_strToUpper(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToUpper(
      dest,
      destCapacity,
      src,
      srcLength,
      locale,
      pErrorCode,
    );

late final _u_strToUpper = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
)>('u_strToUpper');

Pointer<Utf16> u_strToWCS(
  Pointer<Utf16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _u_strToWCS(
      dest,
      destCapacity,
      pDestLength,
      src,
      srcLength,
      pErrorCode,
    );

late final _u_strToWCS = _icu.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> dest,
  Int32 destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> dest,
  int destCapacity,
  Pointer<Int32> pDestLength,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('u_strToWCS');

int u_strcasecmp(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int options,
) =>
    _u_strcasecmp(
      s1,
      s2,
      options,
    );

late final _u_strcasecmp = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  Uint32 options,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int options,
)>('u_strcasecmp');

Pointer<Uint16> u_strcat(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
) =>
    _u_strcat(
      dst,
      src,
    );

late final _u_strcat = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
)>('u_strcat');

Pointer<Uint16> u_strchr(
  Pointer<Uint16> s,
  int c,
) =>
    _u_strchr(
      s,
      c,
    );

late final _u_strchr = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Uint16 c,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
)>('u_strchr');

Pointer<Uint16> u_strchr32(
  Pointer<Uint16> s,
  int c,
) =>
    _u_strchr32(
      s,
      c,
    );

late final _u_strchr32 = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Int32 c,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
)>('u_strchr32');

int u_strcmp(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
) =>
    _u_strcmp(
      s1,
      s2,
    );

late final _u_strcmp = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
)>('u_strcmp');

int u_strcmpCodePointOrder(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
) =>
    _u_strcmpCodePointOrder(
      s1,
      s2,
    );

late final _u_strcmpCodePointOrder = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
)>('u_strcmpCodePointOrder');

Pointer<Uint16> u_strcpy(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
) =>
    _u_strcpy(
      dst,
      src,
    );

late final _u_strcpy = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
)>('u_strcpy');

int u_strcspn(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
) =>
    _u_strcspn(
      string,
      matchSet,
    );

late final _u_strcspn = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
),
    int Function(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
)>('u_strcspn');

int u_strlen(
  Pointer<Uint16> s,
) =>
    _u_strlen(
      s,
    );

late final _u_strlen = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s,
),
    int Function(
  Pointer<Uint16> s,
)>('u_strlen');

int u_strncasecmp(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int n,
  int options,
) =>
    _u_strncasecmp(
      s1,
      s2,
      n,
      options,
    );

late final _u_strncasecmp = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  Int32 n,
  Uint32 options,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int n,
  int options,
)>('u_strncasecmp');

Pointer<Uint16> u_strncat(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
  int n,
) =>
    _u_strncat(
      dst,
      src,
      n,
    );

late final _u_strncat = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
  Int32 n,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
  int n,
)>('u_strncat');

int u_strncmp(
  Pointer<Uint16> ucs1,
  Pointer<Uint16> ucs2,
  int n,
) =>
    _u_strncmp(
      ucs1,
      ucs2,
      n,
    );

late final _u_strncmp = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> ucs1,
  Pointer<Uint16> ucs2,
  Int32 n,
),
    int Function(
  Pointer<Uint16> ucs1,
  Pointer<Uint16> ucs2,
  int n,
)>('u_strncmp');

int u_strncmpCodePointOrder(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int n,
) =>
    _u_strncmpCodePointOrder(
      s1,
      s2,
      n,
    );

late final _u_strncmpCodePointOrder = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  Int32 n,
),
    int Function(
  Pointer<Uint16> s1,
  Pointer<Uint16> s2,
  int n,
)>('u_strncmpCodePointOrder');

Pointer<Uint16> u_strncpy(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
  int n,
) =>
    _u_strncpy(
      dst,
      src,
      n,
    );

late final _u_strncpy = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
  Int32 n,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Uint16> src,
  int n,
)>('u_strncpy');

Pointer<Uint16> u_strpbrk(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
) =>
    _u_strpbrk(
      string,
      matchSet,
    );

late final _u_strpbrk = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
)>('u_strpbrk');

Pointer<Uint16> u_strrchr(
  Pointer<Uint16> s,
  int c,
) =>
    _u_strrchr(
      s,
      c,
    );

late final _u_strrchr = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Uint16 c,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
)>('u_strrchr');

Pointer<Uint16> u_strrchr32(
  Pointer<Uint16> s,
  int c,
) =>
    _u_strrchr32(
      s,
      c,
    );

late final _u_strrchr32 = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Int32 c,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  int c,
)>('u_strrchr32');

Pointer<Uint16> u_strrstr(
  Pointer<Uint16> s,
  Pointer<Uint16> substring,
) =>
    _u_strrstr(
      s,
      substring,
    );

late final _u_strrstr = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Pointer<Uint16> substring,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Pointer<Uint16> substring,
)>('u_strrstr');

int u_strspn(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
) =>
    _u_strspn(
      string,
      matchSet,
    );

late final _u_strspn = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
),
    int Function(
  Pointer<Uint16> string,
  Pointer<Uint16> matchSet,
)>('u_strspn');

Pointer<Uint16> u_strstr(
  Pointer<Uint16> s,
  Pointer<Uint16> substring,
) =>
    _u_strstr(
      s,
      substring,
    );

late final _u_strstr = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Pointer<Uint16> substring,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> s,
  Pointer<Uint16> substring,
)>('u_strstr');

Pointer<Uint16> u_strtok_r(
  Pointer<Uint16> src,
  Pointer<Uint16> delim,
  Pointer<Pointer<Uint16>> saveState,
) =>
    _u_strtok_r(
      src,
      delim,
      saveState,
    );

late final _u_strtok_r = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> src,
  Pointer<Uint16> delim,
  Pointer<Pointer<Uint16>> saveState,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> src,
  Pointer<Uint16> delim,
  Pointer<Pointer<Uint16>> saveState,
)>('u_strtok_r');

int u_tolower(
  int c,
) =>
    _u_tolower(
      c,
    );

late final _u_tolower = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_tolower');

int u_totitle(
  int c,
) =>
    _u_totitle(
      c,
    );

late final _u_totitle = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_totitle');

int u_toupper(
  int c,
) =>
    _u_toupper(
      c,
    );

late final _u_toupper = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('u_toupper');

Pointer<Uint16> u_uastrcpy(
  Pointer<Uint16> dst,
  Pointer<Utf8> src,
) =>
    _u_uastrcpy(
      dst,
      src,
    );

late final _u_uastrcpy = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Utf8> src,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Utf8> src,
)>('u_uastrcpy');

Pointer<Uint16> u_uastrncpy(
  Pointer<Uint16> dst,
  Pointer<Utf8> src,
  int n,
) =>
    _u_uastrncpy(
      dst,
      src,
      n,
    );

late final _u_uastrncpy = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Utf8> src,
  Int32 n,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> dst,
  Pointer<Utf8> src,
  int n,
)>('u_uastrncpy');

int u_unescape(
  Pointer<Utf8> src,
  Pointer<Uint16> dest,
  int destCapacity,
) =>
    _u_unescape(
      src,
      dest,
      destCapacity,
    );

late final _u_unescape = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> src,
  Pointer<Uint16> dest,
  Int32 destCapacity,
),
    int Function(
  Pointer<Utf8> src,
  Pointer<Uint16> dest,
  int destCapacity,
)>('u_unescape');

int u_unescapeAt(
  Pointer<NativeFunction<UNESCAPE_CHAR_AT>> charAt,
  Pointer<Int32> offset,
  int length,
  Pointer context,
) =>
    _u_unescapeAt(
      charAt,
      offset,
      length,
      context,
    );

late final _u_unescapeAt = _icu.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<UNESCAPE_CHAR_AT>> charAt,
  Pointer<Int32> offset,
  Int32 length,
  Pointer context,
),
    int Function(
  Pointer<NativeFunction<UNESCAPE_CHAR_AT>> charAt,
  Pointer<Int32> offset,
  int length,
  Pointer context,
)>('u_unescapeAt');

void u_versionFromString(
  Pointer<Uint8> versionArray,
  Pointer<Utf8> versionString,
) =>
    _u_versionFromString(
      versionArray,
      versionString,
    );

late final _u_versionFromString = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> versionArray,
  Pointer<Utf8> versionString,
),
    void Function(
  Pointer<Uint8> versionArray,
  Pointer<Utf8> versionString,
)>('u_versionFromString');

void u_versionFromUString(
  Pointer<Uint8> versionArray,
  Pointer<Uint16> versionString,
) =>
    _u_versionFromUString(
      versionArray,
      versionString,
    );

late final _u_versionFromUString = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> versionArray,
  Pointer<Uint16> versionString,
),
    void Function(
  Pointer<Uint8> versionArray,
  Pointer<Uint16> versionString,
)>('u_versionFromUString');

void u_versionToString(
  Pointer<Uint8> versionArray,
  Pointer<Utf8> versionString,
) =>
    _u_versionToString(
      versionArray,
      versionString,
    );

late final _u_versionToString = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> versionArray,
  Pointer<Utf8> versionString,
),
    void Function(
  Pointer<Uint8> versionArray,
  Pointer<Utf8> versionString,
)>('u_versionToString');

int u_vformatMessage(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
) =>
    _u_vformatMessage(
      locale,
      pattern,
      patternLength,
      result,
      resultLength,
      ap,
      status,
    );

late final _u_vformatMessage = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
)>('u_vformatMessage');

int u_vformatMessageWithError(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UParseError> parseError,
  Pointer<Int8> ap,
  Pointer<Int32> status,
) =>
    _u_vformatMessageWithError(
      locale,
      pattern,
      patternLength,
      result,
      resultLength,
      parseError,
      ap,
      status,
    );

late final _u_vformatMessageWithError = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UParseError> parseError,
  Pointer<Int8> ap,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UParseError> parseError,
  Pointer<Int8> ap,
  Pointer<Int32> status,
)>('u_vformatMessageWithError');

void u_vparseMessage(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
) =>
    _u_vparseMessage(
      locale,
      pattern,
      patternLength,
      source,
      sourceLength,
      ap,
      status,
    );

late final _u_vparseMessage = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
)>('u_vparseMessage');

void u_vparseMessageWithError(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int8> ap,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _u_vparseMessageWithError(
      locale,
      pattern,
      patternLength,
      source,
      sourceLength,
      ap,
      parseError,
      status,
    );

late final _u_vparseMessageWithError = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Int8> ap,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int8> ap,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('u_vparseMessageWithError');

void ubidi_close(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_close(
      pBiDi,
    );

late final _ubidi_close = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
),
    void Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_close');

int ubidi_countParagraphs(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_countParagraphs(
      pBiDi,
    );

late final _ubidi_countParagraphs = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_countParagraphs');

int ubidi_countRuns(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_countRuns(
      pBiDi,
      pErrorCode,
    );

late final _ubidi_countRuns = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> pErrorCode,
)>('ubidi_countRuns');

int ubidi_getBaseDirection(
  Pointer<Uint16> text,
  int length,
) =>
    _ubidi_getBaseDirection(
      text,
      length,
    );

late final _ubidi_getBaseDirection = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> text,
  Int32 length,
),
    int Function(
  Pointer<Uint16> text,
  int length,
)>('ubidi_getBaseDirection');

void ubidi_getClassCallback(
  Pointer<UBiDi> pBiDi,
  Pointer<Pointer<NativeFunction<UBiDiClassCallback>>> fn,
  Pointer<Pointer> context,
) =>
    _ubidi_getClassCallback(
      pBiDi,
      fn,
      context,
    );

late final _ubidi_getClassCallback = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Pointer<NativeFunction<UBiDiClassCallback>>> fn,
  Pointer<Pointer> context,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Pointer<NativeFunction<UBiDiClassCallback>>> fn,
  Pointer<Pointer> context,
)>('ubidi_getClassCallback');

int ubidi_getCustomizedClass(
  Pointer<UBiDi> pBiDi,
  int c,
) =>
    _ubidi_getCustomizedClass(
      pBiDi,
      c,
    );

late final _ubidi_getCustomizedClass = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Int32 c,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  int c,
)>('ubidi_getCustomizedClass');

int ubidi_getDirection(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getDirection(
      pBiDi,
    );

late final _ubidi_getDirection = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getDirection');

int ubidi_getLength(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getLength(
      pBiDi,
    );

late final _ubidi_getLength = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getLength');

int ubidi_getLevelAt(
  Pointer<UBiDi> pBiDi,
  int charIndex,
) =>
    _ubidi_getLevelAt(
      pBiDi,
      charIndex,
    );

late final _ubidi_getLevelAt = _icu.lookupFunction<
    Uint8 Function(
  Pointer<UBiDi> pBiDi,
  Int32 charIndex,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  int charIndex,
)>('ubidi_getLevelAt');

Pointer<Uint8> ubidi_getLevels(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getLevels(
      pBiDi,
      pErrorCode,
    );

late final _ubidi_getLevels = _icu.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> pErrorCode,
),
    Pointer<Uint8> Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> pErrorCode,
)>('ubidi_getLevels');

int ubidi_getLogicalIndex(
  Pointer<UBiDi> pBiDi,
  int visualIndex,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getLogicalIndex(
      pBiDi,
      visualIndex,
      pErrorCode,
    );

late final _ubidi_getLogicalIndex = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Int32 visualIndex,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  int visualIndex,
  Pointer<Int32> pErrorCode,
)>('ubidi_getLogicalIndex');

void ubidi_getLogicalMap(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> indexMap,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getLogicalMap(
      pBiDi,
      indexMap,
      pErrorCode,
    );

late final _ubidi_getLogicalMap = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> indexMap,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> indexMap,
  Pointer<Int32> pErrorCode,
)>('ubidi_getLogicalMap');

void ubidi_getLogicalRun(
  Pointer<UBiDi> pBiDi,
  int logicalPosition,
  Pointer<Int32> pLogicalLimit,
  Pointer<Uint8> pLevel,
) =>
    _ubidi_getLogicalRun(
      pBiDi,
      logicalPosition,
      pLogicalLimit,
      pLevel,
    );

late final _ubidi_getLogicalRun = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Int32 logicalPosition,
  Pointer<Int32> pLogicalLimit,
  Pointer<Uint8> pLevel,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  int logicalPosition,
  Pointer<Int32> pLogicalLimit,
  Pointer<Uint8> pLevel,
)>('ubidi_getLogicalRun');

int ubidi_getParaLevel(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getParaLevel(
      pBiDi,
    );

late final _ubidi_getParaLevel = _icu.lookupFunction<
    Uint8 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getParaLevel');

int ubidi_getParagraph(
  Pointer<UBiDi> pBiDi,
  int charIndex,
  Pointer<Int32> pParaStart,
  Pointer<Int32> pParaLimit,
  Pointer<Uint8> pParaLevel,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getParagraph(
      pBiDi,
      charIndex,
      pParaStart,
      pParaLimit,
      pParaLevel,
      pErrorCode,
    );

late final _ubidi_getParagraph = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Int32 charIndex,
  Pointer<Int32> pParaStart,
  Pointer<Int32> pParaLimit,
  Pointer<Uint8> pParaLevel,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  int charIndex,
  Pointer<Int32> pParaStart,
  Pointer<Int32> pParaLimit,
  Pointer<Uint8> pParaLevel,
  Pointer<Int32> pErrorCode,
)>('ubidi_getParagraph');

void ubidi_getParagraphByIndex(
  Pointer<UBiDi> pBiDi,
  int paraIndex,
  Pointer<Int32> pParaStart,
  Pointer<Int32> pParaLimit,
  Pointer<Uint8> pParaLevel,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getParagraphByIndex(
      pBiDi,
      paraIndex,
      pParaStart,
      pParaLimit,
      pParaLevel,
      pErrorCode,
    );

late final _ubidi_getParagraphByIndex = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Int32 paraIndex,
  Pointer<Int32> pParaStart,
  Pointer<Int32> pParaLimit,
  Pointer<Uint8> pParaLevel,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  int paraIndex,
  Pointer<Int32> pParaStart,
  Pointer<Int32> pParaLimit,
  Pointer<Uint8> pParaLevel,
  Pointer<Int32> pErrorCode,
)>('ubidi_getParagraphByIndex');

int ubidi_getProcessedLength(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getProcessedLength(
      pBiDi,
    );

late final _ubidi_getProcessedLength = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getProcessedLength');

int ubidi_getReorderingMode(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getReorderingMode(
      pBiDi,
    );

late final _ubidi_getReorderingMode = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getReorderingMode');

int ubidi_getReorderingOptions(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getReorderingOptions(
      pBiDi,
    );

late final _ubidi_getReorderingOptions = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getReorderingOptions');

int ubidi_getResultLength(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getResultLength(
      pBiDi,
    );

late final _ubidi_getResultLength = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getResultLength');

Pointer<Uint16> ubidi_getText(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_getText(
      pBiDi,
    );

late final _ubidi_getText = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UBiDi> pBiDi,
),
    Pointer<Uint16> Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_getText');

int ubidi_getVisualIndex(
  Pointer<UBiDi> pBiDi,
  int logicalIndex,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getVisualIndex(
      pBiDi,
      logicalIndex,
      pErrorCode,
    );

late final _ubidi_getVisualIndex = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Int32 logicalIndex,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  int logicalIndex,
  Pointer<Int32> pErrorCode,
)>('ubidi_getVisualIndex');

void ubidi_getVisualMap(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> indexMap,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_getVisualMap(
      pBiDi,
      indexMap,
      pErrorCode,
    );

late final _ubidi_getVisualMap = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> indexMap,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Int32> indexMap,
  Pointer<Int32> pErrorCode,
)>('ubidi_getVisualMap');

int ubidi_getVisualRun(
  Pointer<UBiDi> pBiDi,
  int runIndex,
  Pointer<Int32> pLogicalStart,
  Pointer<Int32> pLength,
) =>
    _ubidi_getVisualRun(
      pBiDi,
      runIndex,
      pLogicalStart,
      pLength,
    );

late final _ubidi_getVisualRun = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Int32 runIndex,
  Pointer<Int32> pLogicalStart,
  Pointer<Int32> pLength,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  int runIndex,
  Pointer<Int32> pLogicalStart,
  Pointer<Int32> pLength,
)>('ubidi_getVisualRun');

void ubidi_invertMap(
  Pointer<Int32> srcMap,
  Pointer<Int32> destMap,
  int length,
) =>
    _ubidi_invertMap(
      srcMap,
      destMap,
      length,
    );

late final _ubidi_invertMap = _icu.lookupFunction<
    Void Function(
  Pointer<Int32> srcMap,
  Pointer<Int32> destMap,
  Int32 length,
),
    void Function(
  Pointer<Int32> srcMap,
  Pointer<Int32> destMap,
  int length,
)>('ubidi_invertMap');

int ubidi_isInverse(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_isInverse(
      pBiDi,
    );

late final _ubidi_isInverse = _icu.lookupFunction<
    Int8 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_isInverse');

int ubidi_isOrderParagraphsLTR(
  Pointer<UBiDi> pBiDi,
) =>
    _ubidi_isOrderParagraphsLTR(
      pBiDi,
    );

late final _ubidi_isOrderParagraphsLTR = _icu.lookupFunction<
    Int8 Function(
  Pointer<UBiDi> pBiDi,
),
    int Function(
  Pointer<UBiDi> pBiDi,
)>('ubidi_isOrderParagraphsLTR');

Pointer<UBiDi> ubidi_open() => _ubidi_open();

late final _ubidi_open =
    _icu.lookupFunction<Pointer<UBiDi> Function(), Pointer<UBiDi> Function()>(
        'ubidi_open');

Pointer<UBiDi> ubidi_openSized(
  int maxLength,
  int maxRunCount,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_openSized(
      maxLength,
      maxRunCount,
      pErrorCode,
    );

late final _ubidi_openSized = _icu.lookupFunction<
    Pointer<UBiDi> Function(
  Int32 maxLength,
  Int32 maxRunCount,
  Pointer<Int32> pErrorCode,
),
    Pointer<UBiDi> Function(
  int maxLength,
  int maxRunCount,
  Pointer<Int32> pErrorCode,
)>('ubidi_openSized');

void ubidi_orderParagraphsLTR(
  Pointer<UBiDi> pBiDi,
  int orderParagraphsLTR,
) =>
    _ubidi_orderParagraphsLTR(
      pBiDi,
      orderParagraphsLTR,
    );

late final _ubidi_orderParagraphsLTR = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Int8 orderParagraphsLTR,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  int orderParagraphsLTR,
)>('ubidi_orderParagraphsLTR');

void ubidi_reorderLogical(
  Pointer<Uint8> levels,
  int length,
  Pointer<Int32> indexMap,
) =>
    _ubidi_reorderLogical(
      levels,
      length,
      indexMap,
    );

late final _ubidi_reorderLogical = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> levels,
  Int32 length,
  Pointer<Int32> indexMap,
),
    void Function(
  Pointer<Uint8> levels,
  int length,
  Pointer<Int32> indexMap,
)>('ubidi_reorderLogical');

void ubidi_reorderVisual(
  Pointer<Uint8> levels,
  int length,
  Pointer<Int32> indexMap,
) =>
    _ubidi_reorderVisual(
      levels,
      length,
      indexMap,
    );

late final _ubidi_reorderVisual = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> levels,
  Int32 length,
  Pointer<Int32> indexMap,
),
    void Function(
  Pointer<Uint8> levels,
  int length,
  Pointer<Int32> indexMap,
)>('ubidi_reorderVisual');

void ubidi_setClassCallback(
  Pointer<UBiDi> pBiDi,
  Pointer<NativeFunction<UBiDiClassCallback>> newFn,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UBiDiClassCallback>>> oldFn,
  Pointer<Pointer> oldContext,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_setClassCallback(
      pBiDi,
      newFn,
      newContext,
      oldFn,
      oldContext,
      pErrorCode,
    );

late final _ubidi_setClassCallback = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<NativeFunction<UBiDiClassCallback>> newFn,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UBiDiClassCallback>>> oldFn,
  Pointer<Pointer> oldContext,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<NativeFunction<UBiDiClassCallback>> newFn,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UBiDiClassCallback>>> oldFn,
  Pointer<Pointer> oldContext,
  Pointer<Int32> pErrorCode,
)>('ubidi_setClassCallback');

void ubidi_setContext(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> prologue,
  int proLength,
  Pointer<Uint16> epilogue,
  int epiLength,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_setContext(
      pBiDi,
      prologue,
      proLength,
      epilogue,
      epiLength,
      pErrorCode,
    );

late final _ubidi_setContext = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> prologue,
  Int32 proLength,
  Pointer<Uint16> epilogue,
  Int32 epiLength,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> prologue,
  int proLength,
  Pointer<Uint16> epilogue,
  int epiLength,
  Pointer<Int32> pErrorCode,
)>('ubidi_setContext');

void ubidi_setInverse(
  Pointer<UBiDi> pBiDi,
  int isInverse,
) =>
    _ubidi_setInverse(
      pBiDi,
      isInverse,
    );

late final _ubidi_setInverse = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Int8 isInverse,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  int isInverse,
)>('ubidi_setInverse');

void ubidi_setLine(
  Pointer<UBiDi> pParaBiDi,
  int start,
  int limit,
  Pointer<UBiDi> pLineBiDi,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_setLine(
      pParaBiDi,
      start,
      limit,
      pLineBiDi,
      pErrorCode,
    );

late final _ubidi_setLine = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pParaBiDi,
  Int32 start,
  Int32 limit,
  Pointer<UBiDi> pLineBiDi,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pParaBiDi,
  int start,
  int limit,
  Pointer<UBiDi> pLineBiDi,
  Pointer<Int32> pErrorCode,
)>('ubidi_setLine');

void ubidi_setPara(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> text,
  int length,
  int paraLevel,
  Pointer<Uint8> embeddingLevels,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_setPara(
      pBiDi,
      text,
      length,
      paraLevel,
      embeddingLevels,
      pErrorCode,
    );

late final _ubidi_setPara = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> text,
  Int32 length,
  Uint8 paraLevel,
  Pointer<Uint8> embeddingLevels,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> text,
  int length,
  int paraLevel,
  Pointer<Uint8> embeddingLevels,
  Pointer<Int32> pErrorCode,
)>('ubidi_setPara');

void ubidi_setReorderingMode(
  Pointer<UBiDi> pBiDi,
  int reorderingMode,
) =>
    _ubidi_setReorderingMode(
      pBiDi,
      reorderingMode,
    );

late final _ubidi_setReorderingMode = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Int32 reorderingMode,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  int reorderingMode,
)>('ubidi_setReorderingMode');

void ubidi_setReorderingOptions(
  Pointer<UBiDi> pBiDi,
  int reorderingOptions,
) =>
    _ubidi_setReorderingOptions(
      pBiDi,
      reorderingOptions,
    );

late final _ubidi_setReorderingOptions = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDi> pBiDi,
  Uint32 reorderingOptions,
),
    void Function(
  Pointer<UBiDi> pBiDi,
  int reorderingOptions,
)>('ubidi_setReorderingOptions');

int ubidi_writeReordered(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> dest,
  int destSize,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_writeReordered(
      pBiDi,
      dest,
      destSize,
      options,
      pErrorCode,
    );

late final _ubidi_writeReordered = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> dest,
  Int32 destSize,
  Uint16 options,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UBiDi> pBiDi,
  Pointer<Uint16> dest,
  int destSize,
  int options,
  Pointer<Int32> pErrorCode,
)>('ubidi_writeReordered');

int ubidi_writeReverse(
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Uint16> dest,
  int destSize,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _ubidi_writeReverse(
      src,
      srcLength,
      dest,
      destSize,
      options,
      pErrorCode,
    );

late final _ubidi_writeReverse = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Uint16> dest,
  Int32 destSize,
  Uint16 options,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Uint16> dest,
  int destSize,
  int options,
  Pointer<Int32> pErrorCode,
)>('ubidi_writeReverse');

void ubiditransform_close(
  Pointer<UBiDiTransform> pBidiTransform,
) =>
    _ubiditransform_close(
      pBidiTransform,
    );

late final _ubiditransform_close = _icu.lookupFunction<
    Void Function(
  Pointer<UBiDiTransform> pBidiTransform,
),
    void Function(
  Pointer<UBiDiTransform> pBidiTransform,
)>('ubiditransform_close');

Pointer<UBiDiTransform> ubiditransform_open(
  Pointer<Int32> pErrorCode,
) =>
    _ubiditransform_open(
      pErrorCode,
    );

late final _ubiditransform_open = _icu.lookupFunction<
    Pointer<UBiDiTransform> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UBiDiTransform> Function(
  Pointer<Int32> pErrorCode,
)>('ubiditransform_open');

int ubiditransform_transform(
  Pointer<UBiDiTransform> pBiDiTransform,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Uint16> dest,
  int destSize,
  int inParaLevel,
  int inOrder,
  int outParaLevel,
  int outOrder,
  int doMirroring,
  int shapingOptions,
  Pointer<Int32> pErrorCode,
) =>
    _ubiditransform_transform(
      pBiDiTransform,
      src,
      srcLength,
      dest,
      destSize,
      inParaLevel,
      inOrder,
      outParaLevel,
      outOrder,
      doMirroring,
      shapingOptions,
      pErrorCode,
    );

late final _ubiditransform_transform = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UBiDiTransform> pBiDiTransform,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Uint16> dest,
  Int32 destSize,
  Uint8 inParaLevel,
  Int32 inOrder,
  Uint8 outParaLevel,
  Int32 outOrder,
  Int32 doMirroring,
  Uint32 shapingOptions,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UBiDiTransform> pBiDiTransform,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Uint16> dest,
  int destSize,
  int inParaLevel,
  int inOrder,
  int outParaLevel,
  int outOrder,
  int doMirroring,
  int shapingOptions,
  Pointer<Int32> pErrorCode,
)>('ubiditransform_transform');

int ublock_getCode(
  int c,
) =>
    _ublock_getCode(
      c,
    );

late final _ublock_getCode = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
),
    int Function(
  int c,
)>('ublock_getCode');

void ubrk_close(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_close(
      bi,
    );

late final _ubrk_close = _icu.lookupFunction<
    Void Function(
  Pointer<UBreakIterator> bi,
),
    void Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_close');

int ubrk_countAvailable() => _ubrk_countAvailable();

late final _ubrk_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('ubrk_countAvailable');

int ubrk_current(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_current(
      bi,
    );

late final _ubrk_current = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
),
    int Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_current');

int ubrk_first(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_first(
      bi,
    );

late final _ubrk_first = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
),
    int Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_first');

int ubrk_following(
  Pointer<UBreakIterator> bi,
  int offset,
) =>
    _ubrk_following(
      bi,
      offset,
    );

late final _ubrk_following = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
  Int32 offset,
),
    int Function(
  Pointer<UBreakIterator> bi,
  int offset,
)>('ubrk_following');

Pointer<Utf8> ubrk_getAvailable(
  int index,
) =>
    _ubrk_getAvailable(
      index,
    );

late final _ubrk_getAvailable = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 index,
),
    Pointer<Utf8> Function(
  int index,
)>('ubrk_getAvailable');

int ubrk_getBinaryRules(
  Pointer<UBreakIterator> bi,
  Pointer<Uint8> binaryRules,
  int rulesCapacity,
  Pointer<Int32> status,
) =>
    _ubrk_getBinaryRules(
      bi,
      binaryRules,
      rulesCapacity,
      status,
    );

late final _ubrk_getBinaryRules = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
  Pointer<Uint8> binaryRules,
  Int32 rulesCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UBreakIterator> bi,
  Pointer<Uint8> binaryRules,
  int rulesCapacity,
  Pointer<Int32> status,
)>('ubrk_getBinaryRules');

Pointer<Utf8> ubrk_getLocaleByType(
  Pointer<UBreakIterator> bi,
  int type,
  Pointer<Int32> status,
) =>
    _ubrk_getLocaleByType(
      bi,
      type,
      status,
    );

late final _ubrk_getLocaleByType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UBreakIterator> bi,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UBreakIterator> bi,
  int type,
  Pointer<Int32> status,
)>('ubrk_getLocaleByType');

int ubrk_getRuleStatus(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_getRuleStatus(
      bi,
    );

late final _ubrk_getRuleStatus = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
),
    int Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_getRuleStatus');

int ubrk_getRuleStatusVec(
  Pointer<UBreakIterator> bi,
  Pointer<Int32> fillInVec,
  int capacity,
  Pointer<Int32> status,
) =>
    _ubrk_getRuleStatusVec(
      bi,
      fillInVec,
      capacity,
      status,
    );

late final _ubrk_getRuleStatusVec = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
  Pointer<Int32> fillInVec,
  Int32 capacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UBreakIterator> bi,
  Pointer<Int32> fillInVec,
  int capacity,
  Pointer<Int32> status,
)>('ubrk_getRuleStatusVec');

int ubrk_isBoundary(
  Pointer<UBreakIterator> bi,
  int offset,
) =>
    _ubrk_isBoundary(
      bi,
      offset,
    );

late final _ubrk_isBoundary = _icu.lookupFunction<
    Int8 Function(
  Pointer<UBreakIterator> bi,
  Int32 offset,
),
    int Function(
  Pointer<UBreakIterator> bi,
  int offset,
)>('ubrk_isBoundary');

int ubrk_last(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_last(
      bi,
    );

late final _ubrk_last = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
),
    int Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_last');

int ubrk_next(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_next(
      bi,
    );

late final _ubrk_next = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
),
    int Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_next');

Pointer<UBreakIterator> ubrk_open(
  int type,
  Pointer<Utf8> locale,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
) =>
    _ubrk_open(
      type,
      locale,
      text,
      textLength,
      status,
    );

late final _ubrk_open = _icu.lookupFunction<
    Pointer<UBreakIterator> Function(
  Int32 type,
  Pointer<Utf8> locale,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> status,
),
    Pointer<UBreakIterator> Function(
  int type,
  Pointer<Utf8> locale,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
)>('ubrk_open');

Pointer<UBreakIterator> ubrk_openBinaryRules(
  Pointer<Uint8> binaryRules,
  int rulesLength,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
) =>
    _ubrk_openBinaryRules(
      binaryRules,
      rulesLength,
      text,
      textLength,
      status,
    );

late final _ubrk_openBinaryRules = _icu.lookupFunction<
    Pointer<UBreakIterator> Function(
  Pointer<Uint8> binaryRules,
  Int32 rulesLength,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> status,
),
    Pointer<UBreakIterator> Function(
  Pointer<Uint8> binaryRules,
  int rulesLength,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
)>('ubrk_openBinaryRules');

Pointer<UBreakIterator> ubrk_openRules(
  Pointer<Uint16> rules,
  int rulesLength,
  Pointer<Uint16> text,
  int textLength,
  Pointer<UParseError> parseErr,
  Pointer<Int32> status,
) =>
    _ubrk_openRules(
      rules,
      rulesLength,
      text,
      textLength,
      parseErr,
      status,
    );

late final _ubrk_openRules = _icu.lookupFunction<
    Pointer<UBreakIterator> Function(
  Pointer<Uint16> rules,
  Int32 rulesLength,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<UParseError> parseErr,
  Pointer<Int32> status,
),
    Pointer<UBreakIterator> Function(
  Pointer<Uint16> rules,
  int rulesLength,
  Pointer<Uint16> text,
  int textLength,
  Pointer<UParseError> parseErr,
  Pointer<Int32> status,
)>('ubrk_openRules');

int ubrk_preceding(
  Pointer<UBreakIterator> bi,
  int offset,
) =>
    _ubrk_preceding(
      bi,
      offset,
    );

late final _ubrk_preceding = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
  Int32 offset,
),
    int Function(
  Pointer<UBreakIterator> bi,
  int offset,
)>('ubrk_preceding');

int ubrk_previous(
  Pointer<UBreakIterator> bi,
) =>
    _ubrk_previous(
      bi,
    );

late final _ubrk_previous = _icu.lookupFunction<
    Int32 Function(
  Pointer<UBreakIterator> bi,
),
    int Function(
  Pointer<UBreakIterator> bi,
)>('ubrk_previous');

void ubrk_refreshUText(
  Pointer<UBreakIterator> bi,
  Pointer<UText> text,
  Pointer<Int32> status,
) =>
    _ubrk_refreshUText(
      bi,
      text,
      status,
    );

late final _ubrk_refreshUText = _icu.lookupFunction<
    Void Function(
  Pointer<UBreakIterator> bi,
  Pointer<UText> text,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UBreakIterator> bi,
  Pointer<UText> text,
  Pointer<Int32> status,
)>('ubrk_refreshUText');

Pointer<UBreakIterator> ubrk_safeClone(
  Pointer<UBreakIterator> bi,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
) =>
    _ubrk_safeClone(
      bi,
      stackBuffer,
      pBufferSize,
      status,
    );

late final _ubrk_safeClone = _icu.lookupFunction<
    Pointer<UBreakIterator> Function(
  Pointer<UBreakIterator> bi,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
),
    Pointer<UBreakIterator> Function(
  Pointer<UBreakIterator> bi,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
)>('ubrk_safeClone');

void ubrk_setText(
  Pointer<UBreakIterator> bi,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
) =>
    _ubrk_setText(
      bi,
      text,
      textLength,
      status,
    );

late final _ubrk_setText = _icu.lookupFunction<
    Void Function(
  Pointer<UBreakIterator> bi,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UBreakIterator> bi,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
)>('ubrk_setText');

void ubrk_setUText(
  Pointer<UBreakIterator> bi,
  Pointer<UText> text,
  Pointer<Int32> status,
) =>
    _ubrk_setUText(
      bi,
      text,
      status,
    );

late final _ubrk_setUText = _icu.lookupFunction<
    Void Function(
  Pointer<UBreakIterator> bi,
  Pointer<UText> text,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UBreakIterator> bi,
  Pointer<UText> text,
  Pointer<Int32> status,
)>('ubrk_setUText');

void ucal_add(
  Pointer<Pointer> cal,
  int field,
  int amount,
  Pointer<Int32> status,
) =>
    _ucal_add(
      cal,
      field,
      amount,
      status,
    );

late final _ucal_add = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 field,
  Int32 amount,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> cal,
  int field,
  int amount,
  Pointer<Int32> status,
)>('ucal_add');

void ucal_clear(
  Pointer<Pointer> calendar,
) =>
    _ucal_clear(
      calendar,
    );

late final _ucal_clear = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> calendar,
),
    void Function(
  Pointer<Pointer> calendar,
)>('ucal_clear');

void ucal_clearField(
  Pointer<Pointer> cal,
  int field,
) =>
    _ucal_clearField(
      cal,
      field,
    );

late final _ucal_clearField = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 field,
),
    void Function(
  Pointer<Pointer> cal,
  int field,
)>('ucal_clearField');

Pointer<Pointer> ucal_clone(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
) =>
    _ucal_clone(
      cal,
      status,
    );

late final _ucal_clone = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
)>('ucal_clone');

void ucal_close(
  Pointer<Pointer> cal,
) =>
    _ucal_close(
      cal,
    );

late final _ucal_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
),
    void Function(
  Pointer<Pointer> cal,
)>('ucal_close');

int ucal_countAvailable() => _ucal_countAvailable();

late final _ucal_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('ucal_countAvailable');

int ucal_equivalentTo(
  Pointer<Pointer> cal1,
  Pointer<Pointer> cal2,
) =>
    _ucal_equivalentTo(
      cal1,
      cal2,
    );

late final _ucal_equivalentTo = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> cal1,
  Pointer<Pointer> cal2,
),
    int Function(
  Pointer<Pointer> cal1,
  Pointer<Pointer> cal2,
)>('ucal_equivalentTo');

int ucal_get(
  Pointer<Pointer> cal,
  int field,
  Pointer<Int32> status,
) =>
    _ucal_get(
      cal,
      field,
      status,
    );

late final _ucal_get = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Int32 field,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  int field,
  Pointer<Int32> status,
)>('ucal_get');

int ucal_getAttribute(
  Pointer<Pointer> cal,
  int attr,
) =>
    _ucal_getAttribute(
      cal,
      attr,
    );

late final _ucal_getAttribute = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Int32 attr,
),
    int Function(
  Pointer<Pointer> cal,
  int attr,
)>('ucal_getAttribute');

Pointer<Utf8> ucal_getAvailable(
  int localeIndex,
) =>
    _ucal_getAvailable(
      localeIndex,
    );

late final _ucal_getAvailable = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 localeIndex,
),
    Pointer<Utf8> Function(
  int localeIndex,
)>('ucal_getAvailable');

int ucal_getCanonicalTimeZoneID(
  Pointer<Uint16> id,
  int len,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int8> isSystemID,
  Pointer<Int32> status,
) =>
    _ucal_getCanonicalTimeZoneID(
      id,
      len,
      result,
      resultCapacity,
      isSystemID,
      status,
    );

late final _ucal_getCanonicalTimeZoneID = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> id,
  Int32 len,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int8> isSystemID,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Uint16> id,
  int len,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int8> isSystemID,
  Pointer<Int32> status,
)>('ucal_getCanonicalTimeZoneID');

int ucal_getDSTSavings(
  Pointer<Uint16> zoneID,
  Pointer<Int32> ec,
) =>
    _ucal_getDSTSavings(
      zoneID,
      ec,
    );

late final _ucal_getDSTSavings = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> zoneID,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Uint16> zoneID,
  Pointer<Int32> ec,
)>('ucal_getDSTSavings');

int ucal_getDayOfWeekType(
  Pointer<Pointer> cal,
  int dayOfWeek,
  Pointer<Int32> status,
) =>
    _ucal_getDayOfWeekType(
      cal,
      dayOfWeek,
      status,
    );

late final _ucal_getDayOfWeekType = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Int32 dayOfWeek,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  int dayOfWeek,
  Pointer<Int32> status,
)>('ucal_getDayOfWeekType');

int ucal_getDefaultTimeZone(
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> ec,
) =>
    _ucal_getDefaultTimeZone(
      result,
      resultCapacity,
      ec,
    );

late final _ucal_getDefaultTimeZone = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> ec,
)>('ucal_getDefaultTimeZone');

int ucal_getFieldDifference(
  Pointer<Pointer> cal,
  double target,
  int field,
  Pointer<Int32> status,
) =>
    _ucal_getFieldDifference(
      cal,
      target,
      field,
      status,
    );

late final _ucal_getFieldDifference = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Double target,
  Int32 field,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  double target,
  int field,
  Pointer<Int32> status,
)>('ucal_getFieldDifference');

double ucal_getGregorianChange(
  Pointer<Pointer> cal,
  Pointer<Int32> pErrorCode,
) =>
    _ucal_getGregorianChange(
      cal,
      pErrorCode,
    );

late final _ucal_getGregorianChange = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> cal,
  Pointer<Int32> pErrorCode,
),
    double Function(
  Pointer<Pointer> cal,
  Pointer<Int32> pErrorCode,
)>('ucal_getGregorianChange');

int ucal_getHostTimeZone(
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> ec,
) =>
    _ucal_getHostTimeZone(
      result,
      resultCapacity,
      ec,
    );

late final _ucal_getHostTimeZone = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> ec,
)>('ucal_getHostTimeZone');

Pointer<UEnumeration> ucal_getKeywordValuesForLocale(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  int commonlyUsed,
  Pointer<Int32> status,
) =>
    _ucal_getKeywordValuesForLocale(
      key,
      locale,
      commonlyUsed,
      status,
    );

late final _ucal_getKeywordValuesForLocale = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  Int8 commonlyUsed,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  int commonlyUsed,
  Pointer<Int32> status,
)>('ucal_getKeywordValuesForLocale');

int ucal_getLimit(
  Pointer<Pointer> cal,
  int field,
  int type,
  Pointer<Int32> status,
) =>
    _ucal_getLimit(
      cal,
      field,
      type,
      status,
    );

late final _ucal_getLimit = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Int32 field,
  Int32 type,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  int field,
  int type,
  Pointer<Int32> status,
)>('ucal_getLimit');

Pointer<Utf8> ucal_getLocaleByType(
  Pointer<Pointer> cal,
  int type,
  Pointer<Int32> status,
) =>
    _ucal_getLocaleByType(
      cal,
      type,
      status,
    );

late final _ucal_getLocaleByType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Pointer> cal,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<Pointer> cal,
  int type,
  Pointer<Int32> status,
)>('ucal_getLocaleByType');

double ucal_getMillis(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
) =>
    _ucal_getMillis(
      cal,
      status,
    );

late final _ucal_getMillis = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
)>('ucal_getMillis');

double ucal_getNow() => _ucal_getNow();

late final _ucal_getNow =
    _icu.lookupFunction<Double Function(), double Function()>('ucal_getNow');

Pointer<Utf8> ucal_getTZDataVersion(
  Pointer<Int32> status,
) =>
    _ucal_getTZDataVersion(
      status,
    );

late final _ucal_getTZDataVersion = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<Int32> status,
)>('ucal_getTZDataVersion');

int ucal_getTimeZoneDisplayName(
  Pointer<Pointer> cal,
  int type,
  Pointer<Utf8> locale,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _ucal_getTimeZoneDisplayName(
      cal,
      type,
      locale,
      result,
      resultLength,
      status,
    );

late final _ucal_getTimeZoneDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Int32 type,
  Pointer<Utf8> locale,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  int type,
  Pointer<Utf8> locale,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('ucal_getTimeZoneDisplayName');

int ucal_getTimeZoneID(
  Pointer<Pointer> cal,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _ucal_getTimeZoneID(
      cal,
      result,
      resultLength,
      status,
    );

late final _ucal_getTimeZoneID = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('ucal_getTimeZoneID');

int ucal_getTimeZoneIDForWindowsID(
  Pointer<Uint16> winid,
  int len,
  Pointer<Utf8> region,
  Pointer<Uint16> id,
  int idCapacity,
  Pointer<Int32> status,
) =>
    _ucal_getTimeZoneIDForWindowsID(
      winid,
      len,
      region,
      id,
      idCapacity,
      status,
    );

late final _ucal_getTimeZoneIDForWindowsID = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> winid,
  Int32 len,
  Pointer<Utf8> region,
  Pointer<Uint16> id,
  Int32 idCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Uint16> winid,
  int len,
  Pointer<Utf8> region,
  Pointer<Uint16> id,
  int idCapacity,
  Pointer<Int32> status,
)>('ucal_getTimeZoneIDForWindowsID');

int ucal_getTimeZoneTransitionDate(
  Pointer<Pointer> cal,
  int type,
  Pointer<Double> transition,
  Pointer<Int32> status,
) =>
    _ucal_getTimeZoneTransitionDate(
      cal,
      type,
      transition,
      status,
    );

late final _ucal_getTimeZoneTransitionDate = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> cal,
  Int32 type,
  Pointer<Double> transition,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  int type,
  Pointer<Double> transition,
  Pointer<Int32> status,
)>('ucal_getTimeZoneTransitionDate');

Pointer<Utf8> ucal_getType(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
) =>
    _ucal_getType(
      cal,
      status,
    );

late final _ucal_getType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
)>('ucal_getType');

int ucal_getWeekendTransition(
  Pointer<Pointer> cal,
  int dayOfWeek,
  Pointer<Int32> status,
) =>
    _ucal_getWeekendTransition(
      cal,
      dayOfWeek,
      status,
    );

late final _ucal_getWeekendTransition = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> cal,
  Int32 dayOfWeek,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  int dayOfWeek,
  Pointer<Int32> status,
)>('ucal_getWeekendTransition');

int ucal_getWindowsTimeZoneID(
  Pointer<Uint16> id,
  int len,
  Pointer<Uint16> winid,
  int winidCapacity,
  Pointer<Int32> status,
) =>
    _ucal_getWindowsTimeZoneID(
      id,
      len,
      winid,
      winidCapacity,
      status,
    );

late final _ucal_getWindowsTimeZoneID = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> id,
  Int32 len,
  Pointer<Uint16> winid,
  Int32 winidCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Uint16> id,
  int len,
  Pointer<Uint16> winid,
  int winidCapacity,
  Pointer<Int32> status,
)>('ucal_getWindowsTimeZoneID');

int ucal_inDaylightTime(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
) =>
    _ucal_inDaylightTime(
      cal,
      status,
    );

late final _ucal_inDaylightTime = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  Pointer<Int32> status,
)>('ucal_inDaylightTime');

int ucal_isSet(
  Pointer<Pointer> cal,
  int field,
) =>
    _ucal_isSet(
      cal,
      field,
    );

late final _ucal_isSet = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> cal,
  Int32 field,
),
    int Function(
  Pointer<Pointer> cal,
  int field,
)>('ucal_isSet');

int ucal_isWeekend(
  Pointer<Pointer> cal,
  double date,
  Pointer<Int32> status,
) =>
    _ucal_isWeekend(
      cal,
      date,
      status,
    );

late final _ucal_isWeekend = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> cal,
  Double date,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> cal,
  double date,
  Pointer<Int32> status,
)>('ucal_isWeekend');

Pointer<Pointer> ucal_open(
  Pointer<Uint16> zoneID,
  int len,
  Pointer<Utf8> locale,
  int type,
  Pointer<Int32> status,
) =>
    _ucal_open(
      zoneID,
      len,
      locale,
      type,
      status,
    );

late final _ucal_open = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Uint16> zoneID,
  Int32 len,
  Pointer<Utf8> locale,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Uint16> zoneID,
  int len,
  Pointer<Utf8> locale,
  int type,
  Pointer<Int32> status,
)>('ucal_open');

Pointer<UEnumeration> ucal_openCountryTimeZones(
  Pointer<Utf8> country,
  Pointer<Int32> ec,
) =>
    _ucal_openCountryTimeZones(
      country,
      ec,
    );

late final _ucal_openCountryTimeZones = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> country,
  Pointer<Int32> ec,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> country,
  Pointer<Int32> ec,
)>('ucal_openCountryTimeZones');

Pointer<UEnumeration> ucal_openTimeZoneIDEnumeration(
  int zoneType,
  Pointer<Utf8> region,
  Pointer<Int32> rawOffset,
  Pointer<Int32> ec,
) =>
    _ucal_openTimeZoneIDEnumeration(
      zoneType,
      region,
      rawOffset,
      ec,
    );

late final _ucal_openTimeZoneIDEnumeration = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Int32 zoneType,
  Pointer<Utf8> region,
  Pointer<Int32> rawOffset,
  Pointer<Int32> ec,
),
    Pointer<UEnumeration> Function(
  int zoneType,
  Pointer<Utf8> region,
  Pointer<Int32> rawOffset,
  Pointer<Int32> ec,
)>('ucal_openTimeZoneIDEnumeration');

Pointer<UEnumeration> ucal_openTimeZones(
  Pointer<Int32> ec,
) =>
    _ucal_openTimeZones(
      ec,
    );

late final _ucal_openTimeZones = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Int32> ec,
),
    Pointer<UEnumeration> Function(
  Pointer<Int32> ec,
)>('ucal_openTimeZones');

void ucal_roll(
  Pointer<Pointer> cal,
  int field,
  int amount,
  Pointer<Int32> status,
) =>
    _ucal_roll(
      cal,
      field,
      amount,
      status,
    );

late final _ucal_roll = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 field,
  Int32 amount,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> cal,
  int field,
  int amount,
  Pointer<Int32> status,
)>('ucal_roll');

void ucal_set(
  Pointer<Pointer> cal,
  int field,
  int value,
) =>
    _ucal_set(
      cal,
      field,
      value,
    );

late final _ucal_set = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 field,
  Int32 value,
),
    void Function(
  Pointer<Pointer> cal,
  int field,
  int value,
)>('ucal_set');

void ucal_setAttribute(
  Pointer<Pointer> cal,
  int attr,
  int newValue,
) =>
    _ucal_setAttribute(
      cal,
      attr,
      newValue,
    );

late final _ucal_setAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 attr,
  Int32 newValue,
),
    void Function(
  Pointer<Pointer> cal,
  int attr,
  int newValue,
)>('ucal_setAttribute');

void ucal_setDate(
  Pointer<Pointer> cal,
  int year,
  int month,
  int date,
  Pointer<Int32> status,
) =>
    _ucal_setDate(
      cal,
      year,
      month,
      date,
      status,
    );

late final _ucal_setDate = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 year,
  Int32 month,
  Int32 date,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> cal,
  int year,
  int month,
  int date,
  Pointer<Int32> status,
)>('ucal_setDate');

void ucal_setDateTime(
  Pointer<Pointer> cal,
  int year,
  int month,
  int date,
  int hour,
  int minute,
  int second,
  Pointer<Int32> status,
) =>
    _ucal_setDateTime(
      cal,
      year,
      month,
      date,
      hour,
      minute,
      second,
      status,
    );

late final _ucal_setDateTime = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Int32 year,
  Int32 month,
  Int32 date,
  Int32 hour,
  Int32 minute,
  Int32 second,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> cal,
  int year,
  int month,
  int date,
  int hour,
  int minute,
  int second,
  Pointer<Int32> status,
)>('ucal_setDateTime');

void ucal_setDefaultTimeZone(
  Pointer<Uint16> zoneID,
  Pointer<Int32> ec,
) =>
    _ucal_setDefaultTimeZone(
      zoneID,
      ec,
    );

late final _ucal_setDefaultTimeZone = _icu.lookupFunction<
    Void Function(
  Pointer<Uint16> zoneID,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<Uint16> zoneID,
  Pointer<Int32> ec,
)>('ucal_setDefaultTimeZone');

void ucal_setGregorianChange(
  Pointer<Pointer> cal,
  double date,
  Pointer<Int32> pErrorCode,
) =>
    _ucal_setGregorianChange(
      cal,
      date,
      pErrorCode,
    );

late final _ucal_setGregorianChange = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Double date,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<Pointer> cal,
  double date,
  Pointer<Int32> pErrorCode,
)>('ucal_setGregorianChange');

void ucal_setMillis(
  Pointer<Pointer> cal,
  double dateTime,
  Pointer<Int32> status,
) =>
    _ucal_setMillis(
      cal,
      dateTime,
      status,
    );

late final _ucal_setMillis = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Double dateTime,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> cal,
  double dateTime,
  Pointer<Int32> status,
)>('ucal_setMillis');

void ucal_setTimeZone(
  Pointer<Pointer> cal,
  Pointer<Uint16> zoneID,
  int len,
  Pointer<Int32> status,
) =>
    _ucal_setTimeZone(
      cal,
      zoneID,
      len,
      status,
    );

late final _ucal_setTimeZone = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> cal,
  Pointer<Uint16> zoneID,
  Int32 len,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> cal,
  Pointer<Uint16> zoneID,
  int len,
  Pointer<Int32> status,
)>('ucal_setTimeZone');

void ucasemap_close(
  Pointer<UCaseMap> csm,
) =>
    _ucasemap_close(
      csm,
    );

late final _ucasemap_close = _icu.lookupFunction<
    Void Function(
  Pointer<UCaseMap> csm,
),
    void Function(
  Pointer<UCaseMap> csm,
)>('ucasemap_close');

Pointer<UBreakIterator> ucasemap_getBreakIterator(
  Pointer<UCaseMap> csm,
) =>
    _ucasemap_getBreakIterator(
      csm,
    );

late final _ucasemap_getBreakIterator = _icu.lookupFunction<
    Pointer<UBreakIterator> Function(
  Pointer<UCaseMap> csm,
),
    Pointer<UBreakIterator> Function(
  Pointer<UCaseMap> csm,
)>('ucasemap_getBreakIterator');

Pointer<Utf8> ucasemap_getLocale(
  Pointer<UCaseMap> csm,
) =>
    _ucasemap_getLocale(
      csm,
    );

late final _ucasemap_getLocale = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UCaseMap> csm,
),
    Pointer<Utf8> Function(
  Pointer<UCaseMap> csm,
)>('ucasemap_getLocale');

int ucasemap_getOptions(
  Pointer<UCaseMap> csm,
) =>
    _ucasemap_getOptions(
      csm,
    );

late final _ucasemap_getOptions = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UCaseMap> csm,
),
    int Function(
  Pointer<UCaseMap> csm,
)>('ucasemap_getOptions');

Pointer<UCaseMap> ucasemap_open(
  Pointer<Utf8> locale,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_open(
      locale,
      options,
      pErrorCode,
    );

late final _ucasemap_open = _icu.lookupFunction<
    Pointer<UCaseMap> Function(
  Pointer<Utf8> locale,
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    Pointer<UCaseMap> Function(
  Pointer<Utf8> locale,
  int options,
  Pointer<Int32> pErrorCode,
)>('ucasemap_open');

void ucasemap_setBreakIterator(
  Pointer<UCaseMap> csm,
  Pointer<UBreakIterator> iterToAdopt,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_setBreakIterator(
      csm,
      iterToAdopt,
      pErrorCode,
    );

late final _ucasemap_setBreakIterator = _icu.lookupFunction<
    Void Function(
  Pointer<UCaseMap> csm,
  Pointer<UBreakIterator> iterToAdopt,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UCaseMap> csm,
  Pointer<UBreakIterator> iterToAdopt,
  Pointer<Int32> pErrorCode,
)>('ucasemap_setBreakIterator');

void ucasemap_setLocale(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_setLocale(
      csm,
      locale,
      pErrorCode,
    );

late final _ucasemap_setLocale = _icu.lookupFunction<
    Void Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
)>('ucasemap_setLocale');

void ucasemap_setOptions(
  Pointer<UCaseMap> csm,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_setOptions(
      csm,
      options,
      pErrorCode,
    );

late final _ucasemap_setOptions = _icu.lookupFunction<
    Void Function(
  Pointer<UCaseMap> csm,
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UCaseMap> csm,
  int options,
  Pointer<Int32> pErrorCode,
)>('ucasemap_setOptions');

int ucasemap_toTitle(
  Pointer<UCaseMap> csm,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_toTitle(
      csm,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucasemap_toTitle = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCaseMap> csm,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCaseMap> csm,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucasemap_toTitle');

int ucasemap_utf8FoldCase(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_utf8FoldCase(
      csm,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucasemap_utf8FoldCase = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucasemap_utf8FoldCase');

int ucasemap_utf8ToLower(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_utf8ToLower(
      csm,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucasemap_utf8ToLower = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucasemap_utf8ToLower');

int ucasemap_utf8ToTitle(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_utf8ToTitle(
      csm,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucasemap_utf8ToTitle = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucasemap_utf8ToTitle');

int ucasemap_utf8ToUpper(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucasemap_utf8ToUpper(
      csm,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucasemap_utf8ToUpper = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCaseMap> csm,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucasemap_utf8ToUpper');

void ucfpos_close(
  Pointer<UConstrainedFieldPosition> ucfpos,
) =>
    _ucfpos_close(
      ucfpos,
    );

late final _ucfpos_close = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
)>('ucfpos_close');

void ucfpos_constrainCategory(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  Pointer<Int32> ec,
) =>
    _ucfpos_constrainCategory(
      ucfpos,
      category,
      ec,
    );

late final _ucfpos_constrainCategory = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Int32 category,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  Pointer<Int32> ec,
)>('ucfpos_constrainCategory');

void ucfpos_constrainField(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  int field,
  Pointer<Int32> ec,
) =>
    _ucfpos_constrainField(
      ucfpos,
      category,
      field,
      ec,
    );

late final _ucfpos_constrainField = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Int32 category,
  Int32 field,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  int field,
  Pointer<Int32> ec,
)>('ucfpos_constrainField');

int ucfpos_getCategory(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
) =>
    _ucfpos_getCategory(
      ucfpos,
      ec,
    );

late final _ucfpos_getCategory = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
)>('ucfpos_getCategory');

int ucfpos_getField(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
) =>
    _ucfpos_getField(
      ucfpos,
      ec,
    );

late final _ucfpos_getField = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
)>('ucfpos_getField');

void ucfpos_getIndexes(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> pStart,
  Pointer<Int32> pLimit,
  Pointer<Int32> ec,
) =>
    _ucfpos_getIndexes(
      ucfpos,
      pStart,
      pLimit,
      ec,
    );

late final _ucfpos_getIndexes = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> pStart,
  Pointer<Int32> pLimit,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> pStart,
  Pointer<Int32> pLimit,
  Pointer<Int32> ec,
)>('ucfpos_getIndexes');

int ucfpos_getInt64IterationContext(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
) =>
    _ucfpos_getInt64IterationContext(
      ucfpos,
      ec,
    );

late final _ucfpos_getInt64IterationContext = _icu.lookupFunction<
    Int64 Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
)>('ucfpos_getInt64IterationContext');

int ucfpos_matchesField(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  int field,
  Pointer<Int32> ec,
) =>
    _ucfpos_matchesField(
      ucfpos,
      category,
      field,
      ec,
    );

late final _ucfpos_matchesField = _icu.lookupFunction<
    Int8 Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Int32 category,
  Int32 field,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  int field,
  Pointer<Int32> ec,
)>('ucfpos_matchesField');

Pointer<UConstrainedFieldPosition> ucfpos_open(
  Pointer<Int32> ec,
) =>
    _ucfpos_open(
      ec,
    );

late final _ucfpos_open = _icu.lookupFunction<
    Pointer<UConstrainedFieldPosition> Function(
  Pointer<Int32> ec,
),
    Pointer<UConstrainedFieldPosition> Function(
  Pointer<Int32> ec,
)>('ucfpos_open');

void ucfpos_reset(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
) =>
    _ucfpos_reset(
      ucfpos,
      ec,
    );

late final _ucfpos_reset = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
)>('ucfpos_reset');

void ucfpos_setInt64IterationContext(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int context,
  Pointer<Int32> ec,
) =>
    _ucfpos_setInt64IterationContext(
      ucfpos,
      context,
      ec,
    );

late final _ucfpos_setInt64IterationContext = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Int64 context,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int context,
  Pointer<Int32> ec,
)>('ucfpos_setInt64IterationContext');

void ucfpos_setState(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  int field,
  int start,
  int limit,
  Pointer<Int32> ec,
) =>
    _ucfpos_setState(
      ucfpos,
      category,
      field,
      start,
      limit,
      ec,
    );

late final _ucfpos_setState = _icu.lookupFunction<
    Void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  Int32 category,
  Int32 field,
  Int32 start,
  Int32 limit,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UConstrainedFieldPosition> ucfpos,
  int category,
  int field,
  int start,
  int limit,
  Pointer<Int32> ec,
)>('ucfpos_setState');

void ucnv_cbFromUWriteBytes(
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Utf8> source,
  int length,
  int offsetIndex,
  Pointer<Int32> err,
) =>
    _ucnv_cbFromUWriteBytes(
      args,
      source,
      length,
      offsetIndex,
      err,
    );

late final _ucnv_cbFromUWriteBytes = _icu.lookupFunction<
    Void Function(
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Utf8> source,
  Int32 length,
  Int32 offsetIndex,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Utf8> source,
  int length,
  int offsetIndex,
  Pointer<Int32> err,
)>('ucnv_cbFromUWriteBytes');

void ucnv_cbFromUWriteSub(
  Pointer<UConverterFromUnicodeArgs> args,
  int offsetIndex,
  Pointer<Int32> err,
) =>
    _ucnv_cbFromUWriteSub(
      args,
      offsetIndex,
      err,
    );

late final _ucnv_cbFromUWriteSub = _icu.lookupFunction<
    Void Function(
  Pointer<UConverterFromUnicodeArgs> args,
  Int32 offsetIndex,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverterFromUnicodeArgs> args,
  int offsetIndex,
  Pointer<Int32> err,
)>('ucnv_cbFromUWriteSub');

void ucnv_cbFromUWriteUChars(
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Pointer<Uint16>> source,
  Pointer<Uint16> sourceLimit,
  int offsetIndex,
  Pointer<Int32> err,
) =>
    _ucnv_cbFromUWriteUChars(
      args,
      source,
      sourceLimit,
      offsetIndex,
      err,
    );

late final _ucnv_cbFromUWriteUChars = _icu.lookupFunction<
    Void Function(
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Pointer<Uint16>> source,
  Pointer<Uint16> sourceLimit,
  Int32 offsetIndex,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverterFromUnicodeArgs> args,
  Pointer<Pointer<Uint16>> source,
  Pointer<Uint16> sourceLimit,
  int offsetIndex,
  Pointer<Int32> err,
)>('ucnv_cbFromUWriteUChars');

void ucnv_cbToUWriteSub(
  Pointer<UConverterToUnicodeArgs> args,
  int offsetIndex,
  Pointer<Int32> err,
) =>
    _ucnv_cbToUWriteSub(
      args,
      offsetIndex,
      err,
    );

late final _ucnv_cbToUWriteSub = _icu.lookupFunction<
    Void Function(
  Pointer<UConverterToUnicodeArgs> args,
  Int32 offsetIndex,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverterToUnicodeArgs> args,
  int offsetIndex,
  Pointer<Int32> err,
)>('ucnv_cbToUWriteSub');

void ucnv_cbToUWriteUChars(
  Pointer<UConverterToUnicodeArgs> args,
  Pointer<Uint16> source,
  int length,
  int offsetIndex,
  Pointer<Int32> err,
) =>
    _ucnv_cbToUWriteUChars(
      args,
      source,
      length,
      offsetIndex,
      err,
    );

late final _ucnv_cbToUWriteUChars = _icu.lookupFunction<
    Void Function(
  Pointer<UConverterToUnicodeArgs> args,
  Pointer<Uint16> source,
  Int32 length,
  Int32 offsetIndex,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverterToUnicodeArgs> args,
  Pointer<Uint16> source,
  int length,
  int offsetIndex,
  Pointer<Int32> err,
)>('ucnv_cbToUWriteUChars');

void ucnv_close(
  Pointer<UConverter> converter,
) =>
    _ucnv_close(
      converter,
    );

late final _ucnv_close = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
),
    void Function(
  Pointer<UConverter> converter,
)>('ucnv_close');

int ucnv_compareNames(
  Pointer<Utf8> name1,
  Pointer<Utf8> name2,
) =>
    _ucnv_compareNames(
      name1,
      name2,
    );

late final _ucnv_compareNames = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> name1,
  Pointer<Utf8> name2,
),
    int Function(
  Pointer<Utf8> name1,
  Pointer<Utf8> name2,
)>('ucnv_compareNames');

int ucnv_convert(
  Pointer<Utf8> toConverterName,
  Pointer<Utf8> fromConverterName,
  Pointer<Utf8> target,
  int targetCapacity,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_convert(
      toConverterName,
      fromConverterName,
      target,
      targetCapacity,
      source,
      sourceLength,
      pErrorCode,
    );

late final _ucnv_convert = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> toConverterName,
  Pointer<Utf8> fromConverterName,
  Pointer<Utf8> target,
  Int32 targetCapacity,
  Pointer<Utf8> source,
  Int32 sourceLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Utf8> toConverterName,
  Pointer<Utf8> fromConverterName,
  Pointer<Utf8> target,
  int targetCapacity,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> pErrorCode,
)>('ucnv_convert');

void ucnv_convertEx(
  Pointer<UConverter> targetCnv,
  Pointer<UConverter> sourceCnv,
  Pointer<Pointer<Int8>> target,
  Pointer<Utf8> targetLimit,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Uint16> pivotStart,
  Pointer<Pointer<Uint16>> pivotSource,
  Pointer<Pointer<Uint16>> pivotTarget,
  Pointer<Uint16> pivotLimit,
  int reset,
  int flush,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_convertEx(
      targetCnv,
      sourceCnv,
      target,
      targetLimit,
      source,
      sourceLimit,
      pivotStart,
      pivotSource,
      pivotTarget,
      pivotLimit,
      reset,
      flush,
      pErrorCode,
    );

late final _ucnv_convertEx = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> targetCnv,
  Pointer<UConverter> sourceCnv,
  Pointer<Pointer<Int8>> target,
  Pointer<Utf8> targetLimit,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Uint16> pivotStart,
  Pointer<Pointer<Uint16>> pivotSource,
  Pointer<Pointer<Uint16>> pivotTarget,
  Pointer<Uint16> pivotLimit,
  Int8 reset,
  Int8 flush,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UConverter> targetCnv,
  Pointer<UConverter> sourceCnv,
  Pointer<Pointer<Int8>> target,
  Pointer<Utf8> targetLimit,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Uint16> pivotStart,
  Pointer<Pointer<Uint16>> pivotSource,
  Pointer<Pointer<Uint16>> pivotTarget,
  Pointer<Uint16> pivotLimit,
  int reset,
  int flush,
  Pointer<Int32> pErrorCode,
)>('ucnv_convertEx');

int ucnv_countAliases(
  Pointer<Utf8> alias,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_countAliases(
      alias,
      pErrorCode,
    );

late final _ucnv_countAliases = _icu.lookupFunction<
    Uint16 Function(
  Pointer<Utf8> alias,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Utf8> alias,
  Pointer<Int32> pErrorCode,
)>('ucnv_countAliases');

int ucnv_countAvailable() => _ucnv_countAvailable();

late final _ucnv_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('ucnv_countAvailable');

int ucnv_countStandards() => _ucnv_countStandards();

late final _ucnv_countStandards = _icu
    .lookupFunction<Uint16 Function(), int Function()>('ucnv_countStandards');

Pointer<Utf8> ucnv_detectUnicodeSignature(
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> signatureLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_detectUnicodeSignature(
      source,
      sourceLength,
      signatureLength,
      pErrorCode,
    );

late final _ucnv_detectUnicodeSignature = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> source,
  Int32 sourceLength,
  Pointer<Int32> signatureLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> signatureLength,
  Pointer<Int32> pErrorCode,
)>('ucnv_detectUnicodeSignature');

void ucnv_fixFileSeparator(
  Pointer<UConverter> cnv,
  Pointer<Uint16> source,
  int sourceLen,
) =>
    _ucnv_fixFileSeparator(
      cnv,
      source,
      sourceLen,
    );

late final _ucnv_fixFileSeparator = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> cnv,
  Pointer<Uint16> source,
  Int32 sourceLen,
),
    void Function(
  Pointer<UConverter> cnv,
  Pointer<Uint16> source,
  int sourceLen,
)>('ucnv_fixFileSeparator');

int ucnv_flushCache() => _ucnv_flushCache();

late final _ucnv_flushCache =
    _icu.lookupFunction<Int32 Function(), int Function()>('ucnv_flushCache');

int ucnv_fromAlgorithmic(
  Pointer<UConverter> cnv,
  int algorithmicType,
  Pointer<Utf8> target,
  int targetCapacity,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_fromAlgorithmic(
      cnv,
      algorithmicType,
      target,
      targetCapacity,
      source,
      sourceLength,
      pErrorCode,
    );

late final _ucnv_fromAlgorithmic = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> cnv,
  Int32 algorithmicType,
  Pointer<Utf8> target,
  Int32 targetCapacity,
  Pointer<Utf8> source,
  Int32 sourceLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UConverter> cnv,
  int algorithmicType,
  Pointer<Utf8> target,
  int targetCapacity,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> pErrorCode,
)>('ucnv_fromAlgorithmic');

int ucnv_fromUChars(
  Pointer<UConverter> cnv,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_fromUChars(
      cnv,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucnv_fromUChars = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> cnv,
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UConverter> cnv,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucnv_fromUChars');

int ucnv_fromUCountPending(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
) =>
    _ucnv_fromUCountPending(
      cnv,
      status,
    );

late final _ucnv_fromUCountPending = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
)>('ucnv_fromUCountPending');

void ucnv_fromUnicode(
  Pointer<UConverter> converter,
  Pointer<Pointer<Int8>> target,
  Pointer<Utf8> targetLimit,
  Pointer<Pointer<Uint16>> source,
  Pointer<Uint16> sourceLimit,
  Pointer<Int32> offsets,
  int flush,
  Pointer<Int32> err,
) =>
    _ucnv_fromUnicode(
      converter,
      target,
      targetLimit,
      source,
      sourceLimit,
      offsets,
      flush,
      err,
    );

late final _ucnv_fromUnicode = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<Int8>> target,
  Pointer<Utf8> targetLimit,
  Pointer<Pointer<Uint16>> source,
  Pointer<Uint16> sourceLimit,
  Pointer<Int32> offsets,
  Int8 flush,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<Int8>> target,
  Pointer<Utf8> targetLimit,
  Pointer<Pointer<Uint16>> source,
  Pointer<Uint16> sourceLimit,
  Pointer<Int32> offsets,
  int flush,
  Pointer<Int32> err,
)>('ucnv_fromUnicode');

Pointer<Utf8> ucnv_getAlias(
  Pointer<Utf8> alias,
  int n,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_getAlias(
      alias,
      n,
      pErrorCode,
    );

late final _ucnv_getAlias = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> alias,
  Uint16 n,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> alias,
  int n,
  Pointer<Int32> pErrorCode,
)>('ucnv_getAlias');

void ucnv_getAliases(
  Pointer<Utf8> alias,
  Pointer<Pointer<Int8>> aliases,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_getAliases(
      alias,
      aliases,
      pErrorCode,
    );

late final _ucnv_getAliases = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> alias,
  Pointer<Pointer<Int8>> aliases,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<Utf8> alias,
  Pointer<Pointer<Int8>> aliases,
  Pointer<Int32> pErrorCode,
)>('ucnv_getAliases');

Pointer<Utf8> ucnv_getAvailableName(
  int n,
) =>
    _ucnv_getAvailableName(
      n,
    );

late final _ucnv_getAvailableName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 n,
),
    Pointer<Utf8> Function(
  int n,
)>('ucnv_getAvailableName');

int ucnv_getCCSID(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
) =>
    _ucnv_getCCSID(
      converter,
      err,
    );

late final _ucnv_getCCSID = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
),
    int Function(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
)>('ucnv_getCCSID');

Pointer<Utf8> ucnv_getCanonicalName(
  Pointer<Utf8> alias,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_getCanonicalName(
      alias,
      standard,
      pErrorCode,
    );

late final _ucnv_getCanonicalName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> alias,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> alias,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
)>('ucnv_getCanonicalName');

Pointer<Utf8> ucnv_getDefaultName() => _ucnv_getDefaultName();

late final _ucnv_getDefaultName =
    _icu.lookupFunction<Pointer<Utf8> Function(), Pointer<Utf8> Function()>(
        'ucnv_getDefaultName');

int ucnv_getDisplayName(
  Pointer<UConverter> converter,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> displayName,
  int displayNameCapacity,
  Pointer<Int32> err,
) =>
    _ucnv_getDisplayName(
      converter,
      displayLocale,
      displayName,
      displayNameCapacity,
      err,
    );

late final _ucnv_getDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> displayName,
  Int32 displayNameCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> displayName,
  int displayNameCapacity,
  Pointer<Int32> err,
)>('ucnv_getDisplayName');

void ucnv_getFromUCallBack(
  Pointer<UConverter> converter,
  Pointer<Pointer<NativeFunction<UConverterFromUCallback>>> action,
  Pointer<Pointer> context,
) =>
    _ucnv_getFromUCallBack(
      converter,
      action,
      context,
    );

late final _ucnv_getFromUCallBack = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<NativeFunction<UConverterFromUCallback>>> action,
  Pointer<Pointer> context,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<NativeFunction<UConverterFromUCallback>>> action,
  Pointer<Pointer> context,
)>('ucnv_getFromUCallBack');

void ucnv_getInvalidChars(
  Pointer<UConverter> converter,
  Pointer<Utf8> errBytes,
  Pointer<Int8> len,
  Pointer<Int32> err,
) =>
    _ucnv_getInvalidChars(
      converter,
      errBytes,
      len,
      err,
    );

late final _ucnv_getInvalidChars = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> errBytes,
  Pointer<Int8> len,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> errBytes,
  Pointer<Int8> len,
  Pointer<Int32> err,
)>('ucnv_getInvalidChars');

void ucnv_getInvalidUChars(
  Pointer<UConverter> converter,
  Pointer<Uint16> errUChars,
  Pointer<Int8> len,
  Pointer<Int32> err,
) =>
    _ucnv_getInvalidUChars(
      converter,
      errUChars,
      len,
      err,
    );

late final _ucnv_getInvalidUChars = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Uint16> errUChars,
  Pointer<Int8> len,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Uint16> errUChars,
  Pointer<Int8> len,
  Pointer<Int32> err,
)>('ucnv_getInvalidUChars');

int ucnv_getMaxCharSize(
  Pointer<UConverter> converter,
) =>
    _ucnv_getMaxCharSize(
      converter,
    );

late final _ucnv_getMaxCharSize = _icu.lookupFunction<
    Int8 Function(
  Pointer<UConverter> converter,
),
    int Function(
  Pointer<UConverter> converter,
)>('ucnv_getMaxCharSize');

int ucnv_getMinCharSize(
  Pointer<UConverter> converter,
) =>
    _ucnv_getMinCharSize(
      converter,
    );

late final _ucnv_getMinCharSize = _icu.lookupFunction<
    Int8 Function(
  Pointer<UConverter> converter,
),
    int Function(
  Pointer<UConverter> converter,
)>('ucnv_getMinCharSize');

Pointer<Utf8> ucnv_getName(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
) =>
    _ucnv_getName(
      converter,
      err,
    );

late final _ucnv_getName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
),
    Pointer<Utf8> Function(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
)>('ucnv_getName');

int ucnv_getNextUChar(
  Pointer<UConverter> converter,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Int32> err,
) =>
    _ucnv_getNextUChar(
      converter,
      source,
      sourceLimit,
      err,
    );

late final _ucnv_getNextUChar = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Int32> err,
),
    int Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Int32> err,
)>('ucnv_getNextUChar');

int ucnv_getPlatform(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
) =>
    _ucnv_getPlatform(
      converter,
      err,
    );

late final _ucnv_getPlatform = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
),
    int Function(
  Pointer<UConverter> converter,
  Pointer<Int32> err,
)>('ucnv_getPlatform');

Pointer<Utf8> ucnv_getStandard(
  int n,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_getStandard(
      n,
      pErrorCode,
    );

late final _ucnv_getStandard = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Uint16 n,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  int n,
  Pointer<Int32> pErrorCode,
)>('ucnv_getStandard');

Pointer<Utf8> ucnv_getStandardName(
  Pointer<Utf8> name,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_getStandardName(
      name,
      standard,
      pErrorCode,
    );

late final _ucnv_getStandardName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> name,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> name,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
)>('ucnv_getStandardName');

void ucnv_getStarters(
  Pointer<UConverter> converter,
  Pointer<Int8> starters,
  Pointer<Int32> err,
) =>
    _ucnv_getStarters(
      converter,
      starters,
      err,
    );

late final _ucnv_getStarters = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Int8> starters,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Int8> starters,
  Pointer<Int32> err,
)>('ucnv_getStarters');

void ucnv_getSubstChars(
  Pointer<UConverter> converter,
  Pointer<Utf8> subChars,
  Pointer<Int8> len,
  Pointer<Int32> err,
) =>
    _ucnv_getSubstChars(
      converter,
      subChars,
      len,
      err,
    );

late final _ucnv_getSubstChars = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> subChars,
  Pointer<Int8> len,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> subChars,
  Pointer<Int8> len,
  Pointer<Int32> err,
)>('ucnv_getSubstChars');

void ucnv_getToUCallBack(
  Pointer<UConverter> converter,
  Pointer<Pointer<NativeFunction<UConverterToUCallback>>> action,
  Pointer<Pointer> context,
) =>
    _ucnv_getToUCallBack(
      converter,
      action,
      context,
    );

late final _ucnv_getToUCallBack = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<NativeFunction<UConverterToUCallback>>> action,
  Pointer<Pointer> context,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<NativeFunction<UConverterToUCallback>>> action,
  Pointer<Pointer> context,
)>('ucnv_getToUCallBack');

int ucnv_getType(
  Pointer<UConverter> converter,
) =>
    _ucnv_getType(
      converter,
    );

late final _ucnv_getType = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> converter,
),
    int Function(
  Pointer<UConverter> converter,
)>('ucnv_getType');

void ucnv_getUnicodeSet(
  Pointer<UConverter> cnv,
  Pointer<USet> setFillIn,
  int whichSet,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_getUnicodeSet(
      cnv,
      setFillIn,
      whichSet,
      pErrorCode,
    );

late final _ucnv_getUnicodeSet = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> cnv,
  Pointer<USet> setFillIn,
  Int32 whichSet,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UConverter> cnv,
  Pointer<USet> setFillIn,
  int whichSet,
  Pointer<Int32> pErrorCode,
)>('ucnv_getUnicodeSet');

int ucnv_isAmbiguous(
  Pointer<UConverter> cnv,
) =>
    _ucnv_isAmbiguous(
      cnv,
    );

late final _ucnv_isAmbiguous = _icu.lookupFunction<
    Int8 Function(
  Pointer<UConverter> cnv,
),
    int Function(
  Pointer<UConverter> cnv,
)>('ucnv_isAmbiguous');

int ucnv_isFixedWidth(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
) =>
    _ucnv_isFixedWidth(
      cnv,
      status,
    );

late final _ucnv_isFixedWidth = _icu.lookupFunction<
    Int8 Function(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
)>('ucnv_isFixedWidth');

Pointer<UConverter> ucnv_open(
  Pointer<Utf8> converterName,
  Pointer<Int32> err,
) =>
    _ucnv_open(
      converterName,
      err,
    );

late final _ucnv_open = _icu.lookupFunction<
    Pointer<UConverter> Function(
  Pointer<Utf8> converterName,
  Pointer<Int32> err,
),
    Pointer<UConverter> Function(
  Pointer<Utf8> converterName,
  Pointer<Int32> err,
)>('ucnv_open');

Pointer<UEnumeration> ucnv_openAllNames(
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_openAllNames(
      pErrorCode,
    );

late final _ucnv_openAllNames = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UEnumeration> Function(
  Pointer<Int32> pErrorCode,
)>('ucnv_openAllNames');

Pointer<UConverter> ucnv_openCCSID(
  int codepage,
  int platform,
  Pointer<Int32> err,
) =>
    _ucnv_openCCSID(
      codepage,
      platform,
      err,
    );

late final _ucnv_openCCSID = _icu.lookupFunction<
    Pointer<UConverter> Function(
  Int32 codepage,
  Int32 platform,
  Pointer<Int32> err,
),
    Pointer<UConverter> Function(
  int codepage,
  int platform,
  Pointer<Int32> err,
)>('ucnv_openCCSID');

Pointer<UConverter> ucnv_openPackage(
  Pointer<Utf8> packageName,
  Pointer<Utf8> converterName,
  Pointer<Int32> err,
) =>
    _ucnv_openPackage(
      packageName,
      converterName,
      err,
    );

late final _ucnv_openPackage = _icu.lookupFunction<
    Pointer<UConverter> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> converterName,
  Pointer<Int32> err,
),
    Pointer<UConverter> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> converterName,
  Pointer<Int32> err,
)>('ucnv_openPackage');

Pointer<UEnumeration> ucnv_openStandardNames(
  Pointer<Utf8> convName,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_openStandardNames(
      convName,
      standard,
      pErrorCode,
    );

late final _ucnv_openStandardNames = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> convName,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> convName,
  Pointer<Utf8> standard,
  Pointer<Int32> pErrorCode,
)>('ucnv_openStandardNames');

Pointer<UConverter> ucnv_openU(
  Pointer<Uint16> name,
  Pointer<Int32> err,
) =>
    _ucnv_openU(
      name,
      err,
    );

late final _ucnv_openU = _icu.lookupFunction<
    Pointer<UConverter> Function(
  Pointer<Uint16> name,
  Pointer<Int32> err,
),
    Pointer<UConverter> Function(
  Pointer<Uint16> name,
  Pointer<Int32> err,
)>('ucnv_openU');

void ucnv_reset(
  Pointer<UConverter> converter,
) =>
    _ucnv_reset(
      converter,
    );

late final _ucnv_reset = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
),
    void Function(
  Pointer<UConverter> converter,
)>('ucnv_reset');

void ucnv_resetFromUnicode(
  Pointer<UConverter> converter,
) =>
    _ucnv_resetFromUnicode(
      converter,
    );

late final _ucnv_resetFromUnicode = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
),
    void Function(
  Pointer<UConverter> converter,
)>('ucnv_resetFromUnicode');

void ucnv_resetToUnicode(
  Pointer<UConverter> converter,
) =>
    _ucnv_resetToUnicode(
      converter,
    );

late final _ucnv_resetToUnicode = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
),
    void Function(
  Pointer<UConverter> converter,
)>('ucnv_resetToUnicode');

Pointer<UConverter> ucnv_safeClone(
  Pointer<UConverter> cnv,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
) =>
    _ucnv_safeClone(
      cnv,
      stackBuffer,
      pBufferSize,
      status,
    );

late final _ucnv_safeClone = _icu.lookupFunction<
    Pointer<UConverter> Function(
  Pointer<UConverter> cnv,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
),
    Pointer<UConverter> Function(
  Pointer<UConverter> cnv,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
)>('ucnv_safeClone');

void ucnv_setDefaultName(
  Pointer<Utf8> name,
) =>
    _ucnv_setDefaultName(
      name,
    );

late final _ucnv_setDefaultName = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> name,
),
    void Function(
  Pointer<Utf8> name,
)>('ucnv_setDefaultName');

void ucnv_setFallback(
  Pointer<UConverter> cnv,
  int usesFallback,
) =>
    _ucnv_setFallback(
      cnv,
      usesFallback,
    );

late final _ucnv_setFallback = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> cnv,
  Int8 usesFallback,
),
    void Function(
  Pointer<UConverter> cnv,
  int usesFallback,
)>('ucnv_setFallback');

void ucnv_setFromUCallBack(
  Pointer<UConverter> converter,
  Pointer<NativeFunction<UConverterFromUCallback>> newAction,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UConverterFromUCallback>>> oldAction,
  Pointer<Pointer> oldContext,
  Pointer<Int32> err,
) =>
    _ucnv_setFromUCallBack(
      converter,
      newAction,
      newContext,
      oldAction,
      oldContext,
      err,
    );

late final _ucnv_setFromUCallBack = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<NativeFunction<UConverterFromUCallback>> newAction,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UConverterFromUCallback>>> oldAction,
  Pointer<Pointer> oldContext,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<NativeFunction<UConverterFromUCallback>> newAction,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UConverterFromUCallback>>> oldAction,
  Pointer<Pointer> oldContext,
  Pointer<Int32> err,
)>('ucnv_setFromUCallBack');

void ucnv_setSubstChars(
  Pointer<UConverter> converter,
  Pointer<Utf8> subChars,
  int len,
  Pointer<Int32> err,
) =>
    _ucnv_setSubstChars(
      converter,
      subChars,
      len,
      err,
    );

late final _ucnv_setSubstChars = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> subChars,
  Int8 len,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Utf8> subChars,
  int len,
  Pointer<Int32> err,
)>('ucnv_setSubstChars');

void ucnv_setSubstString(
  Pointer<UConverter> cnv,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> err,
) =>
    _ucnv_setSubstString(
      cnv,
      s,
      length,
      err,
    );

late final _ucnv_setSubstString = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> cnv,
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> cnv,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> err,
)>('ucnv_setSubstString');

void ucnv_setToUCallBack(
  Pointer<UConverter> converter,
  Pointer<NativeFunction<UConverterToUCallback>> newAction,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UConverterToUCallback>>> oldAction,
  Pointer<Pointer> oldContext,
  Pointer<Int32> err,
) =>
    _ucnv_setToUCallBack(
      converter,
      newAction,
      newContext,
      oldAction,
      oldContext,
      err,
    );

late final _ucnv_setToUCallBack = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<NativeFunction<UConverterToUCallback>> newAction,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UConverterToUCallback>>> oldAction,
  Pointer<Pointer> oldContext,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<NativeFunction<UConverterToUCallback>> newAction,
  Pointer newContext,
  Pointer<Pointer<NativeFunction<UConverterToUCallback>>> oldAction,
  Pointer<Pointer> oldContext,
  Pointer<Int32> err,
)>('ucnv_setToUCallBack');

int ucnv_toAlgorithmic(
  int algorithmicType,
  Pointer<UConverter> cnv,
  Pointer<Utf8> target,
  int targetCapacity,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_toAlgorithmic(
      algorithmicType,
      cnv,
      target,
      targetCapacity,
      source,
      sourceLength,
      pErrorCode,
    );

late final _ucnv_toAlgorithmic = _icu.lookupFunction<
    Int32 Function(
  Int32 algorithmicType,
  Pointer<UConverter> cnv,
  Pointer<Utf8> target,
  Int32 targetCapacity,
  Pointer<Utf8> source,
  Int32 sourceLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  int algorithmicType,
  Pointer<UConverter> cnv,
  Pointer<Utf8> target,
  int targetCapacity,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Int32> pErrorCode,
)>('ucnv_toAlgorithmic');

int ucnv_toUChars(
  Pointer<UConverter> cnv,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucnv_toUChars(
      cnv,
      dest,
      destCapacity,
      src,
      srcLength,
      pErrorCode,
    );

late final _ucnv_toUChars = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> cnv,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Utf8> src,
  Int32 srcLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UConverter> cnv,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Utf8> src,
  int srcLength,
  Pointer<Int32> pErrorCode,
)>('ucnv_toUChars');

int ucnv_toUCountPending(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
) =>
    _ucnv_toUCountPending(
      cnv,
      status,
    );

late final _ucnv_toUCountPending = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UConverter> cnv,
  Pointer<Int32> status,
)>('ucnv_toUCountPending');

void ucnv_toUnicode(
  Pointer<UConverter> converter,
  Pointer<Pointer<Uint16>> target,
  Pointer<Uint16> targetLimit,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Int32> offsets,
  int flush,
  Pointer<Int32> err,
) =>
    _ucnv_toUnicode(
      converter,
      target,
      targetLimit,
      source,
      sourceLimit,
      offsets,
      flush,
      err,
    );

late final _ucnv_toUnicode = _icu.lookupFunction<
    Void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<Uint16>> target,
  Pointer<Uint16> targetLimit,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Int32> offsets,
  Int8 flush,
  Pointer<Int32> err,
),
    void Function(
  Pointer<UConverter> converter,
  Pointer<Pointer<Uint16>> target,
  Pointer<Uint16> targetLimit,
  Pointer<Pointer<Int8>> source,
  Pointer<Utf8> sourceLimit,
  Pointer<Int32> offsets,
  int flush,
  Pointer<Int32> err,
)>('ucnv_toUnicode');

int ucnv_usesFallback(
  Pointer<UConverter> cnv,
) =>
    _ucnv_usesFallback(
      cnv,
    );

late final _ucnv_usesFallback = _icu.lookupFunction<
    Int8 Function(
  Pointer<UConverter> cnv,
),
    int Function(
  Pointer<UConverter> cnv,
)>('ucnv_usesFallback');

void ucnvsel_close(
  Pointer<UConverterSelector> sel,
) =>
    _ucnvsel_close(
      sel,
    );

late final _ucnvsel_close = _icu.lookupFunction<
    Void Function(
  Pointer<UConverterSelector> sel,
),
    void Function(
  Pointer<UConverterSelector> sel,
)>('ucnvsel_close');

Pointer<UConverterSelector> ucnvsel_open(
  Pointer<Pointer<Int8>> converterList,
  int converterListSize,
  Pointer<USet> excludedCodePoints,
  int whichSet,
  Pointer<Int32> status,
) =>
    _ucnvsel_open(
      converterList,
      converterListSize,
      excludedCodePoints,
      whichSet,
      status,
    );

late final _ucnvsel_open = _icu.lookupFunction<
    Pointer<UConverterSelector> Function(
  Pointer<Pointer<Int8>> converterList,
  Int32 converterListSize,
  Pointer<USet> excludedCodePoints,
  Int32 whichSet,
  Pointer<Int32> status,
),
    Pointer<UConverterSelector> Function(
  Pointer<Pointer<Int8>> converterList,
  int converterListSize,
  Pointer<USet> excludedCodePoints,
  int whichSet,
  Pointer<Int32> status,
)>('ucnvsel_open');

Pointer<UConverterSelector> ucnvsel_openFromSerialized(
  Pointer buffer,
  int length,
  Pointer<Int32> status,
) =>
    _ucnvsel_openFromSerialized(
      buffer,
      length,
      status,
    );

late final _ucnvsel_openFromSerialized = _icu.lookupFunction<
    Pointer<UConverterSelector> Function(
  Pointer buffer,
  Int32 length,
  Pointer<Int32> status,
),
    Pointer<UConverterSelector> Function(
  Pointer buffer,
  int length,
  Pointer<Int32> status,
)>('ucnvsel_openFromSerialized');

Pointer<UEnumeration> ucnvsel_selectForString(
  Pointer<UConverterSelector> sel,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> status,
) =>
    _ucnvsel_selectForString(
      sel,
      s,
      length,
      status,
    );

late final _ucnvsel_selectForString = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<UConverterSelector> sel,
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<UConverterSelector> sel,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> status,
)>('ucnvsel_selectForString');

Pointer<UEnumeration> ucnvsel_selectForUTF8(
  Pointer<UConverterSelector> sel,
  Pointer<Utf8> s,
  int length,
  Pointer<Int32> status,
) =>
    _ucnvsel_selectForUTF8(
      sel,
      s,
      length,
      status,
    );

late final _ucnvsel_selectForUTF8 = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<UConverterSelector> sel,
  Pointer<Utf8> s,
  Int32 length,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<UConverterSelector> sel,
  Pointer<Utf8> s,
  int length,
  Pointer<Int32> status,
)>('ucnvsel_selectForUTF8');

int ucnvsel_serialize(
  Pointer<UConverterSelector> sel,
  Pointer buffer,
  int bufferCapacity,
  Pointer<Int32> status,
) =>
    _ucnvsel_serialize(
      sel,
      buffer,
      bufferCapacity,
      status,
    );

late final _ucnvsel_serialize = _icu.lookupFunction<
    Int32 Function(
  Pointer<UConverterSelector> sel,
  Pointer buffer,
  Int32 bufferCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UConverterSelector> sel,
  Pointer buffer,
  int bufferCapacity,
  Pointer<Int32> status,
)>('ucnvsel_serialize');

int ucol_cloneBinary(
  Pointer<UCollator> coll,
  Pointer<Uint8> buffer,
  int capacity,
  Pointer<Int32> status,
) =>
    _ucol_cloneBinary(
      coll,
      buffer,
      capacity,
      status,
    );

late final _ucol_cloneBinary = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<Uint8> buffer,
  Int32 capacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Uint8> buffer,
  int capacity,
  Pointer<Int32> status,
)>('ucol_cloneBinary');

void ucol_close(
  Pointer<UCollator> coll,
) =>
    _ucol_close(
      coll,
    );

late final _ucol_close = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
),
    void Function(
  Pointer<UCollator> coll,
)>('ucol_close');

void ucol_closeElements(
  Pointer<UCollationElements> elems,
) =>
    _ucol_closeElements(
      elems,
    );

late final _ucol_closeElements = _icu.lookupFunction<
    Void Function(
  Pointer<UCollationElements> elems,
),
    void Function(
  Pointer<UCollationElements> elems,
)>('ucol_closeElements');

int ucol_countAvailable() => _ucol_countAvailable();

late final _ucol_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('ucol_countAvailable');

int ucol_equal(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
) =>
    _ucol_equal(
      coll,
      source,
      sourceLength,
      target,
      targetLength,
    );

late final _ucol_equal = _icu.lookupFunction<
    Int8 Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Uint16> target,
  Int32 targetLength,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
)>('ucol_equal');

int ucol_getAttribute(
  Pointer<UCollator> coll,
  int attr,
  Pointer<Int32> status,
) =>
    _ucol_getAttribute(
      coll,
      attr,
      status,
    );

late final _ucol_getAttribute = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Int32 attr,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollator> coll,
  int attr,
  Pointer<Int32> status,
)>('ucol_getAttribute');

Pointer<Utf8> ucol_getAvailable(
  int localeIndex,
) =>
    _ucol_getAvailable(
      localeIndex,
    );

late final _ucol_getAvailable = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 localeIndex,
),
    Pointer<Utf8> Function(
  int localeIndex,
)>('ucol_getAvailable');

int ucol_getBound(
  Pointer<Uint8> source,
  int sourceLength,
  int boundType,
  int noOfLevels,
  Pointer<Uint8> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _ucol_getBound(
      source,
      sourceLength,
      boundType,
      noOfLevels,
      result,
      resultLength,
      status,
    );

late final _ucol_getBound = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> source,
  Int32 sourceLength,
  Int32 boundType,
  Uint32 noOfLevels,
  Pointer<Uint8> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Uint8> source,
  int sourceLength,
  int boundType,
  int noOfLevels,
  Pointer<Uint8> result,
  int resultLength,
  Pointer<Int32> status,
)>('ucol_getBound');

void ucol_getContractionsAndExpansions(
  Pointer<UCollator> coll,
  Pointer<USet> contractions,
  Pointer<USet> expansions,
  int addPrefixes,
  Pointer<Int32> status,
) =>
    _ucol_getContractionsAndExpansions(
      coll,
      contractions,
      expansions,
      addPrefixes,
      status,
    );

late final _ucol_getContractionsAndExpansions = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Pointer<USet> contractions,
  Pointer<USet> expansions,
  Int8 addPrefixes,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UCollator> coll,
  Pointer<USet> contractions,
  Pointer<USet> expansions,
  int addPrefixes,
  Pointer<Int32> status,
)>('ucol_getContractionsAndExpansions');

int ucol_getDisplayName(
  Pointer<Utf8> objLoc,
  Pointer<Utf8> dispLoc,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _ucol_getDisplayName(
      objLoc,
      dispLoc,
      result,
      resultLength,
      status,
    );

late final _ucol_getDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> objLoc,
  Pointer<Utf8> dispLoc,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> objLoc,
  Pointer<Utf8> dispLoc,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('ucol_getDisplayName');

int ucol_getEquivalentReorderCodes(
  int reorderCode,
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
) =>
    _ucol_getEquivalentReorderCodes(
      reorderCode,
      dest,
      destCapacity,
      pErrorCode,
    );

late final _ucol_getEquivalentReorderCodes = _icu.lookupFunction<
    Int32 Function(
  Int32 reorderCode,
  Pointer<Int32> dest,
  Int32 destCapacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  int reorderCode,
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
)>('ucol_getEquivalentReorderCodes');

int ucol_getFunctionalEquivalent(
  Pointer<Utf8> result,
  int resultCapacity,
  Pointer<Utf8> keyword,
  Pointer<Utf8> locale,
  Pointer<Int8> isAvailable,
  Pointer<Int32> status,
) =>
    _ucol_getFunctionalEquivalent(
      result,
      resultCapacity,
      keyword,
      locale,
      isAvailable,
      status,
    );

late final _ucol_getFunctionalEquivalent = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> result,
  Int32 resultCapacity,
  Pointer<Utf8> keyword,
  Pointer<Utf8> locale,
  Pointer<Int8> isAvailable,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> result,
  int resultCapacity,
  Pointer<Utf8> keyword,
  Pointer<Utf8> locale,
  Pointer<Int8> isAvailable,
  Pointer<Int32> status,
)>('ucol_getFunctionalEquivalent');

Pointer<UEnumeration> ucol_getKeywordValues(
  Pointer<Utf8> keyword,
  Pointer<Int32> status,
) =>
    _ucol_getKeywordValues(
      keyword,
      status,
    );

late final _ucol_getKeywordValues = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> keyword,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> keyword,
  Pointer<Int32> status,
)>('ucol_getKeywordValues');

Pointer<UEnumeration> ucol_getKeywordValuesForLocale(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  int commonlyUsed,
  Pointer<Int32> status,
) =>
    _ucol_getKeywordValuesForLocale(
      key,
      locale,
      commonlyUsed,
      status,
    );

late final _ucol_getKeywordValuesForLocale = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  Int8 commonlyUsed,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  int commonlyUsed,
  Pointer<Int32> status,
)>('ucol_getKeywordValuesForLocale');

Pointer<UEnumeration> ucol_getKeywords(
  Pointer<Int32> status,
) =>
    _ucol_getKeywords(
      status,
    );

late final _ucol_getKeywords = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Int32> status,
)>('ucol_getKeywords');

Pointer<Utf8> ucol_getLocaleByType(
  Pointer<UCollator> coll,
  int type,
  Pointer<Int32> status,
) =>
    _ucol_getLocaleByType(
      coll,
      type,
      status,
    );

late final _ucol_getLocaleByType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UCollator> coll,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UCollator> coll,
  int type,
  Pointer<Int32> status,
)>('ucol_getLocaleByType');

int ucol_getMaxExpansion(
  Pointer<UCollationElements> elems,
  int order,
) =>
    _ucol_getMaxExpansion(
      elems,
      order,
    );

late final _ucol_getMaxExpansion = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollationElements> elems,
  Int32 order,
),
    int Function(
  Pointer<UCollationElements> elems,
  int order,
)>('ucol_getMaxExpansion');

int ucol_getMaxVariable(
  Pointer<UCollator> coll,
) =>
    _ucol_getMaxVariable(
      coll,
    );

late final _ucol_getMaxVariable = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
),
    int Function(
  Pointer<UCollator> coll,
)>('ucol_getMaxVariable');

int ucol_getOffset(
  Pointer<UCollationElements> elems,
) =>
    _ucol_getOffset(
      elems,
    );

late final _ucol_getOffset = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollationElements> elems,
),
    int Function(
  Pointer<UCollationElements> elems,
)>('ucol_getOffset');

int ucol_getReorderCodes(
  Pointer<UCollator> coll,
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
) =>
    _ucol_getReorderCodes(
      coll,
      dest,
      destCapacity,
      pErrorCode,
    );

late final _ucol_getReorderCodes = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<Int32> dest,
  Int32 destCapacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Int32> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
)>('ucol_getReorderCodes');

Pointer<Uint16> ucol_getRules(
  Pointer<UCollator> coll,
  Pointer<Int32> length,
) =>
    _ucol_getRules(
      coll,
      length,
    );

late final _ucol_getRules = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UCollator> coll,
  Pointer<Int32> length,
),
    Pointer<Uint16> Function(
  Pointer<UCollator> coll,
  Pointer<Int32> length,
)>('ucol_getRules');

int ucol_getRulesEx(
  Pointer<UCollator> coll,
  int delta,
  Pointer<Uint16> buffer,
  int bufferLen,
) =>
    _ucol_getRulesEx(
      coll,
      delta,
      buffer,
      bufferLen,
    );

late final _ucol_getRulesEx = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Int32 delta,
  Pointer<Uint16> buffer,
  Int32 bufferLen,
),
    int Function(
  Pointer<UCollator> coll,
  int delta,
  Pointer<Uint16> buffer,
  int bufferLen,
)>('ucol_getRulesEx');

int ucol_getSortKey(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint8> result,
  int resultLength,
) =>
    _ucol_getSortKey(
      coll,
      source,
      sourceLength,
      result,
      resultLength,
    );

late final _ucol_getSortKey = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Uint8> result,
  Int32 resultLength,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint8> result,
  int resultLength,
)>('ucol_getSortKey');

int ucol_getStrength(
  Pointer<UCollator> coll,
) =>
    _ucol_getStrength(
      coll,
    );

late final _ucol_getStrength = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
),
    int Function(
  Pointer<UCollator> coll,
)>('ucol_getStrength');

Pointer<USet> ucol_getTailoredSet(
  Pointer<UCollator> coll,
  Pointer<Int32> status,
) =>
    _ucol_getTailoredSet(
      coll,
      status,
    );

late final _ucol_getTailoredSet = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<UCollator> coll,
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<UCollator> coll,
  Pointer<Int32> status,
)>('ucol_getTailoredSet');

void ucol_getUCAVersion(
  Pointer<UCollator> coll,
  Pointer<Uint8> info,
) =>
    _ucol_getUCAVersion(
      coll,
      info,
    );

late final _ucol_getUCAVersion = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Pointer<Uint8> info,
),
    void Function(
  Pointer<UCollator> coll,
  Pointer<Uint8> info,
)>('ucol_getUCAVersion');

int ucol_getVariableTop(
  Pointer<UCollator> coll,
  Pointer<Int32> status,
) =>
    _ucol_getVariableTop(
      coll,
      status,
    );

late final _ucol_getVariableTop = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UCollator> coll,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Int32> status,
)>('ucol_getVariableTop');

void ucol_getVersion(
  Pointer<UCollator> coll,
  Pointer<Uint8> info,
) =>
    _ucol_getVersion(
      coll,
      info,
    );

late final _ucol_getVersion = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Pointer<Uint8> info,
),
    void Function(
  Pointer<UCollator> coll,
  Pointer<Uint8> info,
)>('ucol_getVersion');

int ucol_greater(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
) =>
    _ucol_greater(
      coll,
      source,
      sourceLength,
      target,
      targetLength,
    );

late final _ucol_greater = _icu.lookupFunction<
    Int8 Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Uint16> target,
  Int32 targetLength,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
)>('ucol_greater');

int ucol_greaterOrEqual(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
) =>
    _ucol_greaterOrEqual(
      coll,
      source,
      sourceLength,
      target,
      targetLength,
    );

late final _ucol_greaterOrEqual = _icu.lookupFunction<
    Int8 Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Uint16> target,
  Int32 targetLength,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
)>('ucol_greaterOrEqual');

int ucol_keyHashCode(
  Pointer<Uint8> key,
  int length,
) =>
    _ucol_keyHashCode(
      key,
      length,
    );

late final _ucol_keyHashCode = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> key,
  Int32 length,
),
    int Function(
  Pointer<Uint8> key,
  int length,
)>('ucol_keyHashCode');

int ucol_mergeSortkeys(
  Pointer<Uint8> src1,
  int src1Length,
  Pointer<Uint8> src2,
  int src2Length,
  Pointer<Uint8> dest,
  int destCapacity,
) =>
    _ucol_mergeSortkeys(
      src1,
      src1Length,
      src2,
      src2Length,
      dest,
      destCapacity,
    );

late final _ucol_mergeSortkeys = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> src1,
  Int32 src1Length,
  Pointer<Uint8> src2,
  Int32 src2Length,
  Pointer<Uint8> dest,
  Int32 destCapacity,
),
    int Function(
  Pointer<Uint8> src1,
  int src1Length,
  Pointer<Uint8> src2,
  int src2Length,
  Pointer<Uint8> dest,
  int destCapacity,
)>('ucol_mergeSortkeys');

int ucol_next(
  Pointer<UCollationElements> elems,
  Pointer<Int32> status,
) =>
    _ucol_next(
      elems,
      status,
    );

late final _ucol_next = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollationElements> elems,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollationElements> elems,
  Pointer<Int32> status,
)>('ucol_next');

int ucol_nextSortKeyPart(
  Pointer<UCollator> coll,
  Pointer<UCharIterator> iter,
  Pointer<Uint32> state,
  Pointer<Uint8> dest,
  int count,
  Pointer<Int32> status,
) =>
    _ucol_nextSortKeyPart(
      coll,
      iter,
      state,
      dest,
      count,
      status,
    );

late final _ucol_nextSortKeyPart = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<UCharIterator> iter,
  Pointer<Uint32> state,
  Pointer<Uint8> dest,
  Int32 count,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<UCharIterator> iter,
  Pointer<Uint32> state,
  Pointer<Uint8> dest,
  int count,
  Pointer<Int32> status,
)>('ucol_nextSortKeyPart');

Pointer<UCollator> ucol_open(
  Pointer<Utf8> loc,
  Pointer<Int32> status,
) =>
    _ucol_open(
      loc,
      status,
    );

late final _ucol_open = _icu.lookupFunction<
    Pointer<UCollator> Function(
  Pointer<Utf8> loc,
  Pointer<Int32> status,
),
    Pointer<UCollator> Function(
  Pointer<Utf8> loc,
  Pointer<Int32> status,
)>('ucol_open');

Pointer<UEnumeration> ucol_openAvailableLocales(
  Pointer<Int32> status,
) =>
    _ucol_openAvailableLocales(
      status,
    );

late final _ucol_openAvailableLocales = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Int32> status,
)>('ucol_openAvailableLocales');

Pointer<UCollator> ucol_openBinary(
  Pointer<Uint8> bin,
  int length,
  Pointer<UCollator> base,
  Pointer<Int32> status,
) =>
    _ucol_openBinary(
      bin,
      length,
      base,
      status,
    );

late final _ucol_openBinary = _icu.lookupFunction<
    Pointer<UCollator> Function(
  Pointer<Uint8> bin,
  Int32 length,
  Pointer<UCollator> base,
  Pointer<Int32> status,
),
    Pointer<UCollator> Function(
  Pointer<Uint8> bin,
  int length,
  Pointer<UCollator> base,
  Pointer<Int32> status,
)>('ucol_openBinary');

Pointer<UCollationElements> ucol_openElements(
  Pointer<UCollator> coll,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
) =>
    _ucol_openElements(
      coll,
      text,
      textLength,
      status,
    );

late final _ucol_openElements = _icu.lookupFunction<
    Pointer<UCollationElements> Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> status,
),
    Pointer<UCollationElements> Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
)>('ucol_openElements');

Pointer<UCollator> ucol_openRules(
  Pointer<Uint16> rules,
  int rulesLength,
  int normalizationMode,
  int strength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _ucol_openRules(
      rules,
      rulesLength,
      normalizationMode,
      strength,
      parseError,
      status,
    );

late final _ucol_openRules = _icu.lookupFunction<
    Pointer<UCollator> Function(
  Pointer<Uint16> rules,
  Int32 rulesLength,
  Int32 normalizationMode,
  Int32 strength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    Pointer<UCollator> Function(
  Pointer<Uint16> rules,
  int rulesLength,
  int normalizationMode,
  int strength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('ucol_openRules');

int ucol_previous(
  Pointer<UCollationElements> elems,
  Pointer<Int32> status,
) =>
    _ucol_previous(
      elems,
      status,
    );

late final _ucol_previous = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollationElements> elems,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollationElements> elems,
  Pointer<Int32> status,
)>('ucol_previous');

int ucol_primaryOrder(
  int order,
) =>
    _ucol_primaryOrder(
      order,
    );

late final _ucol_primaryOrder = _icu.lookupFunction<
    Int32 Function(
  Int32 order,
),
    int Function(
  int order,
)>('ucol_primaryOrder');

void ucol_reset(
  Pointer<UCollationElements> elems,
) =>
    _ucol_reset(
      elems,
    );

late final _ucol_reset = _icu.lookupFunction<
    Void Function(
  Pointer<UCollationElements> elems,
),
    void Function(
  Pointer<UCollationElements> elems,
)>('ucol_reset');

Pointer<UCollator> ucol_safeClone(
  Pointer<UCollator> coll,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
) =>
    _ucol_safeClone(
      coll,
      stackBuffer,
      pBufferSize,
      status,
    );

late final _ucol_safeClone = _icu.lookupFunction<
    Pointer<UCollator> Function(
  Pointer<UCollator> coll,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
),
    Pointer<UCollator> Function(
  Pointer<UCollator> coll,
  Pointer stackBuffer,
  Pointer<Int32> pBufferSize,
  Pointer<Int32> status,
)>('ucol_safeClone');

int ucol_secondaryOrder(
  int order,
) =>
    _ucol_secondaryOrder(
      order,
    );

late final _ucol_secondaryOrder = _icu.lookupFunction<
    Int32 Function(
  Int32 order,
),
    int Function(
  int order,
)>('ucol_secondaryOrder');

void ucol_setAttribute(
  Pointer<UCollator> coll,
  int attr,
  int value,
  Pointer<Int32> status,
) =>
    _ucol_setAttribute(
      coll,
      attr,
      value,
      status,
    );

late final _ucol_setAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Int32 attr,
  Int32 value,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UCollator> coll,
  int attr,
  int value,
  Pointer<Int32> status,
)>('ucol_setAttribute');

void ucol_setMaxVariable(
  Pointer<UCollator> coll,
  int group,
  Pointer<Int32> pErrorCode,
) =>
    _ucol_setMaxVariable(
      coll,
      group,
      pErrorCode,
    );

late final _ucol_setMaxVariable = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Int32 group,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UCollator> coll,
  int group,
  Pointer<Int32> pErrorCode,
)>('ucol_setMaxVariable');

void ucol_setOffset(
  Pointer<UCollationElements> elems,
  int offset,
  Pointer<Int32> status,
) =>
    _ucol_setOffset(
      elems,
      offset,
      status,
    );

late final _ucol_setOffset = _icu.lookupFunction<
    Void Function(
  Pointer<UCollationElements> elems,
  Int32 offset,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UCollationElements> elems,
  int offset,
  Pointer<Int32> status,
)>('ucol_setOffset');

void ucol_setReorderCodes(
  Pointer<UCollator> coll,
  Pointer<Int32> reorderCodes,
  int reorderCodesLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucol_setReorderCodes(
      coll,
      reorderCodes,
      reorderCodesLength,
      pErrorCode,
    );

late final _ucol_setReorderCodes = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Pointer<Int32> reorderCodes,
  Int32 reorderCodesLength,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UCollator> coll,
  Pointer<Int32> reorderCodes,
  int reorderCodesLength,
  Pointer<Int32> pErrorCode,
)>('ucol_setReorderCodes');

void ucol_setStrength(
  Pointer<UCollator> coll,
  int strength,
) =>
    _ucol_setStrength(
      coll,
      strength,
    );

late final _ucol_setStrength = _icu.lookupFunction<
    Void Function(
  Pointer<UCollator> coll,
  Int32 strength,
),
    void Function(
  Pointer<UCollator> coll,
  int strength,
)>('ucol_setStrength');

void ucol_setText(
  Pointer<UCollationElements> elems,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
) =>
    _ucol_setText(
      elems,
      text,
      textLength,
      status,
    );

late final _ucol_setText = _icu.lookupFunction<
    Void Function(
  Pointer<UCollationElements> elems,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UCollationElements> elems,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
)>('ucol_setText');

int ucol_strcoll(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
) =>
    _ucol_strcoll(
      coll,
      source,
      sourceLength,
      target,
      targetLength,
    );

late final _ucol_strcoll = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Uint16> target,
  Int32 targetLength,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Uint16> target,
  int targetLength,
)>('ucol_strcoll');

int ucol_strcollIter(
  Pointer<UCollator> coll,
  Pointer<UCharIterator> sIter,
  Pointer<UCharIterator> tIter,
  Pointer<Int32> status,
) =>
    _ucol_strcollIter(
      coll,
      sIter,
      tIter,
      status,
    );

late final _ucol_strcollIter = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<UCharIterator> sIter,
  Pointer<UCharIterator> tIter,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<UCharIterator> sIter,
  Pointer<UCharIterator> tIter,
  Pointer<Int32> status,
)>('ucol_strcollIter');

int ucol_strcollUTF8(
  Pointer<UCollator> coll,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Utf8> target,
  int targetLength,
  Pointer<Int32> status,
) =>
    _ucol_strcollUTF8(
      coll,
      source,
      sourceLength,
      target,
      targetLength,
      status,
    );

late final _ucol_strcollUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCollator> coll,
  Pointer<Utf8> source,
  Int32 sourceLength,
  Pointer<Utf8> target,
  Int32 targetLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCollator> coll,
  Pointer<Utf8> source,
  int sourceLength,
  Pointer<Utf8> target,
  int targetLength,
  Pointer<Int32> status,
)>('ucol_strcollUTF8');

int ucol_tertiaryOrder(
  int order,
) =>
    _ucol_tertiaryOrder(
      order,
    );

late final _ucol_tertiaryOrder = _icu.lookupFunction<
    Int32 Function(
  Int32 order,
),
    int Function(
  int order,
)>('ucol_tertiaryOrder');

int ucpmap_get(
  Pointer<UCPMap> map,
  int c,
) =>
    _ucpmap_get(
      map,
      c,
    );

late final _ucpmap_get = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UCPMap> map,
  Int32 c,
),
    int Function(
  Pointer<UCPMap> map,
  int c,
)>('ucpmap_get');

int ucpmap_getRange(
  Pointer<UCPMap> map,
  int start,
  int option,
  int surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
) =>
    _ucpmap_getRange(
      map,
      start,
      option,
      surrogateValue,
      filter,
      context,
      pValue,
    );

late final _ucpmap_getRange = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPMap> map,
  Int32 start,
  Int32 option,
  Uint32 surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
),
    int Function(
  Pointer<UCPMap> map,
  int start,
  int option,
  int surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
)>('ucpmap_getRange');

void ucptrie_close(
  Pointer<UCPTrie> trie,
) =>
    _ucptrie_close(
      trie,
    );

late final _ucptrie_close = _icu.lookupFunction<
    Void Function(
  Pointer<UCPTrie> trie,
),
    void Function(
  Pointer<UCPTrie> trie,
)>('ucptrie_close');

int ucptrie_get(
  Pointer<UCPTrie> trie,
  int c,
) =>
    _ucptrie_get(
      trie,
      c,
    );

late final _ucptrie_get = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UCPTrie> trie,
  Int32 c,
),
    int Function(
  Pointer<UCPTrie> trie,
  int c,
)>('ucptrie_get');

int ucptrie_getRange(
  Pointer<UCPTrie> trie,
  int start,
  int option,
  int surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
) =>
    _ucptrie_getRange(
      trie,
      start,
      option,
      surrogateValue,
      filter,
      context,
      pValue,
    );

late final _ucptrie_getRange = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
  Int32 start,
  Int32 option,
  Uint32 surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
),
    int Function(
  Pointer<UCPTrie> trie,
  int start,
  int option,
  int surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
)>('ucptrie_getRange');

int ucptrie_getType(
  Pointer<UCPTrie> trie,
) =>
    _ucptrie_getType(
      trie,
    );

late final _ucptrie_getType = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
),
    int Function(
  Pointer<UCPTrie> trie,
)>('ucptrie_getType');

int ucptrie_getValueWidth(
  Pointer<UCPTrie> trie,
) =>
    _ucptrie_getValueWidth(
      trie,
    );

late final _ucptrie_getValueWidth = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
),
    int Function(
  Pointer<UCPTrie> trie,
)>('ucptrie_getValueWidth');

int ucptrie_internalSmallIndex(
  Pointer<UCPTrie> trie,
  int c,
) =>
    _ucptrie_internalSmallIndex(
      trie,
      c,
    );

late final _ucptrie_internalSmallIndex = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
  Int32 c,
),
    int Function(
  Pointer<UCPTrie> trie,
  int c,
)>('ucptrie_internalSmallIndex');

int ucptrie_internalSmallU8Index(
  Pointer<UCPTrie> trie,
  int lt1,
  int t2,
  int t3,
) =>
    _ucptrie_internalSmallU8Index(
      trie,
      lt1,
      t2,
      t3,
    );

late final _ucptrie_internalSmallU8Index = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
  Int32 lt1,
  Uint8 t2,
  Uint8 t3,
),
    int Function(
  Pointer<UCPTrie> trie,
  int lt1,
  int t2,
  int t3,
)>('ucptrie_internalSmallU8Index');

int ucptrie_internalU8PrevIndex(
  Pointer<UCPTrie> trie,
  int c,
  Pointer<Uint8> start,
  Pointer<Uint8> src,
) =>
    _ucptrie_internalU8PrevIndex(
      trie,
      c,
      start,
      src,
    );

late final _ucptrie_internalU8PrevIndex = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
  Int32 c,
  Pointer<Uint8> start,
  Pointer<Uint8> src,
),
    int Function(
  Pointer<UCPTrie> trie,
  int c,
  Pointer<Uint8> start,
  Pointer<Uint8> src,
)>('ucptrie_internalU8PrevIndex');

Pointer<UCPTrie> ucptrie_openFromBinary(
  int type,
  int valueWidth,
  Pointer data,
  int length,
  Pointer<Int32> pActualLength,
  Pointer<Int32> pErrorCode,
) =>
    _ucptrie_openFromBinary(
      type,
      valueWidth,
      data,
      length,
      pActualLength,
      pErrorCode,
    );

late final _ucptrie_openFromBinary = _icu.lookupFunction<
    Pointer<UCPTrie> Function(
  Int32 type,
  Int32 valueWidth,
  Pointer data,
  Int32 length,
  Pointer<Int32> pActualLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<UCPTrie> Function(
  int type,
  int valueWidth,
  Pointer data,
  int length,
  Pointer<Int32> pActualLength,
  Pointer<Int32> pErrorCode,
)>('ucptrie_openFromBinary');

int ucptrie_toBinary(
  Pointer<UCPTrie> trie,
  Pointer data,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _ucptrie_toBinary(
      trie,
      data,
      capacity,
      pErrorCode,
    );

late final _ucptrie_toBinary = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCPTrie> trie,
  Pointer data,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UCPTrie> trie,
  Pointer data,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('ucptrie_toBinary');

void ucsdet_close(
  Pointer<UCharsetDetector> ucsd,
) =>
    _ucsdet_close(
      ucsd,
    );

late final _ucsdet_close = _icu.lookupFunction<
    Void Function(
  Pointer<UCharsetDetector> ucsd,
),
    void Function(
  Pointer<UCharsetDetector> ucsd,
)>('ucsdet_close');

Pointer<UCharsetMatch> ucsdet_detect(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> status,
) =>
    _ucsdet_detect(
      ucsd,
      status,
    );

late final _ucsdet_detect = _icu.lookupFunction<
    Pointer<UCharsetMatch> Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> status,
),
    Pointer<UCharsetMatch> Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> status,
)>('ucsdet_detect');

Pointer<Pointer<UCharsetMatch>> ucsdet_detectAll(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> matchesFound,
  Pointer<Int32> status,
) =>
    _ucsdet_detectAll(
      ucsd,
      matchesFound,
      status,
    );

late final _ucsdet_detectAll = _icu.lookupFunction<
    Pointer<Pointer<UCharsetMatch>> Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> matchesFound,
  Pointer<Int32> status,
),
    Pointer<Pointer<UCharsetMatch>> Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> matchesFound,
  Pointer<Int32> status,
)>('ucsdet_detectAll');

int ucsdet_enableInputFilter(
  Pointer<UCharsetDetector> ucsd,
  int filter,
) =>
    _ucsdet_enableInputFilter(
      ucsd,
      filter,
    );

late final _ucsdet_enableInputFilter = _icu.lookupFunction<
    Int8 Function(
  Pointer<UCharsetDetector> ucsd,
  Int8 filter,
),
    int Function(
  Pointer<UCharsetDetector> ucsd,
  int filter,
)>('ucsdet_enableInputFilter');

Pointer<UEnumeration> ucsdet_getAllDetectableCharsets(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> status,
) =>
    _ucsdet_getAllDetectableCharsets(
      ucsd,
      status,
    );

late final _ucsdet_getAllDetectableCharsets = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Int32> status,
)>('ucsdet_getAllDetectableCharsets');

int ucsdet_getConfidence(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
) =>
    _ucsdet_getConfidence(
      ucsm,
      status,
    );

late final _ucsdet_getConfidence = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
)>('ucsdet_getConfidence');

Pointer<Utf8> ucsdet_getLanguage(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
) =>
    _ucsdet_getLanguage(
      ucsm,
      status,
    );

late final _ucsdet_getLanguage = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
)>('ucsdet_getLanguage');

Pointer<Utf8> ucsdet_getName(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
) =>
    _ucsdet_getName(
      ucsm,
      status,
    );

late final _ucsdet_getName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Int32> status,
)>('ucsdet_getName');

int ucsdet_getUChars(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Uint16> buf,
  int cap,
  Pointer<Int32> status,
) =>
    _ucsdet_getUChars(
      ucsm,
      buf,
      cap,
      status,
    );

late final _ucsdet_getUChars = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Uint16> buf,
  Int32 cap,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UCharsetMatch> ucsm,
  Pointer<Uint16> buf,
  int cap,
  Pointer<Int32> status,
)>('ucsdet_getUChars');

int ucsdet_isInputFilterEnabled(
  Pointer<UCharsetDetector> ucsd,
) =>
    _ucsdet_isInputFilterEnabled(
      ucsd,
    );

late final _ucsdet_isInputFilterEnabled = _icu.lookupFunction<
    Int8 Function(
  Pointer<UCharsetDetector> ucsd,
),
    int Function(
  Pointer<UCharsetDetector> ucsd,
)>('ucsdet_isInputFilterEnabled');

Pointer<UCharsetDetector> ucsdet_open(
  Pointer<Int32> status,
) =>
    _ucsdet_open(
      status,
    );

late final _ucsdet_open = _icu.lookupFunction<
    Pointer<UCharsetDetector> Function(
  Pointer<Int32> status,
),
    Pointer<UCharsetDetector> Function(
  Pointer<Int32> status,
)>('ucsdet_open');

void ucsdet_setDeclaredEncoding(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Utf8> encoding,
  int length,
  Pointer<Int32> status,
) =>
    _ucsdet_setDeclaredEncoding(
      ucsd,
      encoding,
      length,
      status,
    );

late final _ucsdet_setDeclaredEncoding = _icu.lookupFunction<
    Void Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Utf8> encoding,
  Int32 length,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Utf8> encoding,
  int length,
  Pointer<Int32> status,
)>('ucsdet_setDeclaredEncoding');

void ucsdet_setText(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Utf8> textIn,
  int len,
  Pointer<Int32> status,
) =>
    _ucsdet_setText(
      ucsd,
      textIn,
      len,
      status,
    );

late final _ucsdet_setText = _icu.lookupFunction<
    Void Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Utf8> textIn,
  Int32 len,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UCharsetDetector> ucsd,
  Pointer<Utf8> textIn,
  int len,
  Pointer<Int32> status,
)>('ucsdet_setText');

int ucurr_countCurrencies(
  Pointer<Utf8> locale,
  double date,
  Pointer<Int32> ec,
) =>
    _ucurr_countCurrencies(
      locale,
      date,
      ec,
    );

late final _ucurr_countCurrencies = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Double date,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Utf8> locale,
  double date,
  Pointer<Int32> ec,
)>('ucurr_countCurrencies');

int ucurr_forLocale(
  Pointer<Utf8> locale,
  Pointer<Uint16> buff,
  int buffCapacity,
  Pointer<Int32> ec,
) =>
    _ucurr_forLocale(
      locale,
      buff,
      buffCapacity,
      ec,
    );

late final _ucurr_forLocale = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> buff,
  Int32 buffCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> buff,
  int buffCapacity,
  Pointer<Int32> ec,
)>('ucurr_forLocale');

int ucurr_forLocaleAndDate(
  Pointer<Utf8> locale,
  double date,
  int index,
  Pointer<Uint16> buff,
  int buffCapacity,
  Pointer<Int32> ec,
) =>
    _ucurr_forLocaleAndDate(
      locale,
      date,
      index,
      buff,
      buffCapacity,
      ec,
    );

late final _ucurr_forLocaleAndDate = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Double date,
  Int32 index,
  Pointer<Uint16> buff,
  Int32 buffCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Utf8> locale,
  double date,
  int index,
  Pointer<Uint16> buff,
  int buffCapacity,
  Pointer<Int32> ec,
)>('ucurr_forLocaleAndDate');

int ucurr_getDefaultFractionDigits(
  Pointer<Uint16> currency,
  Pointer<Int32> ec,
) =>
    _ucurr_getDefaultFractionDigits(
      currency,
      ec,
    );

late final _ucurr_getDefaultFractionDigits = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> currency,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Uint16> currency,
  Pointer<Int32> ec,
)>('ucurr_getDefaultFractionDigits');

int ucurr_getDefaultFractionDigitsForUsage(
  Pointer<Uint16> currency,
  int usage,
  Pointer<Int32> ec,
) =>
    _ucurr_getDefaultFractionDigitsForUsage(
      currency,
      usage,
      ec,
    );

late final _ucurr_getDefaultFractionDigitsForUsage = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> currency,
  Int32 usage,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Uint16> currency,
  int usage,
  Pointer<Int32> ec,
)>('ucurr_getDefaultFractionDigitsForUsage');

Pointer<UEnumeration> ucurr_getKeywordValuesForLocale(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  int commonlyUsed,
  Pointer<Int32> status,
) =>
    _ucurr_getKeywordValuesForLocale(
      key,
      locale,
      commonlyUsed,
      status,
    );

late final _ucurr_getKeywordValuesForLocale = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  Int8 commonlyUsed,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> key,
  Pointer<Utf8> locale,
  int commonlyUsed,
  Pointer<Int32> status,
)>('ucurr_getKeywordValuesForLocale');

Pointer<Uint16> ucurr_getName(
  Pointer<Uint16> currency,
  Pointer<Utf8> locale,
  int nameStyle,
  Pointer<Int8> isChoiceFormat,
  Pointer<Int32> len,
  Pointer<Int32> ec,
) =>
    _ucurr_getName(
      currency,
      locale,
      nameStyle,
      isChoiceFormat,
      len,
      ec,
    );

late final _ucurr_getName = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> currency,
  Pointer<Utf8> locale,
  Int32 nameStyle,
  Pointer<Int8> isChoiceFormat,
  Pointer<Int32> len,
  Pointer<Int32> ec,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> currency,
  Pointer<Utf8> locale,
  int nameStyle,
  Pointer<Int8> isChoiceFormat,
  Pointer<Int32> len,
  Pointer<Int32> ec,
)>('ucurr_getName');

int ucurr_getNumericCode(
  Pointer<Uint16> currency,
) =>
    _ucurr_getNumericCode(
      currency,
    );

late final _ucurr_getNumericCode = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> currency,
),
    int Function(
  Pointer<Uint16> currency,
)>('ucurr_getNumericCode');

Pointer<Uint16> ucurr_getPluralName(
  Pointer<Uint16> currency,
  Pointer<Utf8> locale,
  Pointer<Int8> isChoiceFormat,
  Pointer<Utf8> pluralCount,
  Pointer<Int32> len,
  Pointer<Int32> ec,
) =>
    _ucurr_getPluralName(
      currency,
      locale,
      isChoiceFormat,
      pluralCount,
      len,
      ec,
    );

late final _ucurr_getPluralName = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Uint16> currency,
  Pointer<Utf8> locale,
  Pointer<Int8> isChoiceFormat,
  Pointer<Utf8> pluralCount,
  Pointer<Int32> len,
  Pointer<Int32> ec,
),
    Pointer<Uint16> Function(
  Pointer<Uint16> currency,
  Pointer<Utf8> locale,
  Pointer<Int8> isChoiceFormat,
  Pointer<Utf8> pluralCount,
  Pointer<Int32> len,
  Pointer<Int32> ec,
)>('ucurr_getPluralName');

double ucurr_getRoundingIncrement(
  Pointer<Uint16> currency,
  Pointer<Int32> ec,
) =>
    _ucurr_getRoundingIncrement(
      currency,
      ec,
    );

late final _ucurr_getRoundingIncrement = _icu.lookupFunction<
    Double Function(
  Pointer<Uint16> currency,
  Pointer<Int32> ec,
),
    double Function(
  Pointer<Uint16> currency,
  Pointer<Int32> ec,
)>('ucurr_getRoundingIncrement');

double ucurr_getRoundingIncrementForUsage(
  Pointer<Uint16> currency,
  int usage,
  Pointer<Int32> ec,
) =>
    _ucurr_getRoundingIncrementForUsage(
      currency,
      usage,
      ec,
    );

late final _ucurr_getRoundingIncrementForUsage = _icu.lookupFunction<
    Double Function(
  Pointer<Uint16> currency,
  Int32 usage,
  Pointer<Int32> ec,
),
    double Function(
  Pointer<Uint16> currency,
  int usage,
  Pointer<Int32> ec,
)>('ucurr_getRoundingIncrementForUsage');

int ucurr_isAvailable(
  Pointer<Uint16> isoCode,
  double from,
  double to,
  Pointer<Int32> errorCode,
) =>
    _ucurr_isAvailable(
      isoCode,
      from,
      to,
      errorCode,
    );

late final _ucurr_isAvailable = _icu.lookupFunction<
    Int8 Function(
  Pointer<Uint16> isoCode,
  Double from,
  Double to,
  Pointer<Int32> errorCode,
),
    int Function(
  Pointer<Uint16> isoCode,
  double from,
  double to,
  Pointer<Int32> errorCode,
)>('ucurr_isAvailable');

Pointer<UEnumeration> ucurr_openISOCurrencies(
  int currType,
  Pointer<Int32> pErrorCode,
) =>
    _ucurr_openISOCurrencies(
      currType,
      pErrorCode,
    );

late final _ucurr_openISOCurrencies = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Uint32 currType,
  Pointer<Int32> pErrorCode,
),
    Pointer<UEnumeration> Function(
  int currType,
  Pointer<Int32> pErrorCode,
)>('ucurr_openISOCurrencies');

Pointer ucurr_register(
  Pointer<Uint16> isoCode,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _ucurr_register(
      isoCode,
      locale,
      status,
    );

late final _ucurr_register = _icu.lookupFunction<
    Pointer Function(
  Pointer<Uint16> isoCode,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer Function(
  Pointer<Uint16> isoCode,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('ucurr_register');

int ucurr_unregister(
  Pointer key,
  Pointer<Int32> status,
) =>
    _ucurr_unregister(
      key,
      status,
    );

late final _ucurr_unregister = _icu.lookupFunction<
    Int8 Function(
  Pointer key,
  Pointer<Int32> status,
),
    int Function(
  Pointer key,
  Pointer<Int32> status,
)>('ucurr_unregister');

void udat_adoptNumberFormat(
  Pointer<Pointer> fmt,
  Pointer<Pointer> numberFormatToAdopt,
) =>
    _udat_adoptNumberFormat(
      fmt,
      numberFormatToAdopt,
    );

late final _udat_adoptNumberFormat = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> numberFormatToAdopt,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> numberFormatToAdopt,
)>('udat_adoptNumberFormat');

void udat_adoptNumberFormatForFields(
  Pointer<Pointer> fmt,
  Pointer<Uint16> fields,
  Pointer<Pointer> numberFormatToSet,
  Pointer<Int32> status,
) =>
    _udat_adoptNumberFormatForFields(
      fmt,
      fields,
      numberFormatToSet,
      status,
    );

late final _udat_adoptNumberFormatForFields = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> fields,
  Pointer<Pointer> numberFormatToSet,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> fields,
  Pointer<Pointer> numberFormatToSet,
  Pointer<Int32> status,
)>('udat_adoptNumberFormatForFields');

void udat_applyPattern(
  Pointer<Pointer> format,
  int localized,
  Pointer<Uint16> pattern,
  int patternLength,
) =>
    _udat_applyPattern(
      format,
      localized,
      pattern,
      patternLength,
    );

late final _udat_applyPattern = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> format,
  Int8 localized,
  Pointer<Uint16> pattern,
  Int32 patternLength,
),
    void Function(
  Pointer<Pointer> format,
  int localized,
  Pointer<Uint16> pattern,
  int patternLength,
)>('udat_applyPattern');

Pointer<Pointer> udat_clone(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _udat_clone(
      fmt,
      status,
    );

late final _udat_clone = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('udat_clone');

void udat_close(
  Pointer<Pointer> format,
) =>
    _udat_close(
      format,
    );

late final _udat_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> format,
),
    void Function(
  Pointer<Pointer> format,
)>('udat_close');

int udat_countAvailable() => _udat_countAvailable();

late final _udat_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('udat_countAvailable');

int udat_countSymbols(
  Pointer<Pointer> fmt,
  int type,
) =>
    _udat_countSymbols(
      fmt,
      type,
    );

late final _udat_countSymbols = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 type,
),
    int Function(
  Pointer<Pointer> fmt,
  int type,
)>('udat_countSymbols');

int udat_format(
  Pointer<Pointer> format,
  double dateToFormat,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
) =>
    _udat_format(
      format,
      dateToFormat,
      result,
      resultLength,
      position,
      status,
    );

late final _udat_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> format,
  Double dateToFormat,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> format,
  double dateToFormat,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
)>('udat_format');

int udat_formatCalendar(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> result,
  int capacity,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
) =>
    _udat_formatCalendar(
      format,
      calendar,
      result,
      capacity,
      position,
      status,
    );

late final _udat_formatCalendar = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> result,
  Int32 capacity,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> result,
  int capacity,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
)>('udat_formatCalendar');

int udat_formatCalendarForFields(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> result,
  int capacity,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
) =>
    _udat_formatCalendarForFields(
      format,
      calendar,
      result,
      capacity,
      fpositer,
      status,
    );

late final _udat_formatCalendarForFields = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> result,
  Int32 capacity,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> result,
  int capacity,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
)>('udat_formatCalendarForFields');

int udat_formatForFields(
  Pointer<Pointer> format,
  double dateToFormat,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
) =>
    _udat_formatForFields(
      format,
      dateToFormat,
      result,
      resultLength,
      fpositer,
      status,
    );

late final _udat_formatForFields = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> format,
  Double dateToFormat,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> format,
  double dateToFormat,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
)>('udat_formatForFields');

double udat_get2DigitYearStart(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _udat_get2DigitYearStart(
      fmt,
      status,
    );

late final _udat_get2DigitYearStart = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('udat_get2DigitYearStart');

Pointer<Utf8> udat_getAvailable(
  int localeIndex,
) =>
    _udat_getAvailable(
      localeIndex,
    );

late final _udat_getAvailable = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 localeIndex,
),
    Pointer<Utf8> Function(
  int localeIndex,
)>('udat_getAvailable');

int udat_getBooleanAttribute(
  Pointer<Pointer> fmt,
  int attr,
  Pointer<Int32> status,
) =>
    _udat_getBooleanAttribute(
      fmt,
      attr,
      status,
    );

late final _udat_getBooleanAttribute = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> fmt,
  Int32 attr,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int attr,
  Pointer<Int32> status,
)>('udat_getBooleanAttribute');

Pointer<Pointer> udat_getCalendar(
  Pointer<Pointer> fmt,
) =>
    _udat_getCalendar(
      fmt,
    );

late final _udat_getCalendar = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
)>('udat_getCalendar');

int udat_getContext(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
) =>
    _udat_getContext(
      fmt,
      type,
      status,
    );

late final _udat_getContext = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 type,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
)>('udat_getContext');

Pointer<Utf8> udat_getLocaleByType(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
) =>
    _udat_getLocaleByType(
      fmt,
      type,
      status,
    );

late final _udat_getLocaleByType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
)>('udat_getLocaleByType');

Pointer<Pointer> udat_getNumberFormat(
  Pointer<Pointer> fmt,
) =>
    _udat_getNumberFormat(
      fmt,
    );

late final _udat_getNumberFormat = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
)>('udat_getNumberFormat');

Pointer<Pointer> udat_getNumberFormatForField(
  Pointer<Pointer> fmt,
  int field,
) =>
    _udat_getNumberFormatForField(
      fmt,
      field,
    );

late final _udat_getNumberFormatForField = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Uint16 field,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  int field,
)>('udat_getNumberFormatForField');

int udat_getSymbols(
  Pointer<Pointer> fmt,
  int type,
  int symbolIndex,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _udat_getSymbols(
      fmt,
      type,
      symbolIndex,
      result,
      resultLength,
      status,
    );

late final _udat_getSymbols = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 type,
  Int32 symbolIndex,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int type,
  int symbolIndex,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('udat_getSymbols');

int udat_isLenient(
  Pointer<Pointer> fmt,
) =>
    _udat_isLenient(
      fmt,
    );

late final _udat_isLenient = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> fmt,
),
    int Function(
  Pointer<Pointer> fmt,
)>('udat_isLenient');

Pointer<Pointer> udat_open(
  int timeStyle,
  int dateStyle,
  Pointer<Utf8> locale,
  Pointer<Uint16> tzID,
  int tzIDLength,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Int32> status,
) =>
    _udat_open(
      timeStyle,
      dateStyle,
      locale,
      tzID,
      tzIDLength,
      pattern,
      patternLength,
      status,
    );

late final _udat_open = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Int32 timeStyle,
  Int32 dateStyle,
  Pointer<Utf8> locale,
  Pointer<Uint16> tzID,
  Int32 tzIDLength,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  int timeStyle,
  int dateStyle,
  Pointer<Utf8> locale,
  Pointer<Uint16> tzID,
  int tzIDLength,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Int32> status,
)>('udat_open');

double udat_parse(
  Pointer<Pointer> format,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
) =>
    _udat_parse(
      format,
      text,
      textLength,
      parsePos,
      status,
    );

late final _udat_parse = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> format,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> format,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
)>('udat_parse');

void udat_parseCalendar(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
) =>
    _udat_parseCalendar(
      format,
      calendar,
      text,
      textLength,
      parsePos,
      status,
    );

late final _udat_parseCalendar = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> format,
  Pointer<Pointer> calendar,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
)>('udat_parseCalendar');

void udat_set2DigitYearStart(
  Pointer<Pointer> fmt,
  double d,
  Pointer<Int32> status,
) =>
    _udat_set2DigitYearStart(
      fmt,
      d,
      status,
    );

late final _udat_set2DigitYearStart = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Double d,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  double d,
  Pointer<Int32> status,
)>('udat_set2DigitYearStart');

void udat_setBooleanAttribute(
  Pointer<Pointer> fmt,
  int attr,
  int newValue,
  Pointer<Int32> status,
) =>
    _udat_setBooleanAttribute(
      fmt,
      attr,
      newValue,
      status,
    );

late final _udat_setBooleanAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 attr,
  Int8 newValue,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  int attr,
  int newValue,
  Pointer<Int32> status,
)>('udat_setBooleanAttribute');

void udat_setCalendar(
  Pointer<Pointer> fmt,
  Pointer<Pointer> calendarToSet,
) =>
    _udat_setCalendar(
      fmt,
      calendarToSet,
    );

late final _udat_setCalendar = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> calendarToSet,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> calendarToSet,
)>('udat_setCalendar');

void udat_setContext(
  Pointer<Pointer> fmt,
  int value,
  Pointer<Int32> status,
) =>
    _udat_setContext(
      fmt,
      value,
      status,
    );

late final _udat_setContext = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 value,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  int value,
  Pointer<Int32> status,
)>('udat_setContext');

void udat_setLenient(
  Pointer<Pointer> fmt,
  int isLenient,
) =>
    _udat_setLenient(
      fmt,
      isLenient,
    );

late final _udat_setLenient = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int8 isLenient,
),
    void Function(
  Pointer<Pointer> fmt,
  int isLenient,
)>('udat_setLenient');

void udat_setNumberFormat(
  Pointer<Pointer> fmt,
  Pointer<Pointer> numberFormatToSet,
) =>
    _udat_setNumberFormat(
      fmt,
      numberFormatToSet,
    );

late final _udat_setNumberFormat = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> numberFormatToSet,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> numberFormatToSet,
)>('udat_setNumberFormat');

void udat_setSymbols(
  Pointer<Pointer> format,
  int type,
  int symbolIndex,
  Pointer<Uint16> value,
  int valueLength,
  Pointer<Int32> status,
) =>
    _udat_setSymbols(
      format,
      type,
      symbolIndex,
      value,
      valueLength,
      status,
    );

late final _udat_setSymbols = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> format,
  Int32 type,
  Int32 symbolIndex,
  Pointer<Uint16> value,
  Int32 valueLength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> format,
  int type,
  int symbolIndex,
  Pointer<Uint16> value,
  int valueLength,
  Pointer<Int32> status,
)>('udat_setSymbols');

int udat_toCalendarDateField(
  int field,
) =>
    _udat_toCalendarDateField(
      field,
    );

late final _udat_toCalendarDateField = _icu.lookupFunction<
    Int32 Function(
  Int32 field,
),
    int Function(
  int field,
)>('udat_toCalendarDateField');

int udat_toPattern(
  Pointer<Pointer> fmt,
  int localized,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _udat_toPattern(
      fmt,
      localized,
      result,
      resultLength,
      status,
    );

late final _udat_toPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int8 localized,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int localized,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('udat_toPattern');

int udatpg_addPattern(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  int patternLength,
  int override,
  Pointer<Uint16> conflictingPattern,
  int capacity,
  Pointer<Int32> pLength,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_addPattern(
      dtpg,
      pattern,
      patternLength,
      override,
      conflictingPattern,
      capacity,
      pLength,
      pErrorCode,
    );

late final _udatpg_addPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Int8 override,
  Pointer<Uint16> conflictingPattern,
  Int32 capacity,
  Pointer<Int32> pLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  int patternLength,
  int override,
  Pointer<Uint16> conflictingPattern,
  int capacity,
  Pointer<Int32> pLength,
  Pointer<Int32> pErrorCode,
)>('udatpg_addPattern');

Pointer<Pointer> udatpg_clone(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_clone(
      dtpg,
      pErrorCode,
    );

late final _udatpg_clone = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
)>('udatpg_clone');

void udatpg_close(
  Pointer<Pointer> dtpg,
) =>
    _udatpg_close(
      dtpg,
    );

late final _udatpg_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> dtpg,
),
    void Function(
  Pointer<Pointer> dtpg,
)>('udatpg_close');

Pointer<Uint16> udatpg_getAppendItemFormat(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Int32> pLength,
) =>
    _udatpg_getAppendItemFormat(
      dtpg,
      field,
      pLength,
    );

late final _udatpg_getAppendItemFormat = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Int32 field,
  Pointer<Int32> pLength,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Int32> pLength,
)>('udatpg_getAppendItemFormat');

Pointer<Uint16> udatpg_getAppendItemName(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Int32> pLength,
) =>
    _udatpg_getAppendItemName(
      dtpg,
      field,
      pLength,
    );

late final _udatpg_getAppendItemName = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Int32 field,
  Pointer<Int32> pLength,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Int32> pLength,
)>('udatpg_getAppendItemName');

int udatpg_getBaseSkeleton(
  Pointer<Pointer> unusedDtpg,
  Pointer<Uint16> pattern,
  int length,
  Pointer<Uint16> baseSkeleton,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_getBaseSkeleton(
      unusedDtpg,
      pattern,
      length,
      baseSkeleton,
      capacity,
      pErrorCode,
    );

late final _udatpg_getBaseSkeleton = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> unusedDtpg,
  Pointer<Uint16> pattern,
  Int32 length,
  Pointer<Uint16> baseSkeleton,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> unusedDtpg,
  Pointer<Uint16> pattern,
  int length,
  Pointer<Uint16> baseSkeleton,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_getBaseSkeleton');

int udatpg_getBestPattern(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  int length,
  Pointer<Uint16> bestPattern,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_getBestPattern(
      dtpg,
      skeleton,
      length,
      bestPattern,
      capacity,
      pErrorCode,
    );

late final _udatpg_getBestPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  Int32 length,
  Pointer<Uint16> bestPattern,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  int length,
  Pointer<Uint16> bestPattern,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_getBestPattern');

int udatpg_getBestPatternWithOptions(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  int length,
  int options,
  Pointer<Uint16> bestPattern,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_getBestPatternWithOptions(
      dtpg,
      skeleton,
      length,
      options,
      bestPattern,
      capacity,
      pErrorCode,
    );

late final _udatpg_getBestPatternWithOptions = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  Int32 length,
  Int32 options,
  Pointer<Uint16> bestPattern,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  int length,
  int options,
  Pointer<Uint16> bestPattern,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_getBestPatternWithOptions');

Pointer<Uint16> udatpg_getDateTimeFormat(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pLength,
) =>
    _udatpg_getDateTimeFormat(
      dtpg,
      pLength,
    );

late final _udatpg_getDateTimeFormat = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pLength,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pLength,
)>('udatpg_getDateTimeFormat');

Pointer<Uint16> udatpg_getDecimal(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pLength,
) =>
    _udatpg_getDecimal(
      dtpg,
      pLength,
    );

late final _udatpg_getDecimal = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pLength,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pLength,
)>('udatpg_getDecimal');

int udatpg_getFieldDisplayName(
  Pointer<Pointer> dtpg,
  int field,
  int width,
  Pointer<Uint16> fieldName,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_getFieldDisplayName(
      dtpg,
      field,
      width,
      fieldName,
      capacity,
      pErrorCode,
    );

late final _udatpg_getFieldDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> dtpg,
  Int32 field,
  Int32 width,
  Pointer<Uint16> fieldName,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> dtpg,
  int field,
  int width,
  Pointer<Uint16> fieldName,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_getFieldDisplayName');

Pointer<Uint16> udatpg_getPatternForSkeleton(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  Pointer<Int32> pLength,
) =>
    _udatpg_getPatternForSkeleton(
      dtpg,
      skeleton,
      skeletonLength,
      pLength,
    );

late final _udatpg_getPatternForSkeleton = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  Int32 skeletonLength,
  Pointer<Int32> pLength,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  Pointer<Int32> pLength,
)>('udatpg_getPatternForSkeleton');

int udatpg_getSkeleton(
  Pointer<Pointer> unusedDtpg,
  Pointer<Uint16> pattern,
  int length,
  Pointer<Uint16> skeleton,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_getSkeleton(
      unusedDtpg,
      pattern,
      length,
      skeleton,
      capacity,
      pErrorCode,
    );

late final _udatpg_getSkeleton = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> unusedDtpg,
  Pointer<Uint16> pattern,
  Int32 length,
  Pointer<Uint16> skeleton,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> unusedDtpg,
  Pointer<Uint16> pattern,
  int length,
  Pointer<Uint16> skeleton,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_getSkeleton');

Pointer<Pointer> udatpg_open(
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_open(
      locale,
      pErrorCode,
    );

late final _udatpg_open = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
),
    Pointer<Pointer> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> pErrorCode,
)>('udatpg_open');

Pointer<UEnumeration> udatpg_openBaseSkeletons(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_openBaseSkeletons(
      dtpg,
      pErrorCode,
    );

late final _udatpg_openBaseSkeletons = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
),
    Pointer<UEnumeration> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
)>('udatpg_openBaseSkeletons');

Pointer<Pointer> udatpg_openEmpty(
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_openEmpty(
      pErrorCode,
    );

late final _udatpg_openEmpty = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<Pointer> Function(
  Pointer<Int32> pErrorCode,
)>('udatpg_openEmpty');

Pointer<UEnumeration> udatpg_openSkeletons(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_openSkeletons(
      dtpg,
      pErrorCode,
    );

late final _udatpg_openSkeletons = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
),
    Pointer<UEnumeration> Function(
  Pointer<Pointer> dtpg,
  Pointer<Int32> pErrorCode,
)>('udatpg_openSkeletons');

int udatpg_replaceFieldTypes(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_replaceFieldTypes(
      dtpg,
      pattern,
      patternLength,
      skeleton,
      skeletonLength,
      dest,
      destCapacity,
      pErrorCode,
    );

late final _udatpg_replaceFieldTypes = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> skeleton,
  Int32 skeletonLength,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_replaceFieldTypes');

int udatpg_replaceFieldTypesWithOptions(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  int options,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
) =>
    _udatpg_replaceFieldTypesWithOptions(
      dtpg,
      pattern,
      patternLength,
      skeleton,
      skeletonLength,
      options,
      dest,
      destCapacity,
      pErrorCode,
    );

late final _udatpg_replaceFieldTypesWithOptions = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> skeleton,
  Int32 skeletonLength,
  Int32 options,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  int options,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
)>('udatpg_replaceFieldTypesWithOptions');

void udatpg_setAppendItemFormat(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Uint16> value,
  int length,
) =>
    _udatpg_setAppendItemFormat(
      dtpg,
      field,
      value,
      length,
    );

late final _udatpg_setAppendItemFormat = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> dtpg,
  Int32 field,
  Pointer<Uint16> value,
  Int32 length,
),
    void Function(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Uint16> value,
  int length,
)>('udatpg_setAppendItemFormat');

void udatpg_setAppendItemName(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Uint16> value,
  int length,
) =>
    _udatpg_setAppendItemName(
      dtpg,
      field,
      value,
      length,
    );

late final _udatpg_setAppendItemName = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> dtpg,
  Int32 field,
  Pointer<Uint16> value,
  Int32 length,
),
    void Function(
  Pointer<Pointer> dtpg,
  int field,
  Pointer<Uint16> value,
  int length,
)>('udatpg_setAppendItemName');

void udatpg_setDateTimeFormat(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> dtFormat,
  int length,
) =>
    _udatpg_setDateTimeFormat(
      dtpg,
      dtFormat,
      length,
    );

late final _udatpg_setDateTimeFormat = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> dtFormat,
  Int32 length,
),
    void Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> dtFormat,
  int length,
)>('udatpg_setDateTimeFormat');

void udatpg_setDecimal(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> decimal,
  int length,
) =>
    _udatpg_setDecimal(
      dtpg,
      decimal,
      length,
    );

late final _udatpg_setDecimal = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> decimal,
  Int32 length,
),
    void Function(
  Pointer<Pointer> dtpg,
  Pointer<Uint16> decimal,
  int length,
)>('udatpg_setDecimal');

void udtitvfmt_close(
  Pointer<UDateIntervalFormat> formatter,
) =>
    _udtitvfmt_close(
      formatter,
    );

late final _udtitvfmt_close = _icu.lookupFunction<
    Void Function(
  Pointer<UDateIntervalFormat> formatter,
),
    void Function(
  Pointer<UDateIntervalFormat> formatter,
)>('udtitvfmt_close');

void udtitvfmt_closeResult(
  Pointer<UFormattedDateInterval> uresult,
) =>
    _udtitvfmt_closeResult(
      uresult,
    );

late final _udtitvfmt_closeResult = _icu.lookupFunction<
    Void Function(
  Pointer<UFormattedDateInterval> uresult,
),
    void Function(
  Pointer<UFormattedDateInterval> uresult,
)>('udtitvfmt_closeResult');

int udtitvfmt_format(
  Pointer<UDateIntervalFormat> formatter,
  double fromDate,
  double toDate,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
) =>
    _udtitvfmt_format(
      formatter,
      fromDate,
      toDate,
      result,
      resultCapacity,
      position,
      status,
    );

late final _udtitvfmt_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<UDateIntervalFormat> formatter,
  Double fromDate,
  Double toDate,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UDateIntervalFormat> formatter,
  double fromDate,
  double toDate,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<UFieldPosition> position,
  Pointer<Int32> status,
)>('udtitvfmt_format');

Pointer<UDateIntervalFormat> udtitvfmt_open(
  Pointer<Utf8> locale,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  Pointer<Uint16> tzID,
  int tzIDLength,
  Pointer<Int32> status,
) =>
    _udtitvfmt_open(
      locale,
      skeleton,
      skeletonLength,
      tzID,
      tzIDLength,
      status,
    );

late final _udtitvfmt_open = _icu.lookupFunction<
    Pointer<UDateIntervalFormat> Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> skeleton,
  Int32 skeletonLength,
  Pointer<Uint16> tzID,
  Int32 tzIDLength,
  Pointer<Int32> status,
),
    Pointer<UDateIntervalFormat> Function(
  Pointer<Utf8> locale,
  Pointer<Uint16> skeleton,
  int skeletonLength,
  Pointer<Uint16> tzID,
  int tzIDLength,
  Pointer<Int32> status,
)>('udtitvfmt_open');

Pointer<UFormattedDateInterval> udtitvfmt_openResult(
  Pointer<Int32> ec,
) =>
    _udtitvfmt_openResult(
      ec,
    );

late final _udtitvfmt_openResult = _icu.lookupFunction<
    Pointer<UFormattedDateInterval> Function(
  Pointer<Int32> ec,
),
    Pointer<UFormattedDateInterval> Function(
  Pointer<Int32> ec,
)>('udtitvfmt_openResult');

Pointer<UFormattedValue> udtitvfmt_resultAsValue(
  Pointer<UFormattedDateInterval> uresult,
  Pointer<Int32> ec,
) =>
    _udtitvfmt_resultAsValue(
      uresult,
      ec,
    );

late final _udtitvfmt_resultAsValue = _icu.lookupFunction<
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedDateInterval> uresult,
  Pointer<Int32> ec,
),
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedDateInterval> uresult,
  Pointer<Int32> ec,
)>('udtitvfmt_resultAsValue');

void uenum_close(
  Pointer<UEnumeration> en,
) =>
    _uenum_close(
      en,
    );

late final _uenum_close = _icu.lookupFunction<
    Void Function(
  Pointer<UEnumeration> en,
),
    void Function(
  Pointer<UEnumeration> en,
)>('uenum_close');

int uenum_count(
  Pointer<UEnumeration> en,
  Pointer<Int32> status,
) =>
    _uenum_count(
      en,
      status,
    );

late final _uenum_count = _icu.lookupFunction<
    Int32 Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> status,
)>('uenum_count');

Pointer<Utf8> uenum_next(
  Pointer<UEnumeration> en,
  Pointer<Int32> resultLength,
  Pointer<Int32> status,
) =>
    _uenum_next(
      en,
      resultLength,
      status,
    );

late final _uenum_next = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> resultLength,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> resultLength,
  Pointer<Int32> status,
)>('uenum_next');

Pointer<UEnumeration> uenum_openCharStringsEnumeration(
  Pointer<Pointer<Int8>> strings,
  int count,
  Pointer<Int32> ec,
) =>
    _uenum_openCharStringsEnumeration(
      strings,
      count,
      ec,
    );

late final _uenum_openCharStringsEnumeration = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Pointer<Int8>> strings,
  Int32 count,
  Pointer<Int32> ec,
),
    Pointer<UEnumeration> Function(
  Pointer<Pointer<Int8>> strings,
  int count,
  Pointer<Int32> ec,
)>('uenum_openCharStringsEnumeration');

Pointer<UEnumeration> uenum_openUCharStringsEnumeration(
  Pointer<Pointer<Uint16>> strings,
  int count,
  Pointer<Int32> ec,
) =>
    _uenum_openUCharStringsEnumeration(
      strings,
      count,
      ec,
    );

late final _uenum_openUCharStringsEnumeration = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Pointer<Uint16>> strings,
  Int32 count,
  Pointer<Int32> ec,
),
    Pointer<UEnumeration> Function(
  Pointer<Pointer<Uint16>> strings,
  int count,
  Pointer<Int32> ec,
)>('uenum_openUCharStringsEnumeration');

void uenum_reset(
  Pointer<UEnumeration> en,
  Pointer<Int32> status,
) =>
    _uenum_reset(
      en,
      status,
    );

late final _uenum_reset = _icu.lookupFunction<
    Void Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> status,
)>('uenum_reset');

Pointer<Uint16> uenum_unext(
  Pointer<UEnumeration> en,
  Pointer<Int32> resultLength,
  Pointer<Int32> status,
) =>
    _uenum_unext(
      en,
      resultLength,
      status,
    );

late final _uenum_unext = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> resultLength,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<UEnumeration> en,
  Pointer<Int32> resultLength,
  Pointer<Int32> status,
)>('uenum_unext');

void ufieldpositer_close(
  Pointer<UFieldPositionIterator> fpositer,
) =>
    _ufieldpositer_close(
      fpositer,
    );

late final _ufieldpositer_close = _icu.lookupFunction<
    Void Function(
  Pointer<UFieldPositionIterator> fpositer,
),
    void Function(
  Pointer<UFieldPositionIterator> fpositer,
)>('ufieldpositer_close');

int ufieldpositer_next(
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> beginIndex,
  Pointer<Int32> endIndex,
) =>
    _ufieldpositer_next(
      fpositer,
      beginIndex,
      endIndex,
    );

late final _ufieldpositer_next = _icu.lookupFunction<
    Int32 Function(
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> beginIndex,
  Pointer<Int32> endIndex,
),
    int Function(
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> beginIndex,
  Pointer<Int32> endIndex,
)>('ufieldpositer_next');

Pointer<UFieldPositionIterator> ufieldpositer_open(
  Pointer<Int32> status,
) =>
    _ufieldpositer_open(
      status,
    );

late final _ufieldpositer_open = _icu.lookupFunction<
    Pointer<UFieldPositionIterator> Function(
  Pointer<Int32> status,
),
    Pointer<UFieldPositionIterator> Function(
  Pointer<Int32> status,
)>('ufieldpositer_open');

void ufmt_close(
  Pointer<Pointer> fmt,
) =>
    _ufmt_close(
      fmt,
    );

late final _ufmt_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
),
    void Function(
  Pointer<Pointer> fmt,
)>('ufmt_close');

Pointer<Pointer> ufmt_getArrayItemByIndex(
  Pointer<Pointer> fmt,
  int n,
  Pointer<Int32> status,
) =>
    _ufmt_getArrayItemByIndex(
      fmt,
      n,
      status,
    );

late final _ufmt_getArrayItemByIndex = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Int32 n,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  int n,
  Pointer<Int32> status,
)>('ufmt_getArrayItemByIndex');

int ufmt_getArrayLength(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getArrayLength(
      fmt,
      status,
    );

late final _ufmt_getArrayLength = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getArrayLength');

double ufmt_getDate(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getDate(
      fmt,
      status,
    );

late final _ufmt_getDate = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getDate');

Pointer<Utf8> ufmt_getDecNumChars(
  Pointer<Pointer> fmt,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ufmt_getDecNumChars(
      fmt,
      len,
      status,
    );

late final _ufmt_getDecNumChars = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ufmt_getDecNumChars');

double ufmt_getDouble(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getDouble(
      fmt,
      status,
    );

late final _ufmt_getDouble = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getDouble');

int ufmt_getInt64(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getInt64(
      fmt,
      status,
    );

late final _ufmt_getInt64 = _icu.lookupFunction<
    Int64 Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getInt64');

int ufmt_getLong(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getLong(
      fmt,
      status,
    );

late final _ufmt_getLong = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getLong');

Pointer ufmt_getObject(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getObject(
      fmt,
      status,
    );

late final _ufmt_getObject = _icu.lookupFunction<
    Pointer Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    Pointer Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getObject');

int ufmt_getType(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _ufmt_getType(
      fmt,
      status,
    );

late final _ufmt_getType = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('ufmt_getType');

Pointer<Uint16> ufmt_getUChars(
  Pointer<Pointer> fmt,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ufmt_getUChars(
      fmt,
      len,
      status,
    );

late final _ufmt_getUChars = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ufmt_getUChars');

int ufmt_isNumeric(
  Pointer<Pointer> fmt,
) =>
    _ufmt_isNumeric(
      fmt,
    );

late final _ufmt_isNumeric = _icu.lookupFunction<
    Int8 Function(
  Pointer<Pointer> fmt,
),
    int Function(
  Pointer<Pointer> fmt,
)>('ufmt_isNumeric');

Pointer<Pointer> ufmt_open(
  Pointer<Int32> status,
) =>
    _ufmt_open(
      status,
    );

late final _ufmt_open = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Int32> status,
)>('ufmt_open');

Pointer<Uint16> ufmtval_getString(
  Pointer<UFormattedValue> ufmtval,
  Pointer<Int32> pLength,
  Pointer<Int32> ec,
) =>
    _ufmtval_getString(
      ufmtval,
      pLength,
      ec,
    );

late final _ufmtval_getString = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UFormattedValue> ufmtval,
  Pointer<Int32> pLength,
  Pointer<Int32> ec,
),
    Pointer<Uint16> Function(
  Pointer<UFormattedValue> ufmtval,
  Pointer<Int32> pLength,
  Pointer<Int32> ec,
)>('ufmtval_getString');

int ufmtval_nextPosition(
  Pointer<UFormattedValue> ufmtval,
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
) =>
    _ufmtval_nextPosition(
      ufmtval,
      ucfpos,
      ec,
    );

late final _ufmtval_nextPosition = _icu.lookupFunction<
    Int8 Function(
  Pointer<UFormattedValue> ufmtval,
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UFormattedValue> ufmtval,
  Pointer<UConstrainedFieldPosition> ucfpos,
  Pointer<Int32> ec,
)>('ufmtval_nextPosition');

Pointer<UGenderInfo> ugender_getInstance(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _ugender_getInstance(
      locale,
      status,
    );

late final _ugender_getInstance = _icu.lookupFunction<
    Pointer<UGenderInfo> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UGenderInfo> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('ugender_getInstance');

int ugender_getListGender(
  Pointer<UGenderInfo> genderInfo,
  Pointer<Int32> genders,
  int size,
  Pointer<Int32> status,
) =>
    _ugender_getListGender(
      genderInfo,
      genders,
      size,
      status,
    );

late final _ugender_getListGender = _icu.lookupFunction<
    Int32 Function(
  Pointer<UGenderInfo> genderInfo,
  Pointer<Int32> genders,
  Int32 size,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UGenderInfo> genderInfo,
  Pointer<Int32> genders,
  int size,
  Pointer<Int32> status,
)>('ugender_getListGender');

void uidna_close(
  Pointer<UIDNA> idna,
) =>
    _uidna_close(
      idna,
    );

late final _uidna_close = _icu.lookupFunction<
    Void Function(
  Pointer<UIDNA> idna,
),
    void Function(
  Pointer<UIDNA> idna,
)>('uidna_close');

int uidna_labelToASCII(
  Pointer<UIDNA> idna,
  Pointer<Uint16> label,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_labelToASCII(
      idna,
      label,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_labelToASCII = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> label,
  Int32 length,
  Pointer<Uint16> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> label,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_labelToASCII');

int uidna_labelToASCII_UTF8(
  Pointer<UIDNA> idna,
  Pointer<Utf8> label,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_labelToASCII_UTF8(
      idna,
      label,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_labelToASCII_UTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> label,
  Int32 length,
  Pointer<Utf8> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> label,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_labelToASCII_UTF8');

int uidna_labelToUnicode(
  Pointer<UIDNA> idna,
  Pointer<Uint16> label,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_labelToUnicode(
      idna,
      label,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_labelToUnicode = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> label,
  Int32 length,
  Pointer<Uint16> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> label,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_labelToUnicode');

int uidna_labelToUnicodeUTF8(
  Pointer<UIDNA> idna,
  Pointer<Utf8> label,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_labelToUnicodeUTF8(
      idna,
      label,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_labelToUnicodeUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> label,
  Int32 length,
  Pointer<Utf8> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> label,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_labelToUnicodeUTF8');

int uidna_nameToASCII(
  Pointer<UIDNA> idna,
  Pointer<Uint16> name,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_nameToASCII(
      idna,
      name,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_nameToASCII = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> name,
  Int32 length,
  Pointer<Uint16> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> name,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_nameToASCII');

int uidna_nameToASCII_UTF8(
  Pointer<UIDNA> idna,
  Pointer<Utf8> name,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_nameToASCII_UTF8(
      idna,
      name,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_nameToASCII_UTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> name,
  Int32 length,
  Pointer<Utf8> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> name,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_nameToASCII_UTF8');

int uidna_nameToUnicode(
  Pointer<UIDNA> idna,
  Pointer<Uint16> name,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_nameToUnicode(
      idna,
      name,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_nameToUnicode = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> name,
  Int32 length,
  Pointer<Uint16> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Uint16> name,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_nameToUnicode');

int uidna_nameToUnicodeUTF8(
  Pointer<UIDNA> idna,
  Pointer<Utf8> name,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_nameToUnicodeUTF8(
      idna,
      name,
      length,
      dest,
      capacity,
      pInfo,
      pErrorCode,
    );

late final _uidna_nameToUnicodeUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> name,
  Int32 length,
  Pointer<Utf8> dest,
  Int32 capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UIDNA> idna,
  Pointer<Utf8> name,
  int length,
  Pointer<Utf8> dest,
  int capacity,
  Pointer<UIDNAInfo> pInfo,
  Pointer<Int32> pErrorCode,
)>('uidna_nameToUnicodeUTF8');

Pointer<UIDNA> uidna_openUTS46(
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _uidna_openUTS46(
      options,
      pErrorCode,
    );

late final _uidna_openUTS46 = _icu.lookupFunction<
    Pointer<UIDNA> Function(
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    Pointer<UIDNA> Function(
  int options,
  Pointer<Int32> pErrorCode,
)>('uidna_openUTS46');

int uiter_current32(
  Pointer<UCharIterator> iter,
) =>
    _uiter_current32(
      iter,
    );

late final _uiter_current32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCharIterator> iter,
),
    int Function(
  Pointer<UCharIterator> iter,
)>('uiter_current32');

int uiter_getState(
  Pointer<UCharIterator> iter,
) =>
    _uiter_getState(
      iter,
    );

late final _uiter_getState = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UCharIterator> iter,
),
    int Function(
  Pointer<UCharIterator> iter,
)>('uiter_getState');

int uiter_next32(
  Pointer<UCharIterator> iter,
) =>
    _uiter_next32(
      iter,
    );

late final _uiter_next32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCharIterator> iter,
),
    int Function(
  Pointer<UCharIterator> iter,
)>('uiter_next32');

int uiter_previous32(
  Pointer<UCharIterator> iter,
) =>
    _uiter_previous32(
      iter,
    );

late final _uiter_previous32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UCharIterator> iter,
),
    int Function(
  Pointer<UCharIterator> iter,
)>('uiter_previous32');

void uiter_setState(
  Pointer<UCharIterator> iter,
  int state,
  Pointer<Int32> pErrorCode,
) =>
    _uiter_setState(
      iter,
      state,
      pErrorCode,
    );

late final _uiter_setState = _icu.lookupFunction<
    Void Function(
  Pointer<UCharIterator> iter,
  Uint32 state,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UCharIterator> iter,
  int state,
  Pointer<Int32> pErrorCode,
)>('uiter_setState');

void uiter_setString(
  Pointer<UCharIterator> iter,
  Pointer<Uint16> s,
  int length,
) =>
    _uiter_setString(
      iter,
      s,
      length,
    );

late final _uiter_setString = _icu.lookupFunction<
    Void Function(
  Pointer<UCharIterator> iter,
  Pointer<Uint16> s,
  Int32 length,
),
    void Function(
  Pointer<UCharIterator> iter,
  Pointer<Uint16> s,
  int length,
)>('uiter_setString');

void uiter_setUTF16BE(
  Pointer<UCharIterator> iter,
  Pointer<Utf8> s,
  int length,
) =>
    _uiter_setUTF16BE(
      iter,
      s,
      length,
    );

late final _uiter_setUTF16BE = _icu.lookupFunction<
    Void Function(
  Pointer<UCharIterator> iter,
  Pointer<Utf8> s,
  Int32 length,
),
    void Function(
  Pointer<UCharIterator> iter,
  Pointer<Utf8> s,
  int length,
)>('uiter_setUTF16BE');

void uiter_setUTF8(
  Pointer<UCharIterator> iter,
  Pointer<Utf8> s,
  int length,
) =>
    _uiter_setUTF8(
      iter,
      s,
      length,
    );

late final _uiter_setUTF8 = _icu.lookupFunction<
    Void Function(
  Pointer<UCharIterator> iter,
  Pointer<Utf8> s,
  Int32 length,
),
    void Function(
  Pointer<UCharIterator> iter,
  Pointer<Utf8> s,
  int length,
)>('uiter_setUTF8');

void uldn_close(
  Pointer<ULocaleDisplayNames> ldn,
) =>
    _uldn_close(
      ldn,
    );

late final _uldn_close = _icu.lookupFunction<
    Void Function(
  Pointer<ULocaleDisplayNames> ldn,
),
    void Function(
  Pointer<ULocaleDisplayNames> ldn,
)>('uldn_close');

int uldn_getContext(
  Pointer<ULocaleDisplayNames> ldn,
  int type,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_getContext(
      ldn,
      type,
      pErrorCode,
    );

late final _uldn_getContext = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Int32 type,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  int type,
  Pointer<Int32> pErrorCode,
)>('uldn_getContext');

int uldn_getDialectHandling(
  Pointer<ULocaleDisplayNames> ldn,
) =>
    _uldn_getDialectHandling(
      ldn,
    );

late final _uldn_getDialectHandling = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
)>('uldn_getDialectHandling');

Pointer<Utf8> uldn_getLocale(
  Pointer<ULocaleDisplayNames> ldn,
) =>
    _uldn_getLocale(
      ldn,
    );

late final _uldn_getLocale = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<ULocaleDisplayNames> ldn,
),
    Pointer<Utf8> Function(
  Pointer<ULocaleDisplayNames> ldn,
)>('uldn_getLocale');

int uldn_keyDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> key,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_keyDisplayName(
      ldn,
      key,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_keyDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> key,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> key,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_keyDisplayName');

int uldn_keyValueDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> key,
  Pointer<Utf8> value,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_keyValueDisplayName(
      ldn,
      key,
      value,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_keyValueDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> key,
  Pointer<Utf8> value,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> key,
  Pointer<Utf8> value,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_keyValueDisplayName');

int uldn_languageDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> lang,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_languageDisplayName(
      ldn,
      lang,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_languageDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> lang,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> lang,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_languageDisplayName');

int uldn_localeDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> locale,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_localeDisplayName(
      ldn,
      locale,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_localeDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> locale,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> locale,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_localeDisplayName');

Pointer<ULocaleDisplayNames> uldn_open(
  Pointer<Utf8> locale,
  int dialectHandling,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_open(
      locale,
      dialectHandling,
      pErrorCode,
    );

late final _uldn_open = _icu.lookupFunction<
    Pointer<ULocaleDisplayNames> Function(
  Pointer<Utf8> locale,
  Int32 dialectHandling,
  Pointer<Int32> pErrorCode,
),
    Pointer<ULocaleDisplayNames> Function(
  Pointer<Utf8> locale,
  int dialectHandling,
  Pointer<Int32> pErrorCode,
)>('uldn_open');

Pointer<ULocaleDisplayNames> uldn_openForContext(
  Pointer<Utf8> locale,
  Pointer<Int32> contexts,
  int length,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_openForContext(
      locale,
      contexts,
      length,
      pErrorCode,
    );

late final _uldn_openForContext = _icu.lookupFunction<
    Pointer<ULocaleDisplayNames> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> contexts,
  Int32 length,
  Pointer<Int32> pErrorCode,
),
    Pointer<ULocaleDisplayNames> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> contexts,
  int length,
  Pointer<Int32> pErrorCode,
)>('uldn_openForContext');

int uldn_regionDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> region,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_regionDisplayName(
      ldn,
      region,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_regionDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> region,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> region,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_regionDisplayName');

int uldn_scriptCodeDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  int scriptCode,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_scriptCodeDisplayName(
      ldn,
      scriptCode,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_scriptCodeDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Int32 scriptCode,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  int scriptCode,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_scriptCodeDisplayName');

int uldn_scriptDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> script,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_scriptDisplayName(
      ldn,
      script,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_scriptDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> script,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> script,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_scriptDisplayName');

int uldn_variantDisplayName(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> variant,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
) =>
    _uldn_variantDisplayName(
      ldn,
      variant,
      result,
      maxResultSize,
      pErrorCode,
    );

late final _uldn_variantDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> variant,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<ULocaleDisplayNames> ldn,
  Pointer<Utf8> variant,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> pErrorCode,
)>('uldn_variantDisplayName');

void ulistfmt_close(
  Pointer<UListFormatter> listfmt,
) =>
    _ulistfmt_close(
      listfmt,
    );

late final _ulistfmt_close = _icu.lookupFunction<
    Void Function(
  Pointer<UListFormatter> listfmt,
),
    void Function(
  Pointer<UListFormatter> listfmt,
)>('ulistfmt_close');

void ulistfmt_closeResult(
  Pointer<UFormattedList> uresult,
) =>
    _ulistfmt_closeResult(
      uresult,
    );

late final _ulistfmt_closeResult = _icu.lookupFunction<
    Void Function(
  Pointer<UFormattedList> uresult,
),
    void Function(
  Pointer<UFormattedList> uresult,
)>('ulistfmt_closeResult');

int ulistfmt_format(
  Pointer<UListFormatter> listfmt,
  Pointer<Pointer<Uint16>> strings,
  Pointer<Int32> stringLengths,
  int stringCount,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
) =>
    _ulistfmt_format(
      listfmt,
      strings,
      stringLengths,
      stringCount,
      result,
      resultCapacity,
      status,
    );

late final _ulistfmt_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<UListFormatter> listfmt,
  Pointer<Pointer<Uint16>> strings,
  Pointer<Int32> stringLengths,
  Int32 stringCount,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UListFormatter> listfmt,
  Pointer<Pointer<Uint16>> strings,
  Pointer<Int32> stringLengths,
  int stringCount,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
)>('ulistfmt_format');

void ulistfmt_formatStringsToResult(
  Pointer<UListFormatter> listfmt,
  Pointer<Pointer<Uint16>> strings,
  Pointer<Int32> stringLengths,
  int stringCount,
  Pointer<UFormattedList> uresult,
  Pointer<Int32> status,
) =>
    _ulistfmt_formatStringsToResult(
      listfmt,
      strings,
      stringLengths,
      stringCount,
      uresult,
      status,
    );

late final _ulistfmt_formatStringsToResult = _icu.lookupFunction<
    Void Function(
  Pointer<UListFormatter> listfmt,
  Pointer<Pointer<Uint16>> strings,
  Pointer<Int32> stringLengths,
  Int32 stringCount,
  Pointer<UFormattedList> uresult,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UListFormatter> listfmt,
  Pointer<Pointer<Uint16>> strings,
  Pointer<Int32> stringLengths,
  int stringCount,
  Pointer<UFormattedList> uresult,
  Pointer<Int32> status,
)>('ulistfmt_formatStringsToResult');

Pointer<UListFormatter> ulistfmt_open(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _ulistfmt_open(
      locale,
      status,
    );

late final _ulistfmt_open = _icu.lookupFunction<
    Pointer<UListFormatter> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UListFormatter> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('ulistfmt_open');

Pointer<UListFormatter> ulistfmt_openForType(
  Pointer<Utf8> locale,
  int type,
  int width,
  Pointer<Int32> status,
) =>
    _ulistfmt_openForType(
      locale,
      type,
      width,
      status,
    );

late final _ulistfmt_openForType = _icu.lookupFunction<
    Pointer<UListFormatter> Function(
  Pointer<Utf8> locale,
  Int32 type,
  Int32 width,
  Pointer<Int32> status,
),
    Pointer<UListFormatter> Function(
  Pointer<Utf8> locale,
  int type,
  int width,
  Pointer<Int32> status,
)>('ulistfmt_openForType');

Pointer<UFormattedList> ulistfmt_openResult(
  Pointer<Int32> ec,
) =>
    _ulistfmt_openResult(
      ec,
    );

late final _ulistfmt_openResult = _icu.lookupFunction<
    Pointer<UFormattedList> Function(
  Pointer<Int32> ec,
),
    Pointer<UFormattedList> Function(
  Pointer<Int32> ec,
)>('ulistfmt_openResult');

Pointer<UFormattedValue> ulistfmt_resultAsValue(
  Pointer<UFormattedList> uresult,
  Pointer<Int32> ec,
) =>
    _ulistfmt_resultAsValue(
      uresult,
      ec,
    );

late final _ulistfmt_resultAsValue = _icu.lookupFunction<
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedList> uresult,
  Pointer<Int32> ec,
),
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedList> uresult,
  Pointer<Int32> ec,
)>('ulistfmt_resultAsValue');

int uloc_acceptLanguage(
  Pointer<Utf8> result,
  int resultAvailable,
  Pointer<Int32> outResult,
  Pointer<Pointer<Int8>> acceptList,
  int acceptListCount,
  Pointer<UEnumeration> availableLocales,
  Pointer<Int32> status,
) =>
    _uloc_acceptLanguage(
      result,
      resultAvailable,
      outResult,
      acceptList,
      acceptListCount,
      availableLocales,
      status,
    );

late final _uloc_acceptLanguage = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> result,
  Int32 resultAvailable,
  Pointer<Int32> outResult,
  Pointer<Pointer<Int8>> acceptList,
  Int32 acceptListCount,
  Pointer<UEnumeration> availableLocales,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> result,
  int resultAvailable,
  Pointer<Int32> outResult,
  Pointer<Pointer<Int8>> acceptList,
  int acceptListCount,
  Pointer<UEnumeration> availableLocales,
  Pointer<Int32> status,
)>('uloc_acceptLanguage');

int uloc_acceptLanguageFromHTTP(
  Pointer<Utf8> result,
  int resultAvailable,
  Pointer<Int32> outResult,
  Pointer<Utf8> httpAcceptLanguage,
  Pointer<UEnumeration> availableLocales,
  Pointer<Int32> status,
) =>
    _uloc_acceptLanguageFromHTTP(
      result,
      resultAvailable,
      outResult,
      httpAcceptLanguage,
      availableLocales,
      status,
    );

late final _uloc_acceptLanguageFromHTTP = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> result,
  Int32 resultAvailable,
  Pointer<Int32> outResult,
  Pointer<Utf8> httpAcceptLanguage,
  Pointer<UEnumeration> availableLocales,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> result,
  int resultAvailable,
  Pointer<Int32> outResult,
  Pointer<Utf8> httpAcceptLanguage,
  Pointer<UEnumeration> availableLocales,
  Pointer<Int32> status,
)>('uloc_acceptLanguageFromHTTP');

int uloc_addLikelySubtags(
  Pointer<Utf8> localeID,
  Pointer<Utf8> maximizedLocaleID,
  int maximizedLocaleIDCapacity,
  Pointer<Int32> err,
) =>
    _uloc_addLikelySubtags(
      localeID,
      maximizedLocaleID,
      maximizedLocaleIDCapacity,
      err,
    );

late final _uloc_addLikelySubtags = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> maximizedLocaleID,
  Int32 maximizedLocaleIDCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> maximizedLocaleID,
  int maximizedLocaleIDCapacity,
  Pointer<Int32> err,
)>('uloc_addLikelySubtags');

int uloc_canonicalize(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  int nameCapacity,
  Pointer<Int32> err,
) =>
    _uloc_canonicalize(
      localeID,
      name,
      nameCapacity,
      err,
    );

late final _uloc_canonicalize = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  Int32 nameCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  int nameCapacity,
  Pointer<Int32> err,
)>('uloc_canonicalize');

int uloc_countAvailable() => _uloc_countAvailable();

late final _uloc_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('uloc_countAvailable');

int uloc_forLanguageTag(
  Pointer<Utf8> langtag,
  Pointer<Utf8> localeID,
  int localeIDCapacity,
  Pointer<Int32> parsedLength,
  Pointer<Int32> err,
) =>
    _uloc_forLanguageTag(
      langtag,
      localeID,
      localeIDCapacity,
      parsedLength,
      err,
    );

late final _uloc_forLanguageTag = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> langtag,
  Pointer<Utf8> localeID,
  Int32 localeIDCapacity,
  Pointer<Int32> parsedLength,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> langtag,
  Pointer<Utf8> localeID,
  int localeIDCapacity,
  Pointer<Int32> parsedLength,
  Pointer<Int32> err,
)>('uloc_forLanguageTag');

Pointer<Utf8> uloc_getAvailable(
  int n,
) =>
    _uloc_getAvailable(
      n,
    );

late final _uloc_getAvailable = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 n,
),
    Pointer<Utf8> Function(
  int n,
)>('uloc_getAvailable');

int uloc_getBaseName(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  int nameCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getBaseName(
      localeID,
      name,
      nameCapacity,
      err,
    );

late final _uloc_getBaseName = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  Int32 nameCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  int nameCapacity,
  Pointer<Int32> err,
)>('uloc_getBaseName');

int uloc_getCharacterOrientation(
  Pointer<Utf8> localeId,
  Pointer<Int32> status,
) =>
    _uloc_getCharacterOrientation(
      localeId,
      status,
    );

late final _uloc_getCharacterOrientation = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeId,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> localeId,
  Pointer<Int32> status,
)>('uloc_getCharacterOrientation');

int uloc_getCountry(
  Pointer<Utf8> localeID,
  Pointer<Utf8> country,
  int countryCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getCountry(
      localeID,
      country,
      countryCapacity,
      err,
    );

late final _uloc_getCountry = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> country,
  Int32 countryCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> country,
  int countryCapacity,
  Pointer<Int32> err,
)>('uloc_getCountry');

Pointer<Utf8> uloc_getDefault() => _uloc_getDefault();

late final _uloc_getDefault =
    _icu.lookupFunction<Pointer<Utf8> Function(), Pointer<Utf8> Function()>(
        'uloc_getDefault');

int uloc_getDisplayCountry(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> country,
  int countryCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getDisplayCountry(
      locale,
      displayLocale,
      country,
      countryCapacity,
      status,
    );

late final _uloc_getDisplayCountry = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> country,
  Int32 countryCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> country,
  int countryCapacity,
  Pointer<Int32> status,
)>('uloc_getDisplayCountry');

int uloc_getDisplayKeyword(
  Pointer<Utf8> keyword,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getDisplayKeyword(
      keyword,
      displayLocale,
      dest,
      destCapacity,
      status,
    );

late final _uloc_getDisplayKeyword = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> keyword,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> keyword,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
)>('uloc_getDisplayKeyword');

int uloc_getDisplayKeywordValue(
  Pointer<Utf8> locale,
  Pointer<Utf8> keyword,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getDisplayKeywordValue(
      locale,
      keyword,
      displayLocale,
      dest,
      destCapacity,
      status,
    );

late final _uloc_getDisplayKeywordValue = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> keyword,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> keyword,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
)>('uloc_getDisplayKeywordValue');

int uloc_getDisplayLanguage(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> language,
  int languageCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getDisplayLanguage(
      locale,
      displayLocale,
      language,
      languageCapacity,
      status,
    );

late final _uloc_getDisplayLanguage = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> language,
  Int32 languageCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> language,
  int languageCapacity,
  Pointer<Int32> status,
)>('uloc_getDisplayLanguage');

int uloc_getDisplayName(
  Pointer<Utf8> localeID,
  Pointer<Utf8> inLocaleID,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> err,
) =>
    _uloc_getDisplayName(
      localeID,
      inLocaleID,
      result,
      maxResultSize,
      err,
    );

late final _uloc_getDisplayName = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> inLocaleID,
  Pointer<Uint16> result,
  Int32 maxResultSize,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> inLocaleID,
  Pointer<Uint16> result,
  int maxResultSize,
  Pointer<Int32> err,
)>('uloc_getDisplayName');

int uloc_getDisplayScript(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> script,
  int scriptCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getDisplayScript(
      locale,
      displayLocale,
      script,
      scriptCapacity,
      status,
    );

late final _uloc_getDisplayScript = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> script,
  Int32 scriptCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> script,
  int scriptCapacity,
  Pointer<Int32> status,
)>('uloc_getDisplayScript');

int uloc_getDisplayVariant(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> variant,
  int variantCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getDisplayVariant(
      locale,
      displayLocale,
      variant,
      variantCapacity,
      status,
    );

late final _uloc_getDisplayVariant = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> variant,
  Int32 variantCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> locale,
  Pointer<Utf8> displayLocale,
  Pointer<Uint16> variant,
  int variantCapacity,
  Pointer<Int32> status,
)>('uloc_getDisplayVariant');

Pointer<Utf8> uloc_getISO3Country(
  Pointer<Utf8> localeID,
) =>
    _uloc_getISO3Country(
      localeID,
    );

late final _uloc_getISO3Country = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> localeID,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> localeID,
)>('uloc_getISO3Country');

Pointer<Utf8> uloc_getISO3Language(
  Pointer<Utf8> localeID,
) =>
    _uloc_getISO3Language(
      localeID,
    );

late final _uloc_getISO3Language = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> localeID,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> localeID,
)>('uloc_getISO3Language');

Pointer<Pointer<Int8>> uloc_getISOCountries() => _uloc_getISOCountries();

late final _uloc_getISOCountries = _icu.lookupFunction<
    Pointer<Pointer<Int8>> Function(),
    Pointer<Pointer<Int8>> Function()>('uloc_getISOCountries');

Pointer<Pointer<Int8>> uloc_getISOLanguages() => _uloc_getISOLanguages();

late final _uloc_getISOLanguages = _icu.lookupFunction<
    Pointer<Pointer<Int8>> Function(),
    Pointer<Pointer<Int8>> Function()>('uloc_getISOLanguages');

int uloc_getKeywordValue(
  Pointer<Utf8> localeID,
  Pointer<Utf8> keywordName,
  Pointer<Utf8> buffer,
  int bufferCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getKeywordValue(
      localeID,
      keywordName,
      buffer,
      bufferCapacity,
      status,
    );

late final _uloc_getKeywordValue = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> keywordName,
  Pointer<Utf8> buffer,
  Int32 bufferCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> keywordName,
  Pointer<Utf8> buffer,
  int bufferCapacity,
  Pointer<Int32> status,
)>('uloc_getKeywordValue');

int uloc_getLCID(
  Pointer<Utf8> localeID,
) =>
    _uloc_getLCID(
      localeID,
    );

late final _uloc_getLCID = _icu.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> localeID,
),
    int Function(
  Pointer<Utf8> localeID,
)>('uloc_getLCID');

int uloc_getLanguage(
  Pointer<Utf8> localeID,
  Pointer<Utf8> language,
  int languageCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getLanguage(
      localeID,
      language,
      languageCapacity,
      err,
    );

late final _uloc_getLanguage = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> language,
  Int32 languageCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> language,
  int languageCapacity,
  Pointer<Int32> err,
)>('uloc_getLanguage');

int uloc_getLineOrientation(
  Pointer<Utf8> localeId,
  Pointer<Int32> status,
) =>
    _uloc_getLineOrientation(
      localeId,
      status,
    );

late final _uloc_getLineOrientation = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeId,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> localeId,
  Pointer<Int32> status,
)>('uloc_getLineOrientation');

int uloc_getLocaleForLCID(
  int hostID,
  Pointer<Utf8> locale,
  int localeCapacity,
  Pointer<Int32> status,
) =>
    _uloc_getLocaleForLCID(
      hostID,
      locale,
      localeCapacity,
      status,
    );

late final _uloc_getLocaleForLCID = _icu.lookupFunction<
    Int32 Function(
  Uint32 hostID,
  Pointer<Utf8> locale,
  Int32 localeCapacity,
  Pointer<Int32> status,
),
    int Function(
  int hostID,
  Pointer<Utf8> locale,
  int localeCapacity,
  Pointer<Int32> status,
)>('uloc_getLocaleForLCID');

int uloc_getName(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  int nameCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getName(
      localeID,
      name,
      nameCapacity,
      err,
    );

late final _uloc_getName = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  Int32 nameCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> name,
  int nameCapacity,
  Pointer<Int32> err,
)>('uloc_getName');

int uloc_getParent(
  Pointer<Utf8> localeID,
  Pointer<Utf8> parent,
  int parentCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getParent(
      localeID,
      parent,
      parentCapacity,
      err,
    );

late final _uloc_getParent = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> parent,
  Int32 parentCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> parent,
  int parentCapacity,
  Pointer<Int32> err,
)>('uloc_getParent');

int uloc_getScript(
  Pointer<Utf8> localeID,
  Pointer<Utf8> script,
  int scriptCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getScript(
      localeID,
      script,
      scriptCapacity,
      err,
    );

late final _uloc_getScript = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> script,
  Int32 scriptCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> script,
  int scriptCapacity,
  Pointer<Int32> err,
)>('uloc_getScript');

int uloc_getVariant(
  Pointer<Utf8> localeID,
  Pointer<Utf8> variant,
  int variantCapacity,
  Pointer<Int32> err,
) =>
    _uloc_getVariant(
      localeID,
      variant,
      variantCapacity,
      err,
    );

late final _uloc_getVariant = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> variant,
  Int32 variantCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> variant,
  int variantCapacity,
  Pointer<Int32> err,
)>('uloc_getVariant');

int uloc_isRightToLeft(
  Pointer<Utf8> locale,
) =>
    _uloc_isRightToLeft(
      locale,
    );

late final _uloc_isRightToLeft = _icu.lookupFunction<
    Int8 Function(
  Pointer<Utf8> locale,
),
    int Function(
  Pointer<Utf8> locale,
)>('uloc_isRightToLeft');

int uloc_minimizeSubtags(
  Pointer<Utf8> localeID,
  Pointer<Utf8> minimizedLocaleID,
  int minimizedLocaleIDCapacity,
  Pointer<Int32> err,
) =>
    _uloc_minimizeSubtags(
      localeID,
      minimizedLocaleID,
      minimizedLocaleIDCapacity,
      err,
    );

late final _uloc_minimizeSubtags = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> minimizedLocaleID,
  Int32 minimizedLocaleIDCapacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> minimizedLocaleID,
  int minimizedLocaleIDCapacity,
  Pointer<Int32> err,
)>('uloc_minimizeSubtags');

Pointer<UEnumeration> uloc_openAvailableByType(
  int type,
  Pointer<Int32> status,
) =>
    _uloc_openAvailableByType(
      type,
      status,
    );

late final _uloc_openAvailableByType = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  int type,
  Pointer<Int32> status,
)>('uloc_openAvailableByType');

Pointer<UEnumeration> uloc_openKeywords(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
) =>
    _uloc_openKeywords(
      localeID,
      status,
    );

late final _uloc_openKeywords = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
)>('uloc_openKeywords');

void uloc_setDefault(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
) =>
    _uloc_setDefault(
      localeID,
      status,
    );

late final _uloc_setDefault = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
)>('uloc_setDefault');

int uloc_setKeywordValue(
  Pointer<Utf8> keywordName,
  Pointer<Utf8> keywordValue,
  Pointer<Utf8> buffer,
  int bufferCapacity,
  Pointer<Int32> status,
) =>
    _uloc_setKeywordValue(
      keywordName,
      keywordValue,
      buffer,
      bufferCapacity,
      status,
    );

late final _uloc_setKeywordValue = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> keywordName,
  Pointer<Utf8> keywordValue,
  Pointer<Utf8> buffer,
  Int32 bufferCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> keywordName,
  Pointer<Utf8> keywordValue,
  Pointer<Utf8> buffer,
  int bufferCapacity,
  Pointer<Int32> status,
)>('uloc_setKeywordValue');

int uloc_toLanguageTag(
  Pointer<Utf8> localeID,
  Pointer<Utf8> langtag,
  int langtagCapacity,
  int strict,
  Pointer<Int32> err,
) =>
    _uloc_toLanguageTag(
      localeID,
      langtag,
      langtagCapacity,
      strict,
      err,
    );

late final _uloc_toLanguageTag = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> langtag,
  Int32 langtagCapacity,
  Int8 strict,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Utf8> langtag,
  int langtagCapacity,
  int strict,
  Pointer<Int32> err,
)>('uloc_toLanguageTag');

Pointer<Utf8> uloc_toLegacyKey(
  Pointer<Utf8> keyword,
) =>
    _uloc_toLegacyKey(
      keyword,
    );

late final _uloc_toLegacyKey = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
)>('uloc_toLegacyKey');

Pointer<Utf8> uloc_toLegacyType(
  Pointer<Utf8> keyword,
  Pointer<Utf8> value,
) =>
    _uloc_toLegacyType(
      keyword,
      value,
    );

late final _uloc_toLegacyType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
  Pointer<Utf8> value,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
  Pointer<Utf8> value,
)>('uloc_toLegacyType');

Pointer<Utf8> uloc_toUnicodeLocaleKey(
  Pointer<Utf8> keyword,
) =>
    _uloc_toUnicodeLocaleKey(
      keyword,
    );

late final _uloc_toUnicodeLocaleKey = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
)>('uloc_toUnicodeLocaleKey');

Pointer<Utf8> uloc_toUnicodeLocaleType(
  Pointer<Utf8> keyword,
  Pointer<Utf8> value,
) =>
    _uloc_toUnicodeLocaleType(
      keyword,
      value,
    );

late final _uloc_toUnicodeLocaleType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
  Pointer<Utf8> value,
),
    Pointer<Utf8> Function(
  Pointer<Utf8> keyword,
  Pointer<Utf8> value,
)>('uloc_toUnicodeLocaleType');

void ulocdata_close(
  Pointer<ULocaleData> uld,
) =>
    _ulocdata_close(
      uld,
    );

late final _ulocdata_close = _icu.lookupFunction<
    Void Function(
  Pointer<ULocaleData> uld,
),
    void Function(
  Pointer<ULocaleData> uld,
)>('ulocdata_close');

void ulocdata_getCLDRVersion(
  Pointer<Uint8> versionArray,
  Pointer<Int32> status,
) =>
    _ulocdata_getCLDRVersion(
      versionArray,
      status,
    );

late final _ulocdata_getCLDRVersion = _icu.lookupFunction<
    Void Function(
  Pointer<Uint8> versionArray,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Uint8> versionArray,
  Pointer<Int32> status,
)>('ulocdata_getCLDRVersion');

int ulocdata_getDelimiter(
  Pointer<ULocaleData> uld,
  int type,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _ulocdata_getDelimiter(
      uld,
      type,
      result,
      resultLength,
      status,
    );

late final _ulocdata_getDelimiter = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleData> uld,
  Int32 type,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<ULocaleData> uld,
  int type,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('ulocdata_getDelimiter');

Pointer<USet> ulocdata_getExemplarSet(
  Pointer<ULocaleData> uld,
  Pointer<USet> fillIn,
  int options,
  int extype,
  Pointer<Int32> status,
) =>
    _ulocdata_getExemplarSet(
      uld,
      fillIn,
      options,
      extype,
      status,
    );

late final _ulocdata_getExemplarSet = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<ULocaleData> uld,
  Pointer<USet> fillIn,
  Uint32 options,
  Int32 extype,
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<ULocaleData> uld,
  Pointer<USet> fillIn,
  int options,
  int extype,
  Pointer<Int32> status,
)>('ulocdata_getExemplarSet');

int ulocdata_getLocaleDisplayPattern(
  Pointer<ULocaleData> uld,
  Pointer<Uint16> pattern,
  int patternCapacity,
  Pointer<Int32> status,
) =>
    _ulocdata_getLocaleDisplayPattern(
      uld,
      pattern,
      patternCapacity,
      status,
    );

late final _ulocdata_getLocaleDisplayPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleData> uld,
  Pointer<Uint16> pattern,
  Int32 patternCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<ULocaleData> uld,
  Pointer<Uint16> pattern,
  int patternCapacity,
  Pointer<Int32> status,
)>('ulocdata_getLocaleDisplayPattern');

int ulocdata_getLocaleSeparator(
  Pointer<ULocaleData> uld,
  Pointer<Uint16> separator,
  int separatorCapacity,
  Pointer<Int32> status,
) =>
    _ulocdata_getLocaleSeparator(
      uld,
      separator,
      separatorCapacity,
      status,
    );

late final _ulocdata_getLocaleSeparator = _icu.lookupFunction<
    Int32 Function(
  Pointer<ULocaleData> uld,
  Pointer<Uint16> separator,
  Int32 separatorCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<ULocaleData> uld,
  Pointer<Uint16> separator,
  int separatorCapacity,
  Pointer<Int32> status,
)>('ulocdata_getLocaleSeparator');

int ulocdata_getMeasurementSystem(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
) =>
    _ulocdata_getMeasurementSystem(
      localeID,
      status,
    );

late final _ulocdata_getMeasurementSystem = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
)>('ulocdata_getMeasurementSystem');

int ulocdata_getNoSubstitute(
  Pointer<ULocaleData> uld,
) =>
    _ulocdata_getNoSubstitute(
      uld,
    );

late final _ulocdata_getNoSubstitute = _icu.lookupFunction<
    Int8 Function(
  Pointer<ULocaleData> uld,
),
    int Function(
  Pointer<ULocaleData> uld,
)>('ulocdata_getNoSubstitute');

void ulocdata_getPaperSize(
  Pointer<Utf8> localeID,
  Pointer<Int32> height,
  Pointer<Int32> width,
  Pointer<Int32> status,
) =>
    _ulocdata_getPaperSize(
      localeID,
      height,
      width,
      status,
    );

late final _ulocdata_getPaperSize = _icu.lookupFunction<
    Void Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> height,
  Pointer<Int32> width,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> height,
  Pointer<Int32> width,
  Pointer<Int32> status,
)>('ulocdata_getPaperSize');

Pointer<ULocaleData> ulocdata_open(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
) =>
    _ulocdata_open(
      localeID,
      status,
    );

late final _ulocdata_open = _icu.lookupFunction<
    Pointer<ULocaleData> Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
),
    Pointer<ULocaleData> Function(
  Pointer<Utf8> localeID,
  Pointer<Int32> status,
)>('ulocdata_open');

void ulocdata_setNoSubstitute(
  Pointer<ULocaleData> uld,
  int setting,
) =>
    _ulocdata_setNoSubstitute(
      uld,
      setting,
    );

late final _ulocdata_setNoSubstitute = _icu.lookupFunction<
    Void Function(
  Pointer<ULocaleData> uld,
  Int8 setting,
),
    void Function(
  Pointer<ULocaleData> uld,
  int setting,
)>('ulocdata_setNoSubstitute');

void umsg_applyPattern(
  Pointer<Pointer> fmt,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _umsg_applyPattern(
      fmt,
      pattern,
      patternLength,
      parseError,
      status,
    );

late final _umsg_applyPattern = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('umsg_applyPattern');

int umsg_autoQuoteApostrophe(
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> ec,
) =>
    _umsg_autoQuoteApostrophe(
      pattern,
      patternLength,
      dest,
      destCapacity,
      ec,
    );

late final _umsg_autoQuoteApostrophe = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> ec,
)>('umsg_autoQuoteApostrophe');

Pointer umsg_clone(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _umsg_clone(
      fmt,
      status,
    );

late final _umsg_clone = _icu.lookupFunction<
    Pointer Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    Pointer Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('umsg_clone');

void umsg_close(
  Pointer<Pointer> format,
) =>
    _umsg_close(
      format,
    );

late final _umsg_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> format,
),
    void Function(
  Pointer<Pointer> format,
)>('umsg_close');

int umsg_format(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _umsg_format(
      fmt,
      result,
      resultLength,
      status,
    );

late final _umsg_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('umsg_format');

Pointer<Utf8> umsg_getLocale(
  Pointer<Pointer> fmt,
) =>
    _umsg_getLocale(
      fmt,
    );

late final _umsg_getLocale = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
),
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
)>('umsg_getLocale');

Pointer<Pointer> umsg_open(
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Utf8> locale,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _umsg_open(
      pattern,
      patternLength,
      locale,
      parseError,
      status,
    );

late final _umsg_open = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Utf8> locale,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Utf8> locale,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('umsg_open');

void umsg_parse(
  Pointer<Pointer> fmt,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int32> count,
  Pointer<Int32> status,
) =>
    _umsg_parse(
      fmt,
      source,
      sourceLength,
      count,
      status,
    );

late final _umsg_parse = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Int32> count,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int32> count,
  Pointer<Int32> status,
)>('umsg_parse');

void umsg_setLocale(
  Pointer<Pointer> fmt,
  Pointer<Utf8> locale,
) =>
    _umsg_setLocale(
      fmt,
      locale,
    );

late final _umsg_setLocale = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Utf8> locale,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Utf8> locale,
)>('umsg_setLocale');

int umsg_toPattern(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _umsg_toPattern(
      fmt,
      result,
      resultLength,
      status,
    );

late final _umsg_toPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('umsg_toPattern');

int umsg_vformat(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
) =>
    _umsg_vformat(
      fmt,
      result,
      resultLength,
      ap,
      status,
    );

late final _umsg_vformat = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int8> ap,
  Pointer<Int32> status,
)>('umsg_vformat');

void umsg_vparse(
  Pointer<Pointer> fmt,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int32> count,
  Pointer<Int8> ap,
  Pointer<Int32> status,
) =>
    _umsg_vparse(
      fmt,
      source,
      sourceLength,
      count,
      ap,
      status,
    );

late final _umsg_vparse = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> source,
  Int32 sourceLength,
  Pointer<Int32> count,
  Pointer<Int8> ap,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> source,
  int sourceLength,
  Pointer<Int32> count,
  Pointer<Int8> ap,
  Pointer<Int32> status,
)>('umsg_vparse');

Pointer<UCPTrie> umutablecptrie_buildImmutable(
  Pointer<UMutableCPTrie> trie,
  int type,
  int valueWidth,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_buildImmutable(
      trie,
      type,
      valueWidth,
      pErrorCode,
    );

late final _umutablecptrie_buildImmutable = _icu.lookupFunction<
    Pointer<UCPTrie> Function(
  Pointer<UMutableCPTrie> trie,
  Int32 type,
  Int32 valueWidth,
  Pointer<Int32> pErrorCode,
),
    Pointer<UCPTrie> Function(
  Pointer<UMutableCPTrie> trie,
  int type,
  int valueWidth,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_buildImmutable');

Pointer<UMutableCPTrie> umutablecptrie_clone(
  Pointer<UMutableCPTrie> other,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_clone(
      other,
      pErrorCode,
    );

late final _umutablecptrie_clone = _icu.lookupFunction<
    Pointer<UMutableCPTrie> Function(
  Pointer<UMutableCPTrie> other,
  Pointer<Int32> pErrorCode,
),
    Pointer<UMutableCPTrie> Function(
  Pointer<UMutableCPTrie> other,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_clone');

void umutablecptrie_close(
  Pointer<UMutableCPTrie> trie,
) =>
    _umutablecptrie_close(
      trie,
    );

late final _umutablecptrie_close = _icu.lookupFunction<
    Void Function(
  Pointer<UMutableCPTrie> trie,
),
    void Function(
  Pointer<UMutableCPTrie> trie,
)>('umutablecptrie_close');

Pointer<UMutableCPTrie> umutablecptrie_fromUCPMap(
  Pointer<UCPMap> map,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_fromUCPMap(
      map,
      pErrorCode,
    );

late final _umutablecptrie_fromUCPMap = _icu.lookupFunction<
    Pointer<UMutableCPTrie> Function(
  Pointer<UCPMap> map,
  Pointer<Int32> pErrorCode,
),
    Pointer<UMutableCPTrie> Function(
  Pointer<UCPMap> map,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_fromUCPMap');

Pointer<UMutableCPTrie> umutablecptrie_fromUCPTrie(
  Pointer<UCPTrie> trie,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_fromUCPTrie(
      trie,
      pErrorCode,
    );

late final _umutablecptrie_fromUCPTrie = _icu.lookupFunction<
    Pointer<UMutableCPTrie> Function(
  Pointer<UCPTrie> trie,
  Pointer<Int32> pErrorCode,
),
    Pointer<UMutableCPTrie> Function(
  Pointer<UCPTrie> trie,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_fromUCPTrie');

int umutablecptrie_get(
  Pointer<UMutableCPTrie> trie,
  int c,
) =>
    _umutablecptrie_get(
      trie,
      c,
    );

late final _umutablecptrie_get = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UMutableCPTrie> trie,
  Int32 c,
),
    int Function(
  Pointer<UMutableCPTrie> trie,
  int c,
)>('umutablecptrie_get');

int umutablecptrie_getRange(
  Pointer<UMutableCPTrie> trie,
  int start,
  int option,
  int surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
) =>
    _umutablecptrie_getRange(
      trie,
      start,
      option,
      surrogateValue,
      filter,
      context,
      pValue,
    );

late final _umutablecptrie_getRange = _icu.lookupFunction<
    Int32 Function(
  Pointer<UMutableCPTrie> trie,
  Int32 start,
  Int32 option,
  Uint32 surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
),
    int Function(
  Pointer<UMutableCPTrie> trie,
  int start,
  int option,
  int surrogateValue,
  Pointer<Pointer<NativeFunction<UCPMapValueFilter>>> filter,
  Pointer context,
  Pointer<Uint32> pValue,
)>('umutablecptrie_getRange');

Pointer<UMutableCPTrie> umutablecptrie_open(
  int initialValue,
  int errorValue,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_open(
      initialValue,
      errorValue,
      pErrorCode,
    );

late final _umutablecptrie_open = _icu.lookupFunction<
    Pointer<UMutableCPTrie> Function(
  Uint32 initialValue,
  Uint32 errorValue,
  Pointer<Int32> pErrorCode,
),
    Pointer<UMutableCPTrie> Function(
  int initialValue,
  int errorValue,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_open');

void umutablecptrie_set(
  Pointer<UMutableCPTrie> trie,
  int c,
  int value,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_set(
      trie,
      c,
      value,
      pErrorCode,
    );

late final _umutablecptrie_set = _icu.lookupFunction<
    Void Function(
  Pointer<UMutableCPTrie> trie,
  Int32 c,
  Uint32 value,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UMutableCPTrie> trie,
  int c,
  int value,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_set');

void umutablecptrie_setRange(
  Pointer<UMutableCPTrie> trie,
  int start,
  int end,
  int value,
  Pointer<Int32> pErrorCode,
) =>
    _umutablecptrie_setRange(
      trie,
      start,
      end,
      value,
      pErrorCode,
    );

late final _umutablecptrie_setRange = _icu.lookupFunction<
    Void Function(
  Pointer<UMutableCPTrie> trie,
  Int32 start,
  Int32 end,
  Uint32 value,
  Pointer<Int32> pErrorCode,
),
    void Function(
  Pointer<UMutableCPTrie> trie,
  int start,
  int end,
  int value,
  Pointer<Int32> pErrorCode,
)>('umutablecptrie_setRange');

int unorm2_append(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> first,
  int firstLength,
  int firstCapacity,
  Pointer<Uint16> second,
  int secondLength,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_append(
      norm2,
      first,
      firstLength,
      firstCapacity,
      second,
      secondLength,
      pErrorCode,
    );

late final _unorm2_append = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> first,
  Int32 firstLength,
  Int32 firstCapacity,
  Pointer<Uint16> second,
  Int32 secondLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> first,
  int firstLength,
  int firstCapacity,
  Pointer<Uint16> second,
  int secondLength,
  Pointer<Int32> pErrorCode,
)>('unorm2_append');

void unorm2_close(
  Pointer<UNormalizer2> norm2,
) =>
    _unorm2_close(
      norm2,
    );

late final _unorm2_close = _icu.lookupFunction<
    Void Function(
  Pointer<UNormalizer2> norm2,
),
    void Function(
  Pointer<UNormalizer2> norm2,
)>('unorm2_close');

int unorm2_composePair(
  Pointer<UNormalizer2> norm2,
  int a,
  int b,
) =>
    _unorm2_composePair(
      norm2,
      a,
      b,
    );

late final _unorm2_composePair = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Int32 a,
  Int32 b,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int a,
  int b,
)>('unorm2_composePair');

int unorm2_getCombiningClass(
  Pointer<UNormalizer2> norm2,
  int c,
) =>
    _unorm2_getCombiningClass(
      norm2,
      c,
    );

late final _unorm2_getCombiningClass = _icu.lookupFunction<
    Uint8 Function(
  Pointer<UNormalizer2> norm2,
  Int32 c,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int c,
)>('unorm2_getCombiningClass');

int unorm2_getDecomposition(
  Pointer<UNormalizer2> norm2,
  int c,
  Pointer<Uint16> decomposition,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getDecomposition(
      norm2,
      c,
      decomposition,
      capacity,
      pErrorCode,
    );

late final _unorm2_getDecomposition = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Int32 c,
  Pointer<Uint16> decomposition,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int c,
  Pointer<Uint16> decomposition,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('unorm2_getDecomposition');

Pointer<UNormalizer2> unorm2_getInstance(
  Pointer<Utf8> packageName,
  Pointer<Utf8> name,
  int mode,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getInstance(
      packageName,
      name,
      mode,
      pErrorCode,
    );

late final _unorm2_getInstance = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> name,
  Int32 mode,
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> name,
  int mode,
  Pointer<Int32> pErrorCode,
)>('unorm2_getInstance');

Pointer<UNormalizer2> unorm2_getNFCInstance(
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getNFCInstance(
      pErrorCode,
    );

late final _unorm2_getNFCInstance = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
)>('unorm2_getNFCInstance');

Pointer<UNormalizer2> unorm2_getNFDInstance(
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getNFDInstance(
      pErrorCode,
    );

late final _unorm2_getNFDInstance = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
)>('unorm2_getNFDInstance');

Pointer<UNormalizer2> unorm2_getNFKCCasefoldInstance(
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getNFKCCasefoldInstance(
      pErrorCode,
    );

late final _unorm2_getNFKCCasefoldInstance = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
)>('unorm2_getNFKCCasefoldInstance');

Pointer<UNormalizer2> unorm2_getNFKCInstance(
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getNFKCInstance(
      pErrorCode,
    );

late final _unorm2_getNFKCInstance = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
)>('unorm2_getNFKCInstance');

Pointer<UNormalizer2> unorm2_getNFKDInstance(
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getNFKDInstance(
      pErrorCode,
    );

late final _unorm2_getNFKDInstance = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<Int32> pErrorCode,
)>('unorm2_getNFKDInstance');

int unorm2_getRawDecomposition(
  Pointer<UNormalizer2> norm2,
  int c,
  Pointer<Uint16> decomposition,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_getRawDecomposition(
      norm2,
      c,
      decomposition,
      capacity,
      pErrorCode,
    );

late final _unorm2_getRawDecomposition = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Int32 c,
  Pointer<Uint16> decomposition,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int c,
  Pointer<Uint16> decomposition,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('unorm2_getRawDecomposition');

int unorm2_hasBoundaryAfter(
  Pointer<UNormalizer2> norm2,
  int c,
) =>
    _unorm2_hasBoundaryAfter(
      norm2,
      c,
    );

late final _unorm2_hasBoundaryAfter = _icu.lookupFunction<
    Int8 Function(
  Pointer<UNormalizer2> norm2,
  Int32 c,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int c,
)>('unorm2_hasBoundaryAfter');

int unorm2_hasBoundaryBefore(
  Pointer<UNormalizer2> norm2,
  int c,
) =>
    _unorm2_hasBoundaryBefore(
      norm2,
      c,
    );

late final _unorm2_hasBoundaryBefore = _icu.lookupFunction<
    Int8 Function(
  Pointer<UNormalizer2> norm2,
  Int32 c,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int c,
)>('unorm2_hasBoundaryBefore');

int unorm2_isInert(
  Pointer<UNormalizer2> norm2,
  int c,
) =>
    _unorm2_isInert(
      norm2,
      c,
    );

late final _unorm2_isInert = _icu.lookupFunction<
    Int8 Function(
  Pointer<UNormalizer2> norm2,
  Int32 c,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  int c,
)>('unorm2_isInert');

int unorm2_isNormalized(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_isNormalized(
      norm2,
      s,
      length,
      pErrorCode,
    );

late final _unorm2_isNormalized = _icu.lookupFunction<
    Int8 Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> pErrorCode,
)>('unorm2_isNormalized');

int unorm2_normalize(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> src,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_normalize(
      norm2,
      src,
      length,
      dest,
      capacity,
      pErrorCode,
    );

late final _unorm2_normalize = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> src,
  Int32 length,
  Pointer<Uint16> dest,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> src,
  int length,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('unorm2_normalize');

int unorm2_normalizeSecondAndAppend(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> first,
  int firstLength,
  int firstCapacity,
  Pointer<Uint16> second,
  int secondLength,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_normalizeSecondAndAppend(
      norm2,
      first,
      firstLength,
      firstCapacity,
      second,
      secondLength,
      pErrorCode,
    );

late final _unorm2_normalizeSecondAndAppend = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> first,
  Int32 firstLength,
  Int32 firstCapacity,
  Pointer<Uint16> second,
  Int32 secondLength,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> first,
  int firstLength,
  int firstCapacity,
  Pointer<Uint16> second,
  int secondLength,
  Pointer<Int32> pErrorCode,
)>('unorm2_normalizeSecondAndAppend');

Pointer<UNormalizer2> unorm2_openFiltered(
  Pointer<UNormalizer2> norm2,
  Pointer<USet> filterSet,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_openFiltered(
      norm2,
      filterSet,
      pErrorCode,
    );

late final _unorm2_openFiltered = _icu.lookupFunction<
    Pointer<UNormalizer2> Function(
  Pointer<UNormalizer2> norm2,
  Pointer<USet> filterSet,
  Pointer<Int32> pErrorCode,
),
    Pointer<UNormalizer2> Function(
  Pointer<UNormalizer2> norm2,
  Pointer<USet> filterSet,
  Pointer<Int32> pErrorCode,
)>('unorm2_openFiltered');

int unorm2_quickCheck(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_quickCheck(
      norm2,
      s,
      length,
      pErrorCode,
    );

late final _unorm2_quickCheck = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> pErrorCode,
)>('unorm2_quickCheck');

int unorm2_spanQuickCheckYes(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> pErrorCode,
) =>
    _unorm2_spanQuickCheckYes(
      norm2,
      s,
      length,
      pErrorCode,
    );

late final _unorm2_spanQuickCheckYes = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  Int32 length,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<UNormalizer2> norm2,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> pErrorCode,
)>('unorm2_spanQuickCheckYes');

int unorm_compare(
  Pointer<Uint16> s1,
  int length1,
  Pointer<Uint16> s2,
  int length2,
  int options,
  Pointer<Int32> pErrorCode,
) =>
    _unorm_compare(
      s1,
      length1,
      s2,
      length2,
      options,
      pErrorCode,
    );

late final _unorm_compare = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint16> s1,
  Int32 length1,
  Pointer<Uint16> s2,
  Int32 length2,
  Uint32 options,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<Uint16> s1,
  int length1,
  Pointer<Uint16> s2,
  int length2,
  int options,
  Pointer<Int32> pErrorCode,
)>('unorm_compare');

void unum_applyPattern(
  Pointer<Pointer> format,
  int localized,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _unum_applyPattern(
      format,
      localized,
      pattern,
      patternLength,
      parseError,
      status,
    );

late final _unum_applyPattern = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> format,
  Int8 localized,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> format,
  int localized,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('unum_applyPattern');

Pointer<Pointer> unum_clone(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
) =>
    _unum_clone(
      fmt,
      status,
    );

late final _unum_clone = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Pointer<Int32> status,
)>('unum_clone');

void unum_close(
  Pointer<Pointer> fmt,
) =>
    _unum_close(
      fmt,
    );

late final _unum_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
),
    void Function(
  Pointer<Pointer> fmt,
)>('unum_close');

int unum_countAvailable() => _unum_countAvailable();

late final _unum_countAvailable = _icu
    .lookupFunction<Int32 Function(), int Function()>('unum_countAvailable');

int unum_format(
  Pointer<Pointer> fmt,
  int number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
) =>
    _unum_format(
      fmt,
      number,
      result,
      resultLength,
      pos,
      status,
    );

late final _unum_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 number,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
)>('unum_format');

int unum_formatDecimal(
  Pointer<Pointer> fmt,
  Pointer<Utf8> number,
  int length,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
) =>
    _unum_formatDecimal(
      fmt,
      number,
      length,
      result,
      resultLength,
      pos,
      status,
    );

late final _unum_formatDecimal = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Utf8> number,
  Int32 length,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Utf8> number,
  int length,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
)>('unum_formatDecimal');

int unum_formatDouble(
  Pointer<Pointer> fmt,
  double number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
) =>
    _unum_formatDouble(
      fmt,
      number,
      result,
      resultLength,
      pos,
      status,
    );

late final _unum_formatDouble = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Double number,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  double number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
)>('unum_formatDouble');

int unum_formatDoubleCurrency(
  Pointer<Pointer> fmt,
  double number,
  Pointer<Uint16> currency,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
) =>
    _unum_formatDoubleCurrency(
      fmt,
      number,
      currency,
      result,
      resultLength,
      pos,
      status,
    );

late final _unum_formatDoubleCurrency = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Double number,
  Pointer<Uint16> currency,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  double number,
  Pointer<Uint16> currency,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
)>('unum_formatDoubleCurrency');

int unum_formatDoubleForFields(
  Pointer<Pointer> format,
  double number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
) =>
    _unum_formatDoubleForFields(
      format,
      number,
      result,
      resultLength,
      fpositer,
      status,
    );

late final _unum_formatDoubleForFields = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> format,
  Double number,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> format,
  double number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPositionIterator> fpositer,
  Pointer<Int32> status,
)>('unum_formatDoubleForFields');

int unum_formatInt64(
  Pointer<Pointer> fmt,
  int number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
) =>
    _unum_formatInt64(
      fmt,
      number,
      result,
      resultLength,
      pos,
      status,
    );

late final _unum_formatInt64 = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int64 number,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
)>('unum_formatInt64');

int unum_formatUFormattable(
  Pointer<Pointer> fmt,
  Pointer<Pointer> number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
) =>
    _unum_formatUFormattable(
      fmt,
      number,
      result,
      resultLength,
      pos,
      status,
    );

late final _unum_formatUFormattable = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> number,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> number,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<UFieldPosition> pos,
  Pointer<Int32> status,
)>('unum_formatUFormattable');

int unum_getAttribute(
  Pointer<Pointer> fmt,
  int attr,
) =>
    _unum_getAttribute(
      fmt,
      attr,
    );

late final _unum_getAttribute = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 attr,
),
    int Function(
  Pointer<Pointer> fmt,
  int attr,
)>('unum_getAttribute');

Pointer<Utf8> unum_getAvailable(
  int localeIndex,
) =>
    _unum_getAvailable(
      localeIndex,
    );

late final _unum_getAvailable = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 localeIndex,
),
    Pointer<Utf8> Function(
  int localeIndex,
)>('unum_getAvailable');

int unum_getContext(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
) =>
    _unum_getContext(
      fmt,
      type,
      status,
    );

late final _unum_getContext = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 type,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
)>('unum_getContext');

double unum_getDoubleAttribute(
  Pointer<Pointer> fmt,
  int attr,
) =>
    _unum_getDoubleAttribute(
      fmt,
      attr,
    );

late final _unum_getDoubleAttribute = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> fmt,
  Int32 attr,
),
    double Function(
  Pointer<Pointer> fmt,
  int attr,
)>('unum_getDoubleAttribute');

Pointer<Utf8> unum_getLocaleByType(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
) =>
    _unum_getLocaleByType(
      fmt,
      type,
      status,
    );

late final _unum_getLocaleByType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<Pointer> fmt,
  int type,
  Pointer<Int32> status,
)>('unum_getLocaleByType');

int unum_getSymbol(
  Pointer<Pointer> fmt,
  int symbol,
  Pointer<Uint16> buffer,
  int size,
  Pointer<Int32> status,
) =>
    _unum_getSymbol(
      fmt,
      symbol,
      buffer,
      size,
      status,
    );

late final _unum_getSymbol = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 symbol,
  Pointer<Uint16> buffer,
  Int32 size,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int symbol,
  Pointer<Uint16> buffer,
  int size,
  Pointer<Int32> status,
)>('unum_getSymbol');

int unum_getTextAttribute(
  Pointer<Pointer> fmt,
  int tag,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _unum_getTextAttribute(
      fmt,
      tag,
      result,
      resultLength,
      status,
    );

late final _unum_getTextAttribute = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int32 tag,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int tag,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('unum_getTextAttribute');

Pointer<Pointer> unum_open(
  int style,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Utf8> locale,
  Pointer<UParseError> parseErr,
  Pointer<Int32> status,
) =>
    _unum_open(
      style,
      pattern,
      patternLength,
      locale,
      parseErr,
      status,
    );

late final _unum_open = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Int32 style,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Utf8> locale,
  Pointer<UParseError> parseErr,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  int style,
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Utf8> locale,
  Pointer<UParseError> parseErr,
  Pointer<Int32> status,
)>('unum_open');

int unum_parse(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
) =>
    _unum_parse(
      fmt,
      text,
      textLength,
      parsePos,
      status,
    );

late final _unum_parse = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
)>('unum_parse');

int unum_parseDecimal(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Utf8> outBuf,
  int outBufLength,
  Pointer<Int32> status,
) =>
    _unum_parseDecimal(
      fmt,
      text,
      textLength,
      parsePos,
      outBuf,
      outBufLength,
      status,
    );

late final _unum_parseDecimal = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Utf8> outBuf,
  Int32 outBufLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Utf8> outBuf,
  int outBufLength,
  Pointer<Int32> status,
)>('unum_parseDecimal');

double unum_parseDouble(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
) =>
    _unum_parseDouble(
      fmt,
      text,
      textLength,
      parsePos,
      status,
    );

late final _unum_parseDouble = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
)>('unum_parseDouble');

double unum_parseDoubleCurrency(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Uint16> currency,
  Pointer<Int32> status,
) =>
    _unum_parseDoubleCurrency(
      fmt,
      text,
      textLength,
      parsePos,
      currency,
      status,
    );

late final _unum_parseDoubleCurrency = _icu.lookupFunction<
    Double Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Uint16> currency,
  Pointer<Int32> status,
),
    double Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Uint16> currency,
  Pointer<Int32> status,
)>('unum_parseDoubleCurrency');

int unum_parseInt64(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
) =>
    _unum_parseInt64(
      fmt,
      text,
      textLength,
      parsePos,
      status,
    );

late final _unum_parseInt64 = _icu.lookupFunction<
    Int64 Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
)>('unum_parseInt64');

Pointer<Pointer> unum_parseToUFormattable(
  Pointer<Pointer> fmt,
  Pointer<Pointer> result,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
) =>
    _unum_parseToUFormattable(
      fmt,
      result,
      text,
      textLength,
      parsePos,
      status,
    );

late final _unum_parseToUFormattable = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> result,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> fmt,
  Pointer<Pointer> result,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> parsePos,
  Pointer<Int32> status,
)>('unum_parseToUFormattable');

void unum_setAttribute(
  Pointer<Pointer> fmt,
  int attr,
  int newValue,
) =>
    _unum_setAttribute(
      fmt,
      attr,
      newValue,
    );

late final _unum_setAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 attr,
  Int32 newValue,
),
    void Function(
  Pointer<Pointer> fmt,
  int attr,
  int newValue,
)>('unum_setAttribute');

void unum_setContext(
  Pointer<Pointer> fmt,
  int value,
  Pointer<Int32> status,
) =>
    _unum_setContext(
      fmt,
      value,
      status,
    );

late final _unum_setContext = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 value,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  int value,
  Pointer<Int32> status,
)>('unum_setContext');

void unum_setDoubleAttribute(
  Pointer<Pointer> fmt,
  int attr,
  double newValue,
) =>
    _unum_setDoubleAttribute(
      fmt,
      attr,
      newValue,
    );

late final _unum_setDoubleAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 attr,
  Double newValue,
),
    void Function(
  Pointer<Pointer> fmt,
  int attr,
  double newValue,
)>('unum_setDoubleAttribute');

void unum_setSymbol(
  Pointer<Pointer> fmt,
  int symbol,
  Pointer<Uint16> value,
  int length,
  Pointer<Int32> status,
) =>
    _unum_setSymbol(
      fmt,
      symbol,
      value,
      length,
      status,
    );

late final _unum_setSymbol = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 symbol,
  Pointer<Uint16> value,
  Int32 length,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  int symbol,
  Pointer<Uint16> value,
  int length,
  Pointer<Int32> status,
)>('unum_setSymbol');

void unum_setTextAttribute(
  Pointer<Pointer> fmt,
  int tag,
  Pointer<Uint16> newValue,
  int newValueLength,
  Pointer<Int32> status,
) =>
    _unum_setTextAttribute(
      fmt,
      tag,
      newValue,
      newValueLength,
      status,
    );

late final _unum_setTextAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> fmt,
  Int32 tag,
  Pointer<Uint16> newValue,
  Int32 newValueLength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> fmt,
  int tag,
  Pointer<Uint16> newValue,
  int newValueLength,
  Pointer<Int32> status,
)>('unum_setTextAttribute');

int unum_toPattern(
  Pointer<Pointer> fmt,
  int isPatternLocalized,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _unum_toPattern(
      fmt,
      isPatternLocalized,
      result,
      resultLength,
      status,
    );

late final _unum_toPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> fmt,
  Int8 isPatternLocalized,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> fmt,
  int isPatternLocalized,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('unum_toPattern');

void unumf_close(
  Pointer<UNumberFormatter> uformatter,
) =>
    _unumf_close(
      uformatter,
    );

late final _unumf_close = _icu.lookupFunction<
    Void Function(
  Pointer<UNumberFormatter> uformatter,
),
    void Function(
  Pointer<UNumberFormatter> uformatter,
)>('unumf_close');

void unumf_closeResult(
  Pointer<UFormattedNumber> uresult,
) =>
    _unumf_closeResult(
      uresult,
    );

late final _unumf_closeResult = _icu.lookupFunction<
    Void Function(
  Pointer<UFormattedNumber> uresult,
),
    void Function(
  Pointer<UFormattedNumber> uresult,
)>('unumf_closeResult');

void unumf_formatDecimal(
  Pointer<UNumberFormatter> uformatter,
  Pointer<Utf8> value,
  int valueLen,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
) =>
    _unumf_formatDecimal(
      uformatter,
      value,
      valueLen,
      uresult,
      ec,
    );

late final _unumf_formatDecimal = _icu.lookupFunction<
    Void Function(
  Pointer<UNumberFormatter> uformatter,
  Pointer<Utf8> value,
  Int32 valueLen,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UNumberFormatter> uformatter,
  Pointer<Utf8> value,
  int valueLen,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
)>('unumf_formatDecimal');

void unumf_formatDouble(
  Pointer<UNumberFormatter> uformatter,
  double value,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
) =>
    _unumf_formatDouble(
      uformatter,
      value,
      uresult,
      ec,
    );

late final _unumf_formatDouble = _icu.lookupFunction<
    Void Function(
  Pointer<UNumberFormatter> uformatter,
  Double value,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UNumberFormatter> uformatter,
  double value,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
)>('unumf_formatDouble');

void unumf_formatInt(
  Pointer<UNumberFormatter> uformatter,
  int value,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
) =>
    _unumf_formatInt(
      uformatter,
      value,
      uresult,
      ec,
    );

late final _unumf_formatInt = _icu.lookupFunction<
    Void Function(
  Pointer<UNumberFormatter> uformatter,
  Int64 value,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UNumberFormatter> uformatter,
  int value,
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
)>('unumf_formatInt');

Pointer<UNumberFormatter> unumf_openForSkeletonAndLocale(
  Pointer<Uint16> skeleton,
  int skeletonLen,
  Pointer<Utf8> locale,
  Pointer<Int32> ec,
) =>
    _unumf_openForSkeletonAndLocale(
      skeleton,
      skeletonLen,
      locale,
      ec,
    );

late final _unumf_openForSkeletonAndLocale = _icu.lookupFunction<
    Pointer<UNumberFormatter> Function(
  Pointer<Uint16> skeleton,
  Int32 skeletonLen,
  Pointer<Utf8> locale,
  Pointer<Int32> ec,
),
    Pointer<UNumberFormatter> Function(
  Pointer<Uint16> skeleton,
  int skeletonLen,
  Pointer<Utf8> locale,
  Pointer<Int32> ec,
)>('unumf_openForSkeletonAndLocale');

Pointer<UNumberFormatter> unumf_openForSkeletonAndLocaleWithError(
  Pointer<Uint16> skeleton,
  int skeletonLen,
  Pointer<Utf8> locale,
  Pointer<UParseError> perror,
  Pointer<Int32> ec,
) =>
    _unumf_openForSkeletonAndLocaleWithError(
      skeleton,
      skeletonLen,
      locale,
      perror,
      ec,
    );

late final _unumf_openForSkeletonAndLocaleWithError = _icu.lookupFunction<
    Pointer<UNumberFormatter> Function(
  Pointer<Uint16> skeleton,
  Int32 skeletonLen,
  Pointer<Utf8> locale,
  Pointer<UParseError> perror,
  Pointer<Int32> ec,
),
    Pointer<UNumberFormatter> Function(
  Pointer<Uint16> skeleton,
  int skeletonLen,
  Pointer<Utf8> locale,
  Pointer<UParseError> perror,
  Pointer<Int32> ec,
)>('unumf_openForSkeletonAndLocaleWithError');

Pointer<UFormattedNumber> unumf_openResult(
  Pointer<Int32> ec,
) =>
    _unumf_openResult(
      ec,
    );

late final _unumf_openResult = _icu.lookupFunction<
    Pointer<UFormattedNumber> Function(
  Pointer<Int32> ec,
),
    Pointer<UFormattedNumber> Function(
  Pointer<Int32> ec,
)>('unumf_openResult');

Pointer<UFormattedValue> unumf_resultAsValue(
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
) =>
    _unumf_resultAsValue(
      uresult,
      ec,
    );

late final _unumf_resultAsValue = _icu.lookupFunction<
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
),
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<Int32> ec,
)>('unumf_resultAsValue');

void unumf_resultGetAllFieldPositions(
  Pointer<UFormattedNumber> uresult,
  Pointer<UFieldPositionIterator> ufpositer,
  Pointer<Int32> ec,
) =>
    _unumf_resultGetAllFieldPositions(
      uresult,
      ufpositer,
      ec,
    );

late final _unumf_resultGetAllFieldPositions = _icu.lookupFunction<
    Void Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<UFieldPositionIterator> ufpositer,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<UFieldPositionIterator> ufpositer,
  Pointer<Int32> ec,
)>('unumf_resultGetAllFieldPositions');

int unumf_resultNextFieldPosition(
  Pointer<UFormattedNumber> uresult,
  Pointer<UFieldPosition> ufpos,
  Pointer<Int32> ec,
) =>
    _unumf_resultNextFieldPosition(
      uresult,
      ufpos,
      ec,
    );

late final _unumf_resultNextFieldPosition = _icu.lookupFunction<
    Int8 Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<UFieldPosition> ufpos,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<UFieldPosition> ufpos,
  Pointer<Int32> ec,
)>('unumf_resultNextFieldPosition');

int unumf_resultToString(
  Pointer<UFormattedNumber> uresult,
  Pointer<Uint16> buffer,
  int bufferCapacity,
  Pointer<Int32> ec,
) =>
    _unumf_resultToString(
      uresult,
      buffer,
      bufferCapacity,
      ec,
    );

late final _unumf_resultToString = _icu.lookupFunction<
    Int32 Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<Uint16> buffer,
  Int32 bufferCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<UFormattedNumber> uresult,
  Pointer<Uint16> buffer,
  int bufferCapacity,
  Pointer<Int32> ec,
)>('unumf_resultToString');

void unumsys_close(
  Pointer<UNumberingSystem> unumsys,
) =>
    _unumsys_close(
      unumsys,
    );

late final _unumsys_close = _icu.lookupFunction<
    Void Function(
  Pointer<UNumberingSystem> unumsys,
),
    void Function(
  Pointer<UNumberingSystem> unumsys,
)>('unumsys_close');

int unumsys_getDescription(
  Pointer<UNumberingSystem> unumsys,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _unumsys_getDescription(
      unumsys,
      result,
      resultLength,
      status,
    );

late final _unumsys_getDescription = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNumberingSystem> unumsys,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UNumberingSystem> unumsys,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('unumsys_getDescription');

Pointer<Utf8> unumsys_getName(
  Pointer<UNumberingSystem> unumsys,
) =>
    _unumsys_getName(
      unumsys,
    );

late final _unumsys_getName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UNumberingSystem> unumsys,
),
    Pointer<Utf8> Function(
  Pointer<UNumberingSystem> unumsys,
)>('unumsys_getName');

int unumsys_getRadix(
  Pointer<UNumberingSystem> unumsys,
) =>
    _unumsys_getRadix(
      unumsys,
    );

late final _unumsys_getRadix = _icu.lookupFunction<
    Int32 Function(
  Pointer<UNumberingSystem> unumsys,
),
    int Function(
  Pointer<UNumberingSystem> unumsys,
)>('unumsys_getRadix');

int unumsys_isAlgorithmic(
  Pointer<UNumberingSystem> unumsys,
) =>
    _unumsys_isAlgorithmic(
      unumsys,
    );

late final _unumsys_isAlgorithmic = _icu.lookupFunction<
    Int8 Function(
  Pointer<UNumberingSystem> unumsys,
),
    int Function(
  Pointer<UNumberingSystem> unumsys,
)>('unumsys_isAlgorithmic');

Pointer<UNumberingSystem> unumsys_open(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _unumsys_open(
      locale,
      status,
    );

late final _unumsys_open = _icu.lookupFunction<
    Pointer<UNumberingSystem> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UNumberingSystem> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('unumsys_open');

Pointer<UEnumeration> unumsys_openAvailableNames(
  Pointer<Int32> status,
) =>
    _unumsys_openAvailableNames(
      status,
    );

late final _unumsys_openAvailableNames = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Int32> status,
)>('unumsys_openAvailableNames');

Pointer<UNumberingSystem> unumsys_openByName(
  Pointer<Utf8> name,
  Pointer<Int32> status,
) =>
    _unumsys_openByName(
      name,
      status,
    );

late final _unumsys_openByName = _icu.lookupFunction<
    Pointer<UNumberingSystem> Function(
  Pointer<Utf8> name,
  Pointer<Int32> status,
),
    Pointer<UNumberingSystem> Function(
  Pointer<Utf8> name,
  Pointer<Int32> status,
)>('unumsys_openByName');

void uplrules_close(
  Pointer<UPluralRules> uplrules,
) =>
    _uplrules_close(
      uplrules,
    );

late final _uplrules_close = _icu.lookupFunction<
    Void Function(
  Pointer<UPluralRules> uplrules,
),
    void Function(
  Pointer<UPluralRules> uplrules,
)>('uplrules_close');

Pointer<UEnumeration> uplrules_getKeywords(
  Pointer<UPluralRules> uplrules,
  Pointer<Int32> status,
) =>
    _uplrules_getKeywords(
      uplrules,
      status,
    );

late final _uplrules_getKeywords = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<UPluralRules> uplrules,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<UPluralRules> uplrules,
  Pointer<Int32> status,
)>('uplrules_getKeywords');

Pointer<UPluralRules> uplrules_open(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _uplrules_open(
      locale,
      status,
    );

late final _uplrules_open = _icu.lookupFunction<
    Pointer<UPluralRules> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UPluralRules> Function(
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('uplrules_open');

Pointer<UPluralRules> uplrules_openForType(
  Pointer<Utf8> locale,
  int type,
  Pointer<Int32> status,
) =>
    _uplrules_openForType(
      locale,
      type,
      status,
    );

late final _uplrules_openForType = _icu.lookupFunction<
    Pointer<UPluralRules> Function(
  Pointer<Utf8> locale,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<UPluralRules> Function(
  Pointer<Utf8> locale,
  int type,
  Pointer<Int32> status,
)>('uplrules_openForType');

int uplrules_select(
  Pointer<UPluralRules> uplrules,
  double number,
  Pointer<Uint16> keyword,
  int capacity,
  Pointer<Int32> status,
) =>
    _uplrules_select(
      uplrules,
      number,
      keyword,
      capacity,
      status,
    );

late final _uplrules_select = _icu.lookupFunction<
    Int32 Function(
  Pointer<UPluralRules> uplrules,
  Double number,
  Pointer<Uint16> keyword,
  Int32 capacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UPluralRules> uplrules,
  double number,
  Pointer<Uint16> keyword,
  int capacity,
  Pointer<Int32> status,
)>('uplrules_select');

int uplrules_selectFormatted(
  Pointer<UPluralRules> uplrules,
  Pointer<UFormattedNumber> number,
  Pointer<Uint16> keyword,
  int capacity,
  Pointer<Int32> status,
) =>
    _uplrules_selectFormatted(
      uplrules,
      number,
      keyword,
      capacity,
      status,
    );

late final _uplrules_selectFormatted = _icu.lookupFunction<
    Int32 Function(
  Pointer<UPluralRules> uplrules,
  Pointer<UFormattedNumber> number,
  Pointer<Uint16> keyword,
  Int32 capacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UPluralRules> uplrules,
  Pointer<UFormattedNumber> number,
  Pointer<Uint16> keyword,
  int capacity,
  Pointer<Int32> status,
)>('uplrules_selectFormatted');

int uregex_appendReplacement(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Pointer<Uint16>> destBuf,
  Pointer<Int32> destCapacity,
  Pointer<Int32> status,
) =>
    _uregex_appendReplacement(
      regexp,
      replacementText,
      replacementLength,
      destBuf,
      destCapacity,
      status,
    );

late final _uregex_appendReplacement = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  Int32 replacementLength,
  Pointer<Pointer<Uint16>> destBuf,
  Pointer<Int32> destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Pointer<Uint16>> destBuf,
  Pointer<Int32> destCapacity,
  Pointer<Int32> status,
)>('uregex_appendReplacement');

void uregex_appendReplacementUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacementText,
  Pointer<UText> dest,
  Pointer<Int32> status,
) =>
    _uregex_appendReplacementUText(
      regexp,
      replacementText,
      dest,
      status,
    );

late final _uregex_appendReplacementUText = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacementText,
  Pointer<UText> dest,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacementText,
  Pointer<UText> dest,
  Pointer<Int32> status,
)>('uregex_appendReplacementUText');

int uregex_appendTail(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<Uint16>> destBuf,
  Pointer<Int32> destCapacity,
  Pointer<Int32> status,
) =>
    _uregex_appendTail(
      regexp,
      destBuf,
      destCapacity,
      status,
    );

late final _uregex_appendTail = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<Uint16>> destBuf,
  Pointer<Int32> destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<Uint16>> destBuf,
  Pointer<Int32> destCapacity,
  Pointer<Int32> status,
)>('uregex_appendTail');

Pointer<UText> uregex_appendTailUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> dest,
  Pointer<Int32> status,
) =>
    _uregex_appendTailUText(
      regexp,
      dest,
      status,
    );

late final _uregex_appendTailUText = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> dest,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> dest,
  Pointer<Int32> status,
)>('uregex_appendTailUText');

Pointer<URegularExpression> uregex_clone(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_clone(
      regexp,
      status,
    );

late final _uregex_clone = _icu.lookupFunction<
    Pointer<URegularExpression> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    Pointer<URegularExpression> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_clone');

void uregex_close(
  Pointer<URegularExpression> regexp,
) =>
    _uregex_close(
      regexp,
    );

late final _uregex_close = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
),
    void Function(
  Pointer<URegularExpression> regexp,
)>('uregex_close');

int uregex_end(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
) =>
    _uregex_end(
      regexp,
      groupNum,
      status,
    );

late final _uregex_end = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Int32 groupNum,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
)>('uregex_end');

int uregex_end64(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
) =>
    _uregex_end64(
      regexp,
      groupNum,
      status,
    );

late final _uregex_end64 = _icu.lookupFunction<
    Int64 Function(
  Pointer<URegularExpression> regexp,
  Int32 groupNum,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
)>('uregex_end64');

int uregex_find(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_find(
      regexp,
      startIndex,
      status,
    );

late final _uregex_find = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Int32 startIndex,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_find');

int uregex_find64(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_find64(
      regexp,
      startIndex,
      status,
    );

late final _uregex_find64 = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Int64 startIndex,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_find64');

int uregex_findNext(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_findNext(
      regexp,
      status,
    );

late final _uregex_findNext = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_findNext');

int uregex_flags(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_flags(
      regexp,
      status,
    );

late final _uregex_flags = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_flags');

void uregex_getFindProgressCallback(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<NativeFunction<URegexFindProgressCallback>>> callback,
  Pointer<Pointer> context,
  Pointer<Int32> status,
) =>
    _uregex_getFindProgressCallback(
      regexp,
      callback,
      context,
      status,
    );

late final _uregex_getFindProgressCallback = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<NativeFunction<URegexFindProgressCallback>>> callback,
  Pointer<Pointer> context,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<NativeFunction<URegexFindProgressCallback>>> callback,
  Pointer<Pointer> context,
  Pointer<Int32> status,
)>('uregex_getFindProgressCallback');

void uregex_getMatchCallback(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<NativeFunction<URegexMatchCallback>>> callback,
  Pointer<Pointer> context,
  Pointer<Int32> status,
) =>
    _uregex_getMatchCallback(
      regexp,
      callback,
      context,
      status,
    );

late final _uregex_getMatchCallback = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<NativeFunction<URegexMatchCallback>>> callback,
  Pointer<Pointer> context,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<NativeFunction<URegexMatchCallback>>> callback,
  Pointer<Pointer> context,
  Pointer<Int32> status,
)>('uregex_getMatchCallback');

int uregex_getStackLimit(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_getStackLimit(
      regexp,
      status,
    );

late final _uregex_getStackLimit = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_getStackLimit');

Pointer<Uint16> uregex_getText(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> textLength,
  Pointer<Int32> status,
) =>
    _uregex_getText(
      regexp,
      textLength,
      status,
    );

late final _uregex_getText = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> textLength,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> textLength,
  Pointer<Int32> status,
)>('uregex_getText');

int uregex_getTimeLimit(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_getTimeLimit(
      regexp,
      status,
    );

late final _uregex_getTimeLimit = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_getTimeLimit');

Pointer<UText> uregex_getUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> dest,
  Pointer<Int32> status,
) =>
    _uregex_getUText(
      regexp,
      dest,
      status,
    );

late final _uregex_getUText = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> dest,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> dest,
  Pointer<Int32> status,
)>('uregex_getUText');

int uregex_group(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uregex_group(
      regexp,
      groupNum,
      dest,
      destCapacity,
      status,
    );

late final _uregex_group = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Int32 groupNum,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
)>('uregex_group');

int uregex_groupCount(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_groupCount(
      regexp,
      status,
    );

late final _uregex_groupCount = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_groupCount');

int uregex_groupNumberFromCName(
  Pointer<URegularExpression> regexp,
  Pointer<Utf8> groupName,
  int nameLength,
  Pointer<Int32> status,
) =>
    _uregex_groupNumberFromCName(
      regexp,
      groupName,
      nameLength,
      status,
    );

late final _uregex_groupNumberFromCName = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Utf8> groupName,
  Int32 nameLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Utf8> groupName,
  int nameLength,
  Pointer<Int32> status,
)>('uregex_groupNumberFromCName');

int uregex_groupNumberFromName(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> groupName,
  int nameLength,
  Pointer<Int32> status,
) =>
    _uregex_groupNumberFromName(
      regexp,
      groupName,
      nameLength,
      status,
    );

late final _uregex_groupNumberFromName = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> groupName,
  Int32 nameLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> groupName,
  int nameLength,
  Pointer<Int32> status,
)>('uregex_groupNumberFromName');

Pointer<UText> uregex_groupUText(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<UText> dest,
  Pointer<Int64> groupLength,
  Pointer<Int32> status,
) =>
    _uregex_groupUText(
      regexp,
      groupNum,
      dest,
      groupLength,
      status,
    );

late final _uregex_groupUText = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Int32 groupNum,
  Pointer<UText> dest,
  Pointer<Int64> groupLength,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<UText> dest,
  Pointer<Int64> groupLength,
  Pointer<Int32> status,
)>('uregex_groupUText');

int uregex_hasAnchoringBounds(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_hasAnchoringBounds(
      regexp,
      status,
    );

late final _uregex_hasAnchoringBounds = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_hasAnchoringBounds');

int uregex_hasTransparentBounds(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_hasTransparentBounds(
      regexp,
      status,
    );

late final _uregex_hasTransparentBounds = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_hasTransparentBounds');

int uregex_hitEnd(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_hitEnd(
      regexp,
      status,
    );

late final _uregex_hitEnd = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_hitEnd');

int uregex_lookingAt(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_lookingAt(
      regexp,
      startIndex,
      status,
    );

late final _uregex_lookingAt = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Int32 startIndex,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_lookingAt');

int uregex_lookingAt64(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_lookingAt64(
      regexp,
      startIndex,
      status,
    );

late final _uregex_lookingAt64 = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Int64 startIndex,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_lookingAt64');

int uregex_matches(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_matches(
      regexp,
      startIndex,
      status,
    );

late final _uregex_matches = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Int32 startIndex,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_matches');

int uregex_matches64(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_matches64(
      regexp,
      startIndex,
      status,
    );

late final _uregex_matches64 = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Int64 startIndex,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_matches64');

Pointer<URegularExpression> uregex_open(
  Pointer<Uint16> pattern,
  int patternLength,
  int flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
) =>
    _uregex_open(
      pattern,
      patternLength,
      flags,
      pe,
      status,
    );

late final _uregex_open = _icu.lookupFunction<
    Pointer<URegularExpression> Function(
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Uint32 flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
),
    Pointer<URegularExpression> Function(
  Pointer<Uint16> pattern,
  int patternLength,
  int flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
)>('uregex_open');

Pointer<URegularExpression> uregex_openC(
  Pointer<Utf8> pattern,
  int flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
) =>
    _uregex_openC(
      pattern,
      flags,
      pe,
      status,
    );

late final _uregex_openC = _icu.lookupFunction<
    Pointer<URegularExpression> Function(
  Pointer<Utf8> pattern,
  Uint32 flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
),
    Pointer<URegularExpression> Function(
  Pointer<Utf8> pattern,
  int flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
)>('uregex_openC');

Pointer<URegularExpression> uregex_openUText(
  Pointer<UText> pattern,
  int flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
) =>
    _uregex_openUText(
      pattern,
      flags,
      pe,
      status,
    );

late final _uregex_openUText = _icu.lookupFunction<
    Pointer<URegularExpression> Function(
  Pointer<UText> pattern,
  Uint32 flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
),
    Pointer<URegularExpression> Function(
  Pointer<UText> pattern,
  int flags,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
)>('uregex_openUText');

Pointer<Uint16> uregex_pattern(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> patLength,
  Pointer<Int32> status,
) =>
    _uregex_pattern(
      regexp,
      patLength,
      status,
    );

late final _uregex_pattern = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> patLength,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> patLength,
  Pointer<Int32> status,
)>('uregex_pattern');

Pointer<UText> uregex_patternUText(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_patternUText(
      regexp,
      status,
    );

late final _uregex_patternUText = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_patternUText');

void uregex_refreshUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> text,
  Pointer<Int32> status,
) =>
    _uregex_refreshUText(
      regexp,
      text,
      status,
    );

late final _uregex_refreshUText = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> text,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> text,
  Pointer<Int32> status,
)>('uregex_refreshUText');

int uregex_regionEnd(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_regionEnd(
      regexp,
      status,
    );

late final _uregex_regionEnd = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_regionEnd');

int uregex_regionEnd64(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_regionEnd64(
      regexp,
      status,
    );

late final _uregex_regionEnd64 = _icu.lookupFunction<
    Int64 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_regionEnd64');

int uregex_regionStart(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_regionStart(
      regexp,
      status,
    );

late final _uregex_regionStart = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_regionStart');

int uregex_regionStart64(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_regionStart64(
      regexp,
      status,
    );

late final _uregex_regionStart64 = _icu.lookupFunction<
    Int64 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_regionStart64');

int uregex_replaceAll(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Uint16> destBuf,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uregex_replaceAll(
      regexp,
      replacementText,
      replacementLength,
      destBuf,
      destCapacity,
      status,
    );

late final _uregex_replaceAll = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  Int32 replacementLength,
  Pointer<Uint16> destBuf,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Uint16> destBuf,
  int destCapacity,
  Pointer<Int32> status,
)>('uregex_replaceAll');

Pointer<UText> uregex_replaceAllUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacement,
  Pointer<UText> dest,
  Pointer<Int32> status,
) =>
    _uregex_replaceAllUText(
      regexp,
      replacement,
      dest,
      status,
    );

late final _uregex_replaceAllUText = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacement,
  Pointer<UText> dest,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacement,
  Pointer<UText> dest,
  Pointer<Int32> status,
)>('uregex_replaceAllUText');

int uregex_replaceFirst(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Uint16> destBuf,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uregex_replaceFirst(
      regexp,
      replacementText,
      replacementLength,
      destBuf,
      destCapacity,
      status,
    );

late final _uregex_replaceFirst = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  Int32 replacementLength,
  Pointer<Uint16> destBuf,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Uint16> destBuf,
  int destCapacity,
  Pointer<Int32> status,
)>('uregex_replaceFirst');

Pointer<UText> uregex_replaceFirstUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacement,
  Pointer<UText> dest,
  Pointer<Int32> status,
) =>
    _uregex_replaceFirstUText(
      regexp,
      replacement,
      dest,
      status,
    );

late final _uregex_replaceFirstUText = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacement,
  Pointer<UText> dest,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> replacement,
  Pointer<UText> dest,
  Pointer<Int32> status,
)>('uregex_replaceFirstUText');

int uregex_requireEnd(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
) =>
    _uregex_requireEnd(
      regexp,
      status,
    );

late final _uregex_requireEnd = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Int32> status,
)>('uregex_requireEnd');

void uregex_reset(
  Pointer<URegularExpression> regexp,
  int index,
  Pointer<Int32> status,
) =>
    _uregex_reset(
      regexp,
      index,
      status,
    );

late final _uregex_reset = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int32 index,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int index,
  Pointer<Int32> status,
)>('uregex_reset');

void uregex_reset64(
  Pointer<URegularExpression> regexp,
  int index,
  Pointer<Int32> status,
) =>
    _uregex_reset64(
      regexp,
      index,
      status,
    );

late final _uregex_reset64 = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int64 index,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int index,
  Pointer<Int32> status,
)>('uregex_reset64');

void uregex_setFindProgressCallback(
  Pointer<URegularExpression> regexp,
  Pointer<NativeFunction<URegexFindProgressCallback>> callback,
  Pointer context,
  Pointer<Int32> status,
) =>
    _uregex_setFindProgressCallback(
      regexp,
      callback,
      context,
      status,
    );

late final _uregex_setFindProgressCallback = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<NativeFunction<URegexFindProgressCallback>> callback,
  Pointer context,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<NativeFunction<URegexFindProgressCallback>> callback,
  Pointer context,
  Pointer<Int32> status,
)>('uregex_setFindProgressCallback');

void uregex_setMatchCallback(
  Pointer<URegularExpression> regexp,
  Pointer<NativeFunction<URegexMatchCallback>> callback,
  Pointer context,
  Pointer<Int32> status,
) =>
    _uregex_setMatchCallback(
      regexp,
      callback,
      context,
      status,
    );

late final _uregex_setMatchCallback = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<NativeFunction<URegexMatchCallback>> callback,
  Pointer context,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<NativeFunction<URegexMatchCallback>> callback,
  Pointer context,
  Pointer<Int32> status,
)>('uregex_setMatchCallback');

void uregex_setRegion(
  Pointer<URegularExpression> regexp,
  int regionStart,
  int regionLimit,
  Pointer<Int32> status,
) =>
    _uregex_setRegion(
      regexp,
      regionStart,
      regionLimit,
      status,
    );

late final _uregex_setRegion = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int32 regionStart,
  Int32 regionLimit,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int regionStart,
  int regionLimit,
  Pointer<Int32> status,
)>('uregex_setRegion');

void uregex_setRegion64(
  Pointer<URegularExpression> regexp,
  int regionStart,
  int regionLimit,
  Pointer<Int32> status,
) =>
    _uregex_setRegion64(
      regexp,
      regionStart,
      regionLimit,
      status,
    );

late final _uregex_setRegion64 = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int64 regionStart,
  Int64 regionLimit,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int regionStart,
  int regionLimit,
  Pointer<Int32> status,
)>('uregex_setRegion64');

void uregex_setRegionAndStart(
  Pointer<URegularExpression> regexp,
  int regionStart,
  int regionLimit,
  int startIndex,
  Pointer<Int32> status,
) =>
    _uregex_setRegionAndStart(
      regexp,
      regionStart,
      regionLimit,
      startIndex,
      status,
    );

late final _uregex_setRegionAndStart = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int64 regionStart,
  Int64 regionLimit,
  Int64 startIndex,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int regionStart,
  int regionLimit,
  int startIndex,
  Pointer<Int32> status,
)>('uregex_setRegionAndStart');

void uregex_setStackLimit(
  Pointer<URegularExpression> regexp,
  int limit,
  Pointer<Int32> status,
) =>
    _uregex_setStackLimit(
      regexp,
      limit,
      status,
    );

late final _uregex_setStackLimit = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int32 limit,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int limit,
  Pointer<Int32> status,
)>('uregex_setStackLimit');

void uregex_setText(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
) =>
    _uregex_setText(
      regexp,
      text,
      textLength,
      status,
    );

late final _uregex_setText = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> text,
  Int32 textLength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> text,
  int textLength,
  Pointer<Int32> status,
)>('uregex_setText');

void uregex_setTimeLimit(
  Pointer<URegularExpression> regexp,
  int limit,
  Pointer<Int32> status,
) =>
    _uregex_setTimeLimit(
      regexp,
      limit,
      status,
    );

late final _uregex_setTimeLimit = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int32 limit,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int limit,
  Pointer<Int32> status,
)>('uregex_setTimeLimit');

void uregex_setUText(
  Pointer<URegularExpression> regexp,
  Pointer<UText> text,
  Pointer<Int32> status,
) =>
    _uregex_setUText(
      regexp,
      text,
      status,
    );

late final _uregex_setUText = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> text,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  Pointer<UText> text,
  Pointer<Int32> status,
)>('uregex_setUText');

int uregex_split(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> destBuf,
  int destCapacity,
  Pointer<Int32> requiredCapacity,
  Pointer<Pointer<Uint16>> destFields,
  int destFieldsCapacity,
  Pointer<Int32> status,
) =>
    _uregex_split(
      regexp,
      destBuf,
      destCapacity,
      requiredCapacity,
      destFields,
      destFieldsCapacity,
      status,
    );

late final _uregex_split = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> destBuf,
  Int32 destCapacity,
  Pointer<Int32> requiredCapacity,
  Pointer<Pointer<Uint16>> destFields,
  Int32 destFieldsCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Uint16> destBuf,
  int destCapacity,
  Pointer<Int32> requiredCapacity,
  Pointer<Pointer<Uint16>> destFields,
  int destFieldsCapacity,
  Pointer<Int32> status,
)>('uregex_split');

int uregex_splitUText(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<UText>> destFields,
  int destFieldsCapacity,
  Pointer<Int32> status,
) =>
    _uregex_splitUText(
      regexp,
      destFields,
      destFieldsCapacity,
      status,
    );

late final _uregex_splitUText = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<UText>> destFields,
  Int32 destFieldsCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  Pointer<Pointer<UText>> destFields,
  int destFieldsCapacity,
  Pointer<Int32> status,
)>('uregex_splitUText');

int uregex_start(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
) =>
    _uregex_start(
      regexp,
      groupNum,
      status,
    );

late final _uregex_start = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegularExpression> regexp,
  Int32 groupNum,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
)>('uregex_start');

int uregex_start64(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
) =>
    _uregex_start64(
      regexp,
      groupNum,
      status,
    );

late final _uregex_start64 = _icu.lookupFunction<
    Int64 Function(
  Pointer<URegularExpression> regexp,
  Int32 groupNum,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URegularExpression> regexp,
  int groupNum,
  Pointer<Int32> status,
)>('uregex_start64');

void uregex_useAnchoringBounds(
  Pointer<URegularExpression> regexp,
  int b,
  Pointer<Int32> status,
) =>
    _uregex_useAnchoringBounds(
      regexp,
      b,
      status,
    );

late final _uregex_useAnchoringBounds = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int8 b,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int b,
  Pointer<Int32> status,
)>('uregex_useAnchoringBounds');

void uregex_useTransparentBounds(
  Pointer<URegularExpression> regexp,
  int b,
  Pointer<Int32> status,
) =>
    _uregex_useTransparentBounds(
      regexp,
      b,
      status,
    );

late final _uregex_useTransparentBounds = _icu.lookupFunction<
    Void Function(
  Pointer<URegularExpression> regexp,
  Int8 b,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URegularExpression> regexp,
  int b,
  Pointer<Int32> status,
)>('uregex_useTransparentBounds');

int uregion_areEqual(
  Pointer<URegion> uregion,
  Pointer<URegion> otherRegion,
) =>
    _uregion_areEqual(
      uregion,
      otherRegion,
    );

late final _uregion_areEqual = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegion> uregion,
  Pointer<URegion> otherRegion,
),
    int Function(
  Pointer<URegion> uregion,
  Pointer<URegion> otherRegion,
)>('uregion_areEqual');

int uregion_contains(
  Pointer<URegion> uregion,
  Pointer<URegion> otherRegion,
) =>
    _uregion_contains(
      uregion,
      otherRegion,
    );

late final _uregion_contains = _icu.lookupFunction<
    Int8 Function(
  Pointer<URegion> uregion,
  Pointer<URegion> otherRegion,
),
    int Function(
  Pointer<URegion> uregion,
  Pointer<URegion> otherRegion,
)>('uregion_contains');

Pointer<UEnumeration> uregion_getAvailable(
  int type,
  Pointer<Int32> status,
) =>
    _uregion_getAvailable(
      type,
      status,
    );

late final _uregion_getAvailable = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  int type,
  Pointer<Int32> status,
)>('uregion_getAvailable');

Pointer<UEnumeration> uregion_getContainedRegions(
  Pointer<URegion> uregion,
  Pointer<Int32> status,
) =>
    _uregion_getContainedRegions(
      uregion,
      status,
    );

late final _uregion_getContainedRegions = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<URegion> uregion,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<URegion> uregion,
  Pointer<Int32> status,
)>('uregion_getContainedRegions');

Pointer<UEnumeration> uregion_getContainedRegionsOfType(
  Pointer<URegion> uregion,
  int type,
  Pointer<Int32> status,
) =>
    _uregion_getContainedRegionsOfType(
      uregion,
      type,
      status,
    );

late final _uregion_getContainedRegionsOfType = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<URegion> uregion,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<URegion> uregion,
  int type,
  Pointer<Int32> status,
)>('uregion_getContainedRegionsOfType');

Pointer<URegion> uregion_getContainingRegion(
  Pointer<URegion> uregion,
) =>
    _uregion_getContainingRegion(
      uregion,
    );

late final _uregion_getContainingRegion = _icu.lookupFunction<
    Pointer<URegion> Function(
  Pointer<URegion> uregion,
),
    Pointer<URegion> Function(
  Pointer<URegion> uregion,
)>('uregion_getContainingRegion');

Pointer<URegion> uregion_getContainingRegionOfType(
  Pointer<URegion> uregion,
  int type,
) =>
    _uregion_getContainingRegionOfType(
      uregion,
      type,
    );

late final _uregion_getContainingRegionOfType = _icu.lookupFunction<
    Pointer<URegion> Function(
  Pointer<URegion> uregion,
  Int32 type,
),
    Pointer<URegion> Function(
  Pointer<URegion> uregion,
  int type,
)>('uregion_getContainingRegionOfType');

int uregion_getNumericCode(
  Pointer<URegion> uregion,
) =>
    _uregion_getNumericCode(
      uregion,
    );

late final _uregion_getNumericCode = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegion> uregion,
),
    int Function(
  Pointer<URegion> uregion,
)>('uregion_getNumericCode');

Pointer<UEnumeration> uregion_getPreferredValues(
  Pointer<URegion> uregion,
  Pointer<Int32> status,
) =>
    _uregion_getPreferredValues(
      uregion,
      status,
    );

late final _uregion_getPreferredValues = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<URegion> uregion,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<URegion> uregion,
  Pointer<Int32> status,
)>('uregion_getPreferredValues');

Pointer<Utf8> uregion_getRegionCode(
  Pointer<URegion> uregion,
) =>
    _uregion_getRegionCode(
      uregion,
    );

late final _uregion_getRegionCode = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<URegion> uregion,
),
    Pointer<Utf8> Function(
  Pointer<URegion> uregion,
)>('uregion_getRegionCode');

Pointer<URegion> uregion_getRegionFromCode(
  Pointer<Utf8> regionCode,
  Pointer<Int32> status,
) =>
    _uregion_getRegionFromCode(
      regionCode,
      status,
    );

late final _uregion_getRegionFromCode = _icu.lookupFunction<
    Pointer<URegion> Function(
  Pointer<Utf8> regionCode,
  Pointer<Int32> status,
),
    Pointer<URegion> Function(
  Pointer<Utf8> regionCode,
  Pointer<Int32> status,
)>('uregion_getRegionFromCode');

Pointer<URegion> uregion_getRegionFromNumericCode(
  int code,
  Pointer<Int32> status,
) =>
    _uregion_getRegionFromNumericCode(
      code,
      status,
    );

late final _uregion_getRegionFromNumericCode = _icu.lookupFunction<
    Pointer<URegion> Function(
  Int32 code,
  Pointer<Int32> status,
),
    Pointer<URegion> Function(
  int code,
  Pointer<Int32> status,
)>('uregion_getRegionFromNumericCode');

int uregion_getType(
  Pointer<URegion> uregion,
) =>
    _uregion_getType(
      uregion,
    );

late final _uregion_getType = _icu.lookupFunction<
    Int32 Function(
  Pointer<URegion> uregion,
),
    int Function(
  Pointer<URegion> uregion,
)>('uregion_getType');

void ureldatefmt_close(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
) =>
    _ureldatefmt_close(
      reldatefmt,
    );

late final _ureldatefmt_close = _icu.lookupFunction<
    Void Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
),
    void Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
)>('ureldatefmt_close');

void ureldatefmt_closeResult(
  Pointer<UFormattedRelativeDateTime> ufrdt,
) =>
    _ureldatefmt_closeResult(
      ufrdt,
    );

late final _ureldatefmt_closeResult = _icu.lookupFunction<
    Void Function(
  Pointer<UFormattedRelativeDateTime> ufrdt,
),
    void Function(
  Pointer<UFormattedRelativeDateTime> ufrdt,
)>('ureldatefmt_closeResult');

int ureldatefmt_combineDateAndTime(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Pointer<Uint16> relativeDateString,
  int relativeDateStringLen,
  Pointer<Uint16> timeString,
  int timeStringLen,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
) =>
    _ureldatefmt_combineDateAndTime(
      reldatefmt,
      relativeDateString,
      relativeDateStringLen,
      timeString,
      timeStringLen,
      result,
      resultCapacity,
      status,
    );

late final _ureldatefmt_combineDateAndTime = _icu.lookupFunction<
    Int32 Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Pointer<Uint16> relativeDateString,
  Int32 relativeDateStringLen,
  Pointer<Uint16> timeString,
  Int32 timeStringLen,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Pointer<Uint16> relativeDateString,
  int relativeDateStringLen,
  Pointer<Uint16> timeString,
  int timeStringLen,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
)>('ureldatefmt_combineDateAndTime');

int ureldatefmt_format(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
) =>
    _ureldatefmt_format(
      reldatefmt,
      offset,
      unit,
      result,
      resultCapacity,
      status,
    );

late final _ureldatefmt_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Double offset,
  Int32 unit,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
)>('ureldatefmt_format');

int ureldatefmt_formatNumeric(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
) =>
    _ureldatefmt_formatNumeric(
      reldatefmt,
      offset,
      unit,
      result,
      resultCapacity,
      status,
    );

late final _ureldatefmt_formatNumeric = _icu.lookupFunction<
    Int32 Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Double offset,
  Int32 unit,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
)>('ureldatefmt_formatNumeric');

void ureldatefmt_formatNumericToResult(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<UFormattedRelativeDateTime> result,
  Pointer<Int32> status,
) =>
    _ureldatefmt_formatNumericToResult(
      reldatefmt,
      offset,
      unit,
      result,
      status,
    );

late final _ureldatefmt_formatNumericToResult = _icu.lookupFunction<
    Void Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Double offset,
  Int32 unit,
  Pointer<UFormattedRelativeDateTime> result,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<UFormattedRelativeDateTime> result,
  Pointer<Int32> status,
)>('ureldatefmt_formatNumericToResult');

void ureldatefmt_formatToResult(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<UFormattedRelativeDateTime> result,
  Pointer<Int32> status,
) =>
    _ureldatefmt_formatToResult(
      reldatefmt,
      offset,
      unit,
      result,
      status,
    );

late final _ureldatefmt_formatToResult = _icu.lookupFunction<
    Void Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  Double offset,
  Int32 unit,
  Pointer<UFormattedRelativeDateTime> result,
  Pointer<Int32> status,
),
    void Function(
  Pointer<URelativeDateTimeFormatter> reldatefmt,
  double offset,
  int unit,
  Pointer<UFormattedRelativeDateTime> result,
  Pointer<Int32> status,
)>('ureldatefmt_formatToResult');

Pointer<URelativeDateTimeFormatter> ureldatefmt_open(
  Pointer<Utf8> locale,
  Pointer<Pointer> nfToAdopt,
  int width,
  int capitalizationContext,
  Pointer<Int32> status,
) =>
    _ureldatefmt_open(
      locale,
      nfToAdopt,
      width,
      capitalizationContext,
      status,
    );

late final _ureldatefmt_open = _icu.lookupFunction<
    Pointer<URelativeDateTimeFormatter> Function(
  Pointer<Utf8> locale,
  Pointer<Pointer> nfToAdopt,
  Int32 width,
  Int32 capitalizationContext,
  Pointer<Int32> status,
),
    Pointer<URelativeDateTimeFormatter> Function(
  Pointer<Utf8> locale,
  Pointer<Pointer> nfToAdopt,
  int width,
  int capitalizationContext,
  Pointer<Int32> status,
)>('ureldatefmt_open');

Pointer<UFormattedRelativeDateTime> ureldatefmt_openResult(
  Pointer<Int32> ec,
) =>
    _ureldatefmt_openResult(
      ec,
    );

late final _ureldatefmt_openResult = _icu.lookupFunction<
    Pointer<UFormattedRelativeDateTime> Function(
  Pointer<Int32> ec,
),
    Pointer<UFormattedRelativeDateTime> Function(
  Pointer<Int32> ec,
)>('ureldatefmt_openResult');

Pointer<UFormattedValue> ureldatefmt_resultAsValue(
  Pointer<UFormattedRelativeDateTime> ufrdt,
  Pointer<Int32> ec,
) =>
    _ureldatefmt_resultAsValue(
      ufrdt,
      ec,
    );

late final _ureldatefmt_resultAsValue = _icu.lookupFunction<
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedRelativeDateTime> ufrdt,
  Pointer<Int32> ec,
),
    Pointer<UFormattedValue> Function(
  Pointer<UFormattedRelativeDateTime> ufrdt,
  Pointer<Int32> ec,
)>('ureldatefmt_resultAsValue');

void ures_close(
  Pointer<UResourceBundle> resourceBundle,
) =>
    _ures_close(
      resourceBundle,
    );

late final _ures_close = _icu.lookupFunction<
    Void Function(
  Pointer<UResourceBundle> resourceBundle,
),
    void Function(
  Pointer<UResourceBundle> resourceBundle,
)>('ures_close');

Pointer<Uint8> ures_getBinary(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ures_getBinary(
      resourceBundle,
      len,
      status,
    );

late final _ures_getBinary = _icu.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Uint8> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ures_getBinary');

Pointer<UResourceBundle> ures_getByIndex(
  Pointer<UResourceBundle> resourceBundle,
  int indexR,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
) =>
    _ures_getByIndex(
      resourceBundle,
      indexR,
      fillIn,
      status,
    );

late final _ures_getByIndex = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<UResourceBundle> resourceBundle,
  Int32 indexR,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
),
    Pointer<UResourceBundle> Function(
  Pointer<UResourceBundle> resourceBundle,
  int indexR,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
)>('ures_getByIndex');

Pointer<UResourceBundle> ures_getByKey(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Utf8> key,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
) =>
    _ures_getByKey(
      resourceBundle,
      key,
      fillIn,
      status,
    );

late final _ures_getByKey = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Utf8> key,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
),
    Pointer<UResourceBundle> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Utf8> key,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
)>('ures_getByKey');

int ures_getInt(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> status,
) =>
    _ures_getInt(
      resourceBundle,
      status,
    );

late final _ures_getInt = _icu.lookupFunction<
    Int32 Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> status,
)>('ures_getInt');

Pointer<Int32> ures_getIntVector(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ures_getIntVector(
      resourceBundle,
      len,
      status,
    );

late final _ures_getIntVector = _icu.lookupFunction<
    Pointer<Int32> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Int32> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ures_getIntVector');

Pointer<Utf8> ures_getKey(
  Pointer<UResourceBundle> resourceBundle,
) =>
    _ures_getKey(
      resourceBundle,
    );

late final _ures_getKey = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resourceBundle,
),
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resourceBundle,
)>('ures_getKey');

Pointer<Utf8> ures_getLocaleByType(
  Pointer<UResourceBundle> resourceBundle,
  int type,
  Pointer<Int32> status,
) =>
    _ures_getLocaleByType(
      resourceBundle,
      type,
      status,
    );

late final _ures_getLocaleByType = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resourceBundle,
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resourceBundle,
  int type,
  Pointer<Int32> status,
)>('ures_getLocaleByType');

Pointer<UResourceBundle> ures_getNextResource(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
) =>
    _ures_getNextResource(
      resourceBundle,
      fillIn,
      status,
    );

late final _ures_getNextResource = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
),
    Pointer<UResourceBundle> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<UResourceBundle> fillIn,
  Pointer<Int32> status,
)>('ures_getNextResource');

Pointer<Uint16> ures_getNextString(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Pointer<Int8>> key,
  Pointer<Int32> status,
) =>
    _ures_getNextString(
      resourceBundle,
      len,
      key,
      status,
    );

late final _ures_getNextString = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Pointer<Int8>> key,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Pointer<Int8>> key,
  Pointer<Int32> status,
)>('ures_getNextString');

int ures_getSize(
  Pointer<UResourceBundle> resourceBundle,
) =>
    _ures_getSize(
      resourceBundle,
    );

late final _ures_getSize = _icu.lookupFunction<
    Int32 Function(
  Pointer<UResourceBundle> resourceBundle,
),
    int Function(
  Pointer<UResourceBundle> resourceBundle,
)>('ures_getSize');

Pointer<Uint16> ures_getString(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ures_getString(
      resourceBundle,
      len,
      status,
    );

late final _ures_getString = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ures_getString');

Pointer<Uint16> ures_getStringByIndex(
  Pointer<UResourceBundle> resourceBundle,
  int indexS,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ures_getStringByIndex(
      resourceBundle,
      indexS,
      len,
      status,
    );

late final _ures_getStringByIndex = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resourceBundle,
  Int32 indexS,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resourceBundle,
  int indexS,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ures_getStringByIndex');

Pointer<Uint16> ures_getStringByKey(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> key,
  Pointer<Int32> len,
  Pointer<Int32> status,
) =>
    _ures_getStringByKey(
      resB,
      key,
      len,
      status,
    );

late final _ures_getStringByKey = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> key,
  Pointer<Int32> len,
  Pointer<Int32> status,
),
    Pointer<Uint16> Function(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> key,
  Pointer<Int32> len,
  Pointer<Int32> status,
)>('ures_getStringByKey');

int ures_getType(
  Pointer<UResourceBundle> resourceBundle,
) =>
    _ures_getType(
      resourceBundle,
    );

late final _ures_getType = _icu.lookupFunction<
    Int32 Function(
  Pointer<UResourceBundle> resourceBundle,
),
    int Function(
  Pointer<UResourceBundle> resourceBundle,
)>('ures_getType');

int ures_getUInt(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> status,
) =>
    _ures_getUInt(
      resourceBundle,
      status,
    );

late final _ures_getUInt = _icu.lookupFunction<
    Uint32 Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UResourceBundle> resourceBundle,
  Pointer<Int32> status,
)>('ures_getUInt');

Pointer<Utf8> ures_getUTF8String(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> dest,
  Pointer<Int32> length,
  int forceCopy,
  Pointer<Int32> status,
) =>
    _ures_getUTF8String(
      resB,
      dest,
      length,
      forceCopy,
      status,
    );

late final _ures_getUTF8String = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> dest,
  Pointer<Int32> length,
  Int8 forceCopy,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> dest,
  Pointer<Int32> length,
  int forceCopy,
  Pointer<Int32> status,
)>('ures_getUTF8String');

Pointer<Utf8> ures_getUTF8StringByIndex(
  Pointer<UResourceBundle> resB,
  int stringIndex,
  Pointer<Utf8> dest,
  Pointer<Int32> pLength,
  int forceCopy,
  Pointer<Int32> status,
) =>
    _ures_getUTF8StringByIndex(
      resB,
      stringIndex,
      dest,
      pLength,
      forceCopy,
      status,
    );

late final _ures_getUTF8StringByIndex = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resB,
  Int32 stringIndex,
  Pointer<Utf8> dest,
  Pointer<Int32> pLength,
  Int8 forceCopy,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resB,
  int stringIndex,
  Pointer<Utf8> dest,
  Pointer<Int32> pLength,
  int forceCopy,
  Pointer<Int32> status,
)>('ures_getUTF8StringByIndex');

Pointer<Utf8> ures_getUTF8StringByKey(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> key,
  Pointer<Utf8> dest,
  Pointer<Int32> pLength,
  int forceCopy,
  Pointer<Int32> status,
) =>
    _ures_getUTF8StringByKey(
      resB,
      key,
      dest,
      pLength,
      forceCopy,
      status,
    );

late final _ures_getUTF8StringByKey = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> key,
  Pointer<Utf8> dest,
  Pointer<Int32> pLength,
  Int8 forceCopy,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<UResourceBundle> resB,
  Pointer<Utf8> key,
  Pointer<Utf8> dest,
  Pointer<Int32> pLength,
  int forceCopy,
  Pointer<Int32> status,
)>('ures_getUTF8StringByKey');

void ures_getVersion(
  Pointer<UResourceBundle> resB,
  Pointer<Uint8> versionInfo,
) =>
    _ures_getVersion(
      resB,
      versionInfo,
    );

late final _ures_getVersion = _icu.lookupFunction<
    Void Function(
  Pointer<UResourceBundle> resB,
  Pointer<Uint8> versionInfo,
),
    void Function(
  Pointer<UResourceBundle> resB,
  Pointer<Uint8> versionInfo,
)>('ures_getVersion');

int ures_hasNext(
  Pointer<UResourceBundle> resourceBundle,
) =>
    _ures_hasNext(
      resourceBundle,
    );

late final _ures_hasNext = _icu.lookupFunction<
    Int8 Function(
  Pointer<UResourceBundle> resourceBundle,
),
    int Function(
  Pointer<UResourceBundle> resourceBundle,
)>('ures_hasNext');

Pointer<UResourceBundle> ures_open(
  Pointer<Utf8> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _ures_open(
      packageName,
      locale,
      status,
    );

late final _ures_open = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UResourceBundle> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('ures_open');

Pointer<UEnumeration> ures_openAvailableLocales(
  Pointer<Utf8> packageName,
  Pointer<Int32> status,
) =>
    _ures_openAvailableLocales(
      packageName,
      status,
    );

late final _ures_openAvailableLocales = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Utf8> packageName,
  Pointer<Int32> status,
),
    Pointer<UEnumeration> Function(
  Pointer<Utf8> packageName,
  Pointer<Int32> status,
)>('ures_openAvailableLocales');

Pointer<UResourceBundle> ures_openDirect(
  Pointer<Utf8> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _ures_openDirect(
      packageName,
      locale,
      status,
    );

late final _ures_openDirect = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UResourceBundle> Function(
  Pointer<Utf8> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('ures_openDirect');

Pointer<UResourceBundle> ures_openU(
  Pointer<Uint16> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
) =>
    _ures_openU(
      packageName,
      locale,
      status,
    );

late final _ures_openU = _icu.lookupFunction<
    Pointer<UResourceBundle> Function(
  Pointer<Uint16> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
),
    Pointer<UResourceBundle> Function(
  Pointer<Uint16> packageName,
  Pointer<Utf8> locale,
  Pointer<Int32> status,
)>('ures_openU');

void ures_resetIterator(
  Pointer<UResourceBundle> resourceBundle,
) =>
    _ures_resetIterator(
      resourceBundle,
    );

late final _ures_resetIterator = _icu.lookupFunction<
    Void Function(
  Pointer<UResourceBundle> resourceBundle,
),
    void Function(
  Pointer<UResourceBundle> resourceBundle,
)>('ures_resetIterator');

int uscript_breaksBetweenLetters(
  int script,
) =>
    _uscript_breaksBetweenLetters(
      script,
    );

late final _uscript_breaksBetweenLetters = _icu.lookupFunction<
    Int8 Function(
  Int32 script,
),
    int Function(
  int script,
)>('uscript_breaksBetweenLetters');

int uscript_getCode(
  Pointer<Utf8> nameOrAbbrOrLocale,
  Pointer<Int32> fillIn,
  int capacity,
  Pointer<Int32> err,
) =>
    _uscript_getCode(
      nameOrAbbrOrLocale,
      fillIn,
      capacity,
      err,
    );

late final _uscript_getCode = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> nameOrAbbrOrLocale,
  Pointer<Int32> fillIn,
  Int32 capacity,
  Pointer<Int32> err,
),
    int Function(
  Pointer<Utf8> nameOrAbbrOrLocale,
  Pointer<Int32> fillIn,
  int capacity,
  Pointer<Int32> err,
)>('uscript_getCode');

Pointer<Utf8> uscript_getName(
  int scriptCode,
) =>
    _uscript_getName(
      scriptCode,
    );

late final _uscript_getName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 scriptCode,
),
    Pointer<Utf8> Function(
  int scriptCode,
)>('uscript_getName');

int uscript_getSampleString(
  int script,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<Int32> pErrorCode,
) =>
    _uscript_getSampleString(
      script,
      dest,
      capacity,
      pErrorCode,
    );

late final _uscript_getSampleString = _icu.lookupFunction<
    Int32 Function(
  Int32 script,
  Pointer<Uint16> dest,
  Int32 capacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  int script,
  Pointer<Uint16> dest,
  int capacity,
  Pointer<Int32> pErrorCode,
)>('uscript_getSampleString');

int uscript_getScript(
  int codepoint,
  Pointer<Int32> err,
) =>
    _uscript_getScript(
      codepoint,
      err,
    );

late final _uscript_getScript = _icu.lookupFunction<
    Int32 Function(
  Int32 codepoint,
  Pointer<Int32> err,
),
    int Function(
  int codepoint,
  Pointer<Int32> err,
)>('uscript_getScript');

int uscript_getScriptExtensions(
  int c,
  Pointer<Int32> scripts,
  int capacity,
  Pointer<Int32> errorCode,
) =>
    _uscript_getScriptExtensions(
      c,
      scripts,
      capacity,
      errorCode,
    );

late final _uscript_getScriptExtensions = _icu.lookupFunction<
    Int32 Function(
  Int32 c,
  Pointer<Int32> scripts,
  Int32 capacity,
  Pointer<Int32> errorCode,
),
    int Function(
  int c,
  Pointer<Int32> scripts,
  int capacity,
  Pointer<Int32> errorCode,
)>('uscript_getScriptExtensions');

Pointer<Utf8> uscript_getShortName(
  int scriptCode,
) =>
    _uscript_getShortName(
      scriptCode,
    );

late final _uscript_getShortName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 scriptCode,
),
    Pointer<Utf8> Function(
  int scriptCode,
)>('uscript_getShortName');

int uscript_getUsage(
  int script,
) =>
    _uscript_getUsage(
      script,
    );

late final _uscript_getUsage = _icu.lookupFunction<
    Int32 Function(
  Int32 script,
),
    int Function(
  int script,
)>('uscript_getUsage');

int uscript_hasScript(
  int c,
  int sc,
) =>
    _uscript_hasScript(
      c,
      sc,
    );

late final _uscript_hasScript = _icu.lookupFunction<
    Int8 Function(
  Int32 c,
  Int32 sc,
),
    int Function(
  int c,
  int sc,
)>('uscript_hasScript');

int uscript_isCased(
  int script,
) =>
    _uscript_isCased(
      script,
    );

late final _uscript_isCased = _icu.lookupFunction<
    Int8 Function(
  Int32 script,
),
    int Function(
  int script,
)>('uscript_isCased');

int uscript_isRightToLeft(
  int script,
) =>
    _uscript_isRightToLeft(
      script,
    );

late final _uscript_isRightToLeft = _icu.lookupFunction<
    Int8 Function(
  Int32 script,
),
    int Function(
  int script,
)>('uscript_isRightToLeft');

void usearch_close(
  Pointer<UStringSearch> searchiter,
) =>
    _usearch_close(
      searchiter,
    );

late final _usearch_close = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> searchiter,
),
    void Function(
  Pointer<UStringSearch> searchiter,
)>('usearch_close');

int usearch_first(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
) =>
    _usearch_first(
      strsrch,
      status,
    );

late final _usearch_first = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
)>('usearch_first');

int usearch_following(
  Pointer<UStringSearch> strsrch,
  int position,
  Pointer<Int32> status,
) =>
    _usearch_following(
      strsrch,
      position,
      status,
    );

late final _usearch_following = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Int32 position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  int position,
  Pointer<Int32> status,
)>('usearch_following');

int usearch_getAttribute(
  Pointer<UStringSearch> strsrch,
  int attribute,
) =>
    _usearch_getAttribute(
      strsrch,
      attribute,
    );

late final _usearch_getAttribute = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Int32 attribute,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  int attribute,
)>('usearch_getAttribute');

Pointer<UBreakIterator> usearch_getBreakIterator(
  Pointer<UStringSearch> strsrch,
) =>
    _usearch_getBreakIterator(
      strsrch,
    );

late final _usearch_getBreakIterator = _icu.lookupFunction<
    Pointer<UBreakIterator> Function(
  Pointer<UStringSearch> strsrch,
),
    Pointer<UBreakIterator> Function(
  Pointer<UStringSearch> strsrch,
)>('usearch_getBreakIterator');

Pointer<UCollator> usearch_getCollator(
  Pointer<UStringSearch> strsrch,
) =>
    _usearch_getCollator(
      strsrch,
    );

late final _usearch_getCollator = _icu.lookupFunction<
    Pointer<UCollator> Function(
  Pointer<UStringSearch> strsrch,
),
    Pointer<UCollator> Function(
  Pointer<UStringSearch> strsrch,
)>('usearch_getCollator');

int usearch_getMatchedLength(
  Pointer<UStringSearch> strsrch,
) =>
    _usearch_getMatchedLength(
      strsrch,
    );

late final _usearch_getMatchedLength = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
),
    int Function(
  Pointer<UStringSearch> strsrch,
)>('usearch_getMatchedLength');

int usearch_getMatchedStart(
  Pointer<UStringSearch> strsrch,
) =>
    _usearch_getMatchedStart(
      strsrch,
    );

late final _usearch_getMatchedStart = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
),
    int Function(
  Pointer<UStringSearch> strsrch,
)>('usearch_getMatchedStart');

int usearch_getMatchedText(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
) =>
    _usearch_getMatchedText(
      strsrch,
      result,
      resultCapacity,
      status,
    );

late final _usearch_getMatchedText = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> result,
  int resultCapacity,
  Pointer<Int32> status,
)>('usearch_getMatchedText');

int usearch_getOffset(
  Pointer<UStringSearch> strsrch,
) =>
    _usearch_getOffset(
      strsrch,
    );

late final _usearch_getOffset = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
),
    int Function(
  Pointer<UStringSearch> strsrch,
)>('usearch_getOffset');

Pointer<Uint16> usearch_getPattern(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> length,
) =>
    _usearch_getPattern(
      strsrch,
      length,
    );

late final _usearch_getPattern = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> length,
),
    Pointer<Uint16> Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> length,
)>('usearch_getPattern');

Pointer<Uint16> usearch_getText(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> length,
) =>
    _usearch_getText(
      strsrch,
      length,
    );

late final _usearch_getText = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> length,
),
    Pointer<Uint16> Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> length,
)>('usearch_getText');

int usearch_last(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
) =>
    _usearch_last(
      strsrch,
      status,
    );

late final _usearch_last = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
)>('usearch_last');

int usearch_next(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
) =>
    _usearch_next(
      strsrch,
      status,
    );

late final _usearch_next = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
)>('usearch_next');

Pointer<UStringSearch> usearch_open(
  Pointer<Uint16> pattern,
  int patternlength,
  Pointer<Uint16> text,
  int textlength,
  Pointer<Utf8> locale,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
) =>
    _usearch_open(
      pattern,
      patternlength,
      text,
      textlength,
      locale,
      breakiter,
      status,
    );

late final _usearch_open = _icu.lookupFunction<
    Pointer<UStringSearch> Function(
  Pointer<Uint16> pattern,
  Int32 patternlength,
  Pointer<Uint16> text,
  Int32 textlength,
  Pointer<Utf8> locale,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
),
    Pointer<UStringSearch> Function(
  Pointer<Uint16> pattern,
  int patternlength,
  Pointer<Uint16> text,
  int textlength,
  Pointer<Utf8> locale,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
)>('usearch_open');

Pointer<UStringSearch> usearch_openFromCollator(
  Pointer<Uint16> pattern,
  int patternlength,
  Pointer<Uint16> text,
  int textlength,
  Pointer<UCollator> collator,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
) =>
    _usearch_openFromCollator(
      pattern,
      patternlength,
      text,
      textlength,
      collator,
      breakiter,
      status,
    );

late final _usearch_openFromCollator = _icu.lookupFunction<
    Pointer<UStringSearch> Function(
  Pointer<Uint16> pattern,
  Int32 patternlength,
  Pointer<Uint16> text,
  Int32 textlength,
  Pointer<UCollator> collator,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
),
    Pointer<UStringSearch> Function(
  Pointer<Uint16> pattern,
  int patternlength,
  Pointer<Uint16> text,
  int textlength,
  Pointer<UCollator> collator,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
)>('usearch_openFromCollator');

int usearch_preceding(
  Pointer<UStringSearch> strsrch,
  int position,
  Pointer<Int32> status,
) =>
    _usearch_preceding(
      strsrch,
      position,
      status,
    );

late final _usearch_preceding = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Int32 position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  int position,
  Pointer<Int32> status,
)>('usearch_preceding');

int usearch_previous(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
) =>
    _usearch_previous(
      strsrch,
      status,
    );

late final _usearch_previous = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Int32> status,
)>('usearch_previous');

void usearch_reset(
  Pointer<UStringSearch> strsrch,
) =>
    _usearch_reset(
      strsrch,
    );

late final _usearch_reset = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
),
    void Function(
  Pointer<UStringSearch> strsrch,
)>('usearch_reset');

void usearch_setAttribute(
  Pointer<UStringSearch> strsrch,
  int attribute,
  int value,
  Pointer<Int32> status,
) =>
    _usearch_setAttribute(
      strsrch,
      attribute,
      value,
      status,
    );

late final _usearch_setAttribute = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
  Int32 attribute,
  Int32 value,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UStringSearch> strsrch,
  int attribute,
  int value,
  Pointer<Int32> status,
)>('usearch_setAttribute');

void usearch_setBreakIterator(
  Pointer<UStringSearch> strsrch,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
) =>
    _usearch_setBreakIterator(
      strsrch,
      breakiter,
      status,
    );

late final _usearch_setBreakIterator = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<UBreakIterator> breakiter,
  Pointer<Int32> status,
)>('usearch_setBreakIterator');

void usearch_setCollator(
  Pointer<UStringSearch> strsrch,
  Pointer<UCollator> collator,
  Pointer<Int32> status,
) =>
    _usearch_setCollator(
      strsrch,
      collator,
      status,
    );

late final _usearch_setCollator = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<UCollator> collator,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<UCollator> collator,
  Pointer<Int32> status,
)>('usearch_setCollator');

void usearch_setOffset(
  Pointer<UStringSearch> strsrch,
  int position,
  Pointer<Int32> status,
) =>
    _usearch_setOffset(
      strsrch,
      position,
      status,
    );

late final _usearch_setOffset = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
  Int32 position,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UStringSearch> strsrch,
  int position,
  Pointer<Int32> status,
)>('usearch_setOffset');

void usearch_setPattern(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> pattern,
  int patternlength,
  Pointer<Int32> status,
) =>
    _usearch_setPattern(
      strsrch,
      pattern,
      patternlength,
      status,
    );

late final _usearch_setPattern = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> pattern,
  Int32 patternlength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> pattern,
  int patternlength,
  Pointer<Int32> status,
)>('usearch_setPattern');

void usearch_setText(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> text,
  int textlength,
  Pointer<Int32> status,
) =>
    _usearch_setText(
      strsrch,
      text,
      textlength,
      status,
    );

late final _usearch_setText = _icu.lookupFunction<
    Void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> text,
  Int32 textlength,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UStringSearch> strsrch,
  Pointer<Uint16> text,
  int textlength,
  Pointer<Int32> status,
)>('usearch_setText');

void uset_add(
  Pointer<USet> set,
  int c,
) =>
    _uset_add(
      set,
      c,
    );

late final _uset_add = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 c,
),
    void Function(
  Pointer<USet> set,
  int c,
)>('uset_add');

void uset_addAll(
  Pointer<USet> set,
  Pointer<USet> additionalSet,
) =>
    _uset_addAll(
      set,
      additionalSet,
    );

late final _uset_addAll = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<USet> additionalSet,
),
    void Function(
  Pointer<USet> set,
  Pointer<USet> additionalSet,
)>('uset_addAll');

void uset_addAllCodePoints(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
) =>
    _uset_addAllCodePoints(
      set,
      str,
      strLen,
    );

late final _uset_addAllCodePoints = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  Int32 strLen,
),
    void Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
)>('uset_addAllCodePoints');

void uset_addRange(
  Pointer<USet> set,
  int start,
  int end,
) =>
    _uset_addRange(
      set,
      start,
      end,
    );

late final _uset_addRange = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 start,
  Int32 end,
),
    void Function(
  Pointer<USet> set,
  int start,
  int end,
)>('uset_addRange');

void uset_addString(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
) =>
    _uset_addString(
      set,
      str,
      strLen,
    );

late final _uset_addString = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  Int32 strLen,
),
    void Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
)>('uset_addString');

void uset_applyIntPropertyValue(
  Pointer<USet> set,
  int prop,
  int value,
  Pointer<Int32> ec,
) =>
    _uset_applyIntPropertyValue(
      set,
      prop,
      value,
      ec,
    );

late final _uset_applyIntPropertyValue = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 prop,
  Int32 value,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<USet> set,
  int prop,
  int value,
  Pointer<Int32> ec,
)>('uset_applyIntPropertyValue');

int uset_applyPattern(
  Pointer<USet> set,
  Pointer<Uint16> pattern,
  int patternLength,
  int options,
  Pointer<Int32> status,
) =>
    _uset_applyPattern(
      set,
      pattern,
      patternLength,
      options,
      status,
    );

late final _uset_applyPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Uint32 options,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> pattern,
  int patternLength,
  int options,
  Pointer<Int32> status,
)>('uset_applyPattern');

void uset_applyPropertyAlias(
  Pointer<USet> set,
  Pointer<Uint16> prop,
  int propLength,
  Pointer<Uint16> value,
  int valueLength,
  Pointer<Int32> ec,
) =>
    _uset_applyPropertyAlias(
      set,
      prop,
      propLength,
      value,
      valueLength,
      ec,
    );

late final _uset_applyPropertyAlias = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<Uint16> prop,
  Int32 propLength,
  Pointer<Uint16> value,
  Int32 valueLength,
  Pointer<Int32> ec,
),
    void Function(
  Pointer<USet> set,
  Pointer<Uint16> prop,
  int propLength,
  Pointer<Uint16> value,
  int valueLength,
  Pointer<Int32> ec,
)>('uset_applyPropertyAlias');

int uset_charAt(
  Pointer<USet> set,
  int charIndex,
) =>
    _uset_charAt(
      set,
      charIndex,
    );

late final _uset_charAt = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Int32 charIndex,
),
    int Function(
  Pointer<USet> set,
  int charIndex,
)>('uset_charAt');

void uset_clear(
  Pointer<USet> set,
) =>
    _uset_clear(
      set,
    );

late final _uset_clear = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
),
    void Function(
  Pointer<USet> set,
)>('uset_clear');

Pointer<USet> uset_clone(
  Pointer<USet> set,
) =>
    _uset_clone(
      set,
    );

late final _uset_clone = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<USet> set,
),
    Pointer<USet> Function(
  Pointer<USet> set,
)>('uset_clone');

Pointer<USet> uset_cloneAsThawed(
  Pointer<USet> set,
) =>
    _uset_cloneAsThawed(
      set,
    );

late final _uset_cloneAsThawed = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<USet> set,
),
    Pointer<USet> Function(
  Pointer<USet> set,
)>('uset_cloneAsThawed');

void uset_close(
  Pointer<USet> set,
) =>
    _uset_close(
      set,
    );

late final _uset_close = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
),
    void Function(
  Pointer<USet> set,
)>('uset_close');

void uset_closeOver(
  Pointer<USet> set,
  int attributes,
) =>
    _uset_closeOver(
      set,
      attributes,
    );

late final _uset_closeOver = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 attributes,
),
    void Function(
  Pointer<USet> set,
  int attributes,
)>('uset_closeOver');

void uset_compact(
  Pointer<USet> set,
) =>
    _uset_compact(
      set,
    );

late final _uset_compact = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
),
    void Function(
  Pointer<USet> set,
)>('uset_compact');

void uset_complement(
  Pointer<USet> set,
) =>
    _uset_complement(
      set,
    );

late final _uset_complement = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
),
    void Function(
  Pointer<USet> set,
)>('uset_complement');

void uset_complementAll(
  Pointer<USet> set,
  Pointer<USet> complement,
) =>
    _uset_complementAll(
      set,
      complement,
    );

late final _uset_complementAll = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<USet> complement,
),
    void Function(
  Pointer<USet> set,
  Pointer<USet> complement,
)>('uset_complementAll');

int uset_contains(
  Pointer<USet> set,
  int c,
) =>
    _uset_contains(
      set,
      c,
    );

late final _uset_contains = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set,
  Int32 c,
),
    int Function(
  Pointer<USet> set,
  int c,
)>('uset_contains');

int uset_containsAll(
  Pointer<USet> set1,
  Pointer<USet> set2,
) =>
    _uset_containsAll(
      set1,
      set2,
    );

late final _uset_containsAll = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
),
    int Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
)>('uset_containsAll');

int uset_containsAllCodePoints(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
) =>
    _uset_containsAllCodePoints(
      set,
      str,
      strLen,
    );

late final _uset_containsAllCodePoints = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  Int32 strLen,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
)>('uset_containsAllCodePoints');

int uset_containsNone(
  Pointer<USet> set1,
  Pointer<USet> set2,
) =>
    _uset_containsNone(
      set1,
      set2,
    );

late final _uset_containsNone = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
),
    int Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
)>('uset_containsNone');

int uset_containsRange(
  Pointer<USet> set,
  int start,
  int end,
) =>
    _uset_containsRange(
      set,
      start,
      end,
    );

late final _uset_containsRange = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set,
  Int32 start,
  Int32 end,
),
    int Function(
  Pointer<USet> set,
  int start,
  int end,
)>('uset_containsRange');

int uset_containsSome(
  Pointer<USet> set1,
  Pointer<USet> set2,
) =>
    _uset_containsSome(
      set1,
      set2,
    );

late final _uset_containsSome = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
),
    int Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
)>('uset_containsSome');

int uset_containsString(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
) =>
    _uset_containsString(
      set,
      str,
      strLen,
    );

late final _uset_containsString = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  Int32 strLen,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
)>('uset_containsString');

int uset_equals(
  Pointer<USet> set1,
  Pointer<USet> set2,
) =>
    _uset_equals(
      set1,
      set2,
    );

late final _uset_equals = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
),
    int Function(
  Pointer<USet> set1,
  Pointer<USet> set2,
)>('uset_equals');

void uset_freeze(
  Pointer<USet> set,
) =>
    _uset_freeze(
      set,
    );

late final _uset_freeze = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
),
    void Function(
  Pointer<USet> set,
)>('uset_freeze');

int uset_getItem(
  Pointer<USet> set,
  int itemIndex,
  Pointer<Int32> start,
  Pointer<Int32> end,
  Pointer<Uint16> str,
  int strCapacity,
  Pointer<Int32> ec,
) =>
    _uset_getItem(
      set,
      itemIndex,
      start,
      end,
      str,
      strCapacity,
      ec,
    );

late final _uset_getItem = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Int32 itemIndex,
  Pointer<Int32> start,
  Pointer<Int32> end,
  Pointer<Uint16> str,
  Int32 strCapacity,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<USet> set,
  int itemIndex,
  Pointer<Int32> start,
  Pointer<Int32> end,
  Pointer<Uint16> str,
  int strCapacity,
  Pointer<Int32> ec,
)>('uset_getItem');

int uset_getItemCount(
  Pointer<USet> set,
) =>
    _uset_getItemCount(
      set,
    );

late final _uset_getItemCount = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
),
    int Function(
  Pointer<USet> set,
)>('uset_getItemCount');

int uset_getSerializedRange(
  Pointer<USerializedSet> set,
  int rangeIndex,
  Pointer<Int32> pStart,
  Pointer<Int32> pEnd,
) =>
    _uset_getSerializedRange(
      set,
      rangeIndex,
      pStart,
      pEnd,
    );

late final _uset_getSerializedRange = _icu.lookupFunction<
    Int8 Function(
  Pointer<USerializedSet> set,
  Int32 rangeIndex,
  Pointer<Int32> pStart,
  Pointer<Int32> pEnd,
),
    int Function(
  Pointer<USerializedSet> set,
  int rangeIndex,
  Pointer<Int32> pStart,
  Pointer<Int32> pEnd,
)>('uset_getSerializedRange');

int uset_getSerializedRangeCount(
  Pointer<USerializedSet> set,
) =>
    _uset_getSerializedRangeCount(
      set,
    );

late final _uset_getSerializedRangeCount = _icu.lookupFunction<
    Int32 Function(
  Pointer<USerializedSet> set,
),
    int Function(
  Pointer<USerializedSet> set,
)>('uset_getSerializedRangeCount');

int uset_getSerializedSet(
  Pointer<USerializedSet> fillSet,
  Pointer<Uint16> src,
  int srcLength,
) =>
    _uset_getSerializedSet(
      fillSet,
      src,
      srcLength,
    );

late final _uset_getSerializedSet = _icu.lookupFunction<
    Int8 Function(
  Pointer<USerializedSet> fillSet,
  Pointer<Uint16> src,
  Int32 srcLength,
),
    int Function(
  Pointer<USerializedSet> fillSet,
  Pointer<Uint16> src,
  int srcLength,
)>('uset_getSerializedSet');

int uset_indexOf(
  Pointer<USet> set,
  int c,
) =>
    _uset_indexOf(
      set,
      c,
    );

late final _uset_indexOf = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Int32 c,
),
    int Function(
  Pointer<USet> set,
  int c,
)>('uset_indexOf');

int uset_isEmpty(
  Pointer<USet> set,
) =>
    _uset_isEmpty(
      set,
    );

late final _uset_isEmpty = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set,
),
    int Function(
  Pointer<USet> set,
)>('uset_isEmpty');

int uset_isFrozen(
  Pointer<USet> set,
) =>
    _uset_isFrozen(
      set,
    );

late final _uset_isFrozen = _icu.lookupFunction<
    Int8 Function(
  Pointer<USet> set,
),
    int Function(
  Pointer<USet> set,
)>('uset_isFrozen');

Pointer<USet> uset_open(
  int start,
  int end,
) =>
    _uset_open(
      start,
      end,
    );

late final _uset_open = _icu.lookupFunction<
    Pointer<USet> Function(
  Int32 start,
  Int32 end,
),
    Pointer<USet> Function(
  int start,
  int end,
)>('uset_open');

Pointer<USet> uset_openEmpty() => _uset_openEmpty();

late final _uset_openEmpty =
    _icu.lookupFunction<Pointer<USet> Function(), Pointer<USet> Function()>(
        'uset_openEmpty');

Pointer<USet> uset_openPattern(
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Int32> ec,
) =>
    _uset_openPattern(
      pattern,
      patternLength,
      ec,
    );

late final _uset_openPattern = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Pointer<Int32> ec,
),
    Pointer<USet> Function(
  Pointer<Uint16> pattern,
  int patternLength,
  Pointer<Int32> ec,
)>('uset_openPattern');

Pointer<USet> uset_openPatternOptions(
  Pointer<Uint16> pattern,
  int patternLength,
  int options,
  Pointer<Int32> ec,
) =>
    _uset_openPatternOptions(
      pattern,
      patternLength,
      options,
      ec,
    );

late final _uset_openPatternOptions = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Uint32 options,
  Pointer<Int32> ec,
),
    Pointer<USet> Function(
  Pointer<Uint16> pattern,
  int patternLength,
  int options,
  Pointer<Int32> ec,
)>('uset_openPatternOptions');

void uset_remove(
  Pointer<USet> set,
  int c,
) =>
    _uset_remove(
      set,
      c,
    );

late final _uset_remove = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 c,
),
    void Function(
  Pointer<USet> set,
  int c,
)>('uset_remove');

void uset_removeAll(
  Pointer<USet> set,
  Pointer<USet> removeSet,
) =>
    _uset_removeAll(
      set,
      removeSet,
    );

late final _uset_removeAll = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<USet> removeSet,
),
    void Function(
  Pointer<USet> set,
  Pointer<USet> removeSet,
)>('uset_removeAll');

void uset_removeAllStrings(
  Pointer<USet> set,
) =>
    _uset_removeAllStrings(
      set,
    );

late final _uset_removeAllStrings = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
),
    void Function(
  Pointer<USet> set,
)>('uset_removeAllStrings');

void uset_removeRange(
  Pointer<USet> set,
  int start,
  int end,
) =>
    _uset_removeRange(
      set,
      start,
      end,
    );

late final _uset_removeRange = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 start,
  Int32 end,
),
    void Function(
  Pointer<USet> set,
  int start,
  int end,
)>('uset_removeRange');

void uset_removeString(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
) =>
    _uset_removeString(
      set,
      str,
      strLen,
    );

late final _uset_removeString = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  Int32 strLen,
),
    void Function(
  Pointer<USet> set,
  Pointer<Uint16> str,
  int strLen,
)>('uset_removeString');

int uset_resemblesPattern(
  Pointer<Uint16> pattern,
  int patternLength,
  int pos,
) =>
    _uset_resemblesPattern(
      pattern,
      patternLength,
      pos,
    );

late final _uset_resemblesPattern = _icu.lookupFunction<
    Int8 Function(
  Pointer<Uint16> pattern,
  Int32 patternLength,
  Int32 pos,
),
    int Function(
  Pointer<Uint16> pattern,
  int patternLength,
  int pos,
)>('uset_resemblesPattern');

void uset_retain(
  Pointer<USet> set,
  int start,
  int end,
) =>
    _uset_retain(
      set,
      start,
      end,
    );

late final _uset_retain = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 start,
  Int32 end,
),
    void Function(
  Pointer<USet> set,
  int start,
  int end,
)>('uset_retain');

void uset_retainAll(
  Pointer<USet> set,
  Pointer<USet> retain,
) =>
    _uset_retainAll(
      set,
      retain,
    );

late final _uset_retainAll = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Pointer<USet> retain,
),
    void Function(
  Pointer<USet> set,
  Pointer<USet> retain,
)>('uset_retainAll');

int uset_serialize(
  Pointer<USet> set,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
) =>
    _uset_serialize(
      set,
      dest,
      destCapacity,
      pErrorCode,
    );

late final _uset_serialize = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> pErrorCode,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> pErrorCode,
)>('uset_serialize');

int uset_serializedContains(
  Pointer<USerializedSet> set,
  int c,
) =>
    _uset_serializedContains(
      set,
      c,
    );

late final _uset_serializedContains = _icu.lookupFunction<
    Int8 Function(
  Pointer<USerializedSet> set,
  Int32 c,
),
    int Function(
  Pointer<USerializedSet> set,
  int c,
)>('uset_serializedContains');

void uset_set(
  Pointer<USet> set,
  int start,
  int end,
) =>
    _uset_set(
      set,
      start,
      end,
    );

late final _uset_set = _icu.lookupFunction<
    Void Function(
  Pointer<USet> set,
  Int32 start,
  Int32 end,
),
    void Function(
  Pointer<USet> set,
  int start,
  int end,
)>('uset_set');

void uset_setSerializedToOne(
  Pointer<USerializedSet> fillSet,
  int c,
) =>
    _uset_setSerializedToOne(
      fillSet,
      c,
    );

late final _uset_setSerializedToOne = _icu.lookupFunction<
    Void Function(
  Pointer<USerializedSet> fillSet,
  Int32 c,
),
    void Function(
  Pointer<USerializedSet> fillSet,
  int c,
)>('uset_setSerializedToOne');

int uset_size(
  Pointer<USet> set,
) =>
    _uset_size(
      set,
    );

late final _uset_size = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
),
    int Function(
  Pointer<USet> set,
)>('uset_size');

int uset_span(
  Pointer<USet> set,
  Pointer<Uint16> s,
  int length,
  int spanCondition,
) =>
    _uset_span(
      set,
      s,
      length,
      spanCondition,
    );

late final _uset_span = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Uint16> s,
  Int32 length,
  Int32 spanCondition,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> s,
  int length,
  int spanCondition,
)>('uset_span');

int uset_spanBack(
  Pointer<USet> set,
  Pointer<Uint16> s,
  int length,
  int spanCondition,
) =>
    _uset_spanBack(
      set,
      s,
      length,
      spanCondition,
    );

late final _uset_spanBack = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Uint16> s,
  Int32 length,
  Int32 spanCondition,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> s,
  int length,
  int spanCondition,
)>('uset_spanBack');

int uset_spanBackUTF8(
  Pointer<USet> set,
  Pointer<Utf8> s,
  int length,
  int spanCondition,
) =>
    _uset_spanBackUTF8(
      set,
      s,
      length,
      spanCondition,
    );

late final _uset_spanBackUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Utf8> s,
  Int32 length,
  Int32 spanCondition,
),
    int Function(
  Pointer<USet> set,
  Pointer<Utf8> s,
  int length,
  int spanCondition,
)>('uset_spanBackUTF8');

int uset_spanUTF8(
  Pointer<USet> set,
  Pointer<Utf8> s,
  int length,
  int spanCondition,
) =>
    _uset_spanUTF8(
      set,
      s,
      length,
      spanCondition,
    );

late final _uset_spanUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Utf8> s,
  Int32 length,
  Int32 spanCondition,
),
    int Function(
  Pointer<USet> set,
  Pointer<Utf8> s,
  int length,
  int spanCondition,
)>('uset_spanUTF8');

int uset_toPattern(
  Pointer<USet> set,
  Pointer<Uint16> result,
  int resultCapacity,
  int escapeUnprintable,
  Pointer<Int32> ec,
) =>
    _uset_toPattern(
      set,
      result,
      resultCapacity,
      escapeUnprintable,
      ec,
    );

late final _uset_toPattern = _icu.lookupFunction<
    Int32 Function(
  Pointer<USet> set,
  Pointer<Uint16> result,
  Int32 resultCapacity,
  Int8 escapeUnprintable,
  Pointer<Int32> ec,
),
    int Function(
  Pointer<USet> set,
  Pointer<Uint16> result,
  int resultCapacity,
  int escapeUnprintable,
  Pointer<Int32> ec,
)>('uset_toPattern');

int uspoof_areConfusable(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id1,
  int length1,
  Pointer<Uint16> id2,
  int length2,
  Pointer<Int32> status,
) =>
    _uspoof_areConfusable(
      sc,
      id1,
      length1,
      id2,
      length2,
      status,
    );

late final _uspoof_areConfusable = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id1,
  Int32 length1,
  Pointer<Uint16> id2,
  Int32 length2,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id1,
  int length1,
  Pointer<Uint16> id2,
  int length2,
  Pointer<Int32> status,
)>('uspoof_areConfusable');

int uspoof_areConfusableUTF8(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id1,
  int length1,
  Pointer<Utf8> id2,
  int length2,
  Pointer<Int32> status,
) =>
    _uspoof_areConfusableUTF8(
      sc,
      id1,
      length1,
      id2,
      length2,
      status,
    );

late final _uspoof_areConfusableUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id1,
  Int32 length1,
  Pointer<Utf8> id2,
  Int32 length2,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id1,
  int length1,
  Pointer<Utf8> id2,
  int length2,
  Pointer<Int32> status,
)>('uspoof_areConfusableUTF8');

int uspoof_check(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id,
  int length,
  Pointer<Int32> position,
  Pointer<Int32> status,
) =>
    _uspoof_check(
      sc,
      id,
      length,
      position,
      status,
    );

late final _uspoof_check = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id,
  Int32 length,
  Pointer<Int32> position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id,
  int length,
  Pointer<Int32> position,
  Pointer<Int32> status,
)>('uspoof_check');

int uspoof_check2(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id,
  int length,
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
) =>
    _uspoof_check2(
      sc,
      id,
      length,
      checkResult,
      status,
    );

late final _uspoof_check2 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id,
  Int32 length,
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Uint16> id,
  int length,
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
)>('uspoof_check2');

int uspoof_check2UTF8(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id,
  int length,
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
) =>
    _uspoof_check2UTF8(
      sc,
      id,
      length,
      checkResult,
      status,
    );

late final _uspoof_check2UTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id,
  Int32 length,
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id,
  int length,
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
)>('uspoof_check2UTF8');

int uspoof_checkUTF8(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id,
  int length,
  Pointer<Int32> position,
  Pointer<Int32> status,
) =>
    _uspoof_checkUTF8(
      sc,
      id,
      length,
      position,
      status,
    );

late final _uspoof_checkUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id,
  Int32 length,
  Pointer<Int32> position,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> id,
  int length,
  Pointer<Int32> position,
  Pointer<Int32> status,
)>('uspoof_checkUTF8');

Pointer<USpoofChecker> uspoof_clone(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
) =>
    _uspoof_clone(
      sc,
      status,
    );

late final _uspoof_clone = _icu.lookupFunction<
    Pointer<USpoofChecker> Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
),
    Pointer<USpoofChecker> Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
)>('uspoof_clone');

void uspoof_close(
  Pointer<USpoofChecker> sc,
) =>
    _uspoof_close(
      sc,
    );

late final _uspoof_close = _icu.lookupFunction<
    Void Function(
  Pointer<USpoofChecker> sc,
),
    void Function(
  Pointer<USpoofChecker> sc,
)>('uspoof_close');

void uspoof_closeCheckResult(
  Pointer<USpoofCheckResult> checkResult,
) =>
    _uspoof_closeCheckResult(
      checkResult,
    );

late final _uspoof_closeCheckResult = _icu.lookupFunction<
    Void Function(
  Pointer<USpoofCheckResult> checkResult,
),
    void Function(
  Pointer<USpoofCheckResult> checkResult,
)>('uspoof_closeCheckResult');

Pointer<USet> uspoof_getAllowedChars(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
) =>
    _uspoof_getAllowedChars(
      sc,
      status,
    );

late final _uspoof_getAllowedChars = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
)>('uspoof_getAllowedChars');

Pointer<Utf8> uspoof_getAllowedLocales(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
) =>
    _uspoof_getAllowedLocales(
      sc,
      status,
    );

late final _uspoof_getAllowedLocales = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
),
    Pointer<Utf8> Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
)>('uspoof_getAllowedLocales');

int uspoof_getCheckResultChecks(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
) =>
    _uspoof_getCheckResultChecks(
      checkResult,
      status,
    );

late final _uspoof_getCheckResultChecks = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
)>('uspoof_getCheckResultChecks');

Pointer<USet> uspoof_getCheckResultNumerics(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
) =>
    _uspoof_getCheckResultNumerics(
      checkResult,
      status,
    );

late final _uspoof_getCheckResultNumerics = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
)>('uspoof_getCheckResultNumerics');

int uspoof_getCheckResultRestrictionLevel(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
) =>
    _uspoof_getCheckResultRestrictionLevel(
      checkResult,
      status,
    );

late final _uspoof_getCheckResultRestrictionLevel = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofCheckResult> checkResult,
  Pointer<Int32> status,
)>('uspoof_getCheckResultRestrictionLevel');

int uspoof_getChecks(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
) =>
    _uspoof_getChecks(
      sc,
      status,
    );

late final _uspoof_getChecks = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer<Int32> status,
)>('uspoof_getChecks');

Pointer<USet> uspoof_getInclusionSet(
  Pointer<Int32> status,
) =>
    _uspoof_getInclusionSet(
      status,
    );

late final _uspoof_getInclusionSet = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<Int32> status,
)>('uspoof_getInclusionSet');

Pointer<USet> uspoof_getRecommendedSet(
  Pointer<Int32> status,
) =>
    _uspoof_getRecommendedSet(
      status,
    );

late final _uspoof_getRecommendedSet = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<Int32> status,
)>('uspoof_getRecommendedSet');

int uspoof_getRestrictionLevel(
  Pointer<USpoofChecker> sc,
) =>
    _uspoof_getRestrictionLevel(
      sc,
    );

late final _uspoof_getRestrictionLevel = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
),
    int Function(
  Pointer<USpoofChecker> sc,
)>('uspoof_getRestrictionLevel');

int uspoof_getSkeleton(
  Pointer<USpoofChecker> sc,
  int type,
  Pointer<Uint16> id,
  int length,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uspoof_getSkeleton(
      sc,
      type,
      id,
      length,
      dest,
      destCapacity,
      status,
    );

late final _uspoof_getSkeleton = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Uint32 type,
  Pointer<Uint16> id,
  Int32 length,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  int type,
  Pointer<Uint16> id,
  int length,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
)>('uspoof_getSkeleton');

int uspoof_getSkeletonUTF8(
  Pointer<USpoofChecker> sc,
  int type,
  Pointer<Utf8> id,
  int length,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _uspoof_getSkeletonUTF8(
      sc,
      type,
      id,
      length,
      dest,
      destCapacity,
      status,
    );

late final _uspoof_getSkeletonUTF8 = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Uint32 type,
  Pointer<Utf8> id,
  Int32 length,
  Pointer<Utf8> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  int type,
  Pointer<Utf8> id,
  int length,
  Pointer<Utf8> dest,
  int destCapacity,
  Pointer<Int32> status,
)>('uspoof_getSkeletonUTF8');

Pointer<USpoofChecker> uspoof_open(
  Pointer<Int32> status,
) =>
    _uspoof_open(
      status,
    );

late final _uspoof_open = _icu.lookupFunction<
    Pointer<USpoofChecker> Function(
  Pointer<Int32> status,
),
    Pointer<USpoofChecker> Function(
  Pointer<Int32> status,
)>('uspoof_open');

Pointer<USpoofCheckResult> uspoof_openCheckResult(
  Pointer<Int32> status,
) =>
    _uspoof_openCheckResult(
      status,
    );

late final _uspoof_openCheckResult = _icu.lookupFunction<
    Pointer<USpoofCheckResult> Function(
  Pointer<Int32> status,
),
    Pointer<USpoofCheckResult> Function(
  Pointer<Int32> status,
)>('uspoof_openCheckResult');

Pointer<USpoofChecker> uspoof_openFromSerialized(
  Pointer data,
  int length,
  Pointer<Int32> pActualLength,
  Pointer<Int32> pErrorCode,
) =>
    _uspoof_openFromSerialized(
      data,
      length,
      pActualLength,
      pErrorCode,
    );

late final _uspoof_openFromSerialized = _icu.lookupFunction<
    Pointer<USpoofChecker> Function(
  Pointer data,
  Int32 length,
  Pointer<Int32> pActualLength,
  Pointer<Int32> pErrorCode,
),
    Pointer<USpoofChecker> Function(
  Pointer data,
  int length,
  Pointer<Int32> pActualLength,
  Pointer<Int32> pErrorCode,
)>('uspoof_openFromSerialized');

Pointer<USpoofChecker> uspoof_openFromSource(
  Pointer<Utf8> confusables,
  int confusablesLen,
  Pointer<Utf8> confusablesWholeScript,
  int confusablesWholeScriptLen,
  Pointer<Int32> errType,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
) =>
    _uspoof_openFromSource(
      confusables,
      confusablesLen,
      confusablesWholeScript,
      confusablesWholeScriptLen,
      errType,
      pe,
      status,
    );

late final _uspoof_openFromSource = _icu.lookupFunction<
    Pointer<USpoofChecker> Function(
  Pointer<Utf8> confusables,
  Int32 confusablesLen,
  Pointer<Utf8> confusablesWholeScript,
  Int32 confusablesWholeScriptLen,
  Pointer<Int32> errType,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
),
    Pointer<USpoofChecker> Function(
  Pointer<Utf8> confusables,
  int confusablesLen,
  Pointer<Utf8> confusablesWholeScript,
  int confusablesWholeScriptLen,
  Pointer<Int32> errType,
  Pointer<UParseError> pe,
  Pointer<Int32> status,
)>('uspoof_openFromSource');

int uspoof_serialize(
  Pointer<USpoofChecker> sc,
  Pointer data,
  int capacity,
  Pointer<Int32> status,
) =>
    _uspoof_serialize(
      sc,
      data,
      capacity,
      status,
    );

late final _uspoof_serialize = _icu.lookupFunction<
    Int32 Function(
  Pointer<USpoofChecker> sc,
  Pointer data,
  Int32 capacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<USpoofChecker> sc,
  Pointer data,
  int capacity,
  Pointer<Int32> status,
)>('uspoof_serialize');

void uspoof_setAllowedChars(
  Pointer<USpoofChecker> sc,
  Pointer<USet> chars,
  Pointer<Int32> status,
) =>
    _uspoof_setAllowedChars(
      sc,
      chars,
      status,
    );

late final _uspoof_setAllowedChars = _icu.lookupFunction<
    Void Function(
  Pointer<USpoofChecker> sc,
  Pointer<USet> chars,
  Pointer<Int32> status,
),
    void Function(
  Pointer<USpoofChecker> sc,
  Pointer<USet> chars,
  Pointer<Int32> status,
)>('uspoof_setAllowedChars');

void uspoof_setAllowedLocales(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> localesList,
  Pointer<Int32> status,
) =>
    _uspoof_setAllowedLocales(
      sc,
      localesList,
      status,
    );

late final _uspoof_setAllowedLocales = _icu.lookupFunction<
    Void Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> localesList,
  Pointer<Int32> status,
),
    void Function(
  Pointer<USpoofChecker> sc,
  Pointer<Utf8> localesList,
  Pointer<Int32> status,
)>('uspoof_setAllowedLocales');

void uspoof_setChecks(
  Pointer<USpoofChecker> sc,
  int checks,
  Pointer<Int32> status,
) =>
    _uspoof_setChecks(
      sc,
      checks,
      status,
    );

late final _uspoof_setChecks = _icu.lookupFunction<
    Void Function(
  Pointer<USpoofChecker> sc,
  Int32 checks,
  Pointer<Int32> status,
),
    void Function(
  Pointer<USpoofChecker> sc,
  int checks,
  Pointer<Int32> status,
)>('uspoof_setChecks');

void uspoof_setRestrictionLevel(
  Pointer<USpoofChecker> sc,
  int restrictionLevel,
) =>
    _uspoof_setRestrictionLevel(
      sc,
      restrictionLevel,
    );

late final _uspoof_setRestrictionLevel = _icu.lookupFunction<
    Void Function(
  Pointer<USpoofChecker> sc,
  Int32 restrictionLevel,
),
    void Function(
  Pointer<USpoofChecker> sc,
  int restrictionLevel,
)>('uspoof_setRestrictionLevel');

void usprep_close(
  Pointer<UStringPrepProfile> profile,
) =>
    _usprep_close(
      profile,
    );

late final _usprep_close = _icu.lookupFunction<
    Void Function(
  Pointer<UStringPrepProfile> profile,
),
    void Function(
  Pointer<UStringPrepProfile> profile,
)>('usprep_close');

Pointer<UStringPrepProfile> usprep_open(
  Pointer<Utf8> path,
  Pointer<Utf8> fileName,
  Pointer<Int32> status,
) =>
    _usprep_open(
      path,
      fileName,
      status,
    );

late final _usprep_open = _icu.lookupFunction<
    Pointer<UStringPrepProfile> Function(
  Pointer<Utf8> path,
  Pointer<Utf8> fileName,
  Pointer<Int32> status,
),
    Pointer<UStringPrepProfile> Function(
  Pointer<Utf8> path,
  Pointer<Utf8> fileName,
  Pointer<Int32> status,
)>('usprep_open');

Pointer<UStringPrepProfile> usprep_openByType(
  int type,
  Pointer<Int32> status,
) =>
    _usprep_openByType(
      type,
      status,
    );

late final _usprep_openByType = _icu.lookupFunction<
    Pointer<UStringPrepProfile> Function(
  Int32 type,
  Pointer<Int32> status,
),
    Pointer<UStringPrepProfile> Function(
  int type,
  Pointer<Int32> status,
)>('usprep_openByType');

int usprep_prepare(
  Pointer<UStringPrepProfile> prep,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Uint16> dest,
  int destCapacity,
  int options,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
) =>
    _usprep_prepare(
      prep,
      src,
      srcLength,
      dest,
      destCapacity,
      options,
      parseError,
      status,
    );

late final _usprep_prepare = _icu.lookupFunction<
    Int32 Function(
  Pointer<UStringPrepProfile> prep,
  Pointer<Uint16> src,
  Int32 srcLength,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Int32 options,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UStringPrepProfile> prep,
  Pointer<Uint16> src,
  int srcLength,
  Pointer<Uint16> dest,
  int destCapacity,
  int options,
  Pointer<UParseError> parseError,
  Pointer<Int32> status,
)>('usprep_prepare');

int utext_char32At(
  Pointer<UText> ut,
  int nativeIndex,
) =>
    _utext_char32At(
      ut,
      nativeIndex,
    );

late final _utext_char32At = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
  Int64 nativeIndex,
),
    int Function(
  Pointer<UText> ut,
  int nativeIndex,
)>('utext_char32At');

Pointer<UText> utext_clone(
  Pointer<UText> dest,
  Pointer<UText> src,
  int deep,
  int readOnly,
  Pointer<Int32> status,
) =>
    _utext_clone(
      dest,
      src,
      deep,
      readOnly,
      status,
    );

late final _utext_clone = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<UText> dest,
  Pointer<UText> src,
  Int8 deep,
  Int8 readOnly,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<UText> dest,
  Pointer<UText> src,
  int deep,
  int readOnly,
  Pointer<Int32> status,
)>('utext_clone');

Pointer<UText> utext_close(
  Pointer<UText> ut,
) =>
    _utext_close(
      ut,
    );

late final _utext_close = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<UText> ut,
),
    Pointer<UText> Function(
  Pointer<UText> ut,
)>('utext_close');

void utext_copy(
  Pointer<UText> ut,
  int nativeStart,
  int nativeLimit,
  int destIndex,
  int move,
  Pointer<Int32> status,
) =>
    _utext_copy(
      ut,
      nativeStart,
      nativeLimit,
      destIndex,
      move,
      status,
    );

late final _utext_copy = _icu.lookupFunction<
    Void Function(
  Pointer<UText> ut,
  Int64 nativeStart,
  Int64 nativeLimit,
  Int64 destIndex,
  Int8 move,
  Pointer<Int32> status,
),
    void Function(
  Pointer<UText> ut,
  int nativeStart,
  int nativeLimit,
  int destIndex,
  int move,
  Pointer<Int32> status,
)>('utext_copy');

int utext_current32(
  Pointer<UText> ut,
) =>
    _utext_current32(
      ut,
    );

late final _utext_current32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_current32');

int utext_equals(
  Pointer<UText> a,
  Pointer<UText> b,
) =>
    _utext_equals(
      a,
      b,
    );

late final _utext_equals = _icu.lookupFunction<
    Int8 Function(
  Pointer<UText> a,
  Pointer<UText> b,
),
    int Function(
  Pointer<UText> a,
  Pointer<UText> b,
)>('utext_equals');

int utext_extract(
  Pointer<UText> ut,
  int nativeStart,
  int nativeLimit,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
) =>
    _utext_extract(
      ut,
      nativeStart,
      nativeLimit,
      dest,
      destCapacity,
      status,
    );

late final _utext_extract = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
  Int64 nativeStart,
  Int64 nativeLimit,
  Pointer<Uint16> dest,
  Int32 destCapacity,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UText> ut,
  int nativeStart,
  int nativeLimit,
  Pointer<Uint16> dest,
  int destCapacity,
  Pointer<Int32> status,
)>('utext_extract');

void utext_freeze(
  Pointer<UText> ut,
) =>
    _utext_freeze(
      ut,
    );

late final _utext_freeze = _icu.lookupFunction<
    Void Function(
  Pointer<UText> ut,
),
    void Function(
  Pointer<UText> ut,
)>('utext_freeze');

int utext_getNativeIndex(
  Pointer<UText> ut,
) =>
    _utext_getNativeIndex(
      ut,
    );

late final _utext_getNativeIndex = _icu.lookupFunction<
    Int64 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_getNativeIndex');

int utext_getPreviousNativeIndex(
  Pointer<UText> ut,
) =>
    _utext_getPreviousNativeIndex(
      ut,
    );

late final _utext_getPreviousNativeIndex = _icu.lookupFunction<
    Int64 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_getPreviousNativeIndex');

int utext_hasMetaData(
  Pointer<UText> ut,
) =>
    _utext_hasMetaData(
      ut,
    );

late final _utext_hasMetaData = _icu.lookupFunction<
    Int8 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_hasMetaData');

int utext_isLengthExpensive(
  Pointer<UText> ut,
) =>
    _utext_isLengthExpensive(
      ut,
    );

late final _utext_isLengthExpensive = _icu.lookupFunction<
    Int8 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_isLengthExpensive');

int utext_isWritable(
  Pointer<UText> ut,
) =>
    _utext_isWritable(
      ut,
    );

late final _utext_isWritable = _icu.lookupFunction<
    Int8 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_isWritable');

int utext_moveIndex32(
  Pointer<UText> ut,
  int delta,
) =>
    _utext_moveIndex32(
      ut,
      delta,
    );

late final _utext_moveIndex32 = _icu.lookupFunction<
    Int8 Function(
  Pointer<UText> ut,
  Int32 delta,
),
    int Function(
  Pointer<UText> ut,
  int delta,
)>('utext_moveIndex32');

int utext_nativeLength(
  Pointer<UText> ut,
) =>
    _utext_nativeLength(
      ut,
    );

late final _utext_nativeLength = _icu.lookupFunction<
    Int64 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_nativeLength');

int utext_next32(
  Pointer<UText> ut,
) =>
    _utext_next32(
      ut,
    );

late final _utext_next32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_next32');

int utext_next32From(
  Pointer<UText> ut,
  int nativeIndex,
) =>
    _utext_next32From(
      ut,
      nativeIndex,
    );

late final _utext_next32From = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
  Int64 nativeIndex,
),
    int Function(
  Pointer<UText> ut,
  int nativeIndex,
)>('utext_next32From');

Pointer<UText> utext_openUChars(
  Pointer<UText> ut,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> status,
) =>
    _utext_openUChars(
      ut,
      s,
      length,
      status,
    );

late final _utext_openUChars = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<UText> ut,
  Pointer<Uint16> s,
  Int64 length,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<UText> ut,
  Pointer<Uint16> s,
  int length,
  Pointer<Int32> status,
)>('utext_openUChars');

Pointer<UText> utext_openUTF8(
  Pointer<UText> ut,
  Pointer<Utf8> s,
  int length,
  Pointer<Int32> status,
) =>
    _utext_openUTF8(
      ut,
      s,
      length,
      status,
    );

late final _utext_openUTF8 = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<UText> ut,
  Pointer<Utf8> s,
  Int64 length,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<UText> ut,
  Pointer<Utf8> s,
  int length,
  Pointer<Int32> status,
)>('utext_openUTF8');

int utext_previous32(
  Pointer<UText> ut,
) =>
    _utext_previous32(
      ut,
    );

late final _utext_previous32 = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
),
    int Function(
  Pointer<UText> ut,
)>('utext_previous32');

int utext_previous32From(
  Pointer<UText> ut,
  int nativeIndex,
) =>
    _utext_previous32From(
      ut,
      nativeIndex,
    );

late final _utext_previous32From = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
  Int64 nativeIndex,
),
    int Function(
  Pointer<UText> ut,
  int nativeIndex,
)>('utext_previous32From');

int utext_replace(
  Pointer<UText> ut,
  int nativeStart,
  int nativeLimit,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Int32> status,
) =>
    _utext_replace(
      ut,
      nativeStart,
      nativeLimit,
      replacementText,
      replacementLength,
      status,
    );

late final _utext_replace = _icu.lookupFunction<
    Int32 Function(
  Pointer<UText> ut,
  Int64 nativeStart,
  Int64 nativeLimit,
  Pointer<Uint16> replacementText,
  Int32 replacementLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<UText> ut,
  int nativeStart,
  int nativeLimit,
  Pointer<Uint16> replacementText,
  int replacementLength,
  Pointer<Int32> status,
)>('utext_replace');

void utext_setNativeIndex(
  Pointer<UText> ut,
  int nativeIndex,
) =>
    _utext_setNativeIndex(
      ut,
      nativeIndex,
    );

late final _utext_setNativeIndex = _icu.lookupFunction<
    Void Function(
  Pointer<UText> ut,
  Int64 nativeIndex,
),
    void Function(
  Pointer<UText> ut,
  int nativeIndex,
)>('utext_setNativeIndex');

Pointer<UText> utext_setup(
  Pointer<UText> ut,
  int extraSpace,
  Pointer<Int32> status,
) =>
    _utext_setup(
      ut,
      extraSpace,
      status,
    );

late final _utext_setup = _icu.lookupFunction<
    Pointer<UText> Function(
  Pointer<UText> ut,
  Int32 extraSpace,
  Pointer<Int32> status,
),
    Pointer<UText> Function(
  Pointer<UText> ut,
  int extraSpace,
  Pointer<Int32> status,
)>('utext_setup');

int utf8_appendCharSafeBody(
  Pointer<Uint8> s,
  int i,
  int length,
  int c,
  Pointer<Int8> pIsError,
) =>
    _utf8_appendCharSafeBody(
      s,
      i,
      length,
      c,
      pIsError,
    );

late final _utf8_appendCharSafeBody = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> s,
  Int32 i,
  Int32 length,
  Int32 c,
  Pointer<Int8> pIsError,
),
    int Function(
  Pointer<Uint8> s,
  int i,
  int length,
  int c,
  Pointer<Int8> pIsError,
)>('utf8_appendCharSafeBody');

int utf8_back1SafeBody(
  Pointer<Uint8> s,
  int start,
  int i,
) =>
    _utf8_back1SafeBody(
      s,
      start,
      i,
    );

late final _utf8_back1SafeBody = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> s,
  Int32 start,
  Int32 i,
),
    int Function(
  Pointer<Uint8> s,
  int start,
  int i,
)>('utf8_back1SafeBody');

int utf8_nextCharSafeBody(
  Pointer<Uint8> s,
  Pointer<Int32> pi,
  int length,
  int c,
  int strict,
) =>
    _utf8_nextCharSafeBody(
      s,
      pi,
      length,
      c,
      strict,
    );

late final _utf8_nextCharSafeBody = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> s,
  Pointer<Int32> pi,
  Int32 length,
  Int32 c,
  Int8 strict,
),
    int Function(
  Pointer<Uint8> s,
  Pointer<Int32> pi,
  int length,
  int c,
  int strict,
)>('utf8_nextCharSafeBody');

int utf8_prevCharSafeBody(
  Pointer<Uint8> s,
  int start,
  Pointer<Int32> pi,
  int c,
  int strict,
) =>
    _utf8_prevCharSafeBody(
      s,
      start,
      pi,
      c,
      strict,
    );

late final _utf8_prevCharSafeBody = _icu.lookupFunction<
    Int32 Function(
  Pointer<Uint8> s,
  Int32 start,
  Pointer<Int32> pi,
  Int32 c,
  Int8 strict,
),
    int Function(
  Pointer<Uint8> s,
  int start,
  Pointer<Int32> pi,
  int c,
  int strict,
)>('utf8_prevCharSafeBody');

int utmscale_fromInt64(
  int otherTime,
  int timeScale,
  Pointer<Int32> status,
) =>
    _utmscale_fromInt64(
      otherTime,
      timeScale,
      status,
    );

late final _utmscale_fromInt64 = _icu.lookupFunction<
    Int64 Function(
  Int64 otherTime,
  Int32 timeScale,
  Pointer<Int32> status,
),
    int Function(
  int otherTime,
  int timeScale,
  Pointer<Int32> status,
)>('utmscale_fromInt64');

int utmscale_getTimeScaleValue(
  int timeScale,
  int value,
  Pointer<Int32> status,
) =>
    _utmscale_getTimeScaleValue(
      timeScale,
      value,
      status,
    );

late final _utmscale_getTimeScaleValue = _icu.lookupFunction<
    Int64 Function(
  Int32 timeScale,
  Int32 value,
  Pointer<Int32> status,
),
    int Function(
  int timeScale,
  int value,
  Pointer<Int32> status,
)>('utmscale_getTimeScaleValue');

int utmscale_toInt64(
  int universalTime,
  int timeScale,
  Pointer<Int32> status,
) =>
    _utmscale_toInt64(
      universalTime,
      timeScale,
      status,
    );

late final _utmscale_toInt64 = _icu.lookupFunction<
    Int64 Function(
  Int64 universalTime,
  Int32 timeScale,
  Pointer<Int32> status,
),
    int Function(
  int universalTime,
  int timeScale,
  Pointer<Int32> status,
)>('utmscale_toInt64');

int utrace_format(
  Pointer<Utf8> outBuf,
  int capacity,
  int indent,
  Pointer<Utf8> fmt,
) =>
    _utrace_format(
      outBuf,
      capacity,
      indent,
      fmt,
    );

late final _utrace_format = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> outBuf,
  Int32 capacity,
  Int32 indent,
  Pointer<Utf8> fmt,
),
    int Function(
  Pointer<Utf8> outBuf,
  int capacity,
  int indent,
  Pointer<Utf8> fmt,
)>('utrace_format');

Pointer<Utf8> utrace_functionName(
  int fnNumber,
) =>
    _utrace_functionName(
      fnNumber,
    );

late final _utrace_functionName = _icu.lookupFunction<
    Pointer<Utf8> Function(
  Int32 fnNumber,
),
    Pointer<Utf8> Function(
  int fnNumber,
)>('utrace_functionName');

void utrace_getFunctions(
  Pointer<Pointer> context,
  Pointer<Pointer<NativeFunction<UTraceEntry>>> e,
  Pointer<Pointer<NativeFunction<UTraceExit>>> x,
  Pointer<Pointer<NativeFunction<UTraceData>>> d,
) =>
    _utrace_getFunctions(
      context,
      e,
      x,
      d,
    );

late final _utrace_getFunctions = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> context,
  Pointer<Pointer<NativeFunction<UTraceEntry>>> e,
  Pointer<Pointer<NativeFunction<UTraceExit>>> x,
  Pointer<Pointer<NativeFunction<UTraceData>>> d,
),
    void Function(
  Pointer<Pointer> context,
  Pointer<Pointer<NativeFunction<UTraceEntry>>> e,
  Pointer<Pointer<NativeFunction<UTraceExit>>> x,
  Pointer<Pointer<NativeFunction<UTraceData>>> d,
)>('utrace_getFunctions');

int utrace_getLevel() => _utrace_getLevel();

late final _utrace_getLevel =
    _icu.lookupFunction<Int32 Function(), int Function()>('utrace_getLevel');

void utrace_setFunctions(
  Pointer context,
  Pointer<NativeFunction<UTraceEntry>> e,
  Pointer<NativeFunction<UTraceExit>> x,
  Pointer<NativeFunction<UTraceData>> d,
) =>
    _utrace_setFunctions(
      context,
      e,
      x,
      d,
    );

late final _utrace_setFunctions = _icu.lookupFunction<
    Void Function(
  Pointer context,
  Pointer<NativeFunction<UTraceEntry>> e,
  Pointer<NativeFunction<UTraceExit>> x,
  Pointer<NativeFunction<UTraceData>> d,
),
    void Function(
  Pointer context,
  Pointer<NativeFunction<UTraceEntry>> e,
  Pointer<NativeFunction<UTraceExit>> x,
  Pointer<NativeFunction<UTraceData>> d,
)>('utrace_setFunctions');

void utrace_setLevel(
  int traceLevel,
) =>
    _utrace_setLevel(
      traceLevel,
    );

late final _utrace_setLevel = _icu.lookupFunction<
    Void Function(
  Int32 traceLevel,
),
    void Function(
  int traceLevel,
)>('utrace_setLevel');

int utrace_vformat(
  Pointer<Utf8> outBuf,
  int capacity,
  int indent,
  Pointer<Utf8> fmt,
  Pointer<Int8> args,
) =>
    _utrace_vformat(
      outBuf,
      capacity,
      indent,
      fmt,
      args,
    );

late final _utrace_vformat = _icu.lookupFunction<
    Int32 Function(
  Pointer<Utf8> outBuf,
  Int32 capacity,
  Int32 indent,
  Pointer<Utf8> fmt,
  Pointer<Int8> args,
),
    int Function(
  Pointer<Utf8> outBuf,
  int capacity,
  int indent,
  Pointer<Utf8> fmt,
  Pointer<Int8> args,
)>('utrace_vformat');

Pointer<Pointer> utrans_clone(
  Pointer<Pointer> trans,
  Pointer<Int32> status,
) =>
    _utrans_clone(
      trans,
      status,
    );

late final _utrans_clone = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> trans,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> trans,
  Pointer<Int32> status,
)>('utrans_clone');

void utrans_close(
  Pointer<Pointer> trans,
) =>
    _utrans_close(
      trans,
    );

late final _utrans_close = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> trans,
),
    void Function(
  Pointer<Pointer> trans,
)>('utrans_close');

int utrans_countAvailableIDs() => _utrans_countAvailableIDs();

late final _utrans_countAvailableIDs =
    _icu.lookupFunction<Int32 Function(), int Function()>(
        'utrans_countAvailableIDs');

Pointer<USet> utrans_getSourceSet(
  Pointer<Pointer> trans,
  int ignoreFilter,
  Pointer<USet> fillIn,
  Pointer<Int32> status,
) =>
    _utrans_getSourceSet(
      trans,
      ignoreFilter,
      fillIn,
      status,
    );

late final _utrans_getSourceSet = _icu.lookupFunction<
    Pointer<USet> Function(
  Pointer<Pointer> trans,
  Int8 ignoreFilter,
  Pointer<USet> fillIn,
  Pointer<Int32> status,
),
    Pointer<USet> Function(
  Pointer<Pointer> trans,
  int ignoreFilter,
  Pointer<USet> fillIn,
  Pointer<Int32> status,
)>('utrans_getSourceSet');

Pointer<Uint16> utrans_getUnicodeID(
  Pointer<Pointer> trans,
  Pointer<Int32> resultLength,
) =>
    _utrans_getUnicodeID(
      trans,
      resultLength,
    );

late final _utrans_getUnicodeID = _icu.lookupFunction<
    Pointer<Uint16> Function(
  Pointer<Pointer> trans,
  Pointer<Int32> resultLength,
),
    Pointer<Uint16> Function(
  Pointer<Pointer> trans,
  Pointer<Int32> resultLength,
)>('utrans_getUnicodeID');

Pointer<UEnumeration> utrans_openIDs(
  Pointer<Int32> pErrorCode,
) =>
    _utrans_openIDs(
      pErrorCode,
    );

late final _utrans_openIDs = _icu.lookupFunction<
    Pointer<UEnumeration> Function(
  Pointer<Int32> pErrorCode,
),
    Pointer<UEnumeration> Function(
  Pointer<Int32> pErrorCode,
)>('utrans_openIDs');

Pointer<Pointer> utrans_openInverse(
  Pointer<Pointer> trans,
  Pointer<Int32> status,
) =>
    _utrans_openInverse(
      trans,
      status,
    );

late final _utrans_openInverse = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Pointer> trans,
  Pointer<Int32> status,
),
    Pointer<Pointer> Function(
  Pointer<Pointer> trans,
  Pointer<Int32> status,
)>('utrans_openInverse');

Pointer<Pointer> utrans_openU(
  Pointer<Uint16> id,
  int idLength,
  int dir,
  Pointer<Uint16> rules,
  int rulesLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> pErrorCode,
) =>
    _utrans_openU(
      id,
      idLength,
      dir,
      rules,
      rulesLength,
      parseError,
      pErrorCode,
    );

late final _utrans_openU = _icu.lookupFunction<
    Pointer<Pointer> Function(
  Pointer<Uint16> id,
  Int32 idLength,
  Int32 dir,
  Pointer<Uint16> rules,
  Int32 rulesLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> pErrorCode,
),
    Pointer<Pointer> Function(
  Pointer<Uint16> id,
  int idLength,
  int dir,
  Pointer<Uint16> rules,
  int rulesLength,
  Pointer<UParseError> parseError,
  Pointer<Int32> pErrorCode,
)>('utrans_openU');

void utrans_register(
  Pointer<Pointer> adoptedTrans,
  Pointer<Int32> status,
) =>
    _utrans_register(
      adoptedTrans,
      status,
    );

late final _utrans_register = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> adoptedTrans,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> adoptedTrans,
  Pointer<Int32> status,
)>('utrans_register');

void utrans_setFilter(
  Pointer<Pointer> trans,
  Pointer<Uint16> filterPattern,
  int filterPatternLen,
  Pointer<Int32> status,
) =>
    _utrans_setFilter(
      trans,
      filterPattern,
      filterPatternLen,
      status,
    );

late final _utrans_setFilter = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> trans,
  Pointer<Uint16> filterPattern,
  Int32 filterPatternLen,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> trans,
  Pointer<Uint16> filterPattern,
  int filterPatternLen,
  Pointer<Int32> status,
)>('utrans_setFilter');

int utrans_toRules(
  Pointer<Pointer> trans,
  int escapeUnprintable,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
) =>
    _utrans_toRules(
      trans,
      escapeUnprintable,
      result,
      resultLength,
      status,
    );

late final _utrans_toRules = _icu.lookupFunction<
    Int32 Function(
  Pointer<Pointer> trans,
  Int8 escapeUnprintable,
  Pointer<Uint16> result,
  Int32 resultLength,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Pointer> trans,
  int escapeUnprintable,
  Pointer<Uint16> result,
  int resultLength,
  Pointer<Int32> status,
)>('utrans_toRules');

void utrans_trans(
  Pointer<Pointer> trans,
  Pointer<Pointer> rep,
  Pointer<UReplaceableCallbacks> repFunc,
  int start,
  Pointer<Int32> limit,
  Pointer<Int32> status,
) =>
    _utrans_trans(
      trans,
      rep,
      repFunc,
      start,
      limit,
      status,
    );

late final _utrans_trans = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> trans,
  Pointer<Pointer> rep,
  Pointer<UReplaceableCallbacks> repFunc,
  Int32 start,
  Pointer<Int32> limit,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> trans,
  Pointer<Pointer> rep,
  Pointer<UReplaceableCallbacks> repFunc,
  int start,
  Pointer<Int32> limit,
  Pointer<Int32> status,
)>('utrans_trans');

void utrans_transIncremental(
  Pointer<Pointer> trans,
  Pointer<Pointer> rep,
  Pointer<UReplaceableCallbacks> repFunc,
  Pointer<UTransPosition> pos,
  Pointer<Int32> status,
) =>
    _utrans_transIncremental(
      trans,
      rep,
      repFunc,
      pos,
      status,
    );

late final _utrans_transIncremental = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> trans,
  Pointer<Pointer> rep,
  Pointer<UReplaceableCallbacks> repFunc,
  Pointer<UTransPosition> pos,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> trans,
  Pointer<Pointer> rep,
  Pointer<UReplaceableCallbacks> repFunc,
  Pointer<UTransPosition> pos,
  Pointer<Int32> status,
)>('utrans_transIncremental');

void utrans_transIncrementalUChars(
  Pointer<Pointer> trans,
  Pointer<Uint16> text,
  Pointer<Int32> textLength,
  int textCapacity,
  Pointer<UTransPosition> pos,
  Pointer<Int32> status,
) =>
    _utrans_transIncrementalUChars(
      trans,
      text,
      textLength,
      textCapacity,
      pos,
      status,
    );

late final _utrans_transIncrementalUChars = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> trans,
  Pointer<Uint16> text,
  Pointer<Int32> textLength,
  Int32 textCapacity,
  Pointer<UTransPosition> pos,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> trans,
  Pointer<Uint16> text,
  Pointer<Int32> textLength,
  int textCapacity,
  Pointer<UTransPosition> pos,
  Pointer<Int32> status,
)>('utrans_transIncrementalUChars');

void utrans_transUChars(
  Pointer<Pointer> trans,
  Pointer<Uint16> text,
  Pointer<Int32> textLength,
  int textCapacity,
  int start,
  Pointer<Int32> limit,
  Pointer<Int32> status,
) =>
    _utrans_transUChars(
      trans,
      text,
      textLength,
      textCapacity,
      start,
      limit,
      status,
    );

late final _utrans_transUChars = _icu.lookupFunction<
    Void Function(
  Pointer<Pointer> trans,
  Pointer<Uint16> text,
  Pointer<Int32> textLength,
  Int32 textCapacity,
  Int32 start,
  Pointer<Int32> limit,
  Pointer<Int32> status,
),
    void Function(
  Pointer<Pointer> trans,
  Pointer<Uint16> text,
  Pointer<Int32> textLength,
  int textCapacity,
  int start,
  Pointer<Int32> limit,
  Pointer<Int32> status,
)>('utrans_transUChars');

void utrans_unregisterID(
  Pointer<Uint16> id,
  int idLength,
) =>
    _utrans_unregisterID(
      id,
      idLength,
    );

late final _utrans_unregisterID = _icu.lookupFunction<
    Void Function(
  Pointer<Uint16> id,
  Int32 idLength,
),
    void Function(
  Pointer<Uint16> id,
  int idLength,
)>('utrans_unregisterID');

// -----------------------------------------------------------------------
// bcp47mrm.dll
// -----------------------------------------------------------------------
final _bcp47mrm = DynamicLibrary.open('bcp47mrm.dll');

int GetDistanceOfClosestLanguageInList(
  Pointer<Utf16> pszLanguage,
  Pointer<Utf16> pszLanguagesList,
  int wchListDelimiter,
  Pointer<Double> pClosestDistance,
) =>
    _GetDistanceOfClosestLanguageInList(
      pszLanguage,
      pszLanguagesList,
      wchListDelimiter,
      pClosestDistance,
    );

late final _GetDistanceOfClosestLanguageInList = _bcp47mrm.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLanguage,
  Pointer<Utf16> pszLanguagesList,
  Uint16 wchListDelimiter,
  Pointer<Double> pClosestDistance,
),
    int Function(
  Pointer<Utf16> pszLanguage,
  Pointer<Utf16> pszLanguagesList,
  int wchListDelimiter,
  Pointer<Double> pClosestDistance,
)>('GetDistanceOfClosestLanguageInList');

int IsWellFormedTag(
  Pointer<Utf16> pszTag,
) =>
    _IsWellFormedTag(
      pszTag,
    );

late final _IsWellFormedTag = _bcp47mrm.lookupFunction<
    Uint8 Function(
  Pointer<Utf16> pszTag,
),
    int Function(
  Pointer<Utf16> pszTag,
)>('IsWellFormedTag');

// -----------------------------------------------------------------------
// advapi32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('advapi32.dll');

int IsTextUnicode(
  Pointer lpv,
  int iSize,
  Pointer<Uint32> lpiResult,
) =>
    _IsTextUnicode(
      lpv,
      iSize,
      lpiResult,
    );

late final _IsTextUnicode = _advapi32.lookupFunction<
    Int32 Function(
  Pointer lpv,
  Int32 iSize,
  Pointer<Uint32> lpiResult,
),
    int Function(
  Pointer lpv,
  int iSize,
  Pointer<Uint32> lpiResult,
)>('IsTextUnicode');
