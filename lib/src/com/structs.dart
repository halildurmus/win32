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

class HRESULT extends Struct {
  @Int32() external int Value;
}

class CO_MTA_USAGE_COOKIE extends Struct {
  @IntPtr() external int Value;
}

class CO_DEVICE_CATALOG_COOKIE extends Struct {
  @IntPtr() external int Value;
}

class COMPRESSOR_HANDLE extends Struct {
  @IntPtr() external int Value;
}

class COMPRESS_ALLOCATION_ROUTINES extends Struct {
  external PFN_COMPRESS_ALLOCATE Allocate;
  external PFN_COMPRESS_FREE Free;
  external Pointer UserContext;
}

class COAUTHIDENTITY extends Struct {
  external Pointer<Uint16> User;
  @Uint32() external int UserLength;
  external Pointer<Uint16> Domain;
  @Uint32() external int DomainLength;
  external Pointer<Uint16> Password;
  @Uint32() external int PasswordLength;
  @Uint32() external int Flags;
}

class COAUTHINFO extends Struct {
  @Uint32() external int dwAuthnSvc;
  @Uint32() external int dwAuthzSvc;
  external Pointer<Utf16> pwszServerPrincName;
  @Uint32() external int dwAuthnLevel;
  @Uint32() external int dwImpersonationLevel;
  external Pointer<COAUTHIDENTITY> pAuthIdentityData;
  @Uint32() external int dwCapabilities;
}

class BYTE_BLOB extends Struct {
  @Uint32() external int clSize;
  external __ubyte__ abData;
}

class WORD_BLOB extends Struct {
  @Uint32() external int clSize;
  external __ushort__ asData;
}

class DWORD_BLOB extends Struct {
  @Uint32() external int clSize;
  external __uint__ alData;
}

class FLAGGED_BYTE_BLOB extends Struct {
  @Uint32() external int fFlags;
  @Uint32() external int clSize;
  external __ubyte__ abData;
}

class FLAGGED_WORD_BLOB extends Struct {
  @Uint32() external int fFlags;
  @Uint32() external int clSize;
  external __ushort__ asData;
}

class BYTE_SIZEDARR extends Struct {
  @Uint32() external int clSize;
  external Pointer<Uint8> pData;
}

class SHORT_SIZEDARR extends Struct {
  @Uint32() external int clSize;
  external Pointer<Uint16> pData;
}

class LONG_SIZEDARR extends Struct {
  @Uint32() external int clSize;
  external Pointer<Uint32> pData;
}

class HYPER_SIZEDARR extends Struct {
  @Uint32() external int clSize;
  external Pointer<Int64> pData;
}

class IEnumContextProps extends Struct {
}

class IContext extends Struct {
}

class COSERVERINFO extends Struct {
  @Uint32() external int dwReserved1;
  external Pointer<Utf16> pwszName;
  external Pointer<COAUTHINFO> pAuthInfo;
  @Uint32() external int dwReserved2;
}

class MULTI_QI extends Struct {
  external Pointer<GUID> pIID;
  external Pointer pItf;
  @Int32() external int hr;
}

class RPCOLEMESSAGE extends Struct {
  external Pointer reserved1;
  @Uint32() external int dataRepresentation;
  external Pointer Buffer;
  @Uint32() external int cbBuffer;
  @Uint32() external int iMethod;
  external ____ reserved2;
  @Uint32() external int rpcFlags;
}

class SChannelHookCallInfo extends Struct {
  external GUID iid;
  @Uint32() external int cbSize;
  external GUID uCausality;
  @Uint32() external int dwServerPid;
  @Uint32() external int iMethod;
  external Pointer pObject;
}

class SOLE_AUTHENTICATION_SERVICE extends Struct {
  @Uint32() external int dwAuthnSvc;
  @Uint32() external int dwAuthzSvc;
  external Pointer<Utf16> pPrincipalName;
  @Int32() external int hr;
}

class SOLE_AUTHENTICATION_INFO extends Struct {
  @Uint32() external int dwAuthnSvc;
  @Uint32() external int dwAuthzSvc;
  external Pointer pAuthInfo;
}

class SOLE_AUTHENTICATION_LIST extends Struct {
  @Uint32() external int cAuthInfo;
  external Pointer<SOLE_AUTHENTICATION_INFO> aAuthInfo;
}

class BIND_OPTS extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int grfFlags;
  @Uint32() external int grfMode;
  @Uint32() external int dwTickCountDeadline;
}

class BIND_OPTS2 extends Struct {
  external BIND_OPTS __AnonymousBase_objidl_L8477_C36;
  @Uint32() external int dwTrackFlags;
  @Uint32() external int dwClassContext;
  @Uint32() external int locale;
  external Pointer<COSERVERINFO> pServerInfo;
}

