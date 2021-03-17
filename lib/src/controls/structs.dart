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

class HIMAGELIST extends Struct {
  @IntPtr() external int Value;
}

class HPROPSHEETPAGE extends Struct {
  @IntPtr() external int Value;
}

class HSYNTHETICPOINTERDEVICE extends Struct {
  @IntPtr() external int Value;
}

class HTREEITEM extends Struct {
  @IntPtr() external int Value;
}

class NMHDR extends Struct {
  @IntPtr() external int hwndFrom;
  @IntPtr() external int idFrom;
  @Uint32() external int code;
}

class MEASUREITEMSTRUCT extends Struct {
  @Uint32() external int CtlType;
  @Uint32() external int CtlID;
  @Uint32() external int itemID;
  @Uint32() external int itemWidth;
  @Uint32() external int itemHeight;
  @IntPtr() external int itemData;
}

class DRAWITEMSTRUCT extends Struct {
  @Uint32() external int CtlType;
  @Uint32() external int CtlID;
  @Uint32() external int itemID;
  @Uint32() external int itemAction;
  @Uint32() external int itemState;
  @IntPtr() external int hwndItem;
  @IntPtr() external int hDC;
  external RECT rcItem;
  @IntPtr() external int itemData;
}

class DELETEITEMSTRUCT extends Struct {
  @Uint32() external int CtlType;
  @Uint32() external int CtlID;
  @Uint32() external int itemID;
  @IntPtr() external int hwndItem;
  @IntPtr() external int itemData;
}

class COMPAREITEMSTRUCT extends Struct {
  @Uint32() external int CtlType;
  @Uint32() external int CtlID;
  @IntPtr() external int hwndItem;
  @Uint32() external int itemID1;
  @IntPtr() external int itemData1;
  @Uint32() external int itemID2;
  @IntPtr() external int itemData2;
  @Uint32() external int dwLocaleId;
}

class USAGE_PROPERTIES extends Struct {
  @Uint16() external int level;
  @Uint16() external int page;
  @Uint16() external int usage;
  @Int32() external int logicalMinimum;
  @Int32() external int logicalMaximum;
  @Uint16() external int unit;
  @Uint16() external int exponent;
  @Uint8() external int count;
  @Int32() external int physicalMinimum;
  @Int32() external int physicalMaximum;
}

class INPUT_INJECTION_VALUE extends Struct {
  @Uint16() external int page;
  @Uint16() external int usage;
  @Int32() external int value;
  @Uint16() external int index;
}

class TOUCH_HIT_TESTING_PROXIMITY_EVALUATION extends Struct {
  @Uint16() external int score;
  external POINT adjustedPoint;
}

class TOUCH_HIT_TESTING_INPUT extends Struct {
  @Uint32() external int pointerId;
  external POINT point;
  external RECT boundingBox;
  external RECT nonOccludedBoundingBox;
  @Uint32() external int orientation;
}

class SCROLLINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fMask;
  @Int32() external int nMin;
  @Int32() external int nMax;
  @Uint32() external int nPage;
  @Int32() external int nPos;
  @Int32() external int nTrackPos;
}

class SCROLLBARINFO extends Struct {
  @Uint32() external int cbSize;
  external RECT rcScrollBar;
  @Int32() external int dxyLineButton;
  @Int32() external int xyThumbTop;
  @Int32() external int xyThumbBottom;
  @Int32() external int reserved;
  external __uint__ rgstate;
}

class COMBOBOXINFO extends Struct {
  @Uint32() external int cbSize;
  external RECT rcItem;
  external RECT rcButton;
  @Uint32() external int stateButton;
  @IntPtr() external int hwndCombo;
  @IntPtr() external int hwndItem;
  @IntPtr() external int hwndList;
}

class POINTER_DEVICE_INFO extends Struct {
  @Uint32() external int displayOrientation;
  @IntPtr() external int device;
  @Uint32() external int pointerDeviceType;
  @IntPtr() external int monitor;
  @Uint32() external int startingCursorId;
  @Uint16() external int maxActiveContacts;
  external __ushort__ productString;
}

class POINTER_DEVICE_PROPERTY extends Struct {
  @Int32() external int logicalMin;
  @Int32() external int logicalMax;
  @Int32() external int physicalMin;
  @Int32() external int physicalMax;
  @Uint32() external int unit;
  @Uint32() external int unitExponent;
  @Uint16() external int usagePageId;
  @Uint16() external int usageId;
}

class POINTER_DEVICE_CURSOR_INFO extends Struct {
  @Uint32() external int cursorId;
  @Uint32() external int cursor;
}

class INPUT_MESSAGE_SOURCE extends Struct {
  @Uint32() external int deviceType;
  @Uint32() external int originId;
}

class CRGB extends Struct {
  @Uint8() external int bRed;
  @Uint8() external int bGreen;
  @Uint8() external int bBlue;
  @Uint8() external int bExtra;
}

class _PSP extends Struct {
}

class PSHNOTIFY extends Struct {
  external NMHDR hdr;
  @IntPtr() external int lParam;
}

class INITCOMMONCONTROLSEX extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwICC;
}

class COLORSCHEME extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int clrBtnHighlight;
  @Uint32() external int clrBtnShadow;
}

class NMTOOLTIPSCREATED extends Struct {
  external NMHDR hdr;
  @IntPtr() external int hwndToolTips;
}

class NMMOUSE extends Struct {
  external NMHDR hdr;
  @IntPtr() external int dwItemSpec;
  @IntPtr() external int dwItemData;
  external POINT pt;
  @IntPtr() external int dwHitInfo;
}

class NMOBJECTNOTIFY extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  external Pointer<GUID> piid;
  external Pointer pObject;
  @Int32() external int hResult;
  @Uint32() external int dwFlags;
}

class NMKEY extends Struct {
  external NMHDR hdr;
  @Uint32() external int nVKey;
  @Uint32() external int uFlags;
}

class NMCHAR extends Struct {
  external NMHDR hdr;
  @Uint32() external int ch;
  @Uint32() external int dwItemPrev;
  @Uint32() external int dwItemNext;
}

class NMCUSTOMTEXT extends Struct {
  external NMHDR hdr;
  @IntPtr() external int hDC;
  external Pointer<Utf16> lpString;
  @Int32() external int nCount;
  external Pointer<RECT> lpRect;
  @Uint32() external int uFormat;
  @Int32() external int fLink;
}

class NMCUSTOMDRAW extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwDrawStage;
  @IntPtr() external int hdc;
  external RECT rc;
  @IntPtr() external int dwItemSpec;
  @Uint32() external int uItemState;
  @IntPtr() external int lItemlParam;
}

