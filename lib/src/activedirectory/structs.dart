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

class GetDcContextHandle extends Struct {
  @IntPtr()
  external int Value;
}

class CQFORM extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwFlags;
  external GUID clsid;
  @IntPtr()
  external int hIcon;
  external Pointer<Utf16> pszTitle;
}

class CQPAGE extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwFlags;
  external Pointer<CQPAGEPROC> pPageProc;
  @IntPtr()
  external int hInstance;
  @Int32()
  external int idPageName;
  @Int32()
  external int idPageTemplate;
  external Pointer<NativeFunction<DlgProc>> pDlgProc;
  @IntPtr()
  external int lParam;
}

class OPENQUERYWINDOW extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwFlags;
  external GUID clsidHandler;
  external Pointer pHandlerParameters;
  external GUID clsidDefaultForm;
  external IPersistQuery pPersistQuery;
  @Uint32()
  external int Anonymous;
}

class PropertyEntry extends Struct {}

class PropertyValue extends Struct {}

class AccessControlEntry extends Struct {}

class AccessControlList extends Struct {}

class SecurityDescriptor extends Struct {}

class LargeInteger extends Struct {}

class NameTranslate extends Struct {}

class CaseIgnoreList extends Struct {}

class FaxNumber extends Struct {}

class NetAddress extends Struct {}

class OctetList extends Struct {}

class Email extends Struct {}

class Path extends Struct {}

class ReplicaPointer extends Struct {}

class Timestamp extends Struct {}

class PostalAddress extends Struct {}

class BackLink extends Struct {}

class TypedName extends Struct {}

class Hold extends Struct {}

class Pathname extends Struct {}

class ADSystemInfo extends Struct {}

class WinNTSystemInfo extends Struct {}

class DNWithBinary extends Struct {}

class DNWithString extends Struct {}

class ADsSecurityUtility extends Struct {}

class ADS_OCTET_STRING extends Struct {
  @Uint32()
  external int dwLength;
  external Pointer<Uint8> lpValue;
}

class ADS_NT_SECURITY_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwLength;
  external Pointer<Uint8> lpValue;
}

class ADS_PROV_SPECIFIC extends Struct {
  @Uint32()
  external int dwLength;
  external Pointer<Uint8> lpValue;
}

class ADS_CASEIGNORE_LIST extends Struct {
  external Pointer<ADS_CASEIGNORE_LIST> Next;
  external Pointer<Utf16> String;
}

class ADS_OCTET_LIST extends Struct {
  external Pointer<ADS_OCTET_LIST> Next;
  @Uint32()
  external int Length;
  external Pointer<Uint8> Data;
}

class ADS_PATH extends Struct {
  @Uint32()
  external int Type;
  external Pointer<Utf16> VolumeName;
  external Pointer<Utf16> Path;
}

class ADS_POSTALADDRESS extends Struct {
  @Array(6)
  external Array<Pointer<Uint16>> PostalAddress;
}

class ADS_TIMESTAMP extends Struct {
  @Uint32()
  external int WholeSeconds;
  @Uint32()
  external int EventID;
}

class ADS_BACKLINK extends Struct {
  @Uint32()
  external int RemoteID;
  external Pointer<Utf16> ObjectName;
}

class ADS_TYPEDNAME extends Struct {
  external Pointer<Utf16> ObjectName;
  @Uint32()
  external int Level;
  @Uint32()
  external int Interval;
}

class ADS_HOLD extends Struct {
  external Pointer<Utf16> ObjectName;
  @Uint32()
  external int Amount;
}

class ADS_NETADDRESS extends Struct {
  @Uint32()
  external int AddressType;
  @Uint32()
  external int AddressLength;
  external Pointer<Uint8> Address;
}

class ADS_REPLICAPOINTER extends Struct {
  external Pointer<Utf16> ServerName;
  @Uint32()
  external int ReplicaType;
  @Uint32()
  external int ReplicaNumber;
  @Uint32()
  external int Count;
  external Pointer<ADS_NETADDRESS> ReplicaAddressHints;
}

class ADS_FAXNUMBER extends Struct {
  external Pointer<Utf16> TelephoneNumber;
  @Uint32()
  external int NumberOfBits;
  external Pointer<Uint8> Parameters;
}

class ADS_EMAIL extends Struct {
  external Pointer<Utf16> Address;
  @Uint32()
  external int Type;
}

