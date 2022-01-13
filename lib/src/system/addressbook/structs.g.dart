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
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/callbacks.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/addressbook/IWABObject.dart';
import '../../system/addressbook/IAddrBook.dart';
import '../../system/addressbook/IMAPIProp.dart';

/// {@category Struct}
class ADRENTRY extends Struct {
  @Uint32()
  external int ulReserved1;

  @Uint32()
  external int cValues;

  external Pointer<SPropValue> rgPropVals;
}

/// {@category Struct}
class ADRLIST extends Struct {
  @Uint32()
  external int cEntries;

  @Array(1)
  external Array<ADRENTRY> aEntries;
}

/// {@category Struct}
class ADRPARM extends Struct {
  @Uint32()
  external int cbABContEntryID;

  external Pointer<ENTRYID> lpABContEntryID;

  @Uint32()
  external int ulFlags;

  external Pointer lpReserved;

  @Uint32()
  external int ulHelpContext;

  external Pointer<Int8> lpszHelpFileName;

  external Pointer<NativeFunction<LPFNABSDI>> lpfnABSDI;

  external Pointer<NativeFunction<LPFNDISMISS>> lpfnDismiss;

  external Pointer lpvDismissContext;

  external Pointer<Int8> lpszCaption;

  external Pointer<Int8> lpszNewEntryTitle;

  external Pointer<Int8> lpszDestWellsTitle;

  @Uint32()
  external int cDestFields;

  @Uint32()
  external int nDestFieldFocus;

  external Pointer<Pointer<Int8>> lppszDestTitles;

  external Pointer<Uint32> lpulDestComps;

  external Pointer<SRestriction> lpContRestriction;

  external Pointer<SRestriction> lpHierRestriction;
}

/// {@category Struct}
class DTBLBUTTON extends Struct {
  @Uint32()
  external int ulbLpszLabel;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulPRControl;
}

/// {@category Struct}
class DTBLCHECKBOX extends Struct {
  @Uint32()
  external int ulbLpszLabel;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulPRPropertyName;
}

/// {@category Struct}
class DTBLCOMBOBOX extends Struct {
  @Uint32()
  external int ulbLpszCharsAllowed;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulNumCharsAllowed;

  @Uint32()
  external int ulPRPropertyName;

  @Uint32()
  external int ulPRTableName;
}

/// {@category Struct}
class DTBLDDLBX extends Struct {
  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulPRDisplayProperty;

  @Uint32()
  external int ulPRSetProperty;

  @Uint32()
  external int ulPRTableName;
}

/// {@category Struct}
class DTBLEDIT extends Struct {
  @Uint32()
  external int ulbLpszCharsAllowed;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulNumCharsAllowed;

  @Uint32()
  external int ulPropTag;
}

/// {@category Struct}
class DTBLGROUPBOX extends Struct {
  @Uint32()
  external int ulbLpszLabel;

  @Uint32()
  external int ulFlags;
}

/// {@category Struct}
class DTBLLABEL extends Struct {
  @Uint32()
  external int ulbLpszLabelName;

  @Uint32()
  external int ulFlags;
}

/// {@category Struct}
class DTBLLBX extends Struct {
  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulPRSetProperty;

  @Uint32()
  external int ulPRTableName;
}

/// {@category Struct}
class DTBLMVDDLBX extends Struct {
  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulMVPropTag;
}

/// {@category Struct}
class DTBLMVLISTBOX extends Struct {
  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulMVPropTag;
}

/// {@category Struct}
class DTBLPAGE extends Struct {
  @Uint32()
  external int ulbLpszLabel;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulbLpszComponent;

  @Uint32()
  external int ulContext;
}

/// {@category Struct}
class DTBLRADIOBUTTON extends Struct {
  @Uint32()
  external int ulbLpszLabel;

  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulcButtons;

  @Uint32()
  external int ulPropTag;

  @Int32()
  external int lReturnValue;
}