class NMTTCUSTOMDRAW extends Struct {
  external NMCUSTOMDRAW nmcd;
  @Uint32() external int uDrawFlags;
}

class NMCUSTOMSPLITRECTINFO extends Struct {
  external NMHDR hdr;
  external RECT rcClient;
  external RECT rcButton;
  external RECT rcSplit;
}

class _IMAGELIST extends Struct {
}

class IMAGELISTDRAWPARAMS extends Struct {
  @Uint32() external int cbSize;
  external HIMAGELIST himl;
  @Int32() external int i;
  @IntPtr() external int hdcDst;
  @Int32() external int x;
  @Int32() external int y;
  @Int32() external int cx;
  @Int32() external int cy;
  @Int32() external int xBitmap;
  @Int32() external int yBitmap;
  @Uint32() external int rgbBk;
  @Uint32() external int rgbFg;
  @Uint32() external int fStyle;
  @Uint32() external int dwRop;
  @Uint32() external int fState;
  @Uint32() external int Frame;
  @Uint32() external int crEffect;
}

class IMAGEINFO extends Struct {
  @IntPtr() external int hbmImage;
  @IntPtr() external int hbmMask;
  @Int32() external int Unused1;
  @Int32() external int Unused2;
  external RECT rcImage;
}

class HD_TEXTFILTERA extends Struct {
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
}

class HD_TEXTFILTERW extends Struct {
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
}

class HDITEMA extends Struct {
  @Uint32() external int mask;
  @Int32() external int cxy;
  external Pointer<Utf8> pszText;
  @IntPtr() external int hbm;
  @Int32() external int cchTextMax;
  @Int32() external int fmt;
  @IntPtr() external int lParam;
  @Int32() external int iImage;
  @Int32() external int iOrder;
  @Uint32() external int type;
  external Pointer pvFilter;
  @Uint32() external int state;
}

class HDITEMW extends Struct {
  @Uint32() external int mask;
  @Int32() external int cxy;
  external Pointer<Utf16> pszText;
  @IntPtr() external int hbm;
  @Int32() external int cchTextMax;
  @Int32() external int fmt;
  @IntPtr() external int lParam;
  @Int32() external int iImage;
  @Int32() external int iOrder;
  @Uint32() external int type;
  external Pointer pvFilter;
  @Uint32() external int state;
}

class HDLAYOUT extends Struct {
  external Pointer<RECT> prc;
  external Pointer<WINDOWPOS> pwpos;
}

class HDHITTESTINFO extends Struct {
  external POINT pt;
  @Uint32() external int flags;
  @Int32() external int iItem;
}

class NMHEADERA extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  @Uint32() external int iButton;
  external Pointer<HDITEMA> pitem;
}

class NMHEADERW extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  @Uint32() external int iButton;
  external Pointer<HDITEM> pitem;
}

class NMHDDISPINFOW extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  @Uint32() external int mask;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @IntPtr() external int lParam;
}

class NMHDDISPINFOA extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  @Uint32() external int mask;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @IntPtr() external int lParam;
}

class NMHDFILTERBTNCLICK extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  external RECT rc;
}

class TBBUTTON extends Struct {
  @Int32() external int iBitmap;
  @Int32() external int idCommand;
  @Uint8() external int fsState;
  @Uint8() external int fsStyle;
  external __ubyte__ bReserved;
  @IntPtr() external int dwData;
  @IntPtr() external int iString;
}

class COLORMAP extends Struct {
  @Uint32() external int from;
  @Uint32() external int to;
}

class NMTBCUSTOMDRAW extends Struct {
  external NMCUSTOMDRAW nmcd;
  @IntPtr() external int hbrMonoDither;
  @IntPtr() external int hbrLines;
  @IntPtr() external int hpenLines;
  @Uint32() external int clrText;
  @Uint32() external int clrMark;
  @Uint32() external int clrTextHighlight;
  @Uint32() external int clrBtnFace;
  @Uint32() external int clrBtnHighlight;
  @Uint32() external int clrHighlightHotTrack;
  external RECT rcText;
  @Int32() external int nStringBkMode;
  @Int32() external int nHLStringBkMode;
  @Int32() external int iListGap;
}

class TBADDBITMAP extends Struct {
  @Uint32() external int hInst;
  @IntPtr() external int nID;
}

class TBSAVEPARAMSA extends Struct {
  @IntPtr() external int hkr;
  external Pointer<Utf8> pszSubKey;
  external Pointer<Utf8> pszValueName;
}

class TBSAVEPARAMSW extends Struct {
  @IntPtr() external int hkr;
  external Pointer<Utf16> pszSubKey;
  external Pointer<Utf16> pszValueName;
}

class TBINSERTMARK extends Struct {
  @Int32() external int iButton;
  @Uint32() external int dwFlags;
}

class TBREPLACEBITMAP extends Struct {
  @IntPtr() external int hInstOld;
  @IntPtr() external int nIDOld;
  @IntPtr() external int hInstNew;
  @IntPtr() external int nIDNew;
  @Int32() external int nButtons;
}

class TBBUTTONINFOA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMask;
  @Int32() external int idCommand;
  @Int32() external int iImage;
  @Uint8() external int fsState;
  @Uint8() external int fsStyle;
  @Uint16() external int cx;
  @IntPtr() external int lParam;
  external Pointer<Utf8> pszText;
  @Int32() external int cchText;
}

class TBBUTTONINFOW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMask;
  @Int32() external int idCommand;
  @Int32() external int iImage;
  @Uint8() external int fsState;
  @Uint8() external int fsStyle;
  @Uint16() external int cx;
  @IntPtr() external int lParam;
  external Pointer<Utf16> pszText;
  @Int32() external int cchText;
}

class TBMETRICS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMask;
  @Int32() external int cxPad;
  @Int32() external int cyPad;
  @Int32() external int cxBarPad;
  @Int32() external int cyBarPad;
  @Int32() external int cxButtonSpacing;
  @Int32() external int cyButtonSpacing;
}

class NMTBHOTITEM extends Struct {
  external NMHDR hdr;
  @Int32() external int idOld;
  @Int32() external int idNew;
  @Uint32() external int dwFlags;
}

class NMTBSAVE extends Struct {
  external NMHDR hdr;
  external Pointer<Uint32> pData;
  external Pointer<Uint32> pCurrent;
  @Uint32() external int cbData;
  @Int32() external int iItem;
  @Int32() external int cButtons;
  external TBBUTTON tbButton;
}

