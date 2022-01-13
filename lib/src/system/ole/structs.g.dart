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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../system/ole/structs.g.dart';
import '../../system/ole/callbacks.g.dart';
import '../../media/structs.g.dart';
import '../../ui/controls/dialogs/structs.g.dart';
import '../../system/ole/IOleUILinkContainer.dart';
import '../../system/ole/IOleClientSite.dart';
import '../../system/com/structuredstorage/IStorage.dart';
import '../../ui/controls/structs.g.dart';
import '../../system/ole/IOleUIObjInfo.dart';
import '../../system/ole/IOleUILinkInfo.dart';
import '../../system/com/IDataObject.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/ole/IAdviseSinkEx.dart';
import '../../system/ole/IPropertyNotifySink.dart';
import '../../system/ole/IFont.dart';
import '../../system/ole/IOleUndoManager.dart';
import '../../system/com/IBindHost.dart';
import '../../system/ole/IOleControlSite.dart';
import '../../system/com/IServiceProvider.dart';
import '../../system/ole/IRecordInfo.dart';
import '../../system/com/IDispatch.dart';

/// {@category Struct}
class ARRAYDESC extends Struct {
  external TYPEDESC tdescElem;

  @Uint16()
  external int cDims;

  @Array(1)
  external Array<SAFEARRAYBOUND> rgbounds;
}

/// {@category Struct}
class AspectInfo extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class CADWORD extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Uint32> pElems;
}

/// {@category Struct}
class CALPOLESTR extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<Pointer<Utf16>> pElems;
}

/// {@category Struct}
class CAUUID extends Struct {
  @Uint32()
  external int cElems;

  external Pointer<GUID> pElems;
}

/// {@category Struct}
class CLEANLOCALSTORAGE extends Struct {
  external Pointer<COMObject> pInterface;

  external Pointer pStorage;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class CONTROLINFO extends Struct {
  @Uint32()
  external int cb;

  @IntPtr()
  external int hAccel;

  @Uint16()
  external int cAccel;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class ExtentInfo extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int dwExtentMode;

  external SIZE sizelProposed;
}

/// {@category Struct}
class FONTDESC extends Struct {
  @Uint32()
  external int cbSizeofstruct;

  external Pointer<Utf16> lpstrName;

  external CY cySize;

  @Int16()
  external int sWeight;

  @Int16()
  external int sCharset;

  @Int32()
  external int fItalic;

  @Int32()
  external int fUnderline;

  @Int32()
  external int fStrikethrough;
}

/// {@category Struct}
class INTERFACEDATA extends Struct {
  external Pointer<METHODDATA> pmethdata;

  @Uint32()
  external int cMembers;
}

/// {@category Struct}
class LICINFO extends Struct {
  @Int32()
  external int cbLicInfo;

  @Int32()
  external int fRuntimeKeyAvail;

  @Int32()
  external int fLicVerified;
}

/// {@category Struct}
class METHODDATA extends Struct {
  external Pointer<Utf16> szName;

  external Pointer<PARAMDATA> ppdata;

  @Int32()
  external int dispid;

  @Uint32()
  external int iMeth;

  @Int32()
  external int cc;

  @Uint32()
  external int cArgs;

  @Uint16()
  external int wFlags;

  @Uint16()
  external int vtReturn;
}

/// {@category Struct}
class NUMPARSE extends Struct {
  @Int32()
  external int cDig;

  @Uint32()
  external int dwInFlags;

  @Uint32()
  external int dwOutFlags;

  @Int32()
  external int cchUsed;

  @Int32()
  external int nBaseShift;

  @Int32()
  external int nPwr10;
}

/// {@category Struct}
class OBJECTDESCRIPTOR extends Struct {
  @Uint32()
  external int cbSize;

  external GUID clsid;

  @Uint32()
  external int dwDrawAspect;

  external SIZE sizel;

  external POINTL pointl;

  @Uint32()
  external int dwStatus;

  @Uint32()
  external int dwFullUserTypeName;

  @Uint32()
  external int dwSrcOfCopy;
}

/// {@category Struct}
class OCPFIPARAMS extends Struct {
  @Uint32()
  external int cbStructSize;

  @IntPtr()
  external int hWndOwner;

  @Int32()
  external int x;

  @Int32()
  external int y;

  external Pointer<Utf16> lpszCaption;

  @Uint32()
  external int cObjects;

