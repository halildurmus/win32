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
import '../../system/mmc/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../system/com/IDataObject.dart';

/// {@category Struct}
class CONTEXTMENUITEM extends Struct {
  external Pointer<Utf16> strName;

  external Pointer<Utf16> strStatusBarText;

  @Int32()
  external int lCommandID;

  @Int32()
  external int lInsertionPointID;

  @Int32()
  external int fFlags;

  @Int32()
  external int fSpecialFlags;
}

/// {@category Struct}
class CONTEXTMENUITEM2 extends Struct {
  external Pointer<Utf16> strName;

  external Pointer<Utf16> strStatusBarText;

  @Int32()
  external int lCommandID;

  @Int32()
  external int lInsertionPointID;

  @Int32()
  external int fFlags;

  @Int32()
  external int fSpecialFlags;

  external Pointer<Utf16> strLanguageIndependentName;
}

/// {@category Struct}
class MENUBUTTONDATA extends Struct {
  @Int32()
  external int idCommand;

  @Int32()
  external int x;

  @Int32()
  external int y;
}

/// {@category Struct}
class MMCBUTTON extends Struct {
  @Int32()
  external int nBitmap;

  @Int32()
  external int idCommand;

  @Uint8()
  external int fsState;

  @Uint8()
  external int fsType;

  external Pointer<Utf16> lpButtonText;

  external Pointer<Utf16> lpTooltipText;
}

/// {@category Struct}
class MMC_COLUMN_DATA extends Struct {
  @Int32()
  external int nColIndex;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int nWidth;

  @IntPtr()
  external int ulReserved;
}

/// {@category Struct}
class MMC_COLUMN_SET_DATA extends Struct {
  @Int32()
  external int cbSize;

  @Int32()
  external int nNumCols;

  external Pointer<MMC_COLUMN_DATA> pColData;
}

/// {@category Struct}
class MMC_EXPANDSYNC_STRUCT extends Struct {
  @Int32()
  external int bHandled;

  @Int32()
  external int bExpanding;

  @IntPtr()
  external int hItem;
}

/// {@category Struct}
class MMC_EXT_VIEW_DATA extends Struct {
  external GUID viewID;

  external Pointer<Utf16> pszURL;

  external Pointer<Utf16> pszViewTitle;

  external Pointer<Utf16> pszTooltipText;

  @Int32()
  external int bReplacesDefaultView;
}

/// {@category Struct}
class MMC_FILTERDATA extends Struct {
  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int lValue;
}

/// {@category Struct}
class MMC_LISTPAD_INFO extends Struct {
  external Pointer<Utf16> szTitle;

  external Pointer<Utf16> szButtonText;

  @IntPtr()
  external int nCommandID;
}

/// {@category Struct}
class MMC_RESTORE_VIE extends Struct {
  @Uint32()
  external int dwSize;

  @IntPtr()
  external int cookie;

  external Pointer<Utf16> pViewType;

  @Int32()
  external int lViewOptions;
}

/// {@category Struct}
class MMC_SNAPIN_PROPERTY extends Struct {
  external Pointer<Utf16> pszPropName;

  external VARIANT varValue;

  @Int32()
  external int eAction;
}

/// {@category Struct}
class MMC_SORT_DATA extends Struct {
  @Int32()
  external int nColIndex;

  @Uint32()
  external int dwSortOptions;

  @IntPtr()
  external int ulReserved;
}

/// {@category Struct}
class MMC_SORT_SET_DATA extends Struct {
  @Int32()
  external int cbSize;

  @Int32()
  external int nNumItems;

  external Pointer<MMC_SORT_DATA> pSortData;
}

/// {@category Struct}
class MMC_TASK extends Struct {
  external MMC_TASK_DISPLAY_OBJECT sDisplayObject;

  external Pointer<Utf16> szText;

  external Pointer<Utf16> szHelpString;

  @Int32()
  external int eActionType;

  external _MMC_TASK__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MMC_TASK__Anonymous_e__Union extends Union {
  @IntPtr()
  external int nCommandID;

  external Pointer<Utf16> szActionURL;

  external Pointer<Utf16> szScript;
}

extension MMC_TASK_Extension on MMC_TASK {
  int get nCommandID => this.Anonymous.nCommandID;
  set nCommandID(int value) => this.Anonymous.nCommandID = value;

  Pointer<Utf16> get szActionURL => this.Anonymous.szActionURL;
  set szActionURL(Pointer<Utf16> value) => this.Anonymous.szActionURL = value;

  Pointer<Utf16> get szScript => this.Anonymous.szScript;
  set szScript(Pointer<Utf16> value) => this.Anonymous.szScript = value;
}

/// {@category Struct}
class MMC_TASK_DISPLAY_BITMAP extends Struct {
  external Pointer<Utf16> szMouseOverBitmap;

  external Pointer<Utf16> szMouseOffBitmap;
}

/// {@category Struct}
class MMC_TASK_DISPLAY_OBJECT extends Struct {
  @Int32()
  external int eDisplayType;

  external _MMC_TASK_DISPLAY_OBJECT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MMC_TASK_DISPLAY_OBJECT__Anonymous_e__Union extends Union {
  external MMC_TASK_DISPLAY_BITMAP uBitmap;

  external MMC_TASK_DISPLAY_SYMBOL uSymbol;
}

extension MMC_TASK_DISPLAY_OBJECT_Extension on MMC_TASK_DISPLAY_OBJECT {
  MMC_TASK_DISPLAY_BITMAP get uBitmap => this.Anonymous.uBitmap;
  set uBitmap(MMC_TASK_DISPLAY_BITMAP value) => this.Anonymous.uBitmap = value;

