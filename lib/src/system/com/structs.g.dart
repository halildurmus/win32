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
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../security/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../system/com/ITypeComp.dart';
import '../../system/ole/structs.g.dart';
import '../../system/com/callbacks.g.dart';
import '../../system/systemservices/structs.g.dart';
import '../../system/com/IAdviseSink.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../system/com/structuredstorage/IStorage.dart';

/// {@category Struct}
class AUTHENTICATEINFO extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class BINDINFO extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> szExtraInfo;

  external STGMEDIUM stgmedData;

  @Uint32()
  external int grfBindInfoF;

  @Uint32()
  external int dwBindVerb;

  external Pointer<Utf16> szCustomVerb;

  @Uint32()
  external int cbstgmedData;

  @Uint32()
  external int dwOptions;

  @Uint32()
  external int dwOptionsFlags;

  @Uint32()
  external int dwCodePage;

  external SECURITY_ATTRIBUTES securityAttributes;

  external GUID iid;

  external Pointer<COMObject> pUnk;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class BINDPTR extends Union {
  external Pointer<FUNCDESC> lpfuncdesc;

  external Pointer<VARDESC> lpvardesc;

  external Pointer<COMObject> lptcomp;
}

/// {@category Struct}
class BIND_OPTS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int grfFlags;

  @Uint32()
  external int grfMode;

  @Uint32()
  external int dwTickCountDeadline;
}

/// {@category Struct}
class BIND_OPTS2 extends Struct {
  external BIND_OPTS AnonymousBase_objidl_L9017_C36;

  @Uint32()
  external int dwTrackFlags;

  @Uint32()
  external int dwClassContext;

  @Uint32()
  external int locale;

  external Pointer<COSERVERINFO> pServerInfo;
}

/// {@category Struct}
class BIND_OPTS3 extends Struct {
  external BIND_OPTS2 AnonymousBase_objidl_L9041_C36;

  @IntPtr()
  external int hwnd;
}

/// {@category Struct}
class BLOB extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Uint8> pBlobData;
}

/// {@category Struct}
class BYTE_BLOB extends Struct {
  @Uint32()
  external int clSize;

  @Array(1)
  external Array<Uint8> abData;
}

/// {@category Struct}
class BYTE_SIZEDARR extends Struct {
  @Uint32()
  external int clSize;

  external Pointer<Uint8> pData;
}

/// {@category Struct}
class CATEGORYINFO extends Struct {
  external GUID catid;

  @Uint32()
  external int lcid;

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
}

/// {@category Struct}
class COAUTHIDENTITY extends Struct {
  external Pointer<Uint16> User;

  @Uint32()
  external int UserLength;

  external Pointer<Uint16> Domain;

  @Uint32()
  external int DomainLength;

  external Pointer<Uint16> Password;

  @Uint32()
  external int PasswordLength;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class COAUTHINFO extends Struct {
  @Uint32()
  external int dwAuthnSvc;

  @Uint32()
  external int dwAuthzSvc;

  external Pointer<Utf16> pwszServerPrincName;

  @Uint32()
  external int dwAuthnLevel;

  @Uint32()
  external int dwImpersonationLevel;

  external Pointer<COAUTHIDENTITY> pAuthIdentityData;

  @Uint32()
  external int dwCapabilities;
}

/// {@category Struct}
class CONNECTDATA extends Struct {
  external Pointer<COMObject> pUnk;

  @Uint32()
  external int dwCookie;
}

/// {@category Struct}
class COSERVERINFO extends Struct {
  @Uint32()
  external int dwReserved1;

  external Pointer<Utf16> pwszName;

  external Pointer<COAUTHINFO> pAuthInfo;

  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
class CSPLATFORM extends Struct {
  @Uint32()
  external int dwPlatformId;

  @Uint32()
  external int dwVersionHi;

  @Uint32()
  external int dwVersionLo;