class BIND_OPTS3 extends Struct {
  external BIND_OPTS2 __AnonymousBase_objidl_L8501_C36;
  @IntPtr() external int hwnd;
}

class DVTARGETDEVICE extends Struct {
  @Uint32() external int tdSize;
  @Uint16() external int tdDriverNameOffset;
  @Uint16() external int tdDeviceNameOffset;
  @Uint16() external int tdPortNameOffset;
  @Uint16() external int tdExtDevmodeOffset;
  external __ubyte__ tdData;
}

class FORMATETC extends Struct {
  @Uint16() external int cfFormat;
  external Pointer<DVTARGETDEVICE> ptd;
  @Uint32() external int dwAspect;
  @Int32() external int lindex;
  @Uint32() external int tymed;
}

class STATDATA extends Struct {
  external FORMATETC formatetc;
  @Uint32() external int advf;
  external Pointer pAdvSink;
  @Uint32() external int dwConnection;
}

class RemSTGMEDIUM extends Struct {
  @Uint32() external int tymed;
  @Uint32() external int dwHandleType;
  @Uint32() external int pData;
  @Uint32() external int pUnkForRelease;
  @Uint32() external int cbData;
  external __ubyte__ data;
}

class STGMEDIUM extends Struct {
  @Uint32() external int tymed;
  @Uint32() external int Anonymous;
  external Pointer pUnkForRelease;
}

class GDI_OBJECT extends Struct {
  @Uint32() external int ObjectType;
  @Uint32() external int u;
}

class userSTGMEDIUM extends Struct {
  external Pointer pUnkForRelease;
}

class userFLAG_STGMEDIUM extends Struct {
  @Int32() external int ContextFlags;
  @Int32() external int fPassOwnership;
  external userSTGMEDIUM Stgmed;
}

class FLAG_STGMEDIUM extends Struct {
  @Int32() external int ContextFlags;
  @Int32() external int fPassOwnership;
  external STGMEDIUM Stgmed;
}

class INTERFACEINFO extends Struct {
  external Pointer pUnk;
  external GUID iid;
  @Uint16() external int wMethod;
}

class OBJECTDESCRIPTOR extends Struct {
  @Uint32() external int cbSize;
  external GUID clsid;
  @Uint32() external int dwDrawAspect;
  external SIZE sizel;
  external POINTL pointl;
  @Uint32() external int dwStatus;
  @Uint32() external int dwFullUserTypeName;
  @Uint32() external int dwSrcOfCopy;
}

class OIFI extends Struct {
  @Uint32() external int cb;
  @Int32() external int fMDIApp;
  @IntPtr() external int hwndFrame;
  @IntPtr() external int haccel;
  @Uint32() external int cAccelEntries;
}

class OleMenuGroupWidths extends Struct {
  external __int__ width;
}

class OLEVERB extends Struct {
  @Int32() external int lVerb;
  external Pointer<Utf16> lpszVerbName;
  @Uint32() external int fuFlags;
  @Uint32() external int grfAttribs;
}

class BINDINFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> szExtraInfo;
  external STGMEDIUM stgmedData;
  @Uint32() external int grfBindInfoF;
  @Uint32() external int dwBindVerb;
  external Pointer<Utf16> szCustomVerb;
  @Uint32() external int cbstgmedData;
  @Uint32() external int dwOptions;
  @Uint32() external int dwOptionsFlags;
  @Uint32() external int dwCodePage;
  external SECURITY_ATTRIBUTES securityAttributes;
  external GUID iid;
  external Pointer pUnk;
  @Uint32() external int dwReserved;
}

class REMSECURITY_ATTRIBUTES extends Struct {
  @Uint32() external int nLength;
  @Uint32() external int lpSecurityDescriptor;
  @Int32() external int bInheritHandle;
}

class RemBINDINFO extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> szExtraInfo;
  @Uint32() external int grfBindInfoF;
  @Uint32() external int dwBindVerb;
  external Pointer<Utf16> szCustomVerb;
  @Uint32() external int cbstgmedData;
  @Uint32() external int dwOptions;
  @Uint32() external int dwOptionsFlags;
  @Uint32() external int dwCodePage;
  external REMSECURITY_ATTRIBUTES securityAttributes;
  external GUID iid;
  external Pointer pUnk;
  @Uint32() external int dwReserved;
}

class RemFORMATETC extends Struct {
  @Uint32() external int cfFormat;
  @Uint32() external int ptd;
  @Uint32() external int dwAspect;
  @Int32() external int lindex;
  @Uint32() external int tymed;
}

