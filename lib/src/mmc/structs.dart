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

class Application extends Struct {}

class AppEventsDHTMLConnector extends Struct {}

class MMC_SNAPIN_PROPERTY extends Struct {
  external Pointer<Utf16> pszPropName;
  external VARIANT varValue;
  @Uint32()
  external int eAction;
}

class MMCVersionInfo extends Struct {}

class ConsolePower extends Struct {}

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

class RESULTFINDINFO extends Struct {
  external Pointer<Utf16> psz;
  @Int32()
  external int nStart;
  @Uint32()
  external int dwOptions;
}

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

class MENUBUTTONDATA extends Struct {
  @Int32()
  external int idCommand;
  @Int32()
  external int x;
  @Int32()
  external int y;
}

class MMC_FILTERDATA extends Struct {
  external Pointer<Utf16> pszText;
  @Int32()
  external int cchTextMax;
  @Int32()
  external int lValue;
}

class MMC_RESTORE_VIEW extends Struct {
  @Uint32()
  external int dwSize;
  @IntPtr()
  external int cookie;
  external Pointer<Utf16> pViewType;
  @Int32()
  external int lViewOptions;
}

class MMC_EXPANDSYNC_STRUCT extends Struct {
  @Int32()
  external int bHandled;
  @Int32()
  external int bExpanding;
  @IntPtr()
  external int hItem;
}

class MMC_VISIBLE_COLUMNS extends Struct {
  @Int32()
  external int nVisibleColumns;
  @Array(1)
  external Array<Int32> rgVisibleCols;
}

class SMMCDataObjects extends Struct {
  @Uint32()
  external int count;
  @Array(1)
  external Array<Pointer> lpDataObject;
}

class SMMCObjectTypes extends Struct {
  @Uint32()
  external int count;
  @Array(1)
  external Array<GUID> guid;
}

class SNodeID extends Struct {
  @Uint32()
  external int cBytes;
  @Array(1)
  external Array<Uint8> id;
}

class SNodeID2 extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cBytes;
  @Array(1)
  external Array<Uint8> id;
}

class SColumnSetID extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int cBytes;
  @Array(1)
  external Array<Uint8> id;
}

class MMC_TASK_DISPLAY_SYMBOL extends Struct {
  external Pointer<Utf16> szFontFamilyName;
  external Pointer<Utf16> szURLtoEOT;
  external Pointer<Utf16> szSymbolString;
}

class MMC_TASK_DISPLAY_BITMAP extends Struct {
  external Pointer<Utf16> szMouseOverBitmap;
  external Pointer<Utf16> szMouseOffBitmap;
}

class MMC_TASK_DISPLAY_OBJECT extends Struct {
  @Uint32()
  external int eDisplayType;
  @Uint32()
  external int Anonymous;
}

class MMC_TASK extends Struct {
  external MMC_TASK_DISPLAY_OBJECT sDisplayObject;
  external Pointer<Utf16> szText;
  external Pointer<Utf16> szHelpString;
  @Uint32()
  external int eActionType;
  @Uint32()
  external int Anonymous;
}

class MMC_LISTPAD_INFO extends Struct {
  external Pointer<Utf16> szTitle;
  external Pointer<Utf16> szButtonText;
  @IntPtr()
  external int nCommandID;
}

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

class MMC_COLUMN_SET_DATA extends Struct {
  @Int32()
  external int cbSize;
  @Int32()
  external int nNumCols;
  external Pointer<MMC_COLUMN_DATA> pColData;
}

class MMC_SORT_DATA extends Struct {
  @Int32()
  external int nColIndex;
  @Uint32()
  external int dwSortOptions;
  @IntPtr()
  external int ulReserved;
}

class MMC_SORT_SET_DATA extends Struct {
  @Int32()
  external int cbSize;
  @Int32()
  external int nNumItems;
  external Pointer<MMC_SORT_DATA> pSortData;
}

class RDITEMHDR extends Struct {
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int cookie;
  @IntPtr()
  external int lpReserved;
}

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

class RESULT_VIEW_TYPE_INFO extends Struct {
  external Pointer<Utf16> pstrPersistableViewDescription;
  @Uint32()
  external int eViewType;
  @Uint32()
  external int dwMiscOptions;
  @Uint32()
  external int Anonymous;
}

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

class MMC_EXT_VIEW_DATA extends Struct {
  external GUID viewID;
  external Pointer<Utf16> pszURL;
  external Pointer<Utf16> pszViewTitle;
  external Pointer<Utf16> pszTooltipText;
  @Int32()
  external int bReplacesDefaultView;
}