  external Pointer<Pointer<COMObject>> lplpUnk;

  @Uint32()
  external int cPages;

  external Pointer<GUID> lpPages;

  @Uint32()
  external int lcid;

  @Int32()
  external int dispidInitialProperty;
}

/// {@category Struct}
class OIFI extends Struct {
  @Uint32()
  external int cb;

  @Int32()
  external int fMDIApp;

  @IntPtr()
  external int hwndFrame;

  @IntPtr()
  external int haccel;

  @Uint32()
  external int cAccelEntries;
}

/// {@category Struct}
class OLECMD extends Struct {
  @Uint32()
  external int cmdID;

  @Uint32()
  external int cmdf;
}

/// {@category Struct}
class OLECMDTEXT extends Struct {
  @Uint32()
  external int cmdtextf;

  @Uint32()
  external int cwActual;

  @Uint32()
  external int cwBuf;

  @Array(1)
  external Array<Uint16> _rgwz;

  String get rgwz {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_rgwz[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set rgwz(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _rgwz[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class OLEUIBUSY extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  @IntPtr()
  external int hTask;

  external Pointer<IntPtr> lphWndDialog;
}

/// {@category Struct}
class OLEUICHANGEICON extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  @IntPtr()
  external int hMetaPict;

  external GUID clsid;

  @Array(260)
  external Array<Uint16> _szIconExe;

  String get szIconExe {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szIconExe[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szIconExe(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szIconExe[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int cchIconExe;
}

/// {@category Struct}
class OLEUICHANGESOURCE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  external Pointer<OPENFILENAME> lpOFN;

  @Array(4)
  external Array<Uint32> dwReserved1;

  external Pointer<COMObject> lpOleUILinkContainer;

  @Uint32()
  external int dwLink;

  external Pointer<Utf16> lpszDisplayName;

  @Uint32()
  external int nFileLength;

  external Pointer<Utf16> lpszFrom;

  external Pointer<Utf16> lpszTo;
}

/// {@category Struct}
class OLEUICONVERT extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  external GUID clsid;

  external GUID clsidConvertDefault;

  external GUID clsidActivateDefault;

  external GUID clsidNew;

  @Uint32()
  external int dvAspect;

  @Uint16()
  external int wFormat;

  @Int32()
  external int fIsLinkedObject;

  @IntPtr()
  external int hMetaPict;

  external Pointer<Utf16> lpszUserType;

  @Int32()
  external int fObjectsIconChanged;

  external Pointer<Utf16> lpszDefLabel;

  @Uint32()
  external int cClsidExclude;

  external Pointer<GUID> lpClsidExclude;
}

/// {@category Struct}
class OLEUIEDITLINKS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  external Pointer<COMObject> lpOleUILinkContainer;
}

/// {@category Struct}
class OLEUIGNRLPROPS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @Array(2)
  external Array<Uint32> dwReserved1;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @Array(3)
  external Array<Uint32> dwReserved2;

  external Pointer<OLEUIOBJECTPROPS> lpOP;
}

/// {@category Struct}
class OLEUIINSERTOBJECT extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  external GUID clsid;

  external Pointer<Utf16> lpszFile;

  @Uint32()
  external int cchFile;

  @Uint32()
  external int cClsidExclude;

  external Pointer<GUID> lpClsidExclude;

  external GUID iid;

  @Uint32()
  external int oleRender;

  external Pointer<FORMATETC> lpFormatEtc;

  external Pointer<COMObject> lpIOleClientSite;

  external Pointer<COMObject> lpIStorage;

  external Pointer<Pointer> ppvObj;

  @Int32()
  external int sc;

  @IntPtr()
  external int hMetaPict;
}

/// {@category Struct}
class OLEUILINKPROPS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @Array(2)
  external Array<Uint32> dwReserved1;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @Array(3)
  external Array<Uint32> dwReserved2;

  external Pointer<OLEUIOBJECTPROPS> lpOP;
}

/// {@category Struct}
class OLEUIOBJECTPROPS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  external Pointer<PROPSHEETHEADERW_V2> lpPS;

  @Uint32()
  external int dwObject;

  external Pointer<COMObject> lpObjInfo;

  @Uint32()
  external int dwLink;

  external Pointer<COMObject> lpLinkInfo;

  external Pointer<OLEUIGNRLPROPS> lpGP;

  external Pointer<OLEUIVIEWPROPS> lpVP;