class ADS_DN_WITH_BINARY extends Struct {
  @Uint32()
  external int dwLength;
  external Pointer<Uint8> lpBinaryValue;
  external Pointer<Utf16> pszDNString;
}

class ADS_DN_WITH_STRING extends Struct {
  external Pointer<Utf16> pszStringValue;
  external Pointer<Utf16> pszDNString;
}

class ADSVALUE extends Struct {
  @Uint32()
  external int dwType;
  @Uint32()
  external int Anonymous;
}

class ADS_ATTR_INFO extends Struct {
  external Pointer<Utf16> pszAttrName;
  @Uint32()
  external int dwControlCode;
  @Uint32()
  external int dwADsType;
  external Pointer<ADSVALUE> pADsValues;
  @Uint32()
  external int dwNumValues;
}

class ADS_OBJECT_INFO extends Struct {
  external Pointer<Utf16> pszRDN;
  external Pointer<Utf16> pszObjectDN;
  external Pointer<Utf16> pszParentDN;
  external Pointer<Utf16> pszSchemaDN;
  external Pointer<Utf16> pszClassName;
}

class ads_searchpref_info extends Struct {
  @Uint32()
  external int dwSearchPref;
  external ADSVALUE vValue;
  @Uint32()
  external int dwStatus;
}

class ads_search_column extends Struct {
  external Pointer<Utf16> pszAttrName;
  @Uint32()
  external int dwADsType;
  external Pointer<ADSVALUE> pADsValues;
  @Uint32()
  external int dwNumValues;
  @IntPtr()
  external int hReserved;
}

class ADS_ATTR_DEF extends Struct {
  external Pointer<Utf16> pszAttrName;
  @Uint32()
  external int dwADsType;
  @Uint32()
  external int dwMinRange;
  @Uint32()
  external int dwMaxRange;
  @Int32()
  external int fMultiValued;
}

class ADS_CLASS_DEF extends Struct {
  external Pointer<Utf16> pszClassName;
  @Uint32()
  external int dwMandatoryAttrs;
  external Pointer<Pointer<Utf16>> ppszMandatoryAttrs;
  @Uint32()
  external int optionalAttrs;
  external Pointer<Pointer<Pointer<Utf16>>> ppszOptionalAttrs;
  @Uint32()
  external int dwNamingAttrs;
  external Pointer<Pointer<Pointer<Utf16>>> ppszNamingAttrs;
  @Uint32()
  external int dwSuperClasses;
  external Pointer<Pointer<Pointer<Utf16>>> ppszSuperClasses;
  @Int32()
  external int fIsContainer;
}

class ADS_SORTKEY extends Struct {
  external Pointer<Utf16> pszAttrType;
  external Pointer<Utf16> pszReserved;
  @Uint8()
  external int fReverseorder;
}

class ADS_VLV extends Struct {
  @Uint32()
  external int dwBeforeCount;
  @Uint32()
  external int dwAfterCount;
  @Uint32()
  external int dwOffset;
  @Uint32()
  external int dwContentCount;
  external Pointer<Utf16> pszTarget;
  @Uint32()
  external int dwContextIDLength;
  external Pointer<Uint8> lpContextID;
}

class DSOBJECT extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwProviderFlags;
  @Uint32()
  external int offsetName;
  @Uint32()
  external int offsetClass;
}

class DSOBJECTNAMES extends Struct {
  external GUID clsidNamespace;
  @Uint32()
  external int cItems;
  @Array(1)
  external Array<DSOBJECT> aObjects;
}

class DSDISPLAYSPECOPTIONS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int offsetAttribPrefix;
  @Uint32()
  external int offsetUserName;
  @Uint32()
  external int offsetPassword;
  @Uint32()
  external int offsetServer;
  @Uint32()
  external int offsetServerConfigPath;
}

class DSPROPERTYPAGEINFO extends Struct {
  @Uint32()
  external int offsetString;
}

class DOMAINDESC extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszPath;
  external Pointer<Utf16> pszNCName;
  external Pointer<Utf16> pszTrustParent;
  external Pointer<Utf16> pszObjectClass;
  @Uint32()
  external int ulFlags;
  @Int32()
  external int fDownLevel;
  external Pointer<DOMAINDESC> pdChildList;
  external Pointer<DOMAINDESC> pdNextSibling;
}

class DOMAIN_TREE extends Struct {
  @Uint32()
  external int dsSize;
  @Uint32()
  external int dwCount;
  @Array(1)
  external Array<DOMAINDESC> aDomains;
}