  @Uint32()
  external int dwProcessorArch;
}

/// {@category Struct}
class CUSTDATA extends Struct {
  @Uint32()
  external int cCustData;

  external Pointer<CUSTDATAITEM> prgCustData;
}

/// {@category Struct}
class CUSTDATAITEM extends Struct {
  external GUID guid;

  external VARIANT varValue;
}

/// {@category Struct}
class CY extends Union {
  external _CY__Anonymous_e__Struct Anonymous;

  @Int64()
  external int int64;
}

/// {@category Struct}
class _CY__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int Lo;

  @Int32()
  external int Hi;
}

extension CY_Extension on CY {
  int get Lo => this.Anonymous.Lo;
  set Lo(int value) => this.Anonymous.Lo = value;

  int get Hi => this.Anonymous.Hi;
  set Hi(int value) => this.Anonymous.Hi = value;
}

/// {@category Struct}
class ComCallData extends Struct {
  @Uint32()
  external int dwDispid;

  @Uint32()
  external int dwReserved;

  external Pointer pUserDefined;
}

/// {@category Struct}
class DISPPARAMS extends Struct {
  external Pointer<VARIANT> rgvarg;

  external Pointer<Int32> rgdispidNamedArgs;

  @Uint32()
  external int cArgs;

  @Uint32()
  external int cNamedArgs;
}

/// {@category Struct}
class DVTARGETDEVICE extends Struct {
  @Uint32()
  external int tdSize;

  @Uint16()
  external int tdDriverNameOffset;

  @Uint16()
  external int tdDeviceNameOffset;

  @Uint16()
  external int tdPortNameOffset;

  @Uint16()
  external int tdExtDevmodeOffset;

  @Array(1)
  external Array<Uint8> tdData;
}

/// {@category Struct}
class DWORD_BLOB extends Struct {
  @Uint32()
  external int clSize;

  @Array(1)
  external Array<Uint32> alData;
}

/// {@category Struct}
class ELEMDESC extends Struct {
  external TYPEDESC tdesc;

  external _ELEMDESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _ELEMDESC__Anonymous_e__Union extends Union {
  external IDLDESC idldesc;

  external PARAMDESC paramdesc;
}

extension ELEMDESC_Extension on ELEMDESC {
  IDLDESC get idldesc => this.Anonymous.idldesc;
  set idldesc(IDLDESC value) => this.Anonymous.idldesc = value;

  PARAMDESC get paramdesc => this.Anonymous.paramdesc;
  set paramdesc(PARAMDESC value) => this.Anonymous.paramdesc = value;
}

/// {@category Struct}
class EXCEPINFO extends Struct {
  @Uint16()
  external int wCode;

  @Uint16()
  external int wReserved;

  external Pointer<Utf16> bstrSource;

  external Pointer<Utf16> bstrDescription;

  external Pointer<Utf16> bstrHelpFile;

  @Uint32()
  external int dwHelpContext;

  external Pointer pvReserved;

  external Pointer<NativeFunction<LPEXCEPFINO_DEFERRED_FILLIN>>
      pfnDeferredFillIn;

  @Int32()
  external int scode;
}

/// {@category Struct}
class FLAGGED_BYTE_BLOB extends Struct {
  @Uint32()
  external int fFlags;

  @Uint32()
  external int clSize;

  @Array(1)
  external Array<Uint8> abData;
}

/// {@category Struct}
class FLAGGED_WORD_BLOB extends Struct {
  @Uint32()
  external int fFlags;

  @Uint32()
  external int clSize;

  @Array(1)
  external Array<Uint16> asData;
}

/// {@category Struct}
class FLAG_STGMEDIUM extends Struct {
  @Int32()
  external int ContextFlags;

  @Int32()
  external int fPassOwnership;

  external STGMEDIUM Stgmed;
}

/// {@category Struct}
class FORMATETC extends Struct {
  @Uint16()
  external int cfFormat;