class AUTHENTICATEINFO extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwReserved;
}

class PROTOCOLDATA extends Struct {
  @Uint32() external int grfFlags;
  @Uint32() external int dwState;
  external Pointer pData;
  @Uint32() external int cbData;
}

class StartParam extends Struct {
  external GUID iid;
  external Pointer pIBindCtx;
  external Pointer pItf;
}

class ZONEATTRIBUTES extends Struct {
  @Uint32() external int cbSize;
  external __ushort__ szDisplayName;
  external __ushort__ szDescription;
  external __ushort__ szIconPath;
  @Uint32() external int dwTemplateMinLevel;
  @Uint32() external int dwTemplateRecommended;
  @Uint32() external int dwTemplateCurrentLevel;
  @Uint32() external int dwFlags;
}

class CODEBASEHOLD extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> szDistUnit;
  external Pointer<Utf16> szCodeBase;
  @Uint32() external int dwVersionMS;
  @Uint32() external int dwVersionLS;
  @Uint32() external int dwStyle;
}

class PROTOCOLFILTERDATA extends Struct {
  @Uint32() external int cbSize;
  external Pointer pProtocolSink;
  external IInternetProtocol pProtocol;
  external Pointer pUnk;
  @Uint32() external int dwFilterFlags;
}

class DATAINFO extends Struct {
  @Uint32() external int ulTotalSize;
  @Uint32() external int ulavrPacketSize;
  @Uint32() external int ulConnectSpeed;
  @Uint32() external int ulProcessorSpeed;
}

class HIT_LOGGING_INFO extends Struct {
  @Uint32() external int dwStructSize;
  external Pointer<Utf8> lpszLoggedUrlName;
  external SYSTEMTIME StartTime;
  external SYSTEMTIME EndTime;
  external Pointer<Utf8> lpszExtendedInfo;
}

class CONFIRMSAFETY extends Struct {
  external GUID clsid;
  external Pointer pUnk;
  @Uint32() external int dwFlags;
}

class PROTOCOL_ARGUMENT extends Struct {
  external Pointer<Utf16> szMethod;
  external Pointer<Utf16> szTargetUrl;
}

class OLESTREAMVTBL extends Struct {
  @IntPtr() external int Get;
  @IntPtr() external int Put;
}

class OLESTREAM extends Struct {
  external Pointer<OLESTREAMVTBL> lpstbl;
}

class CONNECTDATA extends Struct {
  external Pointer pUnk;
  @Uint32() external int dwCookie;
}

class LICINFO extends Struct {
  @Int32() external int cbLicInfo;
  @Int32() external int fRuntimeKeyAvail;
  @Int32() external int fLicVerified;
}

class CONTROLINFO extends Struct {
  @Uint32() external int cb;
  @IntPtr() external int hAccel;
  @Uint16() external int cAccel;
  @Uint32() external int dwFlags;
}

class POINTF extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class PROPPAGEINFO extends Struct {
  @Uint32() external int cb;
  external Pointer<Utf16> pszTitle;
  external SIZE size;
  external Pointer<Utf16> pszDocString;
  external Pointer<Utf16> pszHelpFile;
  @Uint32() external int dwHelpContext;
}

class CAUUID extends Struct {
  @Uint32() external int cElems;
  external Pointer<GUID> pElems;
}

class ExtentInfo extends Struct {
  @Uint32() external int cb;
  @Uint32() external int dwExtentMode;
  external SIZE sizelProposed;
}

class AspectInfo extends Struct {
  @Uint32() external int cb;
  @Uint32() external int dwFlags;
}

class CALPOLESTR extends Struct {
  @Uint32() external int cElems;
  external Pointer<Pointer<Utf16>> pElems;
}

class CADWORD extends Struct {
  @Uint32() external int cElems;
  external Pointer<Uint32> pElems;
}

class PROPBAG2 extends Struct {
  @Uint32() external int dwType;
  @Uint16() external int vt;
  @Uint16() external int cfType;
  @Uint32() external int dwHint;
  external Pointer<Utf16> pstrName;
  external GUID clsid;
}

class QACONTAINER extends Struct {
  @Uint32() external int cbSize;
  external Pointer pClientSite;
  external IAdviseSinkEx pAdviseSink;
  external Pointer pPropertyNotifySink;
  external Pointer pUnkEventSink;
  @Uint32() external int dwAmbientFlags;
  @Uint32() external int colorFore;
  @Uint32() external int colorBack;
  external Pointer pFont;
  external Pointer pUndoMgr;
  @Uint32() external int dwAppearance;
  @Int32() external int lcid;
  @IntPtr() external int hpal;
  external Pointer pBindHost;
  external Pointer pOleControlSite;
  external Pointer pServiceProvider;
}