/// {@category Struct}
class DTCTL extends Struct {
  @Uint32()
  external int ulCtlType;

  @Uint32()
  external int ulCtlFlags;

  external Pointer<Uint8> lpbNotif;

  @Uint32()
  external int cbNotif;

  external Pointer<Int8> lpszFilter;

  @Uint32()
  external int ulItemID;

  external _DTCTL__ctl_e__Union ctl;
}

/// {@category Struct}
class _DTCTL__ctl_e__Union extends Union {
  external Pointer lpv;

  external Pointer<DTBLLABEL> lplabel;

  external Pointer<DTBLEDIT> lpedit;

  external Pointer<DTBLLBX> lplbx;

  external Pointer<DTBLCOMBOBOX> lpcombobox;

  external Pointer<DTBLDDLBX> lpddlbx;

  external Pointer<DTBLCHECKBOX> lpcheckbox;

  external Pointer<DTBLGROUPBOX> lpgroupbox;

  external Pointer<DTBLBUTTON> lpbutton;

  external Pointer<DTBLRADIOBUTTON> lpradiobutton;

  external Pointer<DTBLMVLISTBOX> lpmvlbx;

  external Pointer<DTBLMVDDLBX> lpmvddlbx;

  external Pointer<DTBLPAGE> lppage;
}

extension DTCTL_Extension on DTCTL {
  Pointer get lpv => this.ctl.lpv;
  set lpv(Pointer value) => this.ctl.lpv = value;

  Pointer<DTBLLABEL> get lplabel => this.ctl.lplabel;
  set lplabel(Pointer<DTBLLABEL> value) => this.ctl.lplabel = value;

  Pointer<DTBLEDIT> get lpedit => this.ctl.lpedit;
  set lpedit(Pointer<DTBLEDIT> value) => this.ctl.lpedit = value;

  Pointer<DTBLLBX> get lplbx => this.ctl.lplbx;
  set lplbx(Pointer<DTBLLBX> value) => this.ctl.lplbx = value;

  Pointer<DTBLCOMBOBOX> get lpcombobox => this.ctl.lpcombobox;
  set lpcombobox(Pointer<DTBLCOMBOBOX> value) => this.ctl.lpcombobox = value;

  Pointer<DTBLDDLBX> get lpddlbx => this.ctl.lpddlbx;
  set lpddlbx(Pointer<DTBLDDLBX> value) => this.ctl.lpddlbx = value;

  Pointer<DTBLCHECKBOX> get lpcheckbox => this.ctl.lpcheckbox;
  set lpcheckbox(Pointer<DTBLCHECKBOX> value) => this.ctl.lpcheckbox = value;

  Pointer<DTBLGROUPBOX> get lpgroupbox => this.ctl.lpgroupbox;
  set lpgroupbox(Pointer<DTBLGROUPBOX> value) => this.ctl.lpgroupbox = value;

  Pointer<DTBLBUTTON> get lpbutton => this.ctl.lpbutton;
  set lpbutton(Pointer<DTBLBUTTON> value) => this.ctl.lpbutton = value;

  Pointer<DTBLRADIOBUTTON> get lpradiobutton => this.ctl.lpradiobutton;
  set lpradiobutton(Pointer<DTBLRADIOBUTTON> value) =>
      this.ctl.lpradiobutton = value;

  Pointer<DTBLMVLISTBOX> get lpmvlbx => this.ctl.lpmvlbx;
  set lpmvlbx(Pointer<DTBLMVLISTBOX> value) => this.ctl.lpmvlbx = value;

  Pointer<DTBLMVDDLBX> get lpmvddlbx => this.ctl.lpmvddlbx;
  set lpmvddlbx(Pointer<DTBLMVDDLBX> value) => this.ctl.lpmvddlbx = value;

  Pointer<DTBLPAGE> get lppage => this.ctl.lppage;
  set lppage(Pointer<DTBLPAGE> value) => this.ctl.lppage = value;
}