  external Pointer<OLEUILINKPROPS> lpLP;
}

/// {@category Struct}
class OLEUIPASTEENTRY extends Struct {
  external FORMATETC fmtetc;

  external Pointer<Utf16> lpstrFormatName;

  external Pointer<Utf16> lpstrResultText;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwScratchSpace;
}

/// {@category Struct}
class OLEUIPASTESPECIAL extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hWndOwner;

  external Pointer<Utf16> lpszCaption;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpszTemplate;

  @IntPtr()
  external int hResource;

  external Pointer<COMObject> lpSrcDataObj;

  external Pointer<OLEUIPASTEENTRY> arrPasteEntries;

  @Int32()
  external int cPasteEntries;

  external Pointer<Uint32> arrLinkTypes;

  @Int32()
  external int cLinkTypes;

  @Uint32()
  external int cClsidExclude;

  external Pointer<GUID> lpClsidExclude;

  @Int32()
  external int nSelectedIndex;

  @Int32()
  external int fLink;

  @IntPtr()
  external int hMetaPict;

  external SIZE sizel;
}

/// {@category Struct}
class OLEUIVIEWPROPS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int dwFlags;

  @Array(2)
  external Array<Uint32> dwReserved1;

  external Pointer<NativeFunction<LPFNOLEUIHOOK>> lpfnHook;

  @IntPtr()
  external int lCustData;

  @Array(3)
  external Array<Uint32> dwReserved2;

  external Pointer<OLEUIOBJECTPROPS> lpOP;

  @Int32()
  external int nScaleMin;

  @Int32()
  external int nScaleMax;
}

/// {@category Struct}
class OLEVERB extends Struct {
  @Int32()
  external int lVerb;

  external Pointer<Utf16> lpszVerbName;

  @Uint32()
  external int fuFlags;

  @Uint32()
  external int grfAttribs;
}

/// {@category Struct}
class OleMenuGroupWidths extends Struct {
  @Array(6)
  external Array<Int32> width;
}

/// {@category Struct}
class PAGERANGE extends Struct {
  @Int32()
  external int nFromPage;

  @Int32()
  external int nToPage;
}

/// {@category Struct}
class PAGESET extends Struct {
  @Uint32()
  external int cbStruct;

  @Int32()
  external int fOddPages;

  @Int32()
  external int fEvenPages;

  @Uint32()
  external int cPageRange;

  @Array(1)
  external Array<PAGERANGE> rgPages;
}

/// {@category Struct}
class PARAMDATA extends Struct {
  external Pointer<Utf16> szName;

  @Uint16()
  external int vt;
}

/// {@category Struct}
class PARAMDESC extends Struct {
  external Pointer<PARAMDESCEX> pparamdescex;

  @Uint16()
  external int wParamFlags;
}

/// {@category Struct}
class PARAMDESCEX extends Struct {
  @Uint32()
  external int cBytes;

  external VARIANT varDefaultValue;
}

/// {@category Struct}
class PICTDESC extends Struct {
  @Uint32()
  external int cbSizeofstruct;

  @Uint32()
  external int picType;

  external _PICTDESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PICTDESC__Anonymous_e__Union extends Union {
  external _PICTDESC__Anonymous_e__Union__bmp_e__Struct bmp;

  external _PICTDESC__Anonymous_e__Union__wmf_e__Struct wmf;

  external _PICTDESC__Anonymous_e__Union__icon_e__Struct icon;

  external _PICTDESC__Anonymous_e__Union__emf_e__Struct emf;
}

/// {@category Struct}
class _PICTDESC__Anonymous_e__Union__bmp_e__Struct extends Struct {
  @IntPtr()
  external int hbitmap;

  @IntPtr()
  external int hpal;
}

extension PICTDESC__Anonymous_e__Union_Extension on PICTDESC {
  int get hbitmap => this.Anonymous.bmp.hbitmap;
  set hbitmap(int value) => this.Anonymous.bmp.hbitmap = value;

  int get hpal => this.Anonymous.bmp.hpal;
  set hpal(int value) => this.Anonymous.bmp.hpal = value;
}

/// {@category Struct}
class _PICTDESC__Anonymous_e__Union__wmf_e__Struct extends Struct {
  @IntPtr()
  external int hmeta;

  @Int32()
  external int xExt;

  @Int32()
  external int yExt;
}

extension PICTDESC__Anonymous_e__Union_Extension_1 on PICTDESC {
  int get hmeta => this.Anonymous.wmf.hmeta;
  set hmeta(int value) => this.Anonymous.wmf.hmeta = value;