class QACONTROL extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMiscStatus;
  @Uint32() external int dwViewStatus;
  @Uint32() external int dwEventCookie;
  @Uint32() external int dwPropNotifyCookie;
  @Uint32() external int dwPointerActivationPolicy;
}

class OCPFIPARAMS extends Struct {
  @Uint32() external int cbStructSize;
  @IntPtr() external int hWndOwner;
  @Int32() external int x;
  @Int32() external int y;
  external Pointer<Utf16> lpszCaption;
  @Uint32() external int cObjects;
  external Pointer<Pointer> lplpUnk;
  @Uint32() external int cPages;
  external Pointer<GUID> lpPages;
  @Uint32() external int lcid;
  @Int32() external int dispidInitialProperty;
}

class FONTDESC extends Struct {
  @Uint32() external int cbSizeofstruct;
  external Pointer<Utf16> lpstrName;
  external CY cySize;
  @Int16() external int sWeight;
  @Int16() external int sCharset;
  @Int32() external int fItalic;
  @Int32() external int fUnderline;
  @Int32() external int fStrikethrough;
}

class PICTDESC extends Struct {
  @Uint32() external int cbSizeofstruct;
  @Uint32() external int picType;
  @Uint32() external int Anonymous;
}

class PAGERANGE extends Struct {
  @Int32() external int nFromPage;
  @Int32() external int nToPage;
}

class PAGESET extends Struct {
  @Uint32() external int cbStruct;
  @Int32() external int fOddPages;
  @Int32() external int fEvenPages;
  @Uint32() external int cPageRange;
  external PAGERANGE rgPages;
}

class OLECMD extends Struct {
  @Uint32() external int cmdID;
  @Uint32() external int cmdf;
}

class OLECMDTEXT extends Struct {
  @Uint32() external int cmdtextf;
  @Uint32() external int cwActual;
  @Uint32() external int cwBuf;
  external __ushort__ rgwz;
}

class OLEUIINSERTOBJECTW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  external GUID clsid;
  external Pointer<Utf16> lpszFile;
  @Uint32() external int cchFile;
  @Uint32() external int cClsidExclude;
  external Pointer<GUID> lpClsidExclude;
  external GUID iid;
  @Uint32() external int oleRender;
  external Pointer<FORMATETC> lpFormatEtc;
  external Pointer lpIOleClientSite;
  external Pointer lpIStorage;
  external Pointer<Pointer> ppvObj;
  @Int32() external int sc;
  @IntPtr() external int hMetaPict;
}

class OLEUIINSERTOBJECTA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  external GUID clsid;
  external Pointer<Utf8> lpszFile;
  @Uint32() external int cchFile;
  @Uint32() external int cClsidExclude;
  external Pointer<GUID> lpClsidExclude;
  external GUID iid;
  @Uint32() external int oleRender;
  external Pointer<FORMATETC> lpFormatEtc;
  external Pointer lpIOleClientSite;
  external Pointer lpIStorage;
  external Pointer<Pointer> ppvObj;
  @Int32() external int sc;
  @IntPtr() external int hMetaPict;
}

class OLEUIPASTEENTRYW extends Struct {
  external FORMATETC fmtetc;
  external Pointer<Utf16> lpstrFormatName;
  external Pointer<Utf16> lpstrResultText;
  @Uint32() external int dwFlags;
  @Uint32() external int dwScratchSpace;
}

class OLEUIPASTEENTRYA extends Struct {
  external FORMATETC fmtetc;
  external Pointer<Utf8> lpstrFormatName;
  external Pointer<Utf8> lpstrResultText;
  @Uint32() external int dwFlags;
  @Uint32() external int dwScratchSpace;
}

class OLEUIPASTESPECIALW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  external Pointer lpSrcDataObj;
  external Pointer<OLEUIPASTEENTRY> arrPasteEntries;
  @Int32() external int cPasteEntries;
  external Pointer<Uint32> arrLinkTypes;
  @Int32() external int cLinkTypes;
  @Uint32() external int cClsidExclude;
  external Pointer<GUID> lpClsidExclude;
  @Int32() external int nSelectedIndex;
  @Int32() external int fLink;
  @IntPtr() external int hMetaPict;
  external SIZE sizel;
}

class OLEUIPASTESPECIALA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  external Pointer lpSrcDataObj;
  external Pointer<OLEUIPASTEENTRYA> arrPasteEntries;
  @Int32() external int cPasteEntries;
  external Pointer<Uint32> arrLinkTypes;
  @Int32() external int cLinkTypes;
  @Uint32() external int cClsidExclude;
  external Pointer<GUID> lpClsidExclude;
  @Int32() external int nSelectedIndex;
  @Int32() external int fLink;
  @IntPtr() external int hMetaPict;
  external SIZE sizel;
}

class OLEUIEDITLINKSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  external Pointer lpOleUILinkContainer;
}

class OLEUIEDITLINKSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  external Pointer lpOleUILinkContainer;
}

class OLEUICHANGEICONW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  @IntPtr() external int hMetaPict;
  external GUID clsid;
  external __ushort__ szIconExe;
  @Int32() external int cchIconExe;
}

class OLEUICHANGEICONA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  @IntPtr() external int hMetaPict;
  external GUID clsid;
  external __byte__ szIconExe;
  @Int32() external int cchIconExe;
}

class OLEUICONVERTW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  external GUID clsid;
  external GUID clsidConvertDefault;
  external GUID clsidActivateDefault;
  external GUID clsidNew;
  @Uint32() external int dvAspect;
  @Uint16() external int wFormat;
  @Int32() external int fIsLinkedObject;
  @IntPtr() external int hMetaPict;
  external Pointer<Utf16> lpszUserType;
  @Int32() external int fObjectsIconChanged;
  external Pointer<Utf16> lpszDefLabel;
  @Uint32() external int cClsidExclude;
  external Pointer<GUID> lpClsidExclude;
}

class OLEUICONVERTA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  external GUID clsid;
  external GUID clsidConvertDefault;
  external GUID clsidActivateDefault;
  external GUID clsidNew;
  @Uint32() external int dvAspect;
  @Uint16() external int wFormat;
  @Int32() external int fIsLinkedObject;
  @IntPtr() external int hMetaPict;
  external Pointer<Utf8> lpszUserType;
  @Int32() external int fObjectsIconChanged;
  external Pointer<Utf8> lpszDefLabel;
  @Uint32() external int cClsidExclude;
  external Pointer<GUID> lpClsidExclude;
}

class OLEUIBUSYW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  @IntPtr() external int hTask;
  external Pointer<IntPtr> lphWndDialog;
}

class OLEUIBUSYA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  @IntPtr() external int hTask;
  external Pointer<IntPtr> lphWndDialog;
}

class OLEUICHANGESOURCEW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf16> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf16> lpszTemplate;
  @IntPtr() external int hResource;
  external Pointer<OPENFILENAME> lpOFN;
  external __uint__ dwReserved1;
  external Pointer lpOleUILinkContainer;
  @Uint32() external int dwLink;
  external Pointer<Utf16> lpszDisplayName;
  @Uint32() external int nFileLength;
  external Pointer<Utf16> lpszFrom;
  external Pointer<Utf16> lpszTo;
}

class OLEUICHANGESOURCEA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  @IntPtr() external int hWndOwner;
  external Pointer<Utf8> lpszCaption;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  @IntPtr() external int hInstance;
  external Pointer<Utf8> lpszTemplate;
  @IntPtr() external int hResource;
  external Pointer<OPENFILENAMEA> lpOFN;
  external __uint__ dwReserved1;
  external Pointer lpOleUILinkContainer;
  @Uint32() external int dwLink;
  external Pointer<Utf8> lpszDisplayName;
  @Uint32() external int nFileLength;
  external Pointer<Utf8> lpszFrom;
  external Pointer<Utf8> lpszTo;
}

class OLEUIGNRLPROPSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external __uint__ dwReserved1;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  external __uint__ dwReserved2;
  external Pointer<OLEUIOBJECTPROPS> lpOP;
}

class OLEUIGNRLPROPSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external __uint__ dwReserved1;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  external __uint__ dwReserved2;
  external Pointer<OLEUIOBJECTPROPSA> lpOP;
}

class OLEUIVIEWPROPSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external __uint__ dwReserved1;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  external __uint__ dwReserved2;
  external Pointer<OLEUIOBJECTPROPS> lpOP;
  @Int32() external int nScaleMin;
  @Int32() external int nScaleMax;
}

class OLEUIVIEWPROPSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external __uint__ dwReserved1;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  external __uint__ dwReserved2;
  external Pointer<OLEUIOBJECTPROPSA> lpOP;
  @Int32() external int nScaleMin;
  @Int32() external int nScaleMax;
}

class OLEUILINKPROPSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external __uint__ dwReserved1;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  external __uint__ dwReserved2;
  external Pointer<OLEUIOBJECTPROPS> lpOP;
}

class OLEUILINKPROPSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external __uint__ dwReserved1;
  external Pointer<FNOLEUIHOOK> lpfnHook;
  @IntPtr() external int lCustData;
  external __uint__ dwReserved2;
  external Pointer<OLEUIOBJECTPROPSA> lpOP;
}