/// {@category Struct}
class DTPAGE extends Struct {
  @Uint32()
  external int cctl;

  external Pointer<Int8> lpszResourceName;

  external _DTPAGE__Anonymous_e__Union Anonymous;

  external Pointer<DTCTL> lpctl;
}

/// {@category Struct}
class _DTPAGE__Anonymous_e__Union extends Union {
  external Pointer<Int8> lpszComponent;

  @Uint32()
  external int ulItemID;
}

extension DTPAGE_Extension on DTPAGE {
  Pointer<Int8> get lpszComponent => this.Anonymous.lpszComponent;
  set lpszComponent(Pointer<Int8> value) =>
      this.Anonymous.lpszComponent = value;

  int get ulItemID => this.Anonymous.ulItemID;
  set ulItemID(int value) => this.Anonymous.ulItemID = value;
}

/// {@category Struct}
class ENTRYID extends Struct {
  @Array(4)
  external Array<Uint8> abFlags;

  @Array(1)
  external Array<Uint8> ab;
}

/// {@category Struct}
class ERROR_NOTIFICATION extends Struct {
  @Uint32()
  external int cbEntryID;

  external Pointer<ENTRYID> lpEntryID;

  @Int32()
  external int scode;

  @Uint32()
  external int ulFlags;

  external Pointer<MAPIERROR> lpMAPIError;
}

/// {@category Struct}
class EXTENDED_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;

  @Uint32()
  external int cb;

  external Pointer<Uint8> pbEventParameters;
}

/// {@category Struct}
class FLATENTRY extends Struct {
  @Uint32()
  external int cb;

  @Array(1)
  external Array<Uint8> abEntry;
}

/// {@category Struct}
class FLATENTRYLIST extends Struct {
  @Uint32()
  external int cEntries;

  @Uint32()
  external int cbEntries;

  @Array(1)
  external Array<Uint8> abEntries;
}

/// {@category Struct}
class FLATMTSIDLIST extends Struct {
  @Uint32()
  external int cMTSIDs;

  @Uint32()
  external int cbMTSIDs;

  @Array(1)
  external Array<Uint8> abMTSIDs;
}

/// {@category Struct}
class MAPIERROR extends Struct {
  @Uint32()
  external int ulVersion;

  external Pointer<Int8> lpszError;

  external Pointer<Int8> lpszComponent;

  @Uint32()
  external int ulLowLevelError;

  @Uint32()
  external int ulContext;
}

/// {@category Struct}
class MAPINAMEID extends Struct {
  external Pointer<GUID> lpguid;

  @Uint32()
  external int ulKind;

  external _MAPINAMEID__Kind_e__Union Kind;
}

/// {@category Struct}
class _MAPINAMEID__Kind_e__Union extends Union {
  @Int32()
  external int lID;

  external Pointer<Utf16> lpwstrName;
}

extension MAPINAMEID_Extension on MAPINAMEID {
  int get lID => this.Kind.lID;
  set lID(int value) => this.Kind.lID = value;

  Pointer<Utf16> get lpwstrName => this.Kind.lpwstrName;
  set lpwstrName(Pointer<Utf16> value) => this.Kind.lpwstrName = value;
}

/// {@category Struct}
class MAPIUID extends Struct {
  @Array(16)
  external Array<Uint8> ab;
}

/// {@category Struct}
class MTSID extends Struct {
  @Uint32()
  external int cb;

  @Array(1)
  external Array<Uint8> ab;
}

/// {@category Struct}
class NEWMAIL_NOTIFICATION extends Struct {
  @Uint32()
  external int cbEntryID;

  external Pointer<ENTRYID> lpEntryID;

  @Uint32()
  external int cbParentID;

  external Pointer<ENTRYID> lpParentID;

  @Uint32()
  external int ulFlags;

  external Pointer<Int8> lpszMessageClass;

  @Uint32()
  external int ulMessageFlags;
}

/// {@category Struct}
class NOTIFICATION extends Struct {
  @Uint32()
  external int ulEventType;