  int get xExt => this.Anonymous.wmf.xExt;
  set xExt(int value) => this.Anonymous.wmf.xExt = value;

  int get yExt => this.Anonymous.wmf.yExt;
  set yExt(int value) => this.Anonymous.wmf.yExt = value;
}

/// {@category Struct}
class _PICTDESC__Anonymous_e__Union__icon_e__Struct extends Struct {
  @IntPtr()
  external int hicon;
}

extension PICTDESC__Anonymous_e__Union_Extension_2 on PICTDESC {
  int get hicon => this.Anonymous.icon.hicon;
  set hicon(int value) => this.Anonymous.icon.hicon = value;
}

/// {@category Struct}
class _PICTDESC__Anonymous_e__Union__emf_e__Struct extends Struct {
  @IntPtr()
  external int hemf;
}

extension PICTDESC__Anonymous_e__Union_Extension_3 on PICTDESC {
  int get hemf => this.Anonymous.emf.hemf;
  set hemf(int value) => this.Anonymous.emf.hemf = value;
}

extension PICTDESC_Extension on PICTDESC {
  _PICTDESC__Anonymous_e__Union__bmp_e__Struct get bmp => this.Anonymous.bmp;
  set bmp(_PICTDESC__Anonymous_e__Union__bmp_e__Struct value) =>
      this.Anonymous.bmp = value;

  _PICTDESC__Anonymous_e__Union__wmf_e__Struct get wmf => this.Anonymous.wmf;
  set wmf(_PICTDESC__Anonymous_e__Union__wmf_e__Struct value) =>
      this.Anonymous.wmf = value;

  _PICTDESC__Anonymous_e__Union__icon_e__Struct get icon => this.Anonymous.icon;
  set icon(_PICTDESC__Anonymous_e__Union__icon_e__Struct value) =>
      this.Anonymous.icon = value;

  _PICTDESC__Anonymous_e__Union__emf_e__Struct get emf => this.Anonymous.emf;
  set emf(_PICTDESC__Anonymous_e__Union__emf_e__Struct value) =>
      this.Anonymous.emf = value;
}

/// {@category Struct}
class POINTF extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class PROPPAGEINFO extends Struct {
  @Uint32()
  external int cb;

  external Pointer<Utf16> pszTitle;

  external SIZE size;

  external Pointer<Utf16> pszDocString;

  external Pointer<Utf16> pszHelpFile;

  @Uint32()
  external int dwHelpContext;
}

/// {@category Struct}
class QACONTAINER extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> pClientSite;

  external Pointer<COMObject> pAdviseSink;

  external Pointer<COMObject> pPropertyNotifySink;

  external Pointer<COMObject> pUnkEventSink;

  @Uint32()
  external int dwAmbientFlags;

  @Uint32()
  external int colorFore;

  @Uint32()
  external int colorBack;

  external Pointer<COMObject> pFont;

  external Pointer<COMObject> pUndoMgr;

  @Uint32()
  external int dwAppearance;

  @Int32()
  external int lcid;

  @IntPtr()
  external int hpal;

  external Pointer<COMObject> pBindHost;

  external Pointer<COMObject> pOleControlSite;

  external Pointer<COMObject> pServiceProvider;
}

/// {@category Struct}
class QACONTROL extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMiscStatus;

  @Uint32()
  external int dwViewStatus;

  @Uint32()
  external int dwEventCookie;

  @Uint32()
  external int dwPropNotifyCookie;

  @Uint32()
  external int dwPointerActivationPolicy;
}

/// {@category Struct}
class UDATE extends Struct {
  external SYSTEMTIME st;

  @Uint16()
  external int wDayOfYear;
}

/// {@category Struct}
class wireBRECORD extends Struct {
  @Uint32()
  external int fFlags;

  @Uint32()
  external int clSize;

  external Pointer<COMObject> pRecInfo;

  external Pointer<Uint8> pRecord;
}

/// {@category Struct}
class wireSAFEARRAY extends Struct {
  @Uint16()
  external int cDims;

  @Uint16()
  external int fFeatures;

  @Uint32()
  external int cbElements;

  @Uint32()
  external int cLocks;

  external wireSAFEARRAY_UNION uArrayStructs;

  @Array(1)
  external Array<SAFEARRAYBOUND> rgsabound;
}