class DSCLASSCREATIONINFO extends Struct {
  @Uint32()
  external int dwFlags;
  external GUID clsidWizardDialog;
  external GUID clsidWizardPrimaryPage;
  @Uint32()
  external int cWizardExtensions;
  @Array(1)
  external Array<GUID> aWizardExtensions;
}

class DSBROWSEINFOW extends Struct {
  @Uint32()
  external int cbStruct;
  @IntPtr()
  external int hwndOwner;
  external Pointer<Utf16> pszCaption;
  external Pointer<Utf16> pszTitle;
  external Pointer<Utf16> pszRoot;
  external Pointer<Utf16> pszPath;
  @Uint32()
  external int cchPath;
  @Uint32()
  external int dwFlags;
  external BFFCALLBACK pfnCallback;
  @IntPtr()
  external int lParam;
  @Uint32()
  external int dwReturnFormat;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pPassword;
  external Pointer<Utf16> pszObjectClass;
  @Uint32()
  external int cchObjectClass;
}

class DSBROWSEINFOA extends Struct {
  @Uint32()
  external int cbStruct;
  @IntPtr()
  external int hwndOwner;
  external Pointer<Utf8> pszCaption;
  external Pointer<Utf8> pszTitle;
  external Pointer<Utf16> pszRoot;
  external Pointer<Utf16> pszPath;
  @Uint32()
  external int cchPath;
  @Uint32()
  external int dwFlags;
  external BFFCALLBACK pfnCallback;
  @IntPtr()
  external int lParam;
  @Uint32()
  external int dwReturnFormat;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pPassword;
  external Pointer<Utf16> pszObjectClass;
  @Uint32()
  external int cchObjectClass;
}

class DSBITEMW extends Struct {
  @Uint32()
  external int cbStruct;
  external Pointer<Utf16> pszADsPath;
  external Pointer<Utf16> pszClass;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwState;
  @Uint32()
  external int dwStateMask;
  @Array(64)
  external Array<Uint16> szDisplayName;
  @Array(129)
  external Array<Uint16> szIconLocation;
  @Int32()
  external int iIconResID;
}

class DSBITEMA extends Struct {
  @Uint32()
  external int cbStruct;
  external Pointer<Utf16> pszADsPath;
  external Pointer<Utf16> pszClass;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwState;
  @Uint32()
  external int dwStateMask;
  @Array(64)
  external Array<Int8> szDisplayName;
  @Array(129)
  external Array<Int8> szIconLocation;
  @Int32()
  external int iIconResID;
}

class DSOP_UPLEVEL_FILTER_FLAGS extends Struct {
  @Uint32()
  external int flBothModes;
  @Uint32()
  external int flMixedModeOnly;
  @Uint32()
  external int flNativeModeOnly;
}

class DSOP_FILTER_FLAGS extends Struct {
  external DSOP_UPLEVEL_FILTER_FLAGS Uplevel;
  @Uint32()
  external int flDownlevel;
}

class DSOP_SCOPE_INIT_INFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flType;
  @Uint32()
  external int flScope;
  external DSOP_FILTER_FLAGS FilterFlags;
  external Pointer<Utf16> pwzDcName;
  external Pointer<Utf16> pwzADsPath;
  @Int32()
  external int hr;
}

class DSOP_INIT_INFO extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer<Utf16> pwzTargetComputer;
  @Uint32()
  external int cDsScopeInfos;
  external Pointer<DSOP_SCOPE_INIT_INFO> aDsScopeInfos;
  @Uint32()
  external int flOptions;
  @Uint32()
  external int cAttributesToFetch;
  external Pointer<Pointer<Utf16>> apwzAttributeNames;
}

class DS_SELECTION extends Struct {
  external Pointer<Utf16> pwzName;
  external Pointer<Utf16> pwzADsPath;
  external Pointer<Utf16> pwzClass;
  external Pointer<Utf16> pwzUPN;
  external Pointer<VARIANT> pvarFetchedAttributes;
  @Uint32()
  external int flScopeType;
}

class DS_SELECTION_LIST extends Struct {
  @Uint32()
  external int cItems;
  @Uint32()
  external int cFetchedAttributes;
  @Array(1)
  external Array<DS_SELECTION> aDsSelection;
}

class DSQUERYINITPARAMS extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwFlags;
  external Pointer<Utf16> pDefaultScope;
  external Pointer<Utf16> pDefaultSaveLocation;
  external Pointer<Utf16> pUserName;
  external Pointer<Utf16> pPassword;
  external Pointer<Utf16> pServer;
}

