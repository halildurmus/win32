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

class ENTRYID extends Struct {
  @Array(4)
  external Array<Uint8> abFlags;
  @Array(1)
  external Array<Uint8> ab;
}

class MAPIUID extends Struct {
  @Array(16)
  external Array<Uint8> ab;
}

class SPropTagArray extends Struct {
  @Uint32()
  external int cValues;
  @Array(1)
  external Array<Uint32> aulPropTag;
}

class SBinary extends Struct {
  @Uint32()
  external int cb;
  external Pointer<Uint8> lpb;
}

class SShortArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Int16> lpi;
}

class SGuidArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<GUID> lpguid;
}

class SRealArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Float> lpflt;
}

class SLongArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Int32> lpl;
}

class SLargeIntegerArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Int64> lpli;
}

class SDateTimeArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<FILETIME> lpft;
}

class SAppTimeArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Double> lpat;
}

class SCurrencyArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<CY> lpcur;
}

class SBinaryArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<SBinary> lpbin;
}

class SDoubleArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Double> lpdbl;
}

class SWStringArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Pointer<Utf16>> lppszW;
}

class SLPSTRArray extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<Pointer<Utf8>> lppszA;
}

class _PV extends Struct {
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

class SPropValue extends Struct {
  @Uint32()
  external int ulPropTag;
  @Uint32()
  external int dwAlignPad;
  external _PV Value;
}

class SPropProblem extends Struct {
  @Uint32()
  external int ulIndex;
  @Uint32()
  external int ulPropTag;
  @Int32()
  external int scode;
}

class SPropProblemArray extends Struct {
  @Uint32()
  external int cProblem;
  @Array(1)
  external Array<SPropProblem> aProblem;
}

class FLATENTRY extends Struct {
  @Uint32()
  external int cb;
  @Array(1)
  external Array<Uint8> abEntry;
}

class FLATENTRYLIST extends Struct {
  @Uint32()
  external int cEntries;
  @Uint32()
  external int cbEntries;
  @Array(1)
  external Array<Uint8> abEntries;
}

class MTSID extends Struct {
  @Uint32()
  external int cb;
  @Array(1)
  external Array<Uint8> ab;
}

class FLATMTSIDLIST extends Struct {
  @Uint32()
  external int cMTSIDs;
  @Uint32()
  external int cbMTSIDs;
  @Array(1)
  external Array<Uint8> abMTSIDs;
}

class ADRENTRY extends Struct {
  @Uint32()
  external int ulReserved1;
  @Uint32()
  external int cValues;
  external Pointer<SPropValue> rgPropVals;
}

class ADRLIST extends Struct {
  @Uint32()
  external int cEntries;
  @Array(1)
  external Array<ADRENTRY> aEntries;
}

class SRow extends Struct {
  @Uint32()
  external int ulAdrEntryPad;
  @Uint32()
  external int cValues;
  external Pointer<SPropValue> lpProps;
}

class SRowSet extends Struct {
  @Uint32()
  external int cRows;
  @Array(1)
  external Array<SRow> aRow;
}

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

class EXTENDED_NOTIFICATION extends Struct {
  @Uint32()
  external int ulEvent;
  @Uint32()
  external int cb;
  external Pointer<Uint8> pbEventParameters;
}

class STATUS_OBJECT_NOTIFICATION extends Struct {
  @Uint32()
  external int cbEntryID;
  external Pointer<ENTRYID> lpEntryID;
  @Uint32()
  external int cValues;
  external Pointer<SPropValue> lpPropVals;
}

class NOTIFICATION extends Struct {
  @Uint32()
  external int ulEventType;
  @Uint32()
  external int ulAlignPad;
  @Uint32()
  external int info;
}

class MAPINAMEID extends Struct {
  external Pointer<GUID> lpguid;
  @Uint32()
  external int ulKind;
  @Uint32()
  external int Kind;
}

class SSortOrder extends Struct {
  @Uint32()
  external int ulPropTag;
  @Uint32()
  external int ulOrder;
}

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

class SAndRestriction extends Struct {
  @Uint32()
  external int cRes;
  external Pointer<SRestriction> lpRes;
}

class SOrRestriction extends Struct {
  @Uint32()
  external int cRes;
  external Pointer<SRestriction> lpRes;
}

class SNotRestriction extends Struct {
  @Uint32()
  external int ulReserved;
  external Pointer<SRestriction> lpRes;
}

class SContentRestriction extends Struct {
  @Uint32()
  external int ulFuzzyLevel;
  @Uint32()
  external int ulPropTag;
  external Pointer<SPropValue> lpProp;
}

class SBitMaskRestriction extends Struct {
  @Uint32()
  external int relBMR;
  @Uint32()
  external int ulPropTag;
  @Uint32()
  external int ulMask;
}

class SPropertyRestriction extends Struct {
  @Uint32()
  external int relop;
  @Uint32()
  external int ulPropTag;
  external Pointer<SPropValue> lpProp;
}

class SComparePropsRestriction extends Struct {
  @Uint32()
  external int relop;
  @Uint32()
  external int ulPropTag1;
  @Uint32()
  external int ulPropTag2;
}

class SSizeRestriction extends Struct {
  @Uint32()
  external int relop;
  @Uint32()
  external int ulPropTag;
  @Uint32()
  external int cb;
}

class SExistRestriction extends Struct {
  @Uint32()
  external int ulReserved1;
  @Uint32()
  external int ulPropTag;
  @Uint32()
  external int ulReserved2;
}

class SSubRestriction extends Struct {
  @Uint32()
  external int ulSubObject;
  external Pointer<SRestriction> lpRes;
}

class SCommentRestriction extends Struct {
  @Uint32()
  external int cValues;
  external Pointer<SRestriction> lpRes;
  external Pointer<SPropValue> lpProp;
}

class SRestriction extends Struct {
  @Uint32()
  external int rt;
  @Uint32()
  external int res;
}

class _flaglist extends Struct {
  @Uint32()
  external int cFlags;
  @Array(1)
  external Array<Uint32> ulFlag;
}

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
  external Pointer<FNABSDI> lpfnABSDI;
  external Pointer<FNDISMISS> lpfnDismiss;
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

class DTBLLABEL extends Struct {
  @Uint32()
  external int ulbLpszLabelName;
  @Uint32()
  external int ulFlags;
}

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

class DTBLLBX extends Struct {
  @Uint32()
  external int ulFlags;
  @Uint32()
  external int ulPRSetProperty;
  @Uint32()
  external int ulPRTableName;
}

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

class DTBLCHECKBOX extends Struct {
  @Uint32()
  external int ulbLpszLabel;
  @Uint32()
  external int ulFlags;
  @Uint32()
  external int ulPRPropertyName;
}

class DTBLGROUPBOX extends Struct {
  @Uint32()
  external int ulbLpszLabel;
  @Uint32()
  external int ulFlags;
}

class DTBLBUTTON extends Struct {
  @Uint32()
  external int ulbLpszLabel;
  @Uint32()
  external int ulFlags;
  @Uint32()
  external int ulPRControl;
}

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

class DTBLMVLISTBOX extends Struct {
  @Uint32()
  external int ulFlags;
  @Uint32()
  external int ulMVPropTag;
}

class DTBLMVDDLBX extends Struct {
  @Uint32()
  external int ulFlags;
  @Uint32()
  external int ulMVPropTag;
}

class _WABACTIONITEM extends Struct {}

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

class WABIMPORTPARAM extends Struct {
  @Uint32()
  external int cbSize;
  external IAddrBook lpAdrBook;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int ulFlags;
  external Pointer<Utf8> lpszFileName;
}

class WABEXTDISPLAY extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer lpWABObject;
  external IAddrBook lpAdrBook;
  external Pointer lpPropObj;
  @Int32()
  external int fReadOnly;
  @Int32()
  external int fDataChanged;
  @Uint32()
  external int ulFlags;
  external Pointer lpv;
  external Pointer<Int8> lpsz;
}