/// {@category Struct}
class wireSAFEARRAY_UNION extends Struct {
  @Uint32()
  external int sfType;

  external _wireSAFEARRAY_UNION__u_e__Struct u;
}

/// {@category Struct}
class _wireSAFEARRAY_UNION__u_e__Struct extends Union {
  external wireSAFEARR_BSTR BstrStr;

  external wireSAFEARR_UNKNOWN UnknownStr;

  external wireSAFEARR_DISPATCH DispatchStr;

  external wireSAFEARR_VARIANT VariantStr;

  external wireSAFEARR_BRECORD RecordStr;

  external wireSAFEARR_HAVEIID HaveIidStr;

  external BYTE_SIZEDARR ByteStr;

  external SHORT_SIZEDARR WordStr;

  external LONG_SIZEDARR LongStr;

  external HYPER_SIZEDARR HyperStr;
}

extension wireSAFEARRAY_UNION_Extension on wireSAFEARRAY_UNION {
  wireSAFEARR_BSTR get BstrStr => this.u.BstrStr;
  set BstrStr(wireSAFEARR_BSTR value) => this.u.BstrStr = value;

  wireSAFEARR_UNKNOWN get UnknownStr => this.u.UnknownStr;
  set UnknownStr(wireSAFEARR_UNKNOWN value) => this.u.UnknownStr = value;

  wireSAFEARR_DISPATCH get DispatchStr => this.u.DispatchStr;
  set DispatchStr(wireSAFEARR_DISPATCH value) => this.u.DispatchStr = value;

  wireSAFEARR_VARIANT get VariantStr => this.u.VariantStr;
  set VariantStr(wireSAFEARR_VARIANT value) => this.u.VariantStr = value;

  wireSAFEARR_BRECORD get RecordStr => this.u.RecordStr;
  set RecordStr(wireSAFEARR_BRECORD value) => this.u.RecordStr = value;

  wireSAFEARR_HAVEIID get HaveIidStr => this.u.HaveIidStr;
  set HaveIidStr(wireSAFEARR_HAVEIID value) => this.u.HaveIidStr = value;

  BYTE_SIZEDARR get ByteStr => this.u.ByteStr;
  set ByteStr(BYTE_SIZEDARR value) => this.u.ByteStr = value;

  SHORT_SIZEDARR get WordStr => this.u.WordStr;
  set WordStr(SHORT_SIZEDARR value) => this.u.WordStr = value;

  LONG_SIZEDARR get LongStr => this.u.LongStr;
  set LongStr(LONG_SIZEDARR value) => this.u.LongStr = value;

  HYPER_SIZEDARR get HyperStr => this.u.HyperStr;
  set HyperStr(HYPER_SIZEDARR value) => this.u.HyperStr = value;
}

/// {@category Struct}
class wireSAFEARR_BRECORD extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Pointer<wireBRECORD>> aRecord;
}

/// {@category Struct}
class wireSAFEARR_BSTR extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Pointer<FLAGGED_WORD_BLOB>> aBstr;
}

/// {@category Struct}
class wireSAFEARR_DISPATCH extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Pointer<COMObject>> apDispatch;
}

/// {@category Struct}
class wireSAFEARR_HAVEIID extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Pointer<COMObject>> apUnknown;

  external GUID iid;
}

/// {@category Struct}
class wireSAFEARR_UNKNOWN extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Pointer<COMObject>> apUnknown;
}

/// {@category Struct}
class wireSAFEARR_VARIANT extends Struct {
  @Uint32()
  external int Size;

  external Pointer<Pointer<wireVARIANT>> aVariant;
}

/// {@category Struct}
class wireVARIANT extends Struct {
  @Uint32()
  external int clSize;

  @Uint32()
  external int rpcReserved;

  @Uint16()
  external int vt;

  @Uint16()
  external int wReserved1;

  @Uint16()
  external int wReserved2;

  @Uint16()
  external int wReserved3;