class DSCOLUMN extends Struct {
  @Uint32()
  external int dwFlags;
  @Int32()
  external int fmt;
  @Int32()
  external int cx;
  @Int32()
  external int idsName;
  @Int32()
  external int offsetProperty;
  @Uint32()
  external int dwReserved;
}

class DSQUERYPARAMS extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hInstance;
  @Int32()
  external int offsetQuery;
  @Int32()
  external int iColumns;
  @Uint32()
  external int dwReserved;
  @Array(1)
  external Array<DSCOLUMN> aColumns;
}

class DSQUERYCLASSLIST extends Struct {
  @Uint32()
  external int cbStruct;
  @Int32()
  external int cClasses;
  @Array(1)
  external Array<Uint32> offsetClass;
}

class DSA_NEWOBJ_DISPINFO extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int hObjClassIcon;
  external Pointer<Utf16> lpszWizTitle;
  external Pointer<Utf16> lpszContDisplayName;
}

class ADSPROPINITPARAMS extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int hr;
  external Pointer pDsObj;
  external Pointer<Utf16> pwzCN;
  external Pointer<ADS_ATTR_INFO> pWritableAttrs;
}

class ADSPROPERROR extends Struct {
  @IntPtr()
  external int hwndPage;
  external Pointer<Utf16> pszPageTitle;
  external Pointer<Utf16> pszObjPath;
  external Pointer<Utf16> pszObjClass;
  @Int32()
  external int hr;
  external Pointer<Utf16> pszError;
}

class SCHEDULE_HEADER extends Struct {
  @Uint32()
  external int Type;
  @Uint32()
  external int Offset;
}

class SCHEDULE extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Bandwidth;
  @Uint32()
  external int NumberOfSchedules;
  @Array(1)
  external Array<SCHEDULE_HEADER> Schedules;
}

class DS_NAME_RESULT_ITEMA extends Struct {
  @Uint32()
  external int status;
  external Pointer<Utf8> pDomain;
  external Pointer<Utf8> pName;
}

class DS_NAME_RESULTA extends Struct {
  @Uint32()
  external int cItems;
  external Pointer<DS_NAME_RESULT_ITEMA> rItems;
}

class DS_NAME_RESULT_ITEMW extends Struct {
  @Uint32()
  external int status;
  external Pointer<Utf16> pDomain;
  external Pointer<Utf16> pName;
}

class DS_NAME_RESULTW extends Struct {
  @Uint32()
  external int cItems;
  external Pointer<DS_NAME_RESULT_ITEM> rItems;
}

class DS_REPSYNCALL_SYNCA extends Struct {
  external Pointer<Utf8> pszSrcId;
  external Pointer<Utf8> pszDstId;
  external Pointer<Utf8> pszNC;
  external Pointer<GUID> pguidSrc;
  external Pointer<GUID> pguidDst;
}

class DS_REPSYNCALL_SYNCW extends Struct {
  external Pointer<Utf16> pszSrcId;
  external Pointer<Utf16> pszDstId;
  external Pointer<Utf16> pszNC;
  external Pointer<GUID> pguidSrc;
  external Pointer<GUID> pguidDst;
}

class DS_REPSYNCALL_ERRINFOA extends Struct {
  external Pointer<Utf8> pszSvrId;
  @Uint32()
  external int error;
  @Uint32()
  external int dwWin32Err;
  external Pointer<Utf8> pszSrcId;
}

class DS_REPSYNCALL_ERRINFOW extends Struct {
  external Pointer<Utf16> pszSvrId;
  @Uint32()
  external int error;
  @Uint32()
  external int dwWin32Err;
  external Pointer<Utf16> pszSrcId;
}

class DS_REPSYNCALL_UPDATEA extends Struct {
  @Uint32()
  external int event;
  external Pointer<DS_REPSYNCALL_ERRINFOA> pErrInfo;
  external Pointer<DS_REPSYNCALL_SYNCA> pSync;
}

class DS_REPSYNCALL_UPDATEW extends Struct {
  @Uint32()
  external int event;
  external Pointer<DS_REPSYNCALL_ERRINFO> pErrInfo;
  external Pointer<DS_REPSYNCALL_SYNC> pSync;
}

class DS_SITE_COST_INFO extends Struct {
  @Uint32()
  external int errorCode;
  @Uint32()
  external int cost;
}