  @Uint32()
  external int ulAlignPad;

  external _NOTIFICATION__info_e__Union info;
}

/// {@category Struct}
class _NOTIFICATION__info_e__Union extends Union {
  external ERROR_NOTIFICATION err;

  external NEWMAIL_NOTIFICATION newmail;

  external OBJECT_NOTIFICATION obj;

  external TABLE_NOTIFICATION tab;

  external EXTENDED_NOTIFICATION ext;

  external STATUS_OBJECT_NOTIFICATION statobj;
}

extension NOTIFICATION_Extension on NOTIFICATION {
  ERROR_NOTIFICATION get err => this.info.err;
  set err(ERROR_NOTIFICATION value) => this.info.err = value;

  NEWMAIL_NOTIFICATION get newmail => this.info.newmail;
  set newmail(NEWMAIL_NOTIFICATION value) => this.info.newmail = value;

  OBJECT_NOTIFICATION get obj => this.info.obj;
  set obj(OBJECT_NOTIFICATION value) => this.info.obj = value;

  TABLE_NOTIFICATION get tab => this.info.tab;
  set tab(TABLE_NOTIFICATION value) => this.info.tab = value;

  EXTENDED_NOTIFICATION get ext => this.info.ext;
  set ext(EXTENDED_NOTIFICATION value) => this.info.ext = value;

  STATUS_OBJECT_NOTIFICATION get statobj => this.info.statobj;
  set statobj(STATUS_OBJECT_NOTIFICATION value) => this.info.statobj = value;
}

/// {@category Struct}
class NOTIFKEY extends Struct {
  @Uint32()
  external int cb;

  @Array(1)
  external Array<Uint8> ab;
}

/// {@category Struct}
class OBJECT_NOTIFICATION extends Struct {
  @Uint32()
  external int cbEntryID;

  external Pointer<ENTRYID> lpEntryID;

  @Uint32()
  external int ulObjType;

  @Uint32()
  external int cbParentID;

  external Pointer<ENTRYID> lpParentID;

  @Uint32()
  external int cbOldID;

  external Pointer<ENTRYID> lpOldID;

  @Uint32()
  external int cbOldParentID;

  external Pointer<ENTRYID> lpOldParentID;

  external Pointer<SPropTagArray> lpPropTagArray;
}

/// {@category Struct}
class SAndRestriction extends Struct {
  @Uint32()
  external int cRes;

  external Pointer<SRestriction> lpRes;
}

/// {@category Struct}
class SAppTimeArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Double> lpat;
}

/// {@category Struct}
class SBinary extends Struct {
  @Uint32()
  external int cb;

  external Pointer<Uint8> lpb;
}

/// {@category Struct}
class SBinaryArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<SBinary> lpbin;
}

/// {@category Struct}
class SBitMaskRestriction extends Struct {
  @Uint32()
  external int relBMR;

  @Uint32()
  external int ulPropTag;

  @Uint32()
  external int ulMask;
}

/// {@category Struct}
class SCommentRestriction extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<SRestriction> lpRes;

  external Pointer<SPropValue> lpProp;
}

/// {@category Struct}
class SComparePropsRestriction extends Struct {
  @Uint32()
  external int relop;

  @Uint32()
  external int ulPropTag1;

  @Uint32()
  external int ulPropTag2;
}

/// {@category Struct}
class SContentRestriction extends Struct {
  @Uint32()
  external int ulFuzzyLevel;

  @Uint32()
  external int ulPropTag;

  external Pointer<SPropValue> lpProp;
}

/// {@category Struct}
class SCurrencyArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<CY> lpcur;
}

/// {@category Struct}
class SDateTimeArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<FILETIME> lpft;
}

/// {@category Struct}
class SDoubleArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Double> lpdbl;
}

/// {@category Struct}
class SExistRestriction extends Struct {
  @Uint32()
  external int ulReserved1;

  @Uint32()
  external int ulPropTag;

  @Uint32()
  external int ulReserved2;
}