class NMTBRESTORE extends Struct {
  external NMHDR hdr;
  external Pointer<Uint32> pData;
  external Pointer<Uint32> pCurrent;
  @Uint32() external int cbData;
  @Int32() external int iItem;
  @Int32() external int cButtons;
  @Int32() external int cbBytesPerRecord;
  external TBBUTTON tbButton;
}

class NMTBGETINFOTIPA extends Struct {
  external NMHDR hdr;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iItem;
  @IntPtr() external int lParam;
}

class NMTBGETINFOTIPW extends Struct {
  external NMHDR hdr;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iItem;
  @IntPtr() external int lParam;
}

class NMTBDISPINFOA extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwMask;
  @Int32() external int idCommand;
  @IntPtr() external int lParam;
  @Int32() external int iImage;
  external Pointer<Utf8> pszText;
  @Int32() external int cchText;
}

class NMTBDISPINFOW extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwMask;
  @Int32() external int idCommand;
  @IntPtr() external int lParam;
  @Int32() external int iImage;
  external Pointer<Utf16> pszText;
  @Int32() external int cchText;
}

class NMTOOLBARA extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  external TBBUTTON tbButton;
  @Int32() external int cchText;
  external Pointer<Utf8> pszText;
  external RECT rcButton;
}

class NMTOOLBARW extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  external TBBUTTON tbButton;
  @Int32() external int cchText;
  external Pointer<Utf16> pszText;
  external RECT rcButton;
}

class REBARINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fMask;
  external HIMAGELIST himl;
}

class REBARBANDINFOA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fMask;
  @Uint32() external int fStyle;
  @Uint32() external int clrFore;
  @Uint32() external int clrBack;
  external Pointer<Utf8> lpText;
  @Uint32() external int cch;
  @Int32() external int iImage;
  @IntPtr() external int hwndChild;
  @Uint32() external int cxMinChild;
  @Uint32() external int cyMinChild;
  @Uint32() external int cx;
  @IntPtr() external int hbmBack;
  @Uint32() external int wID;
  @Uint32() external int cyChild;
  @Uint32() external int cyMaxChild;
  @Uint32() external int cyIntegral;
  @Uint32() external int cxIdeal;
  @IntPtr() external int lParam;
  @Uint32() external int cxHeader;
  external RECT rcChevronLocation;
  @Uint32() external int uChevronState;
}

class REBARBANDINFOW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int fMask;
  @Uint32() external int fStyle;
  @Uint32() external int clrFore;
  @Uint32() external int clrBack;
  external Pointer<Utf16> lpText;
  @Uint32() external int cch;
  @Int32() external int iImage;
  @IntPtr() external int hwndChild;
  @Uint32() external int cxMinChild;
  @Uint32() external int cyMinChild;
  @Uint32() external int cx;
  @IntPtr() external int hbmBack;
  @Uint32() external int wID;
  @Uint32() external int cyChild;
  @Uint32() external int cyMaxChild;
  @Uint32() external int cyIntegral;
  @Uint32() external int cxIdeal;
  @IntPtr() external int lParam;
  @Uint32() external int cxHeader;
  external RECT rcChevronLocation;
  @Uint32() external int uChevronState;
}

class NMREBARCHILDSIZE extends Struct {
  external NMHDR hdr;
  @Uint32() external int uBand;
  @Uint32() external int wID;
  external RECT rcChild;
  external RECT rcBand;
}

class NMREBAR extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwMask;
  @Uint32() external int uBand;
  @Uint32() external int fStyle;
  @Uint32() external int wID;
  @IntPtr() external int lParam;
}

class NMRBAUTOSIZE extends Struct {
  external NMHDR hdr;
  @Int32() external int fChanged;
  external RECT rcTarget;
  external RECT rcActual;
}

class NMREBARCHEVRON extends Struct {
  external NMHDR hdr;
  @Uint32() external int uBand;
  @Uint32() external int wID;
  @IntPtr() external int lParam;
  external RECT rc;
  @IntPtr() external int lParamNM;
}

class NMREBARSPLITTER extends Struct {
  external NMHDR hdr;
  external RECT rcSizing;
}

class NMREBARAUTOBREAK extends Struct {
  external NMHDR hdr;
  @Uint32() external int uBand;
  @Uint32() external int wID;
  @IntPtr() external int lParam;
  @Uint32() external int uMsg;
  @Uint32() external int fStyleCurrent;
  @Int32() external int fAutoBreak;
}

class RBHITTESTINFO extends Struct {
  external POINT pt;
  @Uint32() external int flags;
  @Int32() external int iBand;
}

class TTTOOLINFOA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int uFlags;
  @IntPtr() external int hwnd;
  @IntPtr() external int uId;
  external RECT rect;
  @IntPtr() external int hinst;
  external Pointer<Utf8> lpszText;
  @IntPtr() external int lParam;
  external Pointer lpReserved;
}

class TTTOOLINFOW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int uFlags;
  @IntPtr() external int hwnd;
  @IntPtr() external int uId;
  external RECT rect;
  @IntPtr() external int hinst;
  external Pointer<Utf16> lpszText;
  @IntPtr() external int lParam;
  external Pointer lpReserved;
}

class TTGETTITLE extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int uTitleBitmap;
  @Uint32() external int cch;
  external Pointer<Utf16> pszTitle;
}

class TTHITTESTINFOA extends Struct {
  @IntPtr() external int hwnd;
  external POINT pt;
  external TTTOOLINFOA ti;
}

class TTHITTESTINFOW extends Struct {
  @IntPtr() external int hwnd;
  external POINT pt;
  external TTTOOLINFOW ti;
}

class NMTTDISPINFOA extends Struct {
  external NMHDR hdr;
  external Pointer<Utf8> lpszText;
  external __byte__ szText;
  @IntPtr() external int hinst;
  @Uint32() external int uFlags;
  @IntPtr() external int lParam;
}

class NMTTDISPINFOW extends Struct {
  external NMHDR hdr;
  external Pointer<Utf16> lpszText;
  external __ushort__ szText;
  @IntPtr() external int hinst;
  @Uint32() external int uFlags;
  @IntPtr() external int lParam;
}

class NMTRBTHUMBPOSCHANGING extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwPos;
  @Int32() external int nReason;
}

class DRAGLISTINFO extends Struct {
  @Uint32() external int uNotification;
  @IntPtr() external int hWnd;
  external POINT ptCursor;
}

class UDACCEL extends Struct {
  @Uint32() external int nSec;
  @Uint32() external int nInc;
}