class DS_SCHEMA_GUID_MAPA extends Struct {
  external GUID guid;
  @Uint32()
  external int guidType;
  external Pointer<Utf8> pName;
}

class DS_SCHEMA_GUID_MAPW extends Struct {
  external GUID guid;
  @Uint32()
  external int guidType;
  external Pointer<Utf16> pName;
}

class DS_DOMAIN_CONTROLLER_INFO_1A extends Struct {
  external Pointer<Utf8> NetbiosName;
  external Pointer<Utf8> DnsHostName;
  external Pointer<Utf8> SiteName;
  external Pointer<Utf8> ComputerObjectName;
  external Pointer<Utf8> ServerObjectName;
  @Int32()
  external int fIsPdc;
  @Int32()
  external int fDsEnabled;
}

class DS_DOMAIN_CONTROLLER_INFO_1W extends Struct {
  external Pointer<Utf16> NetbiosName;
  external Pointer<Utf16> DnsHostName;
  external Pointer<Utf16> SiteName;
  external Pointer<Utf16> ComputerObjectName;
  external Pointer<Utf16> ServerObjectName;
  @Int32()
  external int fIsPdc;
  @Int32()
  external int fDsEnabled;
}

class DS_DOMAIN_CONTROLLER_INFO_2A extends Struct {
  external Pointer<Utf8> NetbiosName;
  external Pointer<Utf8> DnsHostName;
  external Pointer<Utf8> SiteName;
  external Pointer<Utf8> SiteObjectName;
  external Pointer<Utf8> ComputerObjectName;
  external Pointer<Utf8> ServerObjectName;
  external Pointer<Utf8> NtdsDsaObjectName;
  @Int32()
  external int fIsPdc;
  @Int32()
  external int fDsEnabled;
  @Int32()
  external int fIsGc;
  external GUID SiteObjectGuid;
  external GUID ComputerObjectGuid;
  external GUID ServerObjectGuid;
  external GUID NtdsDsaObjectGuid;
}

class DS_DOMAIN_CONTROLLER_INFO_2W extends Struct {
  external Pointer<Utf16> NetbiosName;
  external Pointer<Utf16> DnsHostName;
  external Pointer<Utf16> SiteName;
  external Pointer<Utf16> SiteObjectName;
  external Pointer<Utf16> ComputerObjectName;
  external Pointer<Utf16> ServerObjectName;
  external Pointer<Utf16> NtdsDsaObjectName;
  @Int32()
  external int fIsPdc;
  @Int32()
  external int fDsEnabled;
  @Int32()
  external int fIsGc;
  external GUID SiteObjectGuid;
  external GUID ComputerObjectGuid;
  external GUID ServerObjectGuid;
  external GUID NtdsDsaObjectGuid;
}

class DS_DOMAIN_CONTROLLER_INFO_3A extends Struct {
  external Pointer<Utf8> NetbiosName;
  external Pointer<Utf8> DnsHostName;
  external Pointer<Utf8> SiteName;
  external Pointer<Utf8> SiteObjectName;
  external Pointer<Utf8> ComputerObjectName;
  external Pointer<Utf8> ServerObjectName;
  external Pointer<Utf8> NtdsDsaObjectName;
  @Int32()
  external int fIsPdc;
  @Int32()
  external int fDsEnabled;
  @Int32()
  external int fIsGc;
  @Int32()
  external int fIsRodc;
  external GUID SiteObjectGuid;
  external GUID ComputerObjectGuid;
  external GUID ServerObjectGuid;
  external GUID NtdsDsaObjectGuid;
}

class DS_DOMAIN_CONTROLLER_INFO_3W extends Struct {
  external Pointer<Utf16> NetbiosName;
  external Pointer<Utf16> DnsHostName;
  external Pointer<Utf16> SiteName;
  external Pointer<Utf16> SiteObjectName;
  external Pointer<Utf16> ComputerObjectName;
  external Pointer<Utf16> ServerObjectName;
  external Pointer<Utf16> NtdsDsaObjectName;
  @Int32()
  external int fIsPdc;
  @Int32()
  external int fDsEnabled;
  @Int32()
  external int fIsGc;
  @Int32()
  external int fIsRodc;
  external GUID SiteObjectGuid;
  external GUID ComputerObjectGuid;
  external GUID ServerObjectGuid;
  external GUID NtdsDsaObjectGuid;
}