class OLEUIOBJECTPROPSW extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external Pointer<PROPSHEETHEADERW_V2> lpPS;
  @Uint32() external int dwObject;
  external Pointer lpObjInfo;
  @Uint32() external int dwLink;
  external IOleUILinkInfoW lpLinkInfo;
  external Pointer<OLEUIGNRLPROPS> lpGP;
  external Pointer<OLEUIVIEWPROPS> lpVP;
  external Pointer<OLEUILINKPROPS> lpLP;
}

class OLEUIOBJECTPROPSA extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int dwFlags;
  external Pointer<PROPSHEETHEADERA_V2> lpPS;
  @Uint32() external int dwObject;
  external Pointer lpObjInfo;
  @Uint32() external int dwLink;
  external IOleUILinkInfoA lpLinkInfo;
  external Pointer<OLEUIGNRLPROPSA> lpGP;
  external Pointer<OLEUIVIEWPROPSA> lpVP;
  external Pointer<OLEUILINKPROPSA> lpLP;
}

class CATEGORYINFO extends Struct {
  external GUID catid;
  @Uint32() external int lcid;
  external __ushort__ szDescription;
}

class CALLFRAMEINFO extends Struct {
  @Uint32() external int iMethod;
  @Int32() external int fHasInValues;
  @Int32() external int fHasInOutValues;
  @Int32() external int fHasOutValues;
  @Int32() external int fDerivesFromIDispatch;
  @Int32() external int cInInterfacesMax;
  @Int32() external int cInOutInterfacesMax;
  @Int32() external int cOutInterfacesMax;
  @Int32() external int cTopLevelInInterfaces;
  external GUID iid;
  @Uint32() external int cMethod;
  @Uint32() external int cParams;
}

class CALLFRAMEPARAMINFO extends Struct {
  @Uint8() external int fIn;
  @Uint8() external int fOut;
  @Uint32() external int stackOffset;
  @Uint32() external int cbParam;
}

class CALLFRAME_MARSHALCONTEXT extends Struct {
  @Uint8() external int fIn;
  @Uint32() external int dwDestContext;
  external Pointer pvDestContext;
  external Pointer punkReserved;
  external GUID guidTransferSyntax;
}

class CSPLATFORM extends Struct {
  @Uint32() external int dwPlatformId;
  @Uint32() external int dwVersionHi;
  @Uint32() external int dwVersionLo;
  @Uint32() external int dwProcessorArch;
}

class QUERYCONTEXT extends Struct {
  @Uint32() external int dwContext;
  external CSPLATFORM Platform;
  @Uint32() external int Locale;
  @Uint32() external int dwVersionHi;
  @Uint32() external int dwVersionLo;
}

class SecurityIdentity extends Struct {
}

class SecurityCallers extends Struct {
}

class SecurityCallContext extends Struct {
}

class GetSecurityCallContextAppObject extends Struct {
}

class Dummy30040732 extends Struct {
}

class TransactionContext extends Struct {
}

class TransactionContextEx extends Struct {
}

class ByotServerEx extends Struct {
}

class CServiceConfig extends Struct {
}

class ServicePool extends Struct {
}

class ServicePoolConfig extends Struct {
}

class SharedProperty extends Struct {
}

class SharedPropertyGroup extends Struct {
}

class SharedPropertyGroupManager extends Struct {
}

class COMEvents extends Struct {
}

class CoMTSLocator extends Struct {
}

class MtsGrp extends Struct {
}

class ComServiceEvents extends Struct {
}

class ComSystemAppEventData extends Struct {
}

class CRMClerk extends Struct {
}

class CRMRecoveryClerk extends Struct {
}

class LBEvents extends Struct {
}

class MessageMover extends Struct {
}

class DispenserManager extends Struct {
}

class PoolMgr extends Struct {
}

class EventServer extends Struct {
}

class TrackerServer extends Struct {
}

class AppDomainHelper extends Struct {
}

class ClrAssemblyLocator extends Struct {
}

class COMAdminCatalog extends Struct {
}

class COMAdminCatalogObject extends Struct {
}

class COMAdminCatalogCollection extends Struct {
}

class BOID extends Struct {
  external __ubyte__ rgb;
}

class XACTTRANSINFO extends Struct {
  external BOID uow;
  @Int32() external int isoLevel;
  @Uint32() external int isoFlags;
  @Uint32() external int grfTCSupported;
  @Uint32() external int grfRMSupported;
  @Uint32() external int grfTCSupportedRetaining;
  @Uint32() external int grfRMSupportedRetaining;
}