class NMUPDOWN extends Struct {
  external NMHDR hdr;
  @Int32() external int iPos;
  @Int32() external int iDelta;
}

class PBRANGE extends Struct {
  @Int32() external int iLow;
  @Int32() external int iHigh;
}

class LITEM extends Struct {
  @Uint32() external int mask;
  @Int32() external int iLink;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external __ushort__ szID;
  external __ushort__ szUrl;
}

class LHITTESTINFO extends Struct {
  external POINT pt;
  external LITEM item;
}

class NMLINK extends Struct {
  external NMHDR hdr;
  external LITEM item;
}

class LVITEMA extends Struct {
  @Uint32() external int mask;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @IntPtr() external int lParam;
  @Int32() external int iIndent;
  @Uint32() external int iGroupId;
  @Uint32() external int cColumns;
  external Pointer<Uint32> puColumns;
  external Pointer<Int32> piColFmt;
  @Int32() external int iGroup;
}

class LVITEMW extends Struct {
  @Uint32() external int mask;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @IntPtr() external int lParam;
  @Int32() external int iIndent;
  @Uint32() external int iGroupId;
  @Uint32() external int cColumns;
  external Pointer<Uint32> puColumns;
  external Pointer<Int32> piColFmt;
  @Int32() external int iGroup;
}

class LVFINDINFOA extends Struct {
  @Uint32() external int flags;
  external Pointer<Utf8> psz;
  @IntPtr() external int lParam;
  external POINT pt;
  @Uint32() external int vkDirection;
}

class LVFINDINFOW extends Struct {
  @Uint32() external int flags;
  external Pointer<Utf16> psz;
  @IntPtr() external int lParam;
  external POINT pt;
  @Uint32() external int vkDirection;
}

class LVHITTESTINFO extends Struct {
  external POINT pt;
  @Uint32() external int flags;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @Int32() external int iGroup;
}

class LVCOLUMNA extends Struct {
  @Uint32() external int mask;
  @Uint32() external int fmt;
  @Int32() external int cx;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iSubItem;
  @Int32() external int iImage;
  @Int32() external int iOrder;
  @Int32() external int cxMin;
  @Int32() external int cxDefault;
  @Int32() external int cxIdeal;
}

class LVCOLUMNW extends Struct {
  @Uint32() external int mask;
  @Uint32() external int fmt;
  @Int32() external int cx;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iSubItem;
  @Int32() external int iImage;
  @Int32() external int iOrder;
  @Int32() external int cxMin;
  @Int32() external int cxDefault;
  @Int32() external int cxIdeal;
}

class LVBKIMAGEA extends Struct {
  @Uint32() external int ulFlags;
  @IntPtr() external int hbm;
  external Pointer<Utf8> pszImage;
  @Uint32() external int cchImageMax;
  @Int32() external int xOffsetPercent;
  @Int32() external int yOffsetPercent;
}

class LVBKIMAGEW extends Struct {
  @Uint32() external int ulFlags;
  @IntPtr() external int hbm;
  external Pointer<Utf16> pszImage;
  @Uint32() external int cchImageMax;
  @Int32() external int xOffsetPercent;
  @Int32() external int yOffsetPercent;
}

class LVGROUP extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int mask;
  external Pointer<Utf16> pszHeader;
  @Int32() external int cchHeader;
  external Pointer<Utf16> pszFooter;
  @Int32() external int cchFooter;
  @Int32() external int iGroupId;
  @Uint32() external int stateMask;
  @Uint32() external int state;
  @Uint32() external int uAlign;
  external Pointer<Utf16> pszSubtitle;
  @Uint32() external int cchSubtitle;
  external Pointer<Utf16> pszTask;
  @Uint32() external int cchTask;
  external Pointer<Utf16> pszDescriptionTop;
  @Uint32() external int cchDescriptionTop;
  external Pointer<Utf16> pszDescriptionBottom;
  @Uint32() external int cchDescriptionBottom;
  @Int32() external int iTitleImage;
  @Int32() external int iExtendedImage;
  @Int32() external int iFirstItem;
  @Uint32() external int cItems;
  external Pointer<Utf16> pszSubsetTitle;
  @Uint32() external int cchSubsetTitle;
}

class LVGROUPMETRICS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int mask;
  @Uint32() external int Left;
  @Uint32() external int Top;
  @Uint32() external int Right;
  @Uint32() external int Bottom;
  @Uint32() external int crLeft;
  @Uint32() external int crTop;
  @Uint32() external int crRight;
  @Uint32() external int crBottom;
  @Uint32() external int crHeader;
  @Uint32() external int crFooter;
}

class LVINSERTGROUPSORTED extends Struct {
  external PFNLVGROUPCOMPARE pfnGroupCompare;
  external Pointer pvData;
  external LVGROUP lvGroup;
}

class LVTILEVIEWINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMask;
  @Uint32() external int dwFlags;
  external SIZE sizeTile;
  @Int32() external int cLines;
  external RECT rcLabelMargin;
}

class LVTILEINFO extends Struct {
  @Uint32() external int cbSize;
  @Int32() external int iItem;
  @Uint32() external int cColumns;
  external Pointer<Uint32> puColumns;
  external Pointer<Int32> piColFmt;
}

class LVINSERTMARK extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Int32() external int iItem;
  @Uint32() external int dwReserved;
}

class LVSETINFOTIP extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pszText;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
}

class LVFOOTERINFO extends Struct {
  @Uint32() external int mask;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Uint32() external int cItems;
}

class LVFOOTERITEM extends Struct {
  @Uint32() external int mask;
  @Int32() external int iItem;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Uint32() external int state;
  @Uint32() external int stateMask;
}

class LVITEMINDEX extends Struct {
  @Int32() external int iItem;
  @Int32() external int iGroup;
}

class NMLISTVIEW extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @Uint32() external int uNewState;
  @Uint32() external int uOldState;
  @Uint32() external int uChanged;
  external POINT ptAction;
  @IntPtr() external int lParam;
}

class NMITEMACTIVATE extends Struct {
  external NMHDR hdr;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @Uint32() external int uNewState;
  @Uint32() external int uOldState;
  @Uint32() external int uChanged;
  external POINT ptAction;
  @IntPtr() external int lParam;
  @Uint32() external int uKeyFlags;
}

class NMLVCUSTOMDRAW extends Struct {
  external NMCUSTOMDRAW nmcd;
  @Uint32() external int clrText;
  @Uint32() external int clrTextBk;
  @Int32() external int iSubItem;
  @Uint32() external int dwItemType;
  @Uint32() external int clrFace;
  @Int32() external int iIconEffect;
  @Int32() external int iIconPhase;
  @Int32() external int iPartId;
  @Int32() external int iStateId;
  external RECT rcText;
  @Uint32() external int uAlign;
}