/// {@category Struct}
class SGuidArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<GUID> lpguid;
}

/// {@category Struct}
class SLPSTRArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Pointer<Utf8>> lppszA;
}

/// {@category Struct}
class SLargeIntegerArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Int64> lpli;
}

/// {@category Struct}
class SLongArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Int32> lpl;
}

/// {@category Struct}
class SNotRestriction extends Struct {
  @Uint32()
  external int ulReserved;

  external Pointer<SRestriction> lpRes;
}

/// {@category Struct}
class SOrRestriction extends Struct {
  @Uint32()
  external int cRes;

  external Pointer<SRestriction> lpRes;
}

/// {@category Struct}
class SPropProblem extends Struct {
  @Uint32()
  external int ulIndex;

  @Uint32()
  external int ulPropTag;

  @Int32()
  external int scode;
}

/// {@category Struct}
class SPropProblemArray extends Struct {
  @Uint32()
  external int cProblem;

  @Array(1)
  external Array<SPropProblem> aProblem;
}

/// {@category Struct}
class SPropTagArray extends Struct {
  @Uint32()
  external int cValues;

  @Array(1)
  external Array<Uint32> aulPropTag;
}

/// {@category Struct}
class SPropValue extends Struct {
  @Uint32()
  external int ulPropTag;

  @Uint32()
  external int dwAlignPad;

  external PV Value;
}

/// {@category Struct}
class SPropertyRestriction extends Struct {
  @Uint32()
  external int relop;

  @Uint32()
  external int ulPropTag;

  external Pointer<SPropValue> lpProp;
}

/// {@category Struct}
class SRealArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Float> lpflt;
}

/// {@category Struct}
class SRestriction extends Struct {
  @Uint32()
  external int rt;

  external _SRestriction__res_e__Union res;
}

/// {@category Struct}
class _SRestriction__res_e__Union extends Union {
  external SComparePropsRestriction resCompareProps;

  external SAndRestriction resAnd;

  external SOrRestriction resOr;

  external SNotRestriction resNot;

  external SContentRestriction resContent;

  external SPropertyRestriction resProperty;

  external SBitMaskRestriction resBitMask;

  external SSizeRestriction resSize;

  external SExistRestriction resExist;

  external SSubRestriction resSub;

  external SCommentRestriction resComment;
}

extension SRestriction_Extension on SRestriction {
  SComparePropsRestriction get resCompareProps => this.res.resCompareProps;
  set resCompareProps(SComparePropsRestriction value) =>
      this.res.resCompareProps = value;

  SAndRestriction get resAnd => this.res.resAnd;
  set resAnd(SAndRestriction value) => this.res.resAnd = value;

  SOrRestriction get resOr => this.res.resOr;
  set resOr(SOrRestriction value) => this.res.resOr = value;

  SNotRestriction get resNot => this.res.resNot;
  set resNot(SNotRestriction value) => this.res.resNot = value;

  SContentRestriction get resContent => this.res.resContent;
  set resContent(SContentRestriction value) => this.res.resContent = value;

  SPropertyRestriction get resProperty => this.res.resProperty;
  set resProperty(SPropertyRestriction value) => this.res.resProperty = value;

  SBitMaskRestriction get resBitMask => this.res.resBitMask;
  set resBitMask(SBitMaskRestriction value) => this.res.resBitMask = value;

  SSizeRestriction get resSize => this.res.resSize;
  set resSize(SSizeRestriction value) => this.res.resSize = value;

  SExistRestriction get resExist => this.res.resExist;
  set resExist(SExistRestriction value) => this.res.resExist = value;

  SSubRestriction get resSub => this.res.resSub;
  set resSub(SSubRestriction value) => this.res.resSub = value;

  SCommentRestriction get resComment => this.res.resComment;
  set resComment(SCommentRestriction value) => this.res.resComment = value;
}

/// {@category Struct}
class SRow extends Struct {
  @Uint32()
  external int ulAdrEntryPad;