  external Pointer<DVTARGETDEVICE> ptd;

  @Uint32()
  external int dwAspect;

  @Int32()
  external int lindex;

  @Uint32()
  external int tymed;
}

/// {@category Struct}
class FUNCDESC extends Struct {
  @Int32()
  external int memid;

  external Pointer<Int32> lprgscode;

  external Pointer<ELEMDESC> lprgelemdescParam;

  @Int32()
  external int funckind;

  @Int32()
  external int invkind;

  @Int32()
  external int callconv;

  @Int16()
  external int cParams;

  @Int16()
  external int cParamsOpt;

  @Int16()
  external int oVft;

  @Int16()
  external int cScodes;

  external ELEMDESC elemdescFunc;

  @Uint16()
  external int wFuncFlags;
}

/// {@category Struct}
class GDI_OBJECT extends Struct {
  @Uint32()
  external int ObjectType;

  external _GDI_OBJECT__u_e__Struct u;
}

/// {@category Struct}
class _GDI_OBJECT__u_e__Struct extends Union {
  external Pointer<userHBITMAP> hBitmap;

  external Pointer<userHPALETTE> hPalette;

  external Pointer<userHGLOBAL> hGeneric;
}

extension GDI_OBJECT_Extension on GDI_OBJECT {
  Pointer<userHBITMAP> get hBitmap => this.u.hBitmap;
  set hBitmap(Pointer<userHBITMAP> value) => this.u.hBitmap = value;

  Pointer<userHPALETTE> get hPalette => this.u.hPalette;
  set hPalette(Pointer<userHPALETTE> value) => this.u.hPalette = value;

  Pointer<userHGLOBAL> get hGeneric => this.u.hGeneric;
  set hGeneric(Pointer<userHGLOBAL> value) => this.u.hGeneric = value;
}

/// {@category Struct}
class HYPER_SIZEDARR extends Struct {
  @Uint32()
  external int clSize;

  external Pointer<Int64> pData;
}

/// {@category Struct}
class IContext extends Opaque {}

/// {@category Struct}
class IDLDESC extends Struct {
  @IntPtr()
  external int dwReserved;

  @Uint16()
  external int wIDLFlags;
}

/// {@category Struct}
class IEnumContextProps extends Opaque {}

/// {@category Struct}
class INTERFACEINFO extends Struct {
  external Pointer<COMObject> pUnk;

  external GUID iid;

  @Uint16()
  external int wMethod;
}

/// {@category Struct}
class LONG_SIZEDARR extends Struct {
  @Uint32()
  external int clSize;

  external Pointer<Uint32> pData;
}

/// {@category Struct}
class MULTI_QI extends Struct {
  external Pointer<GUID> pIID;

  external Pointer<COMObject> pItf;

  @Int32()
  external int hr;
}

/// {@category Struct}
class MachineGlobalObjectTableRegistrationToken__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class QUERYCONTEXT extends Struct {
  @Uint32()
  external int dwContext;

  external CSPLATFORM Platform;

  @Uint32()
  external int Locale;

  @Uint32()
  external int dwVersionHi;

  @Uint32()
  external int dwVersionLo;
}

/// {@category Struct}
class RPCOLEMESSAGE extends Struct {
  external Pointer reserved1;

  @Uint32()
  external int dataRepresentation;

  external Pointer Buffer;

  @Uint32()
  external int cbBuffer;

  @Uint32()
  external int iMethod;

  @Array(5)
  external Array<Pointer> reserved2;

  @Uint32()
  external int rpcFlags;
}

/// {@category Struct}
class RemSTGMEDIUM extends Struct {
  @Uint32()
  external int tymed;

  @Uint32()
  external int dwHandleType;

  @Uint32()
  external int pData;

  @Uint32()
  external int pUnkForRelease;

  @Uint32()
  external int cbData;