class XACTSTATS extends Struct {
  @Uint32() external int cOpen;
  @Uint32() external int cCommitting;
  @Uint32() external int cCommitted;
  @Uint32() external int cAborting;
  @Uint32() external int cAborted;
  @Uint32() external int cInDoubt;
  @Uint32() external int cHeuristicDecision;
  external FILETIME timeTransactionsUp;
}

class XACTOPT extends Struct {
  @Uint32() external int ulTimeout;
  external __ubyte__ szDescription;
}

class xid_t extends Struct {
  @Int32() external int formatID;
  @Int32() external int gtrid_length;
  @Int32() external int bqual_length;
  external __byte__ data;
}

class xa_switch_t extends Struct {
  external __byte__ name;
  @Int32() external int flags;
  @Int32() external int version;
  @IntPtr() external int xa_open_entry;
  @IntPtr() external int xa_close_entry;
  @IntPtr() external int xa_start_entry;
  @IntPtr() external int xa_end_entry;
  @IntPtr() external int xa_rollback_entry;
  @IntPtr() external int xa_prepare_entry;
  @IntPtr() external int xa_commit_entry;
  @IntPtr() external int xa_recover_entry;
  @IntPtr() external int xa_forget_entry;
  @IntPtr() external int xa_complete_entry;
}

class _ProxyConfigParams extends Struct {
  @Uint16() external int wcThreadsMax;
}

class COMSVCSEVENTINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwPid;
  @Int64() external int lTime;
  @Int32() external int lMicroTime;
  @Int64() external int perfCount;
  external GUID guidApp;
  external Pointer<Utf16> sMachineName;
}

class RECYCLE_INFO extends Struct {
  external GUID guidCombaseProcessIdentifier;
  @Int64() external int ProcessStartTime;
  @Uint32() external int dwRecycleLifetimeLimit;
  @Uint32() external int dwRecycleMemoryLimit;
  @Uint32() external int dwRecycleExpirationTimeout;
}

class HANG_INFO extends Struct {
  @Int32() external int fAppHangMonitorEnabled;
  @Int32() external int fTerminateOnHang;
  @Uint32() external int DumpType;
  @Uint32() external int dwHangTimeout;
  @Uint32() external int dwDumpCount;
  @Uint32() external int dwInfoMsgCount;
}

class CAppStatistics extends Struct {
  @Uint32() external int m_cTotalCalls;
  @Uint32() external int m_cTotalInstances;
  @Uint32() external int m_cTotalClasses;
  @Uint32() external int m_cCallsPerSecond;
}

class CAppData extends Struct {
  @Uint32() external int m_idApp;
  external __ushort__ m_szAppGuid;
  @Uint32() external int m_dwAppProcessId;
  external CAppStatistics m_AppStatistics;
}

class CCLSIDData extends Struct {
  external GUID m_clsid;
  @Uint32() external int m_cReferences;
  @Uint32() external int m_cBound;
  @Uint32() external int m_cPooled;
  @Uint32() external int m_cInCall;
  @Uint32() external int m_dwRespTime;
  @Uint32() external int m_cCallsCompleted;
  @Uint32() external int m_cCallsFailed;
}

class CCLSIDData2 extends Struct {
  external GUID m_clsid;
  external GUID m_appid;
  external GUID m_partid;
  external Pointer<Utf16> m_pwszAppName;
  external Pointer<Utf16> m_pwszCtxName;
  @Uint32() external int m_eAppType;
  @Uint32() external int m_cReferences;
  @Uint32() external int m_cBound;
  @Uint32() external int m_cPooled;
  @Uint32() external int m_cInCall;
  @Uint32() external int m_dwRespTime;
  @Uint32() external int m_cCallsCompleted;
  @Uint32() external int m_cCallsFailed;
}

class ApplicationProcessSummary extends Struct {
  external GUID PartitionIdPrimaryApplication;
  external GUID ApplicationIdPrimaryApplication;
  external GUID ApplicationInstanceId;
  @Uint32() external int ProcessId;
  @Uint32() external int Type;
  external Pointer<Utf16> ProcessExeName;
  @Int32() external int IsService;
  @Int32() external int IsPaused;
  @Int32() external int IsRecycled;
}

class ApplicationProcessStatistics extends Struct {
  @Uint32() external int NumCallsOutstanding;
  @Uint32() external int NumTrackedComponents;
  @Uint32() external int NumComponentInstances;
  @Uint32() external int AvgCallsPerSecond;
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  @Uint32() external int Reserved3;
  @Uint32() external int Reserved4;
}