class DS_REPL_NEIGHBORW extends Struct {
  external Pointer<Utf16> pszNamingContext;
  external Pointer<Utf16> pszSourceDsaDN;
  external Pointer<Utf16> pszSourceDsaAddress;
  external Pointer<Utf16> pszAsyncIntersiteTransportDN;
  @Uint32()
  external int dwReplicaFlags;
  @Uint32()
  external int dwReserved;
  external GUID uuidNamingContextObjGuid;
  external GUID uuidSourceDsaObjGuid;
  external GUID uuidSourceDsaInvocationID;
  external GUID uuidAsyncIntersiteTransportObjGuid;
  @Int64()
  external int usnLastObjChangeSynced;
  @Int64()
  external int usnAttributeFilter;
  external FILETIME ftimeLastSyncSuccess;
  external FILETIME ftimeLastSyncAttempt;
  @Uint32()
  external int dwLastSyncResult;
  @Uint32()
  external int cNumConsecutiveSyncFailures;
}

class DS_REPL_NEIGHBORW_BLOB extends Struct {
  @Uint32()
  external int oszNamingContext;
  @Uint32()
  external int oszSourceDsaDN;
  @Uint32()
  external int oszSourceDsaAddress;
  @Uint32()
  external int oszAsyncIntersiteTransportDN;
  @Uint32()
  external int dwReplicaFlags;
  @Uint32()
  external int dwReserved;
  external GUID uuidNamingContextObjGuid;
  external GUID uuidSourceDsaObjGuid;
  external GUID uuidSourceDsaInvocationID;
  external GUID uuidAsyncIntersiteTransportObjGuid;
  @Int64()
  external int usnLastObjChangeSynced;
  @Int64()
  external int usnAttributeFilter;
  external FILETIME ftimeLastSyncSuccess;
  external FILETIME ftimeLastSyncAttempt;
  @Uint32()
  external int dwLastSyncResult;
  @Uint32()
  external int cNumConsecutiveSyncFailures;
}

class DS_REPL_NEIGHBORSW extends Struct {
  @Uint32()
  external int cNumNeighbors;
  @Uint32()
  external int dwReserved;
  @Array(1)
  external Array<DS_REPL_NEIGHBORW> rgNeighbor;
}

class DS_REPL_CURSOR extends Struct {
  external GUID uuidSourceDsaInvocationID;
  @Int64()
  external int usnAttributeFilter;
}

class DS_REPL_CURSOR_2 extends Struct {
  external GUID uuidSourceDsaInvocationID;
  @Int64()
  external int usnAttributeFilter;
  external FILETIME ftimeLastSyncSuccess;
}

class DS_REPL_CURSOR_3W extends Struct {
  external GUID uuidSourceDsaInvocationID;
  @Int64()
  external int usnAttributeFilter;
  external FILETIME ftimeLastSyncSuccess;
  external Pointer<Utf16> pszSourceDsaDN;
}

class DS_REPL_CURSOR_BLOB extends Struct {
  external GUID uuidSourceDsaInvocationID;
  @Int64()
  external int usnAttributeFilter;
  external FILETIME ftimeLastSyncSuccess;
  @Uint32()
  external int oszSourceDsaDN;
}

class DS_REPL_CURSORS extends Struct {
  @Uint32()
  external int cNumCursors;
  @Uint32()
  external int dwReserved;
  @Array(1)
  external Array<DS_REPL_CURSOR> rgCursor;
}

class DS_REPL_CURSORS_2 extends Struct {
  @Uint32()
  external int cNumCursors;
  @Uint32()
  external int dwEnumerationContext;
  @Array(1)
  external Array<DS_REPL_CURSOR_2> rgCursor;
}

class DS_REPL_CURSORS_3W extends Struct {
  @Uint32()
  external int cNumCursors;
  @Uint32()
  external int dwEnumerationContext;
  @Array(1)
  external Array<DS_REPL_CURSOR_3W> rgCursor;
}

class DS_REPL_ATTR_META_DATA extends Struct {
  external Pointer<Utf16> pszAttributeName;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
}

class DS_REPL_ATTR_META_DATA_2 extends Struct {
  external Pointer<Utf16> pszAttributeName;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
  external Pointer<Utf16> pszLastOriginatingDsaDN;
}

class DS_REPL_ATTR_META_DATA_BLOB extends Struct {
  @Uint32()
  external int oszAttributeName;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
  @Uint32()
  external int oszLastOriginatingDsaDN;
}