  @Array(1)
  external Array<Uint8> data;
}

/// {@category Struct}
class SAFEARRAY extends Struct {
  @Uint16()
  external int cDims;

  @Uint16()
  external int fFeatures;

  @Uint32()
  external int cbElements;

  @Uint32()
  external int cLocks;

  external Pointer pvData;

  @Array(1)
  external Array<SAFEARRAYBOUND> rgsabound;
}

/// {@category Struct}
class SAFEARRAYBOUND extends Struct {
  @Uint32()
  external int cElements;

  @Int32()
  external int lLbound;
}

/// {@category Struct}
class SChannelHookCallInfo extends Struct {
  external GUID iid;

  @Uint32()
  external int cbSize;

  external GUID uCausality;

  @Uint32()
  external int dwServerPid;

  @Uint32()
  external int iMethod;

  external Pointer pObject;
}

/// {@category Struct}
class SHORT_SIZEDARR extends Struct {
  @Uint32()
  external int clSize;

  external Pointer<Uint16> pData;
}

/// {@category Struct}
class SOLE_AUTHENTICATION_INFO extends Struct {
  @Uint32()
  external int dwAuthnSvc;

  @Uint32()
  external int dwAuthzSvc;

  external Pointer pAuthInfo;
}

/// {@category Struct}
class SOLE_AUTHENTICATION_LIST extends Struct {
  @Uint32()
  external int cAuthInfo;

  external Pointer<SOLE_AUTHENTICATION_INFO> aAuthInfo;
}

/// {@category Struct}
class SOLE_AUTHENTICATION_SERVICE extends Struct {
  @Uint32()
  external int dwAuthnSvc;

  @Uint32()
  external int dwAuthzSvc;

  external Pointer<Utf16> pPrincipalName;

  @Int32()
  external int hr;
}

/// {@category Struct}
class STATDATA extends Struct {
  external FORMATETC formatetc;

  @Uint32()
  external int advf;

  external Pointer<COMObject> pAdvSink;

  @Uint32()
  external int dwConnection;
}

/// {@category Struct}
class STATSTG extends Struct {
  external Pointer<Utf16> pwcsName;

  @Uint32()
  external int type;

  @Uint64()
  external int cbSize;

  external FILETIME mtime;

  external FILETIME ctime;

  external FILETIME atime;

  @Uint32()
  external int grfMode;

  @Uint32()
  external int grfLocksSupported;

  external GUID clsid;

  @Uint32()
  external int grfStateBits;

  @Uint32()
  external int reserved;
}

/// {@category Struct}
class STGMEDIUM extends Struct {
  @Uint32()
  external int tymed;

  external _STGMEDIUM__Anonymous_e__Union Anonymous;

  external Pointer<COMObject> pUnkForRelease;
}

/// {@category Struct}
class _STGMEDIUM__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hBitmap;

  external Pointer hMetaFilePict;

  @IntPtr()
  external int hEnhMetaFile;

  @IntPtr()
  external int hGlobal;

  external Pointer<Utf16> lpszFileName;

  external Pointer<COMObject> pstm;

  external Pointer<COMObject> pstg;
}

extension STGMEDIUM_Extension on STGMEDIUM {
  int get hBitmap => this.Anonymous.hBitmap;
  set hBitmap(int value) => this.Anonymous.hBitmap = value;

  Pointer get hMetaFilePict => this.Anonymous.hMetaFilePict;
  set hMetaFilePict(Pointer value) => this.Anonymous.hMetaFilePict = value;

  int get hEnhMetaFile => this.Anonymous.hEnhMetaFile;
  set hEnhMetaFile(int value) => this.Anonymous.hEnhMetaFile = value;

  int get hGlobal => this.Anonymous.hGlobal;
  set hGlobal(int value) => this.Anonymous.hGlobal = value;

  Pointer<Utf16> get lpszFileName => this.Anonymous.lpszFileName;
  set lpszFileName(Pointer<Utf16> value) => this.Anonymous.lpszFileName = value;