class ApplicationProcessRecycleInfo extends Struct {
  @Int32() external int IsRecyclable;
  @Int32() external int IsRecycled;
  external FILETIME TimeRecycled;
  external FILETIME TimeToTerminate;
  @Int32() external int RecycleReasonCode;
  @Int32() external int IsPendingRecycle;
  @Int32() external int HasAutomaticLifetimeRecycling;
  external FILETIME TimeForAutomaticRecycling;
  @Uint32() external int MemoryLimitInKB;
  @Uint32() external int MemoryUsageInKBLastCheck;
  @Uint32() external int ActivationLimit;
  @Uint32() external int NumActivationsLastReported;
  @Uint32() external int CallLimit;
  @Uint32() external int NumCallsLastReported;
}

class ApplicationSummary extends Struct {
  external GUID ApplicationInstanceId;
  external GUID PartitionId;
  external GUID ApplicationId;
  @Uint32() external int Type;
  external Pointer<Utf16> ApplicationName;
  @Uint32() external int NumTrackedComponents;
  @Uint32() external int NumComponentInstances;
}

class ComponentSummary extends Struct {
  external GUID ApplicationInstanceId;
  external GUID PartitionId;
  external GUID ApplicationId;
  external GUID Clsid;
  external Pointer<Utf16> ClassName;
  external Pointer<Utf16> ApplicationName;
}

class ComponentStatistics extends Struct {
  @Uint32() external int NumInstances;
  @Uint32() external int NumBoundReferences;
  @Uint32() external int NumPooledObjects;
  @Uint32() external int NumObjectsInCall;
  @Uint32() external int AvgResponseTimeInMs;
  @Uint32() external int NumCallsCompletedRecent;
  @Uint32() external int NumCallsFailedRecent;
  @Uint32() external int NumCallsCompletedTotal;
  @Uint32() external int NumCallsFailedTotal;
  @Uint32() external int Reserved1;
  @Uint32() external int Reserved2;
  @Uint32() external int Reserved3;
  @Uint32() external int Reserved4;
}

class ComponentHangMonitorInfo extends Struct {
  @Int32() external int IsMonitored;
  @Int32() external int TerminateOnHang;
  @Uint32() external int AvgCallThresholdInMs;
}

class CrmLogRecordRead extends Struct {
  @Uint32() external int dwCrmFlags;
  @Uint32() external int dwSequenceNumber;
  external BLOB blobUserData;
}

class CEventSystem extends Struct {
}

class CEventPublisher extends Struct {
}

class CEventClass extends Struct {
}

class CEventSubscription extends Struct {
}

class EventObjectChange extends Struct {
}

class EventObjectChange2 extends Struct {
}

class COMEVENTSYSCHANGEINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int changeType;
  external Pointer<Utf16> objectId;
  external Pointer<Utf16> partitionId;
  external Pointer<Utf16> applicationId;
  external GUID reserved;
}

class ACTRL_ACCESS_ENTRYA extends Struct {
  external TRUSTEE_A Trustee;
  @Uint32() external int fAccessFlags;
  @Uint32() external int Access;
  @Uint32() external int ProvSpecificAccess;
  @Uint32() external int Inheritance;
  external Pointer<Utf8> lpInheritProperty;
}

class ACTRL_ACCESS_ENTRYW extends Struct {
  external TRUSTEE_W Trustee;
  @Uint32() external int fAccessFlags;
  @Uint32() external int Access;
  @Uint32() external int ProvSpecificAccess;
  @Uint32() external int Inheritance;
  external Pointer<Utf16> lpInheritProperty;
}

class ACTRL_ACCESS_ENTRY_LISTA extends Struct {
  @Uint32() external int cEntries;
  external Pointer<ACTRL_ACCESS_ENTRYA> pAccessList;
}

class ACTRL_ACCESS_ENTRY_LISTW extends Struct {
  @Uint32() external int cEntries;
  external Pointer<ACTRL_ACCESS_ENTRY> pAccessList;
}

class ACTRL_PROPERTY_ENTRYA extends Struct {
  external Pointer<Utf8> lpProperty;
  external Pointer<ACTRL_ACCESS_ENTRY_LISTA> pAccessEntryList;
  @Uint32() external int fListFlags;
}

class ACTRL_PROPERTY_ENTRYW extends Struct {
  external Pointer<Utf16> lpProperty;
  external Pointer<ACTRL_ACCESS_ENTRY_LIST> pAccessEntryList;
  @Uint32() external int fListFlags;
}

class ACTRL_ACCESSA extends Struct {
  @Uint32() external int cEntries;
  external Pointer<ACTRL_PROPERTY_ENTRYA> pPropertyAccessList;
}

class ACTRL_ACCESSW extends Struct {
  @Uint32() external int cEntries;
  external Pointer<ACTRL_PROPERTY_ENTRY> pPropertyAccessList;
}