class DS_REPL_OBJ_META_DATA extends Struct {
  @Uint32()
  external int cNumEntries;
  @Uint32()
  external int dwReserved;
  @Array(1)
  external Array<DS_REPL_ATTR_META_DATA> rgMetaData;
}

class DS_REPL_OBJ_META_DATA_2 extends Struct {
  @Uint32()
  external int cNumEntries;
  @Uint32()
  external int dwReserved;
  @Array(1)
  external Array<DS_REPL_ATTR_META_DATA_2> rgMetaData;
}

class DS_REPL_KCC_DSA_FAILUREW extends Struct {
  external Pointer<Utf16> pszDsaDN;
  external GUID uuidDsaObjGuid;
  external FILETIME ftimeFirstFailure;
  @Uint32()
  external int cNumFailures;
  @Uint32()
  external int dwLastResult;
}

class DS_REPL_KCC_DSA_FAILUREW_BLOB extends Struct {
  @Uint32()
  external int oszDsaDN;
  external GUID uuidDsaObjGuid;
  external FILETIME ftimeFirstFailure;
  @Uint32()
  external int cNumFailures;
  @Uint32()
  external int dwLastResult;
}

class DS_REPL_KCC_DSA_FAILURESW extends Struct {
  @Uint32()
  external int cNumEntries;
  @Uint32()
  external int dwReserved;
  @Array(1)
  external Array<DS_REPL_KCC_DSA_FAILUREW> rgDsaFailure;
}

class DS_REPL_OPW extends Struct {
  external FILETIME ftimeEnqueued;
  @Uint32()
  external int ulSerialNumber;
  @Uint32()
  external int ulPriority;
  @Uint32()
  external int OpType;
  @Uint32()
  external int ulOptions;
  external Pointer<Utf16> pszNamingContext;
  external Pointer<Utf16> pszDsaDN;
  external Pointer<Utf16> pszDsaAddress;
  external GUID uuidNamingContextObjGuid;
  external GUID uuidDsaObjGuid;
}

class DS_REPL_OPW_BLOB extends Struct {
  external FILETIME ftimeEnqueued;
  @Uint32()
  external int ulSerialNumber;
  @Uint32()
  external int ulPriority;
  @Uint32()
  external int OpType;
  @Uint32()
  external int ulOptions;
  @Uint32()
  external int oszNamingContext;
  @Uint32()
  external int oszDsaDN;
  @Uint32()
  external int oszDsaAddress;
  external GUID uuidNamingContextObjGuid;
  external GUID uuidDsaObjGuid;
}

class DS_REPL_PENDING_OPSW extends Struct {
  external FILETIME ftimeCurrentOpStarted;
  @Uint32()
  external int cNumPendingOps;
  @Array(1)
  external Array<DS_REPL_OPW> rgPendingOp;
}

class DS_REPL_VALUE_META_DATA extends Struct {
  external Pointer<Utf16> pszAttributeName;
  external Pointer<Utf16> pszObjectDn;
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
  external FILETIME ftimeDeleted;
  external FILETIME ftimeCreated;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
}

class DS_REPL_VALUE_META_DATA_2 extends Struct {
  external Pointer<Utf16> pszAttributeName;
  external Pointer<Utf16> pszObjectDn;
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
  external FILETIME ftimeDeleted;
  external FILETIME ftimeCreated;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
  external Pointer<Utf16> pszLastOriginatingDsaDN;
}

class DS_REPL_VALUE_META_DATA_EXT extends Struct {
  external Pointer<Utf16> pszAttributeName;
  external Pointer<Utf16> pszObjectDn;
  @Uint32()
  external int cbData;
  external Pointer<Uint8> pbData;
  external FILETIME ftimeDeleted;
  external FILETIME ftimeCreated;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
  external Pointer<Utf16> pszLastOriginatingDsaDN;
  @Uint32()
  external int dwUserIdentifier;
  @Uint32()
  external int dwPriorLinkState;
  @Uint32()
  external int dwCurrentLinkState;
}

class DS_REPL_VALUE_META_DATA_BLOB extends Struct {
  @Uint32()
  external int oszAttributeName;
  @Uint32()
  external int oszObjectDn;
  @Uint32()
  external int cbData;
  @Uint32()
  external int obData;
  external FILETIME ftimeDeleted;
  external FILETIME ftimeCreated;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
  @Uint32()
  external int oszLastOriginatingDsaDN;
}