  Pointer<COMObject> get pstm => this.Anonymous.pstm;
  set pstm(Pointer<COMObject> value) => this.Anonymous.pstm = value;

  Pointer<COMObject> get pstg => this.Anonymous.pstg;
  set pstg(Pointer<COMObject> value) => this.Anonymous.pstg = value;
}

/// {@category Struct}
class StorageLayout extends Struct {
  @Uint32()
  external int LayoutType;

  external Pointer<Utf16> pwcsElementName;

  @Int64()
  external int cOffset;

  @Int64()
  external int cBytes;
}

/// {@category Struct}
class TLIBATTR extends Struct {
  external GUID guid;

  @Uint32()
  external int lcid;

  @Int32()
  external int syskind;

  @Uint16()
  external int wMajorVerNum;

  @Uint16()
  external int wMinorVerNum;

  @Uint16()
  external int wLibFlags;
}

/// {@category Struct}
class TYPEATTR extends Struct {
  external GUID guid;

  @Uint32()
  external int lcid;

  @Uint32()
  external int dwReserved;

  @Int32()
  external int memidConstructor;

  @Int32()
  external int memidDestructor;

  external Pointer<Utf16> lpstrSchema;

  @Uint32()
  external int cbSizeInstance;

  @Int32()
  external int typekind;

  @Uint16()
  external int cFuncs;

  @Uint16()
  external int cVars;

  @Uint16()
  external int cImplTypes;

  @Uint16()
  external int cbSizeVft;

  @Uint16()
  external int cbAlignment;

  @Uint16()
  external int wTypeFlags;

  @Uint16()
  external int wMajorVerNum;

  @Uint16()
  external int wMinorVerNum;

  external TYPEDESC tdescAlias;

  external IDLDESC idldescType;
}

/// {@category Struct}
class TYPEDESC extends Struct {
  external _TYPEDESC__Anonymous_e__Union Anonymous;

  @Uint16()
  external int vt;
}

/// {@category Struct}
class _TYPEDESC__Anonymous_e__Union extends Union {
  external Pointer<TYPEDESC> lptdesc;

  external Pointer<ARRAYDESC> lpadesc;

  @Uint32()
  external int hreftype;
}

extension TYPEDESC_Extension on TYPEDESC {
  Pointer<TYPEDESC> get lptdesc => this.Anonymous.lptdesc;
  set lptdesc(Pointer<TYPEDESC> value) => this.Anonymous.lptdesc = value;

  Pointer<ARRAYDESC> get lpadesc => this.Anonymous.lpadesc;
  set lpadesc(Pointer<ARRAYDESC> value) => this.Anonymous.lpadesc = value;

  int get hreftype => this.Anonymous.hreftype;
  set hreftype(int value) => this.Anonymous.hreftype = value;
}

/// {@category Struct}
class VARDESC extends Struct {
  @Int32()
  external int memid;

  external Pointer<Utf16> lpstrSchema;

  external _VARDESC__Anonymous_e__Union Anonymous;

  external ELEMDESC elemdescVar;

  @Uint16()
  external int wVarFlags;

  @Int32()
  external int varkind;
}

/// {@category Struct}
class _VARDESC__Anonymous_e__Union extends Union {
  @Uint32()
  external int oInst;

  external Pointer<VARIANT> lpvarValue;
}

extension VARDESC_Extension on VARDESC {
  int get oInst => this.Anonymous.oInst;
  set oInst(int value) => this.Anonymous.oInst = value;

  Pointer<VARIANT> get lpvarValue => this.Anonymous.lpvarValue;
  set lpvarValue(Pointer<VARIANT> value) => this.Anonymous.lpvarValue = value;
}

/// {@category Struct}
class WORD_BLOB extends Struct {
  @Uint32()
  external int clSize;