  external _wireVARIANT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _wireVARIANT__Anonymous_e__Union extends Union {
  @Int64()
  external int llVal;

  @Int32()
  external int lVal;

  @Uint8()
  external int bVal;

  @Int16()
  external int iVal;

  @Float()
  external double fltVal;

  @Double()
  external double dblVal;

  @Int16()
  external int boolVal;

  @Int32()
  external int scode;

  external CY cyVal;

  @Double()
  external double date;

  external Pointer<FLAGGED_WORD_BLOB> bstrVal;

  external Pointer<COMObject> punkVal;

  external Pointer<COMObject> pdispVal;

  external Pointer<Pointer<wireSAFEARRAY>> parray;

  external Pointer<wireBRECORD> brecVal;

  external Pointer<Uint8> pbVal;

  external Pointer<Int16> piVal;

  external Pointer<Int32> plVal;

  external Pointer<Int64> pllVal;

  external Pointer<Float> pfltVal;

  external Pointer<Double> pdblVal;

  external Pointer<Int16> pboolVal;

  external Pointer<Int32> pscode;

  external Pointer<CY> pcyVal;

  external Pointer<Double> pdate;

  external Pointer<Pointer<FLAGGED_WORD_BLOB>> pbstrVal;

  external Pointer<Pointer<COMObject>> ppunkVal;

  external Pointer<Pointer<COMObject>> ppdispVal;

  external Pointer<Pointer<Pointer<wireSAFEARRAY>>> pparray;

  external Pointer<Pointer<wireVARIANT>> pvarVal;

  @Uint8()
  external int cVal;

  @Uint16()
  external int uiVal;

  @Uint32()
  external int ulVal;

  @Uint64()
  external int ullVal;

  @Int32()
  external int intVal;

  @Uint32()
  external int uintVal;

  external DECIMAL decVal;

  external Pointer<DECIMAL> pdecVal;

  external Pointer<Utf8> pcVal;

  external Pointer<Uint16> puiVal;

  external Pointer<Uint32> pulVal;

  external Pointer<Uint64> pullVal;

  external Pointer<Int32> pintVal;

  external Pointer<Uint32> puintVal;
}

extension wireVARIANT_Extension on wireVARIANT {
  int get llVal => this.Anonymous.llVal;
  set llVal(int value) => this.Anonymous.llVal = value;

  int get lVal => this.Anonymous.lVal;
  set lVal(int value) => this.Anonymous.lVal = value;

  int get bVal => this.Anonymous.bVal;
  set bVal(int value) => this.Anonymous.bVal = value;

  int get iVal => this.Anonymous.iVal;
  set iVal(int value) => this.Anonymous.iVal = value;

  double get fltVal => this.Anonymous.fltVal;
  set fltVal(double value) => this.Anonymous.fltVal = value;

  double get dblVal => this.Anonymous.dblVal;
  set dblVal(double value) => this.Anonymous.dblVal = value;

  int get boolVal => this.Anonymous.boolVal;
  set boolVal(int value) => this.Anonymous.boolVal = value;

  int get scode => this.Anonymous.scode;
  set scode(int value) => this.Anonymous.scode = value;

  CY get cyVal => this.Anonymous.cyVal;
  set cyVal(CY value) => this.Anonymous.cyVal = value;

  double get date => this.Anonymous.date;
  set date(double value) => this.Anonymous.date = value;

  Pointer<FLAGGED_WORD_BLOB> get bstrVal => this.Anonymous.bstrVal;
  set bstrVal(Pointer<FLAGGED_WORD_BLOB> value) =>
      this.Anonymous.bstrVal = value;

  Pointer<COMObject> get punkVal => this.Anonymous.punkVal;
  set punkVal(Pointer<COMObject> value) => this.Anonymous.punkVal = value;

  Pointer<COMObject> get pdispVal => this.Anonymous.pdispVal;
  set pdispVal(Pointer<COMObject> value) => this.Anonymous.pdispVal = value;

  Pointer<Pointer<wireSAFEARRAY>> get parray => this.Anonymous.parray;
  set parray(Pointer<Pointer<wireSAFEARRAY>> value) =>
      this.Anonymous.parray = value;

  Pointer<wireBRECORD> get brecVal => this.Anonymous.brecVal;
  set brecVal(Pointer<wireBRECORD> value) => this.Anonymous.brecVal = value;

  Pointer<Uint8> get pbVal => this.Anonymous.pbVal;
  set pbVal(Pointer<Uint8> value) => this.Anonymous.pbVal = value;

  Pointer<Int16> get piVal => this.Anonymous.piVal;
  set piVal(Pointer<Int16> value) => this.Anonymous.piVal = value;

  Pointer<Int32> get plVal => this.Anonymous.plVal;
  set plVal(Pointer<Int32> value) => this.Anonymous.plVal = value;

