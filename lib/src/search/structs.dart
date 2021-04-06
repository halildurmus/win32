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

class TEXT_SOURCE extends Struct {
  external PFNFILLTEXTBUFFER pfnFillTextBuffer;
  external Pointer<Utf16> awcBuffer;
  @Uint32() external int iEnd;
  @Uint32() external int iCur;
}

class CSearchManager extends Struct {
}

class CSearchRoot extends Struct {
}

class CSearchScopeRule extends Struct {
}

class FilterRegistration extends Struct {
}

class FILTERED_DATA_SOURCES extends Struct {
  external Pointer<Utf16> pwcsExtension;
  external Pointer<Utf16> pwcsMime;
  external Pointer<GUID> pClsid;
  external Pointer<Utf16> pwcsOverride;
}

class IRowsetExactScroll extends Struct {
}

class DB_NUMERIC extends Struct {
  @Uint8() external int precision;
  @Uint8() external int scale;
  @Uint8() external int sign;
  @Array(16)
  external Array<Uint8> val;
}

class DBVECTOR extends Struct {
  @Uint64() external int size;
  external Pointer ptr;
}

class DBDATE extends Struct {
  @Int16() external int year;
  @Uint16() external int month;
  @Uint16() external int day;
}

class DBTIME extends Struct {
  @Uint16() external int hour;
  @Uint16() external int minute;
  @Uint16() external int second;
}

class DBTIMESTAMP extends Struct {
  @Int16() external int year;
  @Uint16() external int month;
  @Uint16() external int day;
  @Uint16() external int hour;
  @Uint16() external int minute;
  @Uint16() external int second;
  @Uint32() external int fraction;
}

class DB_VARNUMERIC extends Struct {
  @Uint8() external int precision;
  @Int8() external int scale;
  @Uint8() external int sign;
  @Array(1)
  external Array<Uint8> val;
}

class SEC_OBJECT_ELEMENT extends Struct {
  external GUID guidObjectType;
  external DBID ObjectID;
}

class SEC_OBJECT extends Struct {
  @Uint32() external int cObjects;
  external Pointer<SEC_OBJECT_ELEMENT> prgObjects;
}

class DBIMPLICITSESSION extends Struct {
  external Pointer pUnkOuter;
  external Pointer<GUID> piid;
  external Pointer pSession;
}

class DBOBJECT extends Struct {
  @Uint32() external int dwFlags;
  external GUID iid;
}

class DBBINDEXT extends Struct {
  external Pointer<Uint8> pExtension;
  @Uint64() external int ulExtension;
}

class DBBINDING extends Struct {
  @Uint64() external int iOrdinal;
  @Uint64() external int obValue;
  @Uint64() external int obLength;
  @Uint64() external int obStatus;
  external Pointer pTypeInfo;
  external Pointer<DBOBJECT> pObject;
  external Pointer<DBBINDEXT> pBindExt;
  @Uint32() external int dwPart;
  @Uint32() external int dwMemOwner;
  @Uint32() external int eParamIO;
  @Uint64() external int cbMaxLen;
  @Uint32() external int dwFlags;
  @Uint16() external int wType;
  @Uint8() external int bPrecision;
  @Uint8() external int bScale;
}

class DBFAILUREINFO extends Struct {
  @IntPtr() external int hRow;
  @Uint64() external int iColumn;
  @Int32() external int failure;
}

class DBCOLUMNINFO extends Struct {
  external Pointer<Utf16> pwszName;
  external Pointer pTypeInfo;
  @Uint64() external int iOrdinal;
  @Uint32() external int dwFlags;
  @Uint64() external int ulColumnSize;
  @Uint16() external int wType;
  @Uint8() external int bPrecision;
  @Uint8() external int bScale;
  external DBID columnid;
}

class DBPARAMS extends Struct {
  external Pointer pData;
  @Uint64() external int cParamSets;
  @IntPtr() external int hAccessor;
}

class DBPARAMINFO extends Struct {
  @Uint32() external int dwFlags;
  @Uint64() external int iOrdinal;
  external Pointer<Utf16> pwszName;
  external Pointer pTypeInfo;
  @Uint64() external int ulParamSize;
  @Uint16() external int wType;
  @Uint8() external int bPrecision;
  @Uint8() external int bScale;
}