  @Array(1)
  external Array<Uint16> asData;
}

/// {@category Struct}
class uCLSSPEC extends Struct {
  @Uint32()
  external int tyspec;

  external _uCLSSPEC__tagged_union_e__Struct tagged_union;
}

/// {@category Struct}
class _uCLSSPEC__tagged_union_e__Struct extends Union {
  external GUID clsid;

  external Pointer<Utf16> pFileExt;

  external Pointer<Utf16> pMimeType;

  external Pointer<Utf16> pProgId;

  external Pointer<Utf16> pFileName;

  external _uCLSSPEC__tagged_union_e__Struct__ByName_e__Struct ByName;

  external _uCLSSPEC__tagged_union_e__Struct__ByObjectId_e__Struct ByObjectId;
}

/// {@category Struct}
class _uCLSSPEC__tagged_union_e__Struct__ByName_e__Struct extends Struct {
  external Pointer<Utf16> pPackageName;

  external GUID PolicyId;
}

extension uCLSSPEC__tagged_union_e__Struct_Extension on uCLSSPEC {
  Pointer<Utf16> get pPackageName => this.tagged_union.ByName.pPackageName;
  set pPackageName(Pointer<Utf16> value) =>
      this.tagged_union.ByName.pPackageName = value;

  GUID get PolicyId => this.tagged_union.ByName.PolicyId;
  set PolicyId(GUID value) => this.tagged_union.ByName.PolicyId = value;
}

/// {@category Struct}
class _uCLSSPEC__tagged_union_e__Struct__ByObjectId_e__Struct extends Struct {
  external GUID ObjectId;

  external GUID PolicyId;
}

extension uCLSSPEC__tagged_union_e__Struct_Extension_1 on uCLSSPEC {
  GUID get ObjectId => this.tagged_union.ByObjectId.ObjectId;
  set ObjectId(GUID value) => this.tagged_union.ByObjectId.ObjectId = value;

  GUID get PolicyId => this.tagged_union.ByObjectId.PolicyId;
  set PolicyId(GUID value) => this.tagged_union.ByObjectId.PolicyId = value;
}

extension uCLSSPEC_Extension on uCLSSPEC {
  GUID get clsid => this.tagged_union.clsid;
  set clsid(GUID value) => this.tagged_union.clsid = value;

  Pointer<Utf16> get pFileExt => this.tagged_union.pFileExt;
  set pFileExt(Pointer<Utf16> value) => this.tagged_union.pFileExt = value;

  Pointer<Utf16> get pMimeType => this.tagged_union.pMimeType;
  set pMimeType(Pointer<Utf16> value) => this.tagged_union.pMimeType = value;

  Pointer<Utf16> get pProgId => this.tagged_union.pProgId;
  set pProgId(Pointer<Utf16> value) => this.tagged_union.pProgId = value;

  Pointer<Utf16> get pFileName => this.tagged_union.pFileName;
  set pFileName(Pointer<Utf16> value) => this.tagged_union.pFileName = value;

  _uCLSSPEC__tagged_union_e__Struct__ByName_e__Struct get ByName =>
      this.tagged_union.ByName;
  set ByName(_uCLSSPEC__tagged_union_e__Struct__ByName_e__Struct value) =>
      this.tagged_union.ByName = value;

  _uCLSSPEC__tagged_union_e__Struct__ByObjectId_e__Struct get ByObjectId =>
      this.tagged_union.ByObjectId;
  set ByObjectId(
          _uCLSSPEC__tagged_union_e__Struct__ByObjectId_e__Struct value) =>
      this.tagged_union.ByObjectId = value;
}

/// {@category Struct}
class userFLAG_STGMEDIUM extends Struct {
  @Int32()
  external int ContextFlags;

  @Int32()
  external int fPassOwnership;

  external userSTGMEDIUM Stgmed;
}

/// {@category Struct}
class userSTGMEDIUM extends Struct {
  external Pointer<COMObject> pUnkForRelease;
}