class NMLVCACHEHINT extends Struct {
  external NMHDR hdr;
  @Int32() external int iFrom;
  @Int32() external int iTo;
}

class NMLVFINDITEMA extends Struct {
  external NMHDR hdr;
  @Int32() external int iStart;
  external LVFINDINFOA lvfi;
}

class NMLVFINDITEMW extends Struct {
  external NMHDR hdr;
  @Int32() external int iStart;
  external LVFINDINFOW lvfi;
}

class NMLVODSTATECHANGE extends Struct {
  external NMHDR hdr;
  @Int32() external int iFrom;
  @Int32() external int iTo;
  @Uint32() external int uNewState;
  @Uint32() external int uOldState;
}

class NMLVDISPINFOA extends Struct {
  external NMHDR hdr;
  external LVITEMA item;
}

class NMLVDISPINFOW extends Struct {
  external NMHDR hdr;
  external LVITEMW item;
}

class NMLVKEYDOWN extends Struct {
  external NMHDR hdr;
  @Uint16() external int wVKey;
  @Uint32() external int flags;
}

class NMLVLINK extends Struct {
  external NMHDR hdr;
  external LITEM link;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
}

class NMLVGETINFOTIPA extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @IntPtr() external int lParam;
}

class NMLVGETINFOTIPW extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iItem;
  @Int32() external int iSubItem;
  @IntPtr() external int lParam;
}

class NMLVSCROLL extends Struct {
  external NMHDR hdr;
  @Int32() external int dx;
  @Int32() external int dy;
}

class NMLVEMPTYMARKUP extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwFlags;
  external __ushort__ szMarkup;
}

class _TREEITEM extends Struct {
}

class NMTVSTATEIMAGECHANGING extends Struct {
  external NMHDR hdr;
  external Pointer<_TREEITEM> hti;
  @Int32() external int iOldStateImageIndex;
  @Int32() external int iNewStateImageIndex;
}

class TVITEMA extends Struct {
  @Uint32() external int mask;
  external Pointer<_TREEITEM> hItem;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @Int32() external int iSelectedImage;
  @Uint32() external int cChildren;
  @IntPtr() external int lParam;
}

class TVITEMW extends Struct {
  @Uint32() external int mask;
  external Pointer<_TREEITEM> hItem;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @Int32() external int iSelectedImage;
  @Uint32() external int cChildren;
  @IntPtr() external int lParam;
}

class TVITEMEXA extends Struct {
  @Uint32() external int mask;
  external Pointer<_TREEITEM> hItem;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @Int32() external int iSelectedImage;
  @Uint32() external int cChildren;
  @IntPtr() external int lParam;
  @Int32() external int iIntegral;
  @Uint32() external int uStateEx;
  @IntPtr() external int hwnd;
  @Int32() external int iExpandedImage;
  @Int32() external int iReserved;
}

class TVITEMEXW extends Struct {
  @Uint32() external int mask;
  external Pointer<_TREEITEM> hItem;
  @Uint32() external int state;
  @Uint32() external int stateMask;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @Int32() external int iSelectedImage;
  @Uint32() external int cChildren;
  @IntPtr() external int lParam;
  @Int32() external int iIntegral;
  @Uint32() external int uStateEx;
  @IntPtr() external int hwnd;
  @Int32() external int iExpandedImage;
  @Int32() external int iReserved;
}

class TVHITTESTINFO extends Struct {
  external POINT pt;
  @Uint32() external int flags;
  external Pointer<_TREEITEM> hItem;
}

class TVGETITEMPARTRECTINFO extends Struct {
  external Pointer<_TREEITEM> hti;
  external Pointer<RECT> prc;
  @Uint32() external int partID;
}

class TVSORTCB extends Struct {
  external Pointer<_TREEITEM> hParent;
  external PFNTVCOMPARE lpfnCompare;
  @IntPtr() external int lParam;
}

class NMTREEVIEWA extends Struct {
  external NMHDR hdr;
  @Uint32() external int action;
  external TVITEMA itemOld;
  external TVITEMA itemNew;
  external POINT ptDrag;
}

class NMTREEVIEWW extends Struct {
  external NMHDR hdr;
  @Uint32() external int action;
  external TVITEMW itemOld;
  external TVITEMW itemNew;
  external POINT ptDrag;
}

class NMTVDISPINFOA extends Struct {
  external NMHDR hdr;
  @Uint32() external int item;
}

class NMTVDISPINFOW extends Struct {
  external NMHDR hdr;
  @Uint32() external int item;
}

class NMTVDISPINFOEXA extends Struct {
  external NMHDR hdr;
  external TVITEMEXA item;
}

class NMTVDISPINFOEXW extends Struct {
  external NMHDR hdr;
  external TVITEMEXW item;
}

class NMTVKEYDOWN extends Struct {
  external NMHDR hdr;
  @Uint16() external int wVKey;
  @Uint32() external int flags;
}

class NMTVCUSTOMDRAW extends Struct {
  external NMCUSTOMDRAW nmcd;
  @Uint32() external int clrText;
  @Uint32() external int clrTextBk;
  @Int32() external int iLevel;
}

class NMTVGETINFOTIPA extends Struct {
  external NMHDR hdr;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  external Pointer<_TREEITEM> hItem;
  @IntPtr() external int lParam;
}

class NMTVGETINFOTIPW extends Struct {
  external NMHDR hdr;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  external Pointer<_TREEITEM> hItem;
  @IntPtr() external int lParam;
}

class NMTVITEMCHANGE extends Struct {
  external NMHDR hdr;
  @Uint32() external int uChanged;
  external Pointer<_TREEITEM> hItem;
  @Uint32() external int uStateNew;
  @Uint32() external int uStateOld;
  @IntPtr() external int lParam;
}

class NMTVASYNCDRAW extends Struct {
  external NMHDR hdr;
  external Pointer<IMAGELISTDRAWPARAMS> pimldp;
  @Int32() external int hr;
  external Pointer<_TREEITEM> hItem;
  @IntPtr() external int lParam;
  @Uint32() external int dwRetFlags;
  @Int32() external int iRetImageIndex;
}

class COMBOBOXEXITEMA extends Struct {
  @Uint32() external int mask;
  @IntPtr() external int iItem;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @Int32() external int iSelectedImage;
  @Int32() external int iOverlay;
  @Int32() external int iIndent;
  @IntPtr() external int lParam;
}