class DBPROPIDSET extends Struct {
  external Pointer<Uint32> rgPropertyIDs;
  @Uint32() external int cPropertyIDs;
  external GUID guidPropertySet;
}

class DBPROPINFO extends Struct {
  external Pointer<Utf16> pwszDescription;
  @Uint32() external int dwPropertyID;
  @Uint32() external int dwFlags;
  @Uint16() external int vtType;
  external VARIANT vValues;
}

class DBPROPINFOSET extends Struct {
  external Pointer<DBPROPINFO> rgPropertyInfos;
  @Uint32() external int cPropertyInfos;
  external GUID guidPropertySet;
}

class DBPROP extends Struct {
  @Uint32() external int dwPropertyID;
  @Uint32() external int dwOptions;
  @Uint32() external int dwStatus;
  external DBID colid;
  external VARIANT vValue;
}

class DBPROPSET extends Struct {
  external Pointer<DBPROP> rgProperties;
  @Uint32() external int cProperties;
  external GUID guidPropertySet;
}

class DBINDEXCOLUMNDESC extends Struct {
  external Pointer<DBID> pColumnID;
  @Uint32() external int eIndexColOrder;
}

class DBCOLUMNDESC extends Struct {
  external Pointer<Utf16> pwszTypeName;
  external Pointer pTypeInfo;
  external Pointer<DBPROPSET> rgPropertySets;
  external Pointer<GUID> pclsid;
  @Uint32() external int cPropertySets;
  @Uint64() external int ulColumnSize;
  external DBID dbcid;
  @Uint16() external int wType;
  @Uint8() external int bPrecision;
  @Uint8() external int bScale;
}

class DBCOLUMNACCESS extends Struct {
  external Pointer pData;
  external DBID columnid;
  @Uint64() external int cbDataLen;
  @Uint32() external int dwStatus;
  @Uint64() external int cbMaxLen;
  @Uint64() external int dwReserved;
  @Uint16() external int wType;
  @Uint8() external int bPrecision;
  @Uint8() external int bScale;
}

class DBCONSTRAINTDESC extends Struct {
  external Pointer<DBID> pConstraintID;
  @Uint32() external int ConstraintType;
  @Uint64() external int cColumns;
  external Pointer<DBID> rgColumnList;
  external Pointer<DBID> pReferencedTableID;
  @Uint64() external int cForeignKeyColumns;
  external Pointer<DBID> rgForeignKeyColumnList;
  external Pointer<Utf16> pwszConstraintText;
  @Uint32() external int UpdateRule;
  @Uint32() external int DeleteRule;
  @Uint32() external int MatchType;
  @Uint32() external int Deferrability;
  @Uint64() external int cReserved;
  external Pointer<DBPROPSET> rgReserved;
}

class MDAXISINFO extends Struct {
  @Uint64() external int cbSize;
  @Uint64() external int iAxis;
  @Uint64() external int cDimensions;
  @Uint64() external int cCoordinates;
  external Pointer<Uint64> rgcColumns;
  external Pointer<Pointer<Utf16>> rgpwszDimensionNames;
}

class RMTPACK extends Struct {
  external Pointer pISeqStream;
  @Uint32() external int cbData;
  @Uint32() external int cBSTR;
  external Pointer<Pointer<Utf16>> rgBSTR;
  @Uint32() external int cVARIANT;
  external Pointer<VARIANT> rgVARIANT;
  @Uint32() external int cIDISPATCH;
  external Pointer<Pointer> rgIDISPATCH;
  @Uint32() external int cIUNKNOWN;
  external Pointer<Pointer> rgIUNKNOWN;
  @Uint32() external int cPROPVARIANT;
  external Pointer<PROPVARIANT> rgPROPVARIANT;
  @Uint32() external int cArray;
  external Pointer<VARIANT> rgArray;
}

class DBPARAMBINDINFO extends Struct {
  external Pointer<Utf16> pwszDataSourceType;
  external Pointer<Utf16> pwszName;
  @Uint64() external int ulParamSize;
  @Uint32() external int dwFlags;
  @Uint8() external int bPrecision;
  @Uint8() external int bScale;
}