  Pointer<Int64> get pllVal => this.Anonymous.pllVal;
  set pllVal(Pointer<Int64> value) => this.Anonymous.pllVal = value;

  Pointer<Float> get pfltVal => this.Anonymous.pfltVal;
  set pfltVal(Pointer<Float> value) => this.Anonymous.pfltVal = value;

  Pointer<Double> get pdblVal => this.Anonymous.pdblVal;
  set pdblVal(Pointer<Double> value) => this.Anonymous.pdblVal = value;

  Pointer<Int16> get pboolVal => this.Anonymous.pboolVal;
  set pboolVal(Pointer<Int16> value) => this.Anonymous.pboolVal = value;

  Pointer<Int32> get pscode => this.Anonymous.pscode;
  set pscode(Pointer<Int32> value) => this.Anonymous.pscode = value;

  Pointer<CY> get pcyVal => this.Anonymous.pcyVal;
  set pcyVal(Pointer<CY> value) => this.Anonymous.pcyVal = value;

  Pointer<Double> get pdate => this.Anonymous.pdate;
  set pdate(Pointer<Double> value) => this.Anonymous.pdate = value;

  Pointer<Pointer<FLAGGED_WORD_BLOB>> get pbstrVal => this.Anonymous.pbstrVal;
  set pbstrVal(Pointer<Pointer<FLAGGED_WORD_BLOB>> value) =>
      this.Anonymous.pbstrVal = value;

  Pointer<Pointer<COMObject>> get ppunkVal => this.Anonymous.ppunkVal;
  set ppunkVal(Pointer<Pointer<COMObject>> value) =>
      this.Anonymous.ppunkVal = value;

  Pointer<Pointer<COMObject>> get ppdispVal => this.Anonymous.ppdispVal;
  set ppdispVal(Pointer<Pointer<COMObject>> value) =>
      this.Anonymous.ppdispVal = value;

  Pointer<Pointer<Pointer<wireSAFEARRAY>>> get pparray =>
      this.Anonymous.pparray;
  set pparray(Pointer<Pointer<Pointer<wireSAFEARRAY>>> value) =>
      this.Anonymous.pparray = value;

  Pointer<Pointer<wireVARIANT>> get pvarVal => this.Anonymous.pvarVal;
  set pvarVal(Pointer<Pointer<wireVARIANT>> value) =>
      this.Anonymous.pvarVal = value;

  int get cVal => this.Anonymous.cVal;
  set cVal(int value) => this.Anonymous.cVal = value;

  int get uiVal => this.Anonymous.uiVal;
  set uiVal(int value) => this.Anonymous.uiVal = value;

  int get ulVal => this.Anonymous.ulVal;
  set ulVal(int value) => this.Anonymous.ulVal = value;

  int get ullVal => this.Anonymous.ullVal;
  set ullVal(int value) => this.Anonymous.ullVal = value;

  int get intVal => this.Anonymous.intVal;
  set intVal(int value) => this.Anonymous.intVal = value;

  int get uintVal => this.Anonymous.uintVal;
  set uintVal(int value) => this.Anonymous.uintVal = value;

  DECIMAL get decVal => this.Anonymous.decVal;
  set decVal(DECIMAL value) => this.Anonymous.decVal = value;

  Pointer<DECIMAL> get pdecVal => this.Anonymous.pdecVal;
  set pdecVal(Pointer<DECIMAL> value) => this.Anonymous.pdecVal = value;

  Pointer<Utf8> get pcVal => this.Anonymous.pcVal;
  set pcVal(Pointer<Utf8> value) => this.Anonymous.pcVal = value;

  Pointer<Uint16> get puiVal => this.Anonymous.puiVal;
  set puiVal(Pointer<Uint16> value) => this.Anonymous.puiVal = value;

  Pointer<Uint32> get pulVal => this.Anonymous.pulVal;
  set pulVal(Pointer<Uint32> value) => this.Anonymous.pulVal = value;

  Pointer<Uint64> get pullVal => this.Anonymous.pullVal;
  set pullVal(Pointer<Uint64> value) => this.Anonymous.pullVal = value;

  Pointer<Int32> get pintVal => this.Anonymous.pintVal;
  set pintVal(Pointer<Int32> value) => this.Anonymous.pintVal = value;

  Pointer<Uint32> get puintVal => this.Anonymous.puintVal;
  set puintVal(Pointer<Uint32> value) => this.Anonymous.puintVal = value;
}