class COMBOBOXEXITEMW extends Struct {
  @Uint32() external int mask;
  @IntPtr() external int iItem;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @Int32() external int iSelectedImage;
  @Int32() external int iOverlay;
  @Int32() external int iIndent;
  @IntPtr() external int lParam;
}

class NMCOMBOBOXEXA extends Struct {
  external NMHDR hdr;
  external COMBOBOXEXITEMA ceItem;
}

class NMCOMBOBOXEXW extends Struct {
  external NMHDR hdr;
  external COMBOBOXEXITEMW ceItem;
}

class NMCBEDRAGBEGINW extends Struct {
  external NMHDR hdr;
  @Int32() external int iItemid;
  external __ushort__ szText;
}

class NMCBEDRAGBEGINA extends Struct {
  external NMHDR hdr;
  @Int32() external int iItemid;
  external __byte__ szText;
}

class NMCBEENDEDITW extends Struct {
  external NMHDR hdr;
  @Int32() external int fChanged;
  @Int32() external int iNewSelection;
  external __ushort__ szText;
  @Int32() external int iWhy;
}

class NMCBEENDEDITA extends Struct {
  external NMHDR hdr;
  @Int32() external int fChanged;
  @Int32() external int iNewSelection;
  external __byte__ szText;
  @Int32() external int iWhy;
}

class TCITEMHEADERA extends Struct {
  @Uint32() external int mask;
  @Uint32() external int lpReserved1;
  @Uint32() external int lpReserved2;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
}

class TCITEMHEADERW extends Struct {
  @Uint32() external int mask;
  @Uint32() external int lpReserved1;
  @Uint32() external int lpReserved2;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
}

class TCITEMA extends Struct {
  @Uint32() external int mask;
  @Uint32() external int dwState;
  @Uint32() external int dwStateMask;
  external Pointer<Utf8> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @IntPtr() external int lParam;
}

class TCITEMW extends Struct {
  @Uint32() external int mask;
  @Uint32() external int dwState;
  @Uint32() external int dwStateMask;
  external Pointer<Utf16> pszText;
  @Int32() external int cchTextMax;
  @Int32() external int iImage;
  @IntPtr() external int lParam;
}

class TCHITTESTINFO extends Struct {
  external POINT pt;
  @Uint32() external int flags;
}

class NMTCKEYDOWN extends Struct {
  external NMHDR hdr;
  @Uint16() external int wVKey;
  @Uint32() external int flags;
}

class MCHITTESTINFO extends Struct {
  @Uint32() external int cbSize;
  external POINT pt;
  @Uint32() external int uHit;
  external SYSTEMTIME st;
  external RECT rc;
  @Int32() external int iOffset;
  @Int32() external int iRow;
  @Int32() external int iCol;
}

class MCGRIDINFO extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwPart;
  @Uint32() external int dwFlags;
  @Int32() external int iCalendar;
  @Int32() external int iRow;
  @Int32() external int iCol;
  @Int32() external int bSelected;
  external SYSTEMTIME stStart;
  external SYSTEMTIME stEnd;
  external RECT rc;
  external Pointer<Utf16> pszName;
  @IntPtr() external int cchName;
}

class NMSELCHANGE extends Struct {
  external NMHDR nmhdr;
  external SYSTEMTIME stSelStart;
  external SYSTEMTIME stSelEnd;
}

class NMDAYSTATE extends Struct {
  external NMHDR nmhdr;
  external SYSTEMTIME stStart;
  @Int32() external int cDayState;
  external Pointer<Uint32> prgDayState;
}

class NMVIEWCHANGE extends Struct {
  external NMHDR nmhdr;
  @Uint32() external int dwOldView;
  @Uint32() external int dwNewView;
}

class DATETIMEPICKERINFO extends Struct {
  @Uint32() external int cbSize;
  external RECT rcCheck;
  @Uint32() external int stateCheck;
  external RECT rcButton;
  @Uint32() external int stateButton;
  @IntPtr() external int hwndEdit;
  @IntPtr() external int hwndUD;
  @IntPtr() external int hwndDropDown;
}

class NMDATETIMECHANGE extends Struct {
  external NMHDR nmhdr;
  @Uint32() external int dwFlags;
  external SYSTEMTIME st;
}

class NMDATETIMESTRINGA extends Struct {
  external NMHDR nmhdr;
  external Pointer<Utf8> pszUserString;
  external SYSTEMTIME st;
  @Uint32() external int dwFlags;
}

class NMDATETIMESTRINGW extends Struct {
  external NMHDR nmhdr;
  external Pointer<Utf16> pszUserString;
  external SYSTEMTIME st;
  @Uint32() external int dwFlags;
}

class NMDATETIMEWMKEYDOWNA extends Struct {
  external NMHDR nmhdr;
  @Int32() external int nVirtKey;
  external Pointer<Utf8> pszFormat;
  external SYSTEMTIME st;
}

class NMDATETIMEWMKEYDOWNW extends Struct {
  external NMHDR nmhdr;
  @Int32() external int nVirtKey;
  external Pointer<Utf16> pszFormat;
  external SYSTEMTIME st;
}

class NMDATETIMEFORMATA extends Struct {
  external NMHDR nmhdr;
  external Pointer<Utf8> pszFormat;
  external SYSTEMTIME st;
  external Pointer<Utf8> pszDisplay;
  external __byte__ szDisplay;
}

class NMDATETIMEFORMATW extends Struct {
  external NMHDR nmhdr;
  external Pointer<Utf16> pszFormat;
  external SYSTEMTIME st;
  external Pointer<Utf16> pszDisplay;
  external __ushort__ szDisplay;
}

class NMDATETIMEFORMATQUERYA extends Struct {
  external NMHDR nmhdr;
  external Pointer<Utf8> pszFormat;
  external SIZE szMax;
}

class NMDATETIMEFORMATQUERYW extends Struct {
  external NMHDR nmhdr;
  external Pointer<Utf16> pszFormat;
  external SIZE szMax;
}

class NMIPADDRESS extends Struct {
  external NMHDR hdr;
  @Int32() external int iField;
  @Int32() external int iValue;
}

class NMPGSCROLL extends Struct {
  external NMHDR hdr;
  @Uint32() external int fwKeys;
  external RECT rcParent;
  @Uint32() external int iDir;
  @Int32() external int iXpos;
  @Int32() external int iYpos;
  @Int32() external int iScroll;
}

class NMPGCALCSIZE extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwFlag;
  @Int32() external int iWidth;
  @Int32() external int iHeight;
}