class DBLITERALINFO extends Struct {
  external Pointer<Utf16> pwszLiteralValue;
  external Pointer<Utf16> pwszInvalidChars;
  external Pointer<Utf16> pwszInvalidStartingChars;
  @Uint32() external int lt;
  @Int32() external int fSupported;
  @Uint32() external int cchMaxLen;
}

class ERRORINFO extends Struct {
  @Int32() external int hrError;
  @Uint32() external int dwMinor;
  external GUID clsid;
  external GUID iid;
  @Int32() external int dispid;
}

class QueryParser extends Struct {
}

class NegationCondition extends Struct {
}

class CompoundCondition extends Struct {
}

class LeafCondition extends Struct {
}

class ConditionFactory extends Struct {
}

class Interval extends Struct {
}

class QueryParserManager extends Struct {
}

class HITRANGE extends Struct {
  @Uint32() external int iPosition;
  @Uint32() external int cLength;
}

class TIMEOUT_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwConnectTimeout;
  @Uint32() external int dwDataTimeout;
}

class PROXY_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> pcwszUserAgent;
  @Uint32() external int paUseProxy;
  @Int32() external int fLocalBypass;
  @Uint32() external int dwPortNumber;
  external Pointer<Utf16> pcwszProxyName;
  external Pointer<Utf16> pcwszBypassList;
}

class AUTHENTICATION_INFO extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int atAuthenticationType;
  external Pointer<Utf16> pcwszUser;
  external Pointer<Utf16> pcwszPassword;
}

class INCREMENTAL_ACCESS_INFO extends Struct {
  @Uint32() external int dwSize;
  external FILETIME ftLastModifiedTime;
}

class ITEM_INFO extends Struct {
  @Uint32() external int dwSize;
  external Pointer<Utf16> pcwszFromEMail;
  external Pointer<Utf16> pcwszApplicationName;
  external Pointer<Utf16> pcwszCatalogName;
  external Pointer<Utf16> pcwszContentClass;
}

class SEARCH_ITEM_CHANGE extends Struct {
  @Uint32() external int Change;
  @Uint32() external int Priority;
  external Pointer<BLOB> pUserData;
  external Pointer<Utf16> lpwszURL;
  external Pointer<Utf16> lpwszOldURL;
}

class SEARCH_ITEM_PERSISTENT_CHANGE extends Struct {
  @Uint32() external int Change;
  external Pointer<Utf16> URL;
  external Pointer<Utf16> OldURL;
  @Uint32() external int Priority;
}

class SEARCH_ITEM_INDEXING_STATUS extends Struct {
  @Uint32() external int dwDocID;
  @Int32() external int hrIndexingStatus;
}

class SEARCH_COLUMN_PROPERTIES extends Struct {
  external PROPVARIANT Value;
  @Uint32() external int lcid;
}

class CSearchLanguageSupport extends Struct {
}

class SubscriptionMgr extends Struct {
}

class ITEMPROP extends Struct {
  external VARIANT variantValue;
  external Pointer<Utf16> pwszName;
}

class SUBSCRIPTIONITEMINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int dwPriority;
  external GUID ScheduleGroup;
  external GUID clsidAgent;
}

class SUBSCRIPTIONINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fUpdateFlags;
  @Uint32() external int schedule;
  external GUID customGroupCookie;
  external Pointer pTrigger;
  @Uint32() external int dwRecurseLevels;
  @Uint32() external int fWebcrawlerFlags;
  @Int32() external int bMailNotification;
  @Int32() external int bGleam;
  @Int32() external int bChangesOnly;
  @Int32() external int bNeedPassword;
  @Uint32() external int fChannelFlags;
  external Pointer<Utf16> bstrUserName;
  external Pointer<Utf16> bstrPassword;
  external Pointer<Utf16> bstrFriendlyName;
  @Uint32() external int dwMaxSizeKB;
  @Uint32() external int subType;
  @Uint32() external int fTaskFlags;
  @Uint32() external int dwReserved;
}