  @Uint32()
  external int cValues;

  external Pointer<SPropValue> lpProps;
}

/// {@category Struct}
class SRowSet extends Struct {
  @Uint32()
  external int cRows;

  @Array(1)
  external Array<SRow> aRow;
}

/// {@category Struct}
class SShortArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Int16> lpi;
}

/// {@category Struct}
class SSizeRestriction extends Struct {
  @Uint32()
  external int relop;

  @Uint32()
  external int ulPropTag;

  @Uint32()
  external int cb;
}

/// {@category Struct}
class SSortOrder extends Struct {
  @Uint32()
  external int ulPropTag;

  @Uint32()
  external int ulOrder;
}

/// {@category Struct}
class SSortOrderSet extends Struct {
  @Uint32()
  external int cSorts;

  @Uint32()
  external int cCategories;

  @Uint32()
  external int cExpanded;

  @Array(1)
  external Array<SSortOrder> aSort;
}

/// {@category Struct}
class SSubRestriction extends Struct {
  @Uint32()
  external int ulSubObject;

  external Pointer<SRestriction> lpRes;
}

/// {@category Struct}
class STATUS_OBJECT_NOTIFICATION extends Struct {
  @Uint32()
  external int cbEntryID;

  external Pointer<ENTRYID> lpEntryID;

  @Uint32()
  external int cValues;

  external Pointer<SPropValue> lpPropVals;
}

/// {@category Struct}
class SWStringArray extends Struct {
  @Uint32()
  external int cValues;

  external Pointer<Pointer<Utf16>> lppszW;
}

/// {@category Struct}
class TABLE_NOTIFICATION extends Struct {
  @Uint32()
  external int ulTableEvent;

  @Int32()
  external int hResult;

  external SPropValue propIndex;

  external SPropValue propPrior;

  external SRow row;

  @Uint32()
  external int ulPad;
}

/// {@category Struct}
class WABEXTDISPLAY extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> lpWABObject;

  external Pointer<COMObject> lpAdrBook;

  external Pointer<COMObject> lpPropObj;

  @Int32()
  external int fReadOnly;

  @Int32()
  external int fDataChanged;

  @Uint32()
  external int ulFlags;

  external Pointer lpv;

  external Pointer<Int8> lpsz;
}

/// {@category Struct}
class WABIMPORTPARAM extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> lpAdrBook;

  @IntPtr()
  external int hWnd;

  @Uint32()
  external int ulFlags;

  external Pointer<Utf8> lpszFileName;
}

/// {@category Struct}
class WAB_PARAM extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf8> szFileName;

  @Uint32()
  external int ulFlags;

  external GUID guidPSExt;
}

/// {@category Struct}
class PV extends Union {
  @Int16()
  external int i;

  @Int32()
  external int l;

  @Uint32()
  external int ul;

  @Float()
  external double flt;

  @Double()
  external double dbl;

  @Uint16()
  external int b;

  external CY cur;

  @Double()
  external double at;

  external FILETIME ft;

  external Pointer<Utf8> lpszA;

  external SBinary bin;

  external Pointer<Utf16> lpszW;

  external Pointer<GUID> lpguid;

  @Int64()
  external int li;

  external SShortArray MVi;

  external SLongArray MVl;

  external SRealArray MVflt;

  external SDoubleArray MVdbl;

  external SCurrencyArray MVcur;

  external SAppTimeArray MVat;

  external SDateTimeArray MVft;

  external SBinaryArray MVbin;

  external SLPSTRArray MVszA;

  external SWStringArray MVszW;

  external SGuidArray MVguid;

  external SLargeIntegerArray MVli;

  @Int32()
  external int err;

  @Int32()
  external int x;
}

/// {@category Struct}
class WABACTIONITEM extends Opaque {}

/// {@category Struct}
class flaglist extends Struct {
  @Uint32()
  external int cFlags;

  @Array(1)
  external Array<Uint32> ulFlag;
}