class NMPGHOTITEM extends Struct {
  external NMHDR hdr;
  @Int32() external int idOld;
  @Int32() external int idNew;
  @Uint32() external int dwFlags;
}

class BUTTON_IMAGELIST extends Struct {
  external HIMAGELIST himl;
  external RECT margin;
  @Uint32() external int uAlign;
}

class NMBCHOTITEM extends Struct {
  external NMHDR hdr;
  @Uint32() external int dwFlags;
}

class BUTTON_SPLITINFO extends Struct {
  @Uint32() external int mask;
  external HIMAGELIST himlGlyph;
  @Uint32() external int uSplitStyle;
  external SIZE size;
}

class NMBCDROPDOWN extends Struct {
  external NMHDR hdr;
  external RECT rcButton;
}

class EDITBALLOONTIP extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> pszTitle;
  external Pointer<Utf16> pszText;
  @Uint32() external int ttiIcon;
}

class NMSEARCHWEB extends Struct {
  external NMHDR hdr;
  @Uint32() external int entrypoint;
  @Int32() external int hasQueryText;
  @Int32() external int invokeSucceeded;
}

class TASKDIALOG_BUTTON extends Struct {
  @Int32() external int nButtonID;
  external Pointer<Utf16> pszButtonText;
}

class _DSA extends Struct {
}

class _DPA extends Struct {
}

class DPASTREAMINFO extends Struct {
  @Int32() external int iPos;
  external Pointer pvItem;
}

class ImageList extends Struct {
}

class IMAGELISTSTATS extends Struct {
  @Uint32() external int cbSize;
  @Int32() external int cAlloc;
  @Int32() external int cUsed;
  @Int32() external int cStandby;
}

class IMECOMPTEXT extends Struct {
  @Int32() external int cb;
  @Uint32() external int flags;
}

class TABLEROWPARMS extends Struct {
  @Uint8() external int cbRow;
  @Uint8() external int cbCell;
  @Uint8() external int cCell;
  @Uint8() external int cRow;
  @Int32() external int dxCellMargin;
  @Int32() external int dxIndent;
  @Int32() external int dyHeight;
  @Uint32() external int _bitfield;
  @Int32() external int cpStartRow;
  @Uint8() external int bTableLevel;
  @Uint8() external int iCell;
}

class TABLECELLPARMS extends Struct {
  @Int32() external int dxWidth;
  @Uint16() external int _bitfield;
  @Uint16() external int wShading;
  @Int16() external int dxBrdrLeft;
  @Int16() external int dyBrdrTop;
  @Int16() external int dxBrdrRight;
  @Int16() external int dyBrdrBottom;
  @Uint32() external int crBrdrLeft;
  @Uint32() external int crBrdrTop;
  @Uint32() external int crBrdrRight;
  @Uint32() external int crBrdrBottom;
  @Uint32() external int crBackPat;
  @Uint32() external int crForePat;
}

class RICHEDIT_IMAGE_PARAMETERS extends Struct {
  @Int32() external int xWidth;
  @Int32() external int yHeight;
  @Int32() external int Ascent;
  @Uint32() external int Type;
  external Pointer<Utf16> pwszAlternateText;
  external Pointer pIStream;
}

class ENDCOMPOSITIONNOTIFY extends Struct {
  external NMHDR nmhdr;
  @Uint32() external int dwCode;
}

class CHARFORMATA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMask;
  @Uint32() external int dwEffects;
  @Int32() external int yHeight;
  @Int32() external int yOffset;
  @Uint32() external int crTextColor;
  @Uint8() external int bCharSet;
  @Uint8() external int bPitchAndFamily;
  external __byte__ szFaceName;
}

class CHARFORMATW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwMask;
  @Uint32() external int dwEffects;
  @Int32() external int yHeight;
  @Int32() external int yOffset;
  @Uint32() external int crTextColor;
  @Uint8() external int bCharSet;
  @Uint8() external int bPitchAndFamily;
  external __ushort__ szFaceName;
}

class CHARRANGE extends Struct {
  @Int32() external int cpMin;
  @Int32() external int cpMax;
}

class TEXTRANGEA extends Struct {
  external CHARRANGE chrg;
  external Pointer<Utf8> lpstrText;
}

class TEXTRANGEW extends Struct {
  external CHARRANGE chrg;
  external Pointer<Utf16> lpstrText;
}

class EDITSTREAM extends Struct {
  @IntPtr() external int dwCookie;
  @Uint32() external int dwError;
  external EDITSTREAMCALLBACK pfnCallback;
}

class FINDTEXTA extends Struct {
  external CHARRANGE chrg;
  external Pointer<Utf8> lpstrText;
}

class FINDTEXTW extends Struct {
  external CHARRANGE chrg;
  external Pointer<Utf16> lpstrText;
}

class FINDTEXTEXA extends Struct {
  external CHARRANGE chrg;
  external Pointer<Utf8> lpstrText;
  external CHARRANGE chrgText;
}

class FINDTEXTEXW extends Struct {
  external CHARRANGE chrg;
  external Pointer<Utf16> lpstrText;
  external CHARRANGE chrgText;
}

class FORMATRANGE extends Struct {
  @IntPtr() external int hdc;
  @IntPtr() external int hdcTarget;
  external RECT rc;
  external RECT rcPage;
  external CHARRANGE chrg;
}

class PARAFORMAT2 extends Struct {
  external PARAFORMAT __AnonymousBase_richedit_L1149_C22;
  @Int32() external int dySpaceBefore;
  @Int32() external int dySpaceAfter;
  @Int32() external int dyLineSpacing;
  @Int16() external int sStyle;
  @Uint32() external int bLineSpacingRule;
  @Uint8() external int bOutlineLevel;
  @Uint16() external int wShadingWeight;
  @Uint32() external int wShadingStyle;
  @Uint16() external int wNumberingStart;
  @Uint32() external int wNumberingStyle;
  @Uint16() external int wNumberingTab;
  @Uint16() external int wBorderSpace;
  @Uint16() external int wBorderWidth;
  @Uint32() external int wBorders;
}

class MSGFILTER extends Struct {
  external NMHDR nmhdr;
  @Uint32() external int msg;
  @IntPtr() external int wParam;
  @IntPtr() external int lParam;
}

class REQRESIZE extends Struct {
  external NMHDR nmhdr;
  external RECT rc;
}

class SELCHANGE extends Struct {
  external NMHDR nmhdr;
  external CHARRANGE chrg;
  @Uint32() external int seltyp;
}