class DS_REPL_VALUE_META_DATA_BLOB_EXT extends Struct {
  @Uint32()
  external int oszAttributeName;
  @Uint32()
  external int oszObjectDn;
  @Uint32()
  external int cbData;
  @Uint32()
  external int obData;
  external FILETIME ftimeDeleted;
  external FILETIME ftimeCreated;
  @Uint32()
  external int dwVersion;
  external FILETIME ftimeLastOriginatingChange;
  external GUID uuidLastOriginatingDsaInvocationID;
  @Int64()
  external int usnOriginatingChange;
  @Int64()
  external int usnLocalChange;
  @Uint32()
  external int oszLastOriginatingDsaDN;
  @Uint32()
  external int dwUserIdentifier;
  @Uint32()
  external int dwPriorLinkState;
  @Uint32()
  external int dwCurrentLinkState;
}

class DS_REPL_ATTR_VALUE_META_DATA extends Struct {
  @Uint32()
  external int cNumEntries;
  @Uint32()
  external int dwEnumerationContext;
  @Array(1)
  external Array<DS_REPL_VALUE_META_DATA> rgMetaData;
}

class DS_REPL_ATTR_VALUE_META_DATA_2 extends Struct {
  @Uint32()
  external int cNumEntries;
  @Uint32()
  external int dwEnumerationContext;
  @Array(1)
  external Array<DS_REPL_VALUE_META_DATA_2> rgMetaData;
}

class DS_REPL_ATTR_VALUE_META_DATA_EXT extends Struct {
  @Uint32()
  external int cNumEntries;
  @Uint32()
  external int dwEnumerationContext;
  @Array(1)
  external Array<DS_REPL_VALUE_META_DATA_EXT> rgMetaData;
}

class DS_REPL_QUEUE_STATISTICSW extends Struct {
  external FILETIME ftimeCurrentOpStarted;
  @Uint32()
  external int cNumPendingOps;
  external FILETIME ftimeOldestSync;
  external FILETIME ftimeOldestAdd;
  external FILETIME ftimeOldestMod;
  external FILETIME ftimeOldestDel;
  external FILETIME ftimeOldestUpdRefs;
}

class DSROLE_PRIMARY_DOMAIN_INFO_BASIC extends Struct {
  @Uint32()
  external int MachineRole;
  @Uint32()
  external int Flags;
  external Pointer<Utf16> DomainNameFlat;
  external Pointer<Utf16> DomainNameDns;
  external Pointer<Utf16> DomainForestName;
  external GUID DomainGuid;
}

class DSROLE_UPGRADE_STATUS_INFO extends Struct {
  @Uint32()
  external int OperationState;
  @Uint32()
  external int PreviousServerState;
}

class DSROLE_OPERATION_STATE_INFO extends Struct {
  @Uint32()
  external int OperationState;
}

class DOMAIN_CONTROLLER_INFOA extends Struct {
  external Pointer<Utf8> DomainControllerName;
  external Pointer<Utf8> DomainControllerAddress;
  @Uint32()
  external int DomainControllerAddressType;
  external GUID DomainGuid;
  external Pointer<Utf8> DomainName;
  external Pointer<Utf8> DnsForestName;
  @Uint32()
  external int Flags;
  external Pointer<Utf8> DcSiteName;
  external Pointer<Utf8> ClientSiteName;
}

class DOMAIN_CONTROLLER_INFOW extends Struct {
  external Pointer<Utf16> DomainControllerName;
  external Pointer<Utf16> DomainControllerAddress;
  @Uint32()
  external int DomainControllerAddressType;
  external GUID DomainGuid;
  external Pointer<Utf16> DomainName;
  external Pointer<Utf16> DnsForestName;
  @Uint32()
  external int Flags;
  external Pointer<Utf16> DcSiteName;
  external Pointer<Utf16> ClientSiteName;
}

class DS_DOMAIN_TRUSTSW extends Struct {
  external Pointer<Utf16> NetbiosDomainName;
  external Pointer<Utf16> DnsDomainName;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ParentIndex;
  @Uint32()
  external int TrustType;
  @Uint32()
  external int TrustAttributes;
  external Pointer DomainSid;
  external GUID DomainGuid;
}

class DS_DOMAIN_TRUSTSA extends Struct {
  external Pointer<Utf8> NetbiosDomainName;
  external Pointer<Utf8> DnsDomainName;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ParentIndex;
  @Uint32()
  external int TrustType;
  @Uint32()
  external int TrustAttributes;
  external Pointer DomainSid;
  external GUID DomainGuid;
}