  MMC_TASK_DISPLAY_SYMBOL get uSymbol => this.Anonymous.uSymbol;
  set uSymbol(MMC_TASK_DISPLAY_SYMBOL value) => this.Anonymous.uSymbol = value;
}

/// {@category Struct}
class MMC_TASK_DISPLAY_SYMBOL extends Struct {
  external Pointer<Utf16> szFontFamilyName;

  external Pointer<Utf16> szURLtoEOT;

  external Pointer<Utf16> szSymbolString;
}

/// {@category Struct}
class MMC_VISIBLE_COLUMNS extends Struct {
  @Int32()
  external int nVisibleColumns;

  @Array(1)
  external Array<Int32> rgVisibleCols;
}

/// {@category Struct}
class RDCOMPARE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int nColumn;

  @IntPtr()
  external int lUserParam;

  external Pointer<RDITEMHDR> prdch1;

  external Pointer<RDITEMHDR> prdch2;
}

/// {@category Struct}
class RDITEMHDR extends Struct {
  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int cookie;

  @IntPtr()
  external int lpReserved;
}

/// {@category Struct}
class RESULTDATAITEM extends Struct {
  @Uint32()
  external int mask;

  @Int32()
  external int bScopeItem;

  @IntPtr()
  external int itemID;

  @Int32()
  external int nIndex;

  @Int32()
  external int nCol;

  external Pointer<Utf16> str;

  @Int32()
  external int nImage;

  @Uint32()
  external int nState;

  @IntPtr()
  external int lParam;

  @Int32()
  external int iIndent;
}

/// {@category Struct}
class RESULTFINDINFO extends Struct {
  external Pointer<Utf16> psz;

  @Int32()
  external int nStart;

  @Uint32()
  external int dwOptions;
}

/// {@category Struct}
class RESULT_VIEW_TYPE_INFO extends Struct {
  external Pointer<Utf16> pstrPersistableViewDescription;

  @Int32()
  external int eViewType;

  @Uint32()
  external int dwMiscOptions;

  external _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwListOptions;

  external _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous1_e__Struct
      Anonymous1;

  external _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous2_e__Struct
      Anonymous2;
}

/// {@category Struct}
class _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous1_e__Struct
    extends Struct {
  @Uint32()
  external int dwHTMLOptions;

  external Pointer<Utf16> pstrURL;
}

extension RESULT_VIEW_TYPE_INFO__Anonymous_e__Union_Extension
    on RESULT_VIEW_TYPE_INFO {
  int get dwHTMLOptions => this.Anonymous.Anonymous1.dwHTMLOptions;
  set dwHTMLOptions(int value) =>
      this.Anonymous.Anonymous1.dwHTMLOptions = value;

  Pointer<Utf16> get pstrURL => this.Anonymous.Anonymous1.pstrURL;
  set pstrURL(Pointer<Utf16> value) =>
      this.Anonymous.Anonymous1.pstrURL = value;
}

/// {@category Struct}
class _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous2_e__Struct
    extends Struct {
  @Uint32()
  external int dwOCXOptions;

  external Pointer<COMObject> pUnkControl;
}

extension RESULT_VIEW_TYPE_INFO__Anonymous_e__Union_Extension_1
    on RESULT_VIEW_TYPE_INFO {
  int get dwOCXOptions => this.Anonymous.Anonymous2.dwOCXOptions;
  set dwOCXOptions(int value) => this.Anonymous.Anonymous2.dwOCXOptions = value;

  Pointer<COMObject> get pUnkControl => this.Anonymous.Anonymous2.pUnkControl;
  set pUnkControl(Pointer<COMObject> value) =>
      this.Anonymous.Anonymous2.pUnkControl = value;
}

extension RESULT_VIEW_TYPE_INFO_Extension on RESULT_VIEW_TYPE_INFO {
  int get dwListOptions => this.Anonymous.dwListOptions;
  set dwListOptions(int value) => this.Anonymous.dwListOptions = value;

  _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous1_e__Struct
      get Anonymous1 => this.Anonymous.Anonymous1;
  set Anonymous1(
          _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous1_e__Struct
              value) =>
      this.Anonymous.Anonymous1 = value;

  _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous2_e__Struct
      get Anonymous2 => this.Anonymous.Anonymous2;
  set Anonymous2(
          _RESULT_VIEW_TYPE_INFO__Anonymous_e__Union__Anonymous2_e__Struct
              value) =>
      this.Anonymous.Anonymous2 = value;
}

/// {@category Struct}
class SCOPEDATAITEM extends Struct {
  @Uint32()
  external int mask;

  external Pointer<Utf16> displayname;

  @Int32()
  external int nImage;

  @Int32()
  external int nOpenImage;

  @Uint32()
  external int nState;

  @Int32()
  external int cChildren;

  @IntPtr()
  external int lParam;

  @IntPtr()
  external int relativeID;

  @IntPtr()
  external int ID;
}

/// {@category Struct}
class SColumnSetID extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cBytes;

  @Array(1)
  external Array<Uint8> id;
}

/// {@category Struct}
class SMMCDataObjects extends Struct {
  @Uint32()
  external int count;

  @Array(1)
  external Array<Pointer<COMObject>> lpDataObject;
}

/// {@category Struct}
class SMMCObjectTypes extends Struct {
  @Uint32()
  external int count;

  @Array(1)
  external Array<GUID> guid;
}

/// {@category Struct}
class SNodeID extends Struct {
  @Uint32()
  external int cBytes;

  @Array(1)
  external Array<Uint8> id;
}

/// {@category Struct}
class SNodeID2 extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cBytes;

  @Array(1)
  external Array<Uint8> id;
}