class _grouptypingchange extends Struct {
  external NMHDR nmhdr;
  @Int32() external int fGroupTyping;
}

class CLIPBOARDFORMAT extends Struct {
  external NMHDR nmhdr;
  @Uint16() external int cf;
}

class GETCONTEXTMENUEX extends Struct {
  external CHARRANGE chrg;
  @Uint32() external int dwFlags;
  external POINT pt;
  external Pointer pvReserved;
}

class ENDROPFILES extends Struct {
  external NMHDR nmhdr;
  @IntPtr() external int hDrop;
  @Int32() external int cp;
  @Int32() external int fProtected;
}

class ENPROTECTED extends Struct {
  external NMHDR nmhdr;
  @Uint32() external int msg;
  @IntPtr() external int wParam;
  @IntPtr() external int lParam;
  external CHARRANGE chrg;
}

class ENSAVECLIPBOARD extends Struct {
  external NMHDR nmhdr;
  @Int32() external int cObjectCount;
  @Int32() external int cch;
}

class ENOLEOPFAILED extends Struct {
  external NMHDR nmhdr;
  @Int32() external int iob;
  @Int32() external int lOper;
  @Int32() external int hr;
}

class OBJECTPOSITIONS extends Struct {
  external NMHDR nmhdr;
  @Int32() external int cObjectCount;
  external Pointer<Int32> pcpPositions;
}

class ENLINK extends Struct {
  external NMHDR nmhdr;
  @Uint32() external int msg;
  @IntPtr() external int wParam;
  @IntPtr() external int lParam;
  external CHARRANGE chrg;
}

class ENLOWFIRTF extends Struct {
  external NMHDR nmhdr;
  external Pointer<Int8> szControl;
}

class ENCORRECTTEXT extends Struct {
  external NMHDR nmhdr;
  external CHARRANGE chrg;
  @Uint32() external int seltyp;
}

class PUNCTUATION extends Struct {
  @Uint32() external int iSize;
  external Pointer<Utf8> szPunctuation;
}

class COMPCOLOR extends Struct {
  @Uint32() external int crText;
  @Uint32() external int crBackground;
  @Uint32() external int dwEffects;
}

class REPASTESPECIAL extends Struct {
  @Uint32() external int dwAspect;
  @IntPtr() external int dwParam;
}

class SETTEXTEX extends Struct {
  @Uint32() external int flags;
  @Uint32() external int codepage;
}

class GETTEXTEX extends Struct {
  @Uint32() external int cb;
  @Uint32() external int flags;
  @Uint32() external int codepage;
  external Pointer<Utf8> lpDefaultChar;
  external Pointer<Int32> lpUsedDefChar;
}

class GETTEXTLENGTHEX extends Struct {
  @Uint32() external int flags;
  @Uint32() external int codepage;
}

class BIDIOPTIONS extends Struct {
  @Uint32() external int cbSize;
  @Uint16() external int wMask;
  @Uint16() external int wEffects;
}

class hyphresult extends Struct {
  @Uint32() external int khyph;
  @Int32() external int ichHyph;
  @Uint16() external int chHyph;
}

class HYPHENATEINFO extends Struct {
  @Int16() external int cbSize;
  @Int16() external int dxHyphenateZone;
  @IntPtr() external int pfnHyphenate;
}

class REOBJECT extends Struct {
  @Uint32() external int cbStruct;
  @Int32() external int cp;
  external GUID clsid;
  external Pointer poleobj;
  external Pointer pstg;
  external Pointer polesite;
  external SIZE sizel;
  @Uint32() external int dvaspect;
  @Uint32() external int dwFlags;
  @Uint32() external int dwUser;
}

class CHANGENOTIFY extends Struct {
  @Uint32() external int dwChangeType;
  external Pointer pvCookieData;
}

class CARET_INFO extends Struct {
  @IntPtr() external int hbitmap;
  @Uint32() external int caretFlags;
}

class TA_TRANSFORM extends Struct {
  @Uint32() external int eTransformType;
  @Uint32() external int dwTimingFunctionId;
  @Uint32() external int dwStartTime;
  @Uint32() external int dwDurationTime;
  @Uint32() external int eFlags;
}

class TA_TRANSFORM_2D extends Struct {
  external TA_TRANSFORM header;
  @Float() external double rX;
  @Float() external double rY;
  @Float() external double rInitialX;
  @Float() external double rInitialY;
  @Float() external double rOriginX;
  @Float() external double rOriginY;
}

class TA_TRANSFORM_OPACITY extends Struct {
  external TA_TRANSFORM header;
  @Float() external double rOpacity;
  @Float() external double rInitialOpacity;
}

class TA_TRANSFORM_CLIP extends Struct {
  external TA_TRANSFORM header;
  @Float() external double rLeft;
  @Float() external double rTop;
  @Float() external double rRight;
  @Float() external double rBottom;
  @Float() external double rInitialLeft;
  @Float() external double rInitialTop;
  @Float() external double rInitialRight;
  @Float() external double rInitialBottom;
}

class TA_TIMINGFUNCTION extends Struct {
  @Uint32() external int eTimingFunctionType;
}

class TA_CUBIC_BEZIER extends Struct {
  external TA_TIMINGFUNCTION header;
  @Float() external double rX0;
  @Float() external double rY0;
  @Float() external double rX1;
  @Float() external double rY1;
}

class DTBGOPTS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  external RECT rcClip;
}

class MARGINS extends Struct {
  @Int32() external int cxLeftWidth;
  @Int32() external int cxRightWidth;
  @Int32() external int cyTopHeight;
  @Int32() external int cyBottomHeight;
}

class INTLIST extends Struct {
  @Int32() external int iValueCount;
  external __int__ iValues;
}

class WTA_OPTIONS extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int dwMask;
}

class DTTOPTS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwFlags;
  @Uint32() external int crText;
  @Uint32() external int crBorder;
  @Uint32() external int crShadow;
  @Int32() external int iTextShadowType;
  external POINT ptShadowOffset;
  @Int32() external int iBorderSize;
  @Int32() external int iFontPropId;
  @Int32() external int iColorPropId;
  @Int32() external int iStateId;
  @Int32() external int fApplyOverlay;
  @Int32() external int iGlowSize;
  external DTT_CALLBACK_PROC pfnDrawTextCallback;
  @IntPtr() external int lParam;
}

class BP_ANIMATIONPARAMS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  @Uint32() external int style;
  @Uint32() external int dwDuration;
}

class BP_PAINTPARAMS extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<RECT> prcExclude;
  external Pointer<BLENDFUNCTION> pBlendFunction;
}

