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
import '../../ui/controls/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/controls/callbacks.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/input/pointer/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../system/registry/structs.g.dart';

/// {@category Struct}
class BP_ANIMATIONPARAMS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int style;

  @Uint32()
  external int dwDuration;
}

/// {@category Struct}
class BP_PAINTPARAMS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<RECT> prcExclude;

  external Pointer<BLENDFUNCTION> pBlendFunction;
}

/// {@category Struct}
class BUTTON_IMAGELIST extends Struct {
  @IntPtr()
  external int himl;

  external RECT margin;

  @Uint32()
  external int uAlign;
}

/// {@category Struct}
class BUTTON_SPLITINFO extends Struct {
  @Uint32()
  external int mask;

  @IntPtr()
  external int himlGlyph;

  @Uint32()
  external int uSplitStyle;

  external SIZE size;
}

/// {@category Struct}
class CCINFO extends Struct {
  @Array(32)
  external Array<Uint16> _szClass;

  String get szClass {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szClass[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szClass(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szClass[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int flOptions;

  @Array(32)
  external Array<Uint16> _szDesc;

  String get szDesc {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szDesc[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDesc(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szDesc[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int cxDefault;

  @Uint32()
  external int cyDefault;

  @Uint32()
  external int flStyleDefault;

  @Uint32()
  external int flExtStyleDefault;

  @Uint32()
  external int flCtrlTypeMask;

  @Int32()
  external int cStyleFlags;

  external Pointer<CCSTYLEFLAG> aStyleFlags;

  @Array(256)
  external Array<Uint16> _szTextDefault;

  String get szTextDefault {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szTextDefault[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTextDefault(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szTextDefault[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<NativeFunction<LPFNCCSTYLEW>> lpfnStyle;

  external Pointer<NativeFunction<LPFNCCSIZETOTEXTW>> lpfnSizeToText;

  @Uint32()
  external int dwReserved1;

  @Uint32()
  external int dwReserved2;
}

/// {@category Struct}
class CCSTYLEFLAG extends Struct {
  @Uint32()
  external int flStyle;

  @Uint32()
  external int flStyleMask;

  external Pointer<Utf16> pszStyle;
}

/// {@category Struct}
class CCSTYLE extends Struct {
  @Uint32()
  external int flStyle;

  @Uint32()
  external int flExtStyle;

  @Array(256)
  external Array<Uint16> _szText;

  String get szText {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szText(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szText[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int lgid;

  @Uint16()
  external int wReserved1;
}

/// {@category Struct}
class COLORMAP extends Struct {
  @Uint32()
  external int from;

  @Uint32()
  external int to;
}

/// {@category Struct}
class COLORSCHEME extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int clrBtnHighlight;

  @Uint32()
  external int clrBtnShadow;
}

/// {@category Struct}
class COMBOBOXEXITEM extends Struct {
  @Uint32()
  external int mask;

  @IntPtr()
  external int iItem;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;

  @Int32()
  external int iSelectedImage;

  @Int32()
  external int iOverlay;

  @Int32()
  external int iIndent;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class COMBOBOXINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcItem;

  external RECT rcButton;

  @Uint32()
  external int stateButton;

  @IntPtr()
  external int hwndCombo;

  @IntPtr()
  external int hwndItem;

  @IntPtr()
  external int hwndList;
}

/// {@category Struct}
class COMPAREITEMSTRUCT extends Struct {
  @Uint32()
  external int CtlType;

  @Uint32()
  external int CtlID;

  @IntPtr()
  external int hwndItem;

  @Uint32()
  external int itemID1;

  @IntPtr()
  external int itemData1;

  @Uint32()
  external int itemID2;

  @IntPtr()
  external int itemData2;

  @Uint32()
  external int dwLocaleId;
}

/// {@category Struct}
class DATETIMEPICKERINFO extends Struct {
  @Uint32()
  external int cbSize;

  external RECT rcCheck;

  @Uint32()
  external int stateCheck;

  external RECT rcButton;

  @Uint32()
  external int stateButton;

  @IntPtr()
  external int hwndEdit;

  @IntPtr()
  external int hwndUD;

  @IntPtr()
  external int hwndDropDown;
}

/// {@category Struct}
class DELETEITEMSTRUCT extends Struct {
  @Uint32()
  external int CtlType;

  @Uint32()
  external int CtlID;

  @Uint32()
  external int itemID;

  @IntPtr()
  external int hwndItem;

  @IntPtr()
  external int itemData;
}

/// {@category Struct}
class DPASTREAMINFO extends Struct {
  @Int32()
  external int iPos;

  external Pointer pvItem;
}

/// {@category Struct}
class DRAGLISTINFO extends Struct {
  @Uint32()
  external int uNotification;

  @IntPtr()
  external int hWnd;

  external POINT ptCursor;
}

/// {@category Struct}
class DRAWITEMSTRUCT extends Struct {
  @Uint32()
  external int CtlType;

  @Uint32()
  external int CtlID;

  @Uint32()
  external int itemID;

  @Uint32()
  external int itemAction;

  @Uint32()
  external int itemState;

  @IntPtr()
  external int hwndItem;

  @IntPtr()
  external int hDC;

  external RECT rcItem;

  @IntPtr()
  external int itemData;
}

/// {@category Struct}
class DTBGOPTS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external RECT rcClip;
}

/// {@category Struct}
class DTTOPTS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int crText;

  @Uint32()
  external int crBorder;

  @Uint32()
  external int crShadow;

  @Int32()
  external int iTextShadowType;

  external POINT ptShadowOffset;

  @Int32()
  external int iBorderSize;

  @Int32()
  external int iFontPropId;

  @Int32()
  external int iColorPropId;

  @Int32()
  external int iStateId;

  @Int32()
  external int fApplyOverlay;

  @Int32()
  external int iGlowSize;

  external Pointer<NativeFunction<DTT_CALLBACK_PROC>> pfnDrawTextCallback;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class EDITBALLOONTIP extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> pszTitle;

  external Pointer<Utf16> pszText;

  @Uint32()
  external int ttiIcon;
}

/// {@category Struct}
class HDHITTESTINFO extends Struct {
  external POINT pt;

  @Uint32()
  external int flags;

  @Int32()
  external int iItem;
}

/// {@category Struct}
class HDITEM extends Struct {
  @Uint32()
  external int mask;

  @Int32()
  external int cxy;

  external Pointer<Utf16> pszText;

  @IntPtr()
  external int hbm;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int fmt;

  @IntPtr()
  external int lParam;

  @Int32()
  external int iImage;

  @Int32()
  external int iOrder;

  @Uint32()
  external int type;

  external Pointer pvFilter;

  @Uint32()
  external int state;
}

/// {@category Struct}
class HDLAYOUT extends Struct {
  external Pointer<RECT> prc;

  external Pointer<WINDOWPOS> pwpos;
}

/// {@category Struct}
class HD_TEXTFILTER extends Struct {
  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;
}

/// {@category Struct}
class IMAGEINFO extends Struct {
  @IntPtr()
  external int hbmImage;

  @IntPtr()
  external int hbmMask;

  @Int32()
  external int Unused1;

  @Int32()
  external int Unused2;

  external RECT rcImage;
}

/// {@category Struct}
class IMAGELISTDRAWPARAMS extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int himl;

  @Int32()
  external int i;

  @IntPtr()
  external int hdcDst;

  @Int32()
  external int x;

  @Int32()
  external int y;

  @Int32()
  external int cx;

  @Int32()
  external int cy;

  @Int32()
  external int xBitmap;

  @Int32()
  external int yBitmap;

  @Uint32()
  external int rgbBk;

  @Uint32()
  external int rgbFg;

  @Uint32()
  external int fStyle;

  @Uint32()
  external int dwRop;

  @Uint32()
  external int fState;

  @Uint32()
  external int Frame;

  @Uint32()
  external int crEffect;
}

/// {@category Struct}
class IMAGELISTSTATS extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int cAlloc;

  @Int32()
  external int cUsed;

  @Int32()
  external int cStandby;
}

/// {@category Struct}
class INITCOMMONCONTROLSEX extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwICC;
}

/// {@category Struct}
class INTLIST extends Struct {
  @Int32()
  external int iValueCount;

  @Array(402)
  external Array<Int32> iValues;
}

/// {@category Struct}
class LHITTESTINFO extends Struct {
  external POINT pt;

  external LITEM item;
}

/// {@category Struct}
class LITEM extends Struct {
  @Uint32()
  external int mask;

  @Int32()
  external int iLink;

  @Uint32()
  external int state;

  @Uint32()
  external int stateMask;

  @Array(48)
  external Array<Uint16> _szID;

  String get szID {
    final charCodes = <int>[];
    for (var i = 0; i < 48; i++) {
      charCodes.add(_szID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szID(String value) {
    final stringToStore = value.padRight(48, '\x00');
    for (var i = 0; i < 48; i++) {
      _szID[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(2084)
  external Array<Uint16> _szUrl;

  String get szUrl {
    final charCodes = <int>[];
    for (var i = 0; i < 2084; i++) {
      charCodes.add(_szUrl[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szUrl(String value) {
    final stringToStore = value.padRight(2084, '\x00');
    for (var i = 0; i < 2084; i++) {
      _szUrl[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class LVBKIMAGE extends Struct {
  @Uint32()
  external int ulFlags;

  @IntPtr()
  external int hbm;

  external Pointer<Utf16> pszImage;

  @Uint32()
  external int cchImageMax;

  @Int32()
  external int xOffsetPercent;

  @Int32()
  external int yOffsetPercent;
}

/// {@category Struct}
class LVCOLUMN extends Struct {
  @Uint32()
  external int mask;

  @Uint32()
  external int fmt;

  @Int32()
  external int cx;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iSubItem;

  @Int32()
  external int iImage;

  @Int32()
  external int iOrder;

  @Int32()
  external int cxMin;

  @Int32()
  external int cxDefault;

  @Int32()
  external int cxIdeal;
}

/// {@category Struct}
class LVFINDINFO extends Struct {
  @Uint32()
  external int flags;

  external Pointer<Utf16> psz;

  @IntPtr()
  external int lParam;

  external POINT pt;

  @Uint32()
  external int vkDirection;
}

/// {@category Struct}
class LVFOOTERINFO extends Struct {
  @Uint32()
  external int mask;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Uint32()
  external int cItems;
}

/// {@category Struct}
class LVFOOTERITEM extends Struct {
  @Uint32()
  external int mask;

  @Int32()
  external int iItem;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Uint32()
  external int state;

  @Uint32()
  external int stateMask;
}

/// {@category Struct}
class LVGROUP extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int mask;

  external Pointer<Utf16> pszHeader;

  @Int32()
  external int cchHeader;

  external Pointer<Utf16> pszFooter;

  @Int32()
  external int cchFooter;

  @Int32()
  external int iGroupId;

  @Uint32()
  external int stateMask;

  @Uint32()
  external int state;

  @Uint32()
  external int uAlign;

  external Pointer<Utf16> pszSubtitle;

  @Uint32()
  external int cchSubtitle;

  external Pointer<Utf16> pszTask;

  @Uint32()
  external int cchTask;

  external Pointer<Utf16> pszDescriptionTop;

  @Uint32()
  external int cchDescriptionTop;

  external Pointer<Utf16> pszDescriptionBottom;

  @Uint32()
  external int cchDescriptionBottom;

  @Int32()
  external int iTitleImage;

  @Int32()
  external int iExtendedImage;

  @Int32()
  external int iFirstItem;

  @Uint32()
  external int cItems;

  external Pointer<Utf16> pszSubsetTitle;

  @Uint32()
  external int cchSubsetTitle;
}

/// {@category Struct}
class LVGROUPMETRICS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int mask;

  @Uint32()
  external int Left;

  @Uint32()
  external int Top;

  @Uint32()
  external int Right;

  @Uint32()
  external int Bottom;

  @Uint32()
  external int crLeft;

  @Uint32()
  external int crTop;

  @Uint32()
  external int crRight;

  @Uint32()
  external int crBottom;

  @Uint32()
  external int crHeader;

  @Uint32()
  external int crFooter;
}

/// {@category Struct}
class LVHITTESTINFO extends Struct {
  external POINT pt;

  @Uint32()
  external int flags;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;

  @Int32()
  external int iGroup;
}

/// {@category Struct}
class LVINSERTGROUPSORTED extends Struct {
  external Pointer<NativeFunction<PFNLVGROUPCOMPARE>> pfnGroupCompare;

  external Pointer pvData;

  external LVGROUP lvGroup;
}

/// {@category Struct}
class LVINSERTMARK extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int iItem;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class LVITEMINDEX extends Struct {
  @Int32()
  external int iItem;

  @Int32()
  external int iGroup;
}

/// {@category Struct}
class LVITEM extends Struct {
  @Uint32()
  external int mask;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;

  @Uint32()
  external int state;

  @Uint32()
  external int stateMask;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;

  @IntPtr()
  external int lParam;

  @Int32()
  external int iIndent;

  @Int32()
  external int iGroupId;

  @Uint32()
  external int cColumns;

  external Pointer<Uint32> puColumns;

  external Pointer<Int32> piColFmt;

  @Int32()
  external int iGroup;
}

/// {@category Struct}
class LVSETINFOTIP extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pszText;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;
}

/// {@category Struct}
class LVTILEINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int iItem;

  @Uint32()
  external int cColumns;

  external Pointer<Uint32> puColumns;

  external Pointer<Int32> piColFmt;
}

/// {@category Struct}
class LVTILEVIEWINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwFlags;

  external SIZE sizeTile;

  @Int32()
  external int cLines;

  external RECT rcLabelMargin;
}

/// {@category Struct}
class MARGINS extends Struct {
  @Int32()
  external int cxLeftWidth;

  @Int32()
  external int cxRightWidth;

  @Int32()
  external int cyTopHeight;

  @Int32()
  external int cyBottomHeight;
}

/// {@category Struct}
class MCGRIDINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwPart;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int iCalendar;

  @Int32()
  external int iRow;

  @Int32()
  external int iCol;

  @Int32()
  external int bSelected;

  external SYSTEMTIME stStart;

  external SYSTEMTIME stEnd;

  external RECT rc;

  external Pointer<Utf16> pszName;

  @IntPtr()
  external int cchName;
}

/// {@category Struct}
class MCHITTESTINFO extends Struct {
  @Uint32()
  external int cbSize;

  external POINT pt;

  @Uint32()
  external int uHit;

  external SYSTEMTIME st;

  external RECT rc;

  @Int32()
  external int iOffset;

  @Int32()
  external int iRow;

  @Int32()
  external int iCol;
}

/// {@category Struct}
class MEASUREITEMSTRUCT extends Struct {
  @Uint32()
  external int CtlType;

  @Uint32()
  external int CtlID;

  @Uint32()
  external int itemID;

  @Uint32()
  external int itemWidth;

  @Uint32()
  external int itemHeight;

  @IntPtr()
  external int itemData;
}

/// {@category Struct}
class NMBCDROPDOWN extends Struct {
  external NMHDR hdr;

  external RECT rcButton;
}

/// {@category Struct}
class NMBCHOTITEM extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NMCBEDRAGBEGIN extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItemid;

  @Array(260)
  external Array<Uint16> _szText;

  String get szText {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szText(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szText[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NMCBEENDEDIT extends Struct {
  external NMHDR hdr;

  @Int32()
  external int fChanged;

  @Int32()
  external int iNewSelection;

  @Array(260)
  external Array<Uint16> _szText;

  String get szText {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szText(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szText[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int iWhy;
}

/// {@category Struct}
class NMCHAR extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int ch;

  @Uint32()
  external int dwItemPrev;

  @Uint32()
  external int dwItemNext;
}

/// {@category Struct}
class NMCOMBOBOXEX extends Struct {
  external NMHDR hdr;

  external COMBOBOXEXITEM ceItem;
}

/// {@category Struct}
class NMCUSTOMDRA extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwDrawStage;

  @IntPtr()
  external int hdc;

  external RECT rc;

  @IntPtr()
  external int dwItemSpec;

  @Uint32()
  external int uItemState;

  @IntPtr()
  external int lItemlParam;
}

/// {@category Struct}
class NMCUSTOMSPLITRECTINFO extends Struct {
  external NMHDR hdr;

  external RECT rcClient;

  external RECT rcButton;

  external RECT rcSplit;
}

/// {@category Struct}
class NMCUSTOMTEXT extends Struct {
  external NMHDR hdr;

  @IntPtr()
  external int hDC;

  external Pointer<Utf16> lpString;

  @Int32()
  external int nCount;

  external Pointer<RECT> lpRect;

  @Uint32()
  external int uFormat;

  @Int32()
  external int fLink;
}

/// {@category Struct}
class NMDATETIMECHANGE extends Struct {
  external NMHDR nmhdr;

  @Uint32()
  external int dwFlags;

  external SYSTEMTIME st;
}

/// {@category Struct}
class NMDATETIMEFORMATQUERY extends Struct {
  external NMHDR nmhdr;

  external Pointer<Utf16> pszFormat;

  external SIZE szMax;
}

/// {@category Struct}
class NMDATETIMEFORMAT extends Struct {
  external NMHDR nmhdr;

  external Pointer<Utf16> pszFormat;

  external SYSTEMTIME st;

  external Pointer<Utf16> pszDisplay;

  @Array(64)
  external Array<Uint16> _szDisplay;

  String get szDisplay {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szDisplay[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDisplay(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szDisplay[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NMDATETIMESTRING extends Struct {
  external NMHDR nmhdr;

  external Pointer<Utf16> pszUserString;

  external SYSTEMTIME st;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NMDATETIMEWMKEYDOWN extends Struct {
  external NMHDR nmhdr;

  @Int32()
  external int nVirtKey;

  external Pointer<Utf16> pszFormat;

  external SYSTEMTIME st;
}

/// {@category Struct}
class NMDAYSTATE extends Struct {
  external NMHDR nmhdr;

  external SYSTEMTIME stStart;

  @Int32()
  external int cDayState;

  external Pointer<Uint32> prgDayState;
}

/// {@category Struct}
class NMHDDISPINFO extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  @Uint32()
  external int mask;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMHDFILTERBTNCLICK extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  external RECT rc;
}

/// {@category Struct}
class NMHDR extends Struct {
  @IntPtr()
  external int hwndFrom;

  @IntPtr()
  external int idFrom;

  @Uint32()
  external int code;
}

/// {@category Struct}
class NMHEADER extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  @Uint32()
  external int iButton;

  external Pointer<HDITEM> pitem;
}

/// {@category Struct}
class NMIPADDRESS extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iField;

  @Int32()
  external int iValue;
}

/// {@category Struct}
class NMITEMACTIVATE extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;

  @Uint32()
  external int uNewState;

  @Uint32()
  external int uOldState;

  @Uint32()
  external int uChanged;

  external POINT ptAction;

  @IntPtr()
  external int lParam;

  @Uint32()
  external int uKeyFlags;
}

/// {@category Struct}
class NMKEY extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int nVKey;

  @Uint32()
  external int uFlags;
}

/// {@category Struct}
class NMLINK extends Struct {
  external NMHDR hdr;

  external LITEM item;
}

/// {@category Struct}
class NMLISTVIE extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;

  @Uint32()
  external int uNewState;

  @Uint32()
  external int uOldState;

  @Uint32()
  external int uChanged;

  external POINT ptAction;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMLVCACHEHINT extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iFrom;

  @Int32()
  external int iTo;
}

/// {@category Struct}
class NMLVCUSTOMDRA extends Struct {
  external NMCUSTOMDRA nmcd;

  @Uint32()
  external int clrText;

  @Uint32()
  external int clrTextBk;

  @Int32()
  external int iSubItem;

  @Uint32()
  external int dwItemType;

  @Uint32()
  external int clrFace;

  @Int32()
  external int iIconEffect;

  @Int32()
  external int iIconPhase;

  @Int32()
  external int iPartId;

  @Int32()
  external int iStateId;

  external RECT rcText;

  @Uint32()
  external int uAlign;
}

/// {@category Struct}
class NMLVDISPINFO extends Struct {
  external NMHDR hdr;

  external LVITEM item;
}

/// {@category Struct}
class NMLVEMPTYMARKUP extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwFlags;

  @Array(2084)
  external Array<Uint16> _szMarkup;

  String get szMarkup {
    final charCodes = <int>[];
    for (var i = 0; i < 2084; i++) {
      charCodes.add(_szMarkup[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szMarkup(String value) {
    final stringToStore = value.padRight(2084, '\x00');
    for (var i = 0; i < 2084; i++) {
      _szMarkup[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NMLVFINDITEM extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iStart;

  external LVFINDINFO lvfi;
}

/// {@category Struct}
class NMLVGETINFOTIP extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMLVKEYDOWN extends Struct {
  external NMHDR hdr;

  @Uint16()
  external int wVKey;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class NMLVLINK extends Struct {
  external NMHDR hdr;

  external LITEM link;

  @Int32()
  external int iItem;

  @Int32()
  external int iSubItem;
}

/// {@category Struct}
class NMLVODSTATECHANGE extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iFrom;

  @Int32()
  external int iTo;

  @Uint32()
  external int uNewState;

  @Uint32()
  external int uOldState;
}

/// {@category Struct}
class NMLVSCROLL extends Struct {
  external NMHDR hdr;

  @Int32()
  external int dx;

  @Int32()
  external int dy;
}

/// {@category Struct}
class NMMOUSE extends Struct {
  external NMHDR hdr;

  @IntPtr()
  external int dwItemSpec;

  @IntPtr()
  external int dwItemData;

  external POINT pt;

  @IntPtr()
  external int dwHitInfo;
}

/// {@category Struct}
class NMOBJECTNOTIFY extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  external Pointer<GUID> piid;

  external Pointer pObject;

  @Int32()
  external int hResult;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NMPGCALCSIZE extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwFlag;

  @Int32()
  external int iWidth;

  @Int32()
  external int iHeight;
}

/// {@category Struct}
class NMPGHOTITEM extends Struct {
  external NMHDR hdr;

  @Int32()
  external int idOld;

  @Int32()
  external int idNew;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NMPGSCROLL extends Struct {
  external NMHDR hdr;

  @Uint16()
  external int fwKeys;

  external RECT rcParent;

  @Uint32()
  external int iDir;

  @Int32()
  external int iXpos;

  @Int32()
  external int iYpos;

  @Int32()
  external int iScroll;
}

/// {@category Struct}
class NMRBAUTOSIZE extends Struct {
  external NMHDR hdr;

  @Int32()
  external int fChanged;

  external RECT rcTarget;

  external RECT rcActual;
}

/// {@category Struct}
class NMREBAR extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int uBand;

  @Uint32()
  external int fStyle;

  @Uint32()
  external int wID;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMREBARAUTOBREAK extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int uBand;

  @Uint32()
  external int wID;

  @IntPtr()
  external int lParam;

  @Uint32()
  external int uMsg;

  @Uint32()
  external int fStyleCurrent;

  @Int32()
  external int fAutoBreak;
}

/// {@category Struct}
class NMREBARCHEVRON extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int uBand;

  @Uint32()
  external int wID;

  @IntPtr()
  external int lParam;

  external RECT rc;

  @IntPtr()
  external int lParamNM;
}

/// {@category Struct}
class NMREBARCHILDSIZE extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int uBand;

  @Uint32()
  external int wID;

  external RECT rcChild;

  external RECT rcBand;
}

/// {@category Struct}
class NMREBARSPLITTER extends Struct {
  external NMHDR hdr;

  external RECT rcSizing;
}

/// {@category Struct}
class NMSEARCHWEB extends Struct {
  external NMHDR hdr;

  @Int32()
  external int entrypoint;

  @Int32()
  external int hasQueryText;

  @Int32()
  external int invokeSucceeded;
}

/// {@category Struct}
class NMSELCHANGE extends Struct {
  external NMHDR nmhdr;

  external SYSTEMTIME stSelStart;

  external SYSTEMTIME stSelEnd;
}

/// {@category Struct}
class NMTBCUSTOMDRA extends Struct {
  external NMCUSTOMDRA nmcd;

  @IntPtr()
  external int hbrMonoDither;

  @IntPtr()
  external int hbrLines;

  @IntPtr()
  external int hpenLines;

  @Uint32()
  external int clrText;

  @Uint32()
  external int clrMark;

  @Uint32()
  external int clrTextHighlight;

  @Uint32()
  external int clrBtnFace;

  @Uint32()
  external int clrBtnHighlight;

  @Uint32()
  external int clrHighlightHotTrack;

  external RECT rcText;

  @Int32()
  external int nStringBkMode;

  @Int32()
  external int nHLStringBkMode;

  @Int32()
  external int iListGap;
}

/// {@category Struct}
class NMTBDISPINFO extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwMask;

  @Int32()
  external int idCommand;

  @IntPtr()
  external int lParam;

  @Int32()
  external int iImage;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchText;
}

/// {@category Struct}
class NMTBGETINFOTIP extends Struct {
  external NMHDR hdr;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iItem;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMTBHOTITEM extends Struct {
  external NMHDR hdr;

  @Int32()
  external int idOld;

  @Int32()
  external int idNew;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class NMTBRESTORE extends Struct {
  external NMHDR hdr;

  external Pointer<Uint32> pData;

  external Pointer<Uint32> pCurrent;

  @Uint32()
  external int cbData;

  @Int32()
  external int iItem;

  @Int32()
  external int cButtons;

  @Int32()
  external int cbBytesPerRecord;

  external TBBUTTON tbButton;
}

/// {@category Struct}
class NMTBSAVE extends Struct {
  external NMHDR hdr;

  external Pointer<Uint32> pData;

  external Pointer<Uint32> pCurrent;

  @Uint32()
  external int cbData;

  @Int32()
  external int iItem;

  @Int32()
  external int cButtons;

  external TBBUTTON tbButton;
}

/// {@category Struct}
class NMTCKEYDOWN extends Struct {
  external NMHDR hdr;

  @Uint16()
  external int wVKey;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class NMTOOLBAR extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iItem;

  external TBBUTTON tbButton;

  @Int32()
  external int cchText;

  external Pointer<Utf16> pszText;

  external RECT rcButton;
}

/// {@category Struct}
class NMTOOLTIPSCREATED extends Struct {
  external NMHDR hdr;

  @IntPtr()
  external int hwndToolTips;
}

/// {@category Struct}
class NMTRBTHUMBPOSCHANGING extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int dwPos;

  @Int32()
  external int nReason;
}

/// {@category Struct}
class NMTREEVIEW extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int action;

  external TVITEM itemOld;

  external TVITEM itemNew;

  external POINT ptDrag;
}

/// {@category Struct}
class NMTTCUSTOMDRA extends Struct {
  external NMCUSTOMDRA nmcd;

  @Uint32()
  external int uDrawFlags;
}

/// {@category Struct}
class NMTTDISPINFO extends Struct {
  external NMHDR hdr;

  external Pointer<Utf16> lpszText;

  @Array(80)
  external Array<Uint16> _szText;

  String get szText {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szText(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szText[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hinst;

  @Uint32()
  external int uFlags;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMTVASYNCDRA extends Struct {
  external NMHDR hdr;

  external Pointer<IMAGELISTDRAWPARAMS> pimldp;

  @Int32()
  external int hr;

  @IntPtr()
  external int hItem;

  @IntPtr()
  external int lParam;

  @Uint32()
  external int dwRetFlags;

  @Int32()
  external int iRetImageIndex;
}

/// {@category Struct}
class NMTVCUSTOMDRA extends Struct {
  external NMCUSTOMDRA nmcd;

  @Uint32()
  external int clrText;

  @Uint32()
  external int clrTextBk;

  @Int32()
  external int iLevel;
}

/// {@category Struct}
class NMTVDISPINFOEX extends Struct {
  external NMHDR hdr;

  external TVITEMEX item;
}

/// {@category Struct}
class NMTVDISPINFO extends Struct {
  external NMHDR hdr;

  external TVITEM item;
}

/// {@category Struct}
class NMTVGETINFOTIP extends Struct {
  external NMHDR hdr;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @IntPtr()
  external int hItem;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMTVITEMCHANGE extends Struct {
  external NMHDR hdr;

  @Uint32()
  external int uChanged;

  @IntPtr()
  external int hItem;

  @Uint32()
  external int uStateNew;

  @Uint32()
  external int uStateOld;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class NMTVKEYDOWN extends Struct {
  external NMHDR hdr;

  @Uint16()
  external int wVKey;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class NMTVSTATEIMAGECHANGING extends Struct {
  external NMHDR hdr;

  @IntPtr()
  external int hti;

  @Int32()
  external int iOldStateImageIndex;

  @Int32()
  external int iNewStateImageIndex;
}

/// {@category Struct}
class NMUPDOWN extends Struct {
  external NMHDR hdr;

  @Int32()
  external int iPos;

  @Int32()
  external int iDelta;
}

/// {@category Struct}
class NMVIEWCHANGE extends Struct {
  external NMHDR nmhdr;

  @Uint32()
  external int dwOldView;

  @Uint32()
  external int dwNewView;
}

/// {@category Struct}
class PBRANGE extends Struct {
  @Int32()
  external int iLow;

  @Int32()
  external int iHigh;
}

/// {@category Struct}
class POINTER_DEVICE_CURSOR_INFO extends Struct {
  @Uint32()
  external int cursorId;

  @Int32()
  external int cursor;
}

/// {@category Struct}
class POINTER_DEVICE_INFO extends Struct {
  @Uint32()
  external int displayOrientation;

  @IntPtr()
  external int device;

  @Int32()
  external int pointerDeviceType;

  @IntPtr()
  external int monitor;

  @Uint32()
  external int startingCursorId;

  @Uint16()
  external int maxActiveContacts;

  @Array(520)
  external Array<Uint16> _productString;

  String get productString {
    final charCodes = <int>[];
    for (var i = 0; i < 520; i++) {
      charCodes.add(_productString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set productString(String value) {
    final stringToStore = value.padRight(520, '\x00');
    for (var i = 0; i < 520; i++) {
      _productString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class POINTER_DEVICE_PROPERTY extends Struct {
  @Int32()
  external int logicalMin;

  @Int32()
  external int logicalMax;

  @Int32()
  external int physicalMin;

  @Int32()
  external int physicalMax;

  @Uint32()
  external int unit;

  @Uint32()
  external int unitExponent;

  @Uint16()
  external int usagePageId;

  @Uint16()
  external int usageId;
}

/// {@category Struct}
class POINTER_TYPE_INFO extends Struct {
  @Int32()
  external int type;

  external _POINTER_TYPE_INFO__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _POINTER_TYPE_INFO__Anonymous_e__Union extends Union {
  external POINTER_TOUCH_INFO touchInfo;

  external POINTER_PEN_INFO penInfo;
}

extension POINTER_TYPE_INFO_Extension on POINTER_TYPE_INFO {
  POINTER_TOUCH_INFO get touchInfo => this.Anonymous.touchInfo;
  set touchInfo(POINTER_TOUCH_INFO value) => this.Anonymous.touchInfo = value;

  POINTER_PEN_INFO get penInfo => this.Anonymous.penInfo;
  set penInfo(POINTER_PEN_INFO value) => this.Anonymous.penInfo = value;
}

/// {@category Struct}
class PROPSHEETHEADERA_V1 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETHEADERA_V1__Anonymous1_e__Union Anonymous1;

  external Pointer<Utf8> pszCaption;

  @Uint32()
  external int nPages;

  external _PROPSHEETHEADERA_V1__Anonymous2_e__Union Anonymous2;

  external _PROPSHEETHEADERA_V1__Anonymous3_e__Union Anonymous3;

  external Pointer<NativeFunction<PFNPROPSHEETCALLBACK>> pfnCallback;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V1__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf8> pszIcon;
}

extension PROPSHEETHEADERA_V1_Extension on PROPSHEETHEADERA_V1 {
  int get hIcon => this.Anonymous1.hIcon;
  set hIcon(int value) => this.Anonymous1.hIcon = value;

  Pointer<Utf8> get pszIcon => this.Anonymous1.pszIcon;
  set pszIcon(Pointer<Utf8> value) => this.Anonymous1.pszIcon = value;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V1__Anonymous2_e__Union extends Union {
  @Uint32()
  external int nStartPage;

  external Pointer<Utf8> pStartPage;
}

extension PROPSHEETHEADERA_V1_Extension_1 on PROPSHEETHEADERA_V1 {
  int get nStartPage => this.Anonymous2.nStartPage;
  set nStartPage(int value) => this.Anonymous2.nStartPage = value;

  Pointer<Utf8> get pStartPage => this.Anonymous2.pStartPage;
  set pStartPage(Pointer<Utf8> value) => this.Anonymous2.pStartPage = value;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V1__Anonymous3_e__Union extends Union {
  external Pointer<PROPSHEETPAGE> ppsp;

  external Pointer<IntPtr> phpage;
}

extension PROPSHEETHEADERA_V1_Extension_2 on PROPSHEETHEADERA_V1 {
  Pointer<PROPSHEETPAGE> get ppsp => this.Anonymous3.ppsp;
  set ppsp(Pointer<PROPSHEETPAGE> value) => this.Anonymous3.ppsp = value;

  Pointer<IntPtr> get phpage => this.Anonymous3.phpage;
  set phpage(Pointer<IntPtr> value) => this.Anonymous3.phpage = value;
}

/// {@category Struct}
class PROPSHEETHEADERA_V2 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETHEADERA_V2__Anonymous1_e__Union Anonymous1;

  external Pointer<Utf8> pszCaption;

  @Uint32()
  external int nPages;

  external _PROPSHEETHEADERA_V2__Anonymous2_e__Union Anonymous2;

  external _PROPSHEETHEADERA_V2__Anonymous3_e__Union Anonymous3;

  external Pointer<NativeFunction<PFNPROPSHEETCALLBACK>> pfnCallback;

  external _PROPSHEETHEADERA_V2__Anonymous4_e__Union Anonymous4;

  @IntPtr()
  external int hplWatermark;

  external _PROPSHEETHEADERA_V2__Anonymous5_e__Union Anonymous5;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V2__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf8> pszIcon;
}

extension PROPSHEETHEADERA_V2_Extension on PROPSHEETHEADERA_V2 {
  int get hIcon => this.Anonymous1.hIcon;
  set hIcon(int value) => this.Anonymous1.hIcon = value;

  Pointer<Utf8> get pszIcon => this.Anonymous1.pszIcon;
  set pszIcon(Pointer<Utf8> value) => this.Anonymous1.pszIcon = value;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V2__Anonymous2_e__Union extends Union {
  @Uint32()
  external int nStartPage;

  external Pointer<Utf8> pStartPage;
}

extension PROPSHEETHEADERA_V2_Extension_1 on PROPSHEETHEADERA_V2 {
  int get nStartPage => this.Anonymous2.nStartPage;
  set nStartPage(int value) => this.Anonymous2.nStartPage = value;

  Pointer<Utf8> get pStartPage => this.Anonymous2.pStartPage;
  set pStartPage(Pointer<Utf8> value) => this.Anonymous2.pStartPage = value;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V2__Anonymous3_e__Union extends Union {
  external Pointer<PROPSHEETPAGE> ppsp;

  external Pointer<IntPtr> phpage;
}

extension PROPSHEETHEADERA_V2_Extension_2 on PROPSHEETHEADERA_V2 {
  Pointer<PROPSHEETPAGE> get ppsp => this.Anonymous3.ppsp;
  set ppsp(Pointer<PROPSHEETPAGE> value) => this.Anonymous3.ppsp = value;

  Pointer<IntPtr> get phpage => this.Anonymous3.phpage;
  set phpage(Pointer<IntPtr> value) => this.Anonymous3.phpage = value;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V2__Anonymous4_e__Union extends Union {
  @IntPtr()
  external int hbmWatermark;

  external Pointer<Utf8> pszbmWatermark;
}

extension PROPSHEETHEADERA_V2_Extension_3 on PROPSHEETHEADERA_V2 {
  int get hbmWatermark => this.Anonymous4.hbmWatermark;
  set hbmWatermark(int value) => this.Anonymous4.hbmWatermark = value;

  Pointer<Utf8> get pszbmWatermark => this.Anonymous4.pszbmWatermark;
  set pszbmWatermark(Pointer<Utf8> value) =>
      this.Anonymous4.pszbmWatermark = value;
}

/// {@category Struct}
class _PROPSHEETHEADERA_V2__Anonymous5_e__Union extends Union {
  @IntPtr()
  external int hbmHeader;

  external Pointer<Utf8> pszbmHeader;
}

extension PROPSHEETHEADERA_V2_Extension_4 on PROPSHEETHEADERA_V2 {
  int get hbmHeader => this.Anonymous5.hbmHeader;
  set hbmHeader(int value) => this.Anonymous5.hbmHeader = value;

  Pointer<Utf8> get pszbmHeader => this.Anonymous5.pszbmHeader;
  set pszbmHeader(Pointer<Utf8> value) => this.Anonymous5.pszbmHeader = value;
}

/// {@category Struct}
class PROPSHEETHEADERW_V1 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETHEADERW_V1__Anonymous1_e__Union Anonymous1;

  external Pointer<Utf16> pszCaption;

  @Uint32()
  external int nPages;

  external _PROPSHEETHEADERW_V1__Anonymous2_e__Union Anonymous2;

  external _PROPSHEETHEADERW_V1__Anonymous3_e__Union Anonymous3;

  external Pointer<NativeFunction<PFNPROPSHEETCALLBACK>> pfnCallback;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V1__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf16> pszIcon;
}

extension PROPSHEETHEADERW_V1_Extension on PROPSHEETHEADERW_V1 {
  int get hIcon => this.Anonymous1.hIcon;
  set hIcon(int value) => this.Anonymous1.hIcon = value;

  Pointer<Utf16> get pszIcon => this.Anonymous1.pszIcon;
  set pszIcon(Pointer<Utf16> value) => this.Anonymous1.pszIcon = value;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V1__Anonymous2_e__Union extends Union {
  @Uint32()
  external int nStartPage;

  external Pointer<Utf16> pStartPage;
}

extension PROPSHEETHEADERW_V1_Extension_1 on PROPSHEETHEADERW_V1 {
  int get nStartPage => this.Anonymous2.nStartPage;
  set nStartPage(int value) => this.Anonymous2.nStartPage = value;

  Pointer<Utf16> get pStartPage => this.Anonymous2.pStartPage;
  set pStartPage(Pointer<Utf16> value) => this.Anonymous2.pStartPage = value;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V1__Anonymous3_e__Union extends Union {
  external Pointer<PROPSHEETPAGE> ppsp;

  external Pointer<IntPtr> phpage;
}

extension PROPSHEETHEADERW_V1_Extension_2 on PROPSHEETHEADERW_V1 {
  Pointer<PROPSHEETPAGE> get ppsp => this.Anonymous3.ppsp;
  set ppsp(Pointer<PROPSHEETPAGE> value) => this.Anonymous3.ppsp = value;

  Pointer<IntPtr> get phpage => this.Anonymous3.phpage;
  set phpage(Pointer<IntPtr> value) => this.Anonymous3.phpage = value;
}

/// {@category Struct}
class PROPSHEETHEADERW_V2 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETHEADERW_V2__Anonymous1_e__Union Anonymous1;

  external Pointer<Utf16> pszCaption;

  @Uint32()
  external int nPages;

  external _PROPSHEETHEADERW_V2__Anonymous2_e__Union Anonymous2;

  external _PROPSHEETHEADERW_V2__Anonymous3_e__Union Anonymous3;

  external Pointer<NativeFunction<PFNPROPSHEETCALLBACK>> pfnCallback;

  external _PROPSHEETHEADERW_V2__Anonymous4_e__Union Anonymous4;

  @IntPtr()
  external int hplWatermark;

  external _PROPSHEETHEADERW_V2__Anonymous5_e__Union Anonymous5;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V2__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf16> pszIcon;
}

extension PROPSHEETHEADERW_V2_Extension on PROPSHEETHEADERW_V2 {
  int get hIcon => this.Anonymous1.hIcon;
  set hIcon(int value) => this.Anonymous1.hIcon = value;

  Pointer<Utf16> get pszIcon => this.Anonymous1.pszIcon;
  set pszIcon(Pointer<Utf16> value) => this.Anonymous1.pszIcon = value;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V2__Anonymous2_e__Union extends Union {
  @Uint32()
  external int nStartPage;

  external Pointer<Utf16> pStartPage;
}

extension PROPSHEETHEADERW_V2_Extension_1 on PROPSHEETHEADERW_V2 {
  int get nStartPage => this.Anonymous2.nStartPage;
  set nStartPage(int value) => this.Anonymous2.nStartPage = value;

  Pointer<Utf16> get pStartPage => this.Anonymous2.pStartPage;
  set pStartPage(Pointer<Utf16> value) => this.Anonymous2.pStartPage = value;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V2__Anonymous3_e__Union extends Union {
  external Pointer<PROPSHEETPAGE> ppsp;

  external Pointer<IntPtr> phpage;
}

extension PROPSHEETHEADERW_V2_Extension_2 on PROPSHEETHEADERW_V2 {
  Pointer<PROPSHEETPAGE> get ppsp => this.Anonymous3.ppsp;
  set ppsp(Pointer<PROPSHEETPAGE> value) => this.Anonymous3.ppsp = value;

  Pointer<IntPtr> get phpage => this.Anonymous3.phpage;
  set phpage(Pointer<IntPtr> value) => this.Anonymous3.phpage = value;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V2__Anonymous4_e__Union extends Union {
  @IntPtr()
  external int hbmWatermark;

  external Pointer<Utf16> pszbmWatermark;
}

extension PROPSHEETHEADERW_V2_Extension_3 on PROPSHEETHEADERW_V2 {
  int get hbmWatermark => this.Anonymous4.hbmWatermark;
  set hbmWatermark(int value) => this.Anonymous4.hbmWatermark = value;

  Pointer<Utf16> get pszbmWatermark => this.Anonymous4.pszbmWatermark;
  set pszbmWatermark(Pointer<Utf16> value) =>
      this.Anonymous4.pszbmWatermark = value;
}

/// {@category Struct}
class _PROPSHEETHEADERW_V2__Anonymous5_e__Union extends Union {
  @IntPtr()
  external int hbmHeader;

  external Pointer<Utf16> pszbmHeader;
}

extension PROPSHEETHEADERW_V2_Extension_4 on PROPSHEETHEADERW_V2 {
  int get hbmHeader => this.Anonymous5.hbmHeader;
  set hbmHeader(int value) => this.Anonymous5.hbmHeader = value;

  Pointer<Utf16> get pszbmHeader => this.Anonymous5.pszbmHeader;
  set pszbmHeader(Pointer<Utf16> value) => this.Anonymous5.pszbmHeader = value;
}

/// {@category Struct}
class PROPSHEETPAGE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETPAGEW__Anonymous1_e__Union Anonymous1;

  external _PROPSHEETPAGEW__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pszTitle;

  external Pointer<NativeFunction<DLGPROC>> pfnDlgProc;

  @IntPtr()
  external int lParam;

  external Pointer<NativeFunction<LPFNPSPCALLBACKW>> pfnCallback;

  external Pointer<Uint32> pcRefParent;

  external Pointer<Utf16> pszHeaderTitle;

  external Pointer<Utf16> pszHeaderSubTitle;

  @IntPtr()
  external int hActCtx;

  external _PROPSHEETPAGEW__Anonymous3_e__Union Anonymous3;
}

/// {@category Struct}
class _PROPSHEETPAGEW__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pszTemplate;

  external Pointer<DLGTEMPLATE> pResource;
}

extension PROPSHEETPAGEW_Extension on PROPSHEETPAGE {
  Pointer<Utf16> get pszTemplate => this.Anonymous1.pszTemplate;
  set pszTemplate(Pointer<Utf16> value) => this.Anonymous1.pszTemplate = value;

  Pointer<DLGTEMPLATE> get pResource => this.Anonymous1.pResource;
  set pResource(Pointer<DLGTEMPLATE> value) =>
      this.Anonymous1.pResource = value;
}

/// {@category Struct}
class _PROPSHEETPAGEW__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf16> pszIcon;
}

extension PROPSHEETPAGEW_Extension_1 on PROPSHEETPAGE {
  int get hIcon => this.Anonymous2.hIcon;
  set hIcon(int value) => this.Anonymous2.hIcon = value;

  Pointer<Utf16> get pszIcon => this.Anonymous2.pszIcon;
  set pszIcon(Pointer<Utf16> value) => this.Anonymous2.pszIcon = value;
}

/// {@category Struct}
class _PROPSHEETPAGEW__Anonymous3_e__Union extends Union {
  @IntPtr()
  external int hbmHeader;

  external Pointer<Utf16> pszbmHeader;
}

extension PROPSHEETPAGEW_Extension_2 on PROPSHEETPAGE {
  int get hbmHeader => this.Anonymous3.hbmHeader;
  set hbmHeader(int value) => this.Anonymous3.hbmHeader = value;

  Pointer<Utf16> get pszbmHeader => this.Anonymous3.pszbmHeader;
  set pszbmHeader(Pointer<Utf16> value) => this.Anonymous3.pszbmHeader = value;
}

/// {@category Struct}
class PROPSHEETPAGEW_V1 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETPAGEW_V1__Anonymous1_e__Union Anonymous1;

  external _PROPSHEETPAGEW_V1__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pszTitle;

  external Pointer<NativeFunction<DLGPROC>> pfnDlgProc;

  @IntPtr()
  external int lParam;

  external Pointer<NativeFunction<LPFNPSPCALLBACKW>> pfnCallback;

  external Pointer<Uint32> pcRefParent;
}

/// {@category Struct}
class _PROPSHEETPAGEW_V1__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pszTemplate;

  external Pointer<DLGTEMPLATE> pResource;
}

extension PROPSHEETPAGEW_V1_Extension on PROPSHEETPAGEW_V1 {
  Pointer<Utf16> get pszTemplate => this.Anonymous1.pszTemplate;
  set pszTemplate(Pointer<Utf16> value) => this.Anonymous1.pszTemplate = value;

  Pointer<DLGTEMPLATE> get pResource => this.Anonymous1.pResource;
  set pResource(Pointer<DLGTEMPLATE> value) =>
      this.Anonymous1.pResource = value;
}

/// {@category Struct}
class _PROPSHEETPAGEW_V1__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf16> pszIcon;
}

extension PROPSHEETPAGEW_V1_Extension_1 on PROPSHEETPAGEW_V1 {
  int get hIcon => this.Anonymous2.hIcon;
  set hIcon(int value) => this.Anonymous2.hIcon = value;

  Pointer<Utf16> get pszIcon => this.Anonymous2.pszIcon;
  set pszIcon(Pointer<Utf16> value) => this.Anonymous2.pszIcon = value;
}

/// {@category Struct}
class PROPSHEETPAGEW_V2 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETPAGEW_V2__Anonymous1_e__Union Anonymous1;

  external _PROPSHEETPAGEW_V2__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pszTitle;

  external Pointer<NativeFunction<DLGPROC>> pfnDlgProc;

  @IntPtr()
  external int lParam;

  external Pointer<NativeFunction<LPFNPSPCALLBACKW>> pfnCallback;

  external Pointer<Uint32> pcRefParent;

  external Pointer<Utf16> pszHeaderTitle;

  external Pointer<Utf16> pszHeaderSubTitle;
}

/// {@category Struct}
class _PROPSHEETPAGEW_V2__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pszTemplate;

  external Pointer<DLGTEMPLATE> pResource;
}

extension PROPSHEETPAGEW_V2_Extension on PROPSHEETPAGEW_V2 {
  Pointer<Utf16> get pszTemplate => this.Anonymous1.pszTemplate;
  set pszTemplate(Pointer<Utf16> value) => this.Anonymous1.pszTemplate = value;

  Pointer<DLGTEMPLATE> get pResource => this.Anonymous1.pResource;
  set pResource(Pointer<DLGTEMPLATE> value) =>
      this.Anonymous1.pResource = value;
}

/// {@category Struct}
class _PROPSHEETPAGEW_V2__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf16> pszIcon;
}

extension PROPSHEETPAGEW_V2_Extension_1 on PROPSHEETPAGEW_V2 {
  int get hIcon => this.Anonymous2.hIcon;
  set hIcon(int value) => this.Anonymous2.hIcon = value;

  Pointer<Utf16> get pszIcon => this.Anonymous2.pszIcon;
  set pszIcon(Pointer<Utf16> value) => this.Anonymous2.pszIcon = value;
}

/// {@category Struct}
class PROPSHEETPAGEW_V3 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hInstance;

  external _PROPSHEETPAGEW_V3__Anonymous1_e__Union Anonymous1;

  external _PROPSHEETPAGEW_V3__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pszTitle;

  external Pointer<NativeFunction<DLGPROC>> pfnDlgProc;

  @IntPtr()
  external int lParam;

  external Pointer<NativeFunction<LPFNPSPCALLBACKW>> pfnCallback;

  external Pointer<Uint32> pcRefParent;

  external Pointer<Utf16> pszHeaderTitle;

  external Pointer<Utf16> pszHeaderSubTitle;

  @IntPtr()
  external int hActCtx;
}

/// {@category Struct}
class _PROPSHEETPAGEW_V3__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pszTemplate;

  external Pointer<DLGTEMPLATE> pResource;
}

extension PROPSHEETPAGEW_V3_Extension on PROPSHEETPAGEW_V3 {
  Pointer<Utf16> get pszTemplate => this.Anonymous1.pszTemplate;
  set pszTemplate(Pointer<Utf16> value) => this.Anonymous1.pszTemplate = value;

  Pointer<DLGTEMPLATE> get pResource => this.Anonymous1.pResource;
  set pResource(Pointer<DLGTEMPLATE> value) =>
      this.Anonymous1.pResource = value;
}

/// {@category Struct}
class _PROPSHEETPAGEW_V3__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  external Pointer<Utf16> pszIcon;
}

extension PROPSHEETPAGEW_V3_Extension_1 on PROPSHEETPAGEW_V3 {
  int get hIcon => this.Anonymous2.hIcon;
  set hIcon(int value) => this.Anonymous2.hIcon = value;

  Pointer<Utf16> get pszIcon => this.Anonymous2.pszIcon;
  set pszIcon(Pointer<Utf16> value) => this.Anonymous2.pszIcon = value;
}

/// {@category Struct}
class PSHNOTIFY extends Struct {
  external NMHDR hdr;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class RBHITTESTINFO extends Struct {
  external POINT pt;

  @Uint32()
  external int flags;

  @Int32()
  external int iBand;
}

/// {@category Struct}
class REBARBANDINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @Uint32()
  external int fStyle;

  @Uint32()
  external int clrFore;

  @Uint32()
  external int clrBack;

  external Pointer<Utf16> lpText;

  @Uint32()
  external int cch;

  @Int32()
  external int iImage;

  @IntPtr()
  external int hwndChild;

  @Uint32()
  external int cxMinChild;

  @Uint32()
  external int cyMinChild;

  @Uint32()
  external int cx;

  @IntPtr()
  external int hbmBack;

  @Uint32()
  external int wID;

  @Uint32()
  external int cyChild;

  @Uint32()
  external int cyMaxChild;

  @Uint32()
  external int cyIntegral;

  @Uint32()
  external int cxIdeal;

  @IntPtr()
  external int lParam;

  @Uint32()
  external int cxHeader;

  external RECT rcChevronLocation;

  @Uint32()
  external int uChevronState;
}

/// {@category Struct}
class REBARINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int himl;
}

/// {@category Struct}
class TASKDIALOGCONFIG extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hwndParent;

  @IntPtr()
  external int hInstance;

  @Int32()
  external int dwFlags;

  @Int32()
  external int dwCommonButtons;

  external Pointer<Utf16> pszWindowTitle;

  external _TASKDIALOGCONFIG__Anonymous1_e__Union Anonymous1;

  external Pointer<Utf16> pszMainInstruction;

  external Pointer<Utf16> pszContent;

  @Uint32()
  external int cButtons;

  external Pointer<TASKDIALOG_BUTTON> pButtons;

  @Int32()
  external int nDefaultButton;

  @Uint32()
  external int cRadioButtons;

  external Pointer<TASKDIALOG_BUTTON> pRadioButtons;

  @Int32()
  external int nDefaultRadioButton;

  external Pointer<Utf16> pszVerificationText;

  external Pointer<Utf16> pszExpandedInformation;

  external Pointer<Utf16> pszExpandedControlText;

  external Pointer<Utf16> pszCollapsedControlText;

  external _TASKDIALOGCONFIG__Anonymous2_e__Union Anonymous2;

  external Pointer<Utf16> pszFooter;

  external Pointer<NativeFunction<PFTASKDIALOGCALLBACK>> pfCallback;

  @IntPtr()
  external int lpCallbackData;

  @Uint32()
  external int cxWidth;
}

/// {@category Struct}
class _TASKDIALOGCONFIG__Anonymous1_e__Union extends Union {
  @IntPtr()
  external int hMainIcon;

  external Pointer<Utf16> pszMainIcon;
}

extension TASKDIALOGCONFIG_Extension on TASKDIALOGCONFIG {
  int get hMainIcon => this.Anonymous1.hMainIcon;
  set hMainIcon(int value) => this.Anonymous1.hMainIcon = value;

  Pointer<Utf16> get pszMainIcon => this.Anonymous1.pszMainIcon;
  set pszMainIcon(Pointer<Utf16> value) => this.Anonymous1.pszMainIcon = value;
}

/// {@category Struct}
class _TASKDIALOGCONFIG__Anonymous2_e__Union extends Union {
  @IntPtr()
  external int hFooterIcon;

  external Pointer<Utf16> pszFooterIcon;
}

extension TASKDIALOGCONFIG_Extension_1 on TASKDIALOGCONFIG {
  int get hFooterIcon => this.Anonymous2.hFooterIcon;
  set hFooterIcon(int value) => this.Anonymous2.hFooterIcon = value;

  Pointer<Utf16> get pszFooterIcon => this.Anonymous2.pszFooterIcon;
  set pszFooterIcon(Pointer<Utf16> value) =>
      this.Anonymous2.pszFooterIcon = value;
}

/// {@category Struct}
class TASKDIALOG_BUTTON extends Struct {
  @Int32()
  external int nButtonID;

  external Pointer<Utf16> pszButtonText;
}

/// {@category Struct}
class TA_CUBIC_BEZIER extends Struct {
  external TA_TIMINGFUNCTION header;

  @Float()
  external double rX0;

  @Float()
  external double rY0;

  @Float()
  external double rX1;

  @Float()
  external double rY1;
}

/// {@category Struct}
class TA_TIMINGFUNCTION extends Struct {
  @Int32()
  external int eTimingFunctionType;
}

/// {@category Struct}
class TA_TRANSFORM extends Struct {
  @Int32()
  external int eTransformType;

  @Uint32()
  external int dwTimingFunctionId;

  @Uint32()
  external int dwStartTime;

  @Uint32()
  external int dwDurationTime;

  @Int32()
  external int eFlags;
}

/// {@category Struct}
class TA_TRANSFORM_2D extends Struct {
  external TA_TRANSFORM header;

  @Float()
  external double rX;

  @Float()
  external double rY;

  @Float()
  external double rInitialX;

  @Float()
  external double rInitialY;

  @Float()
  external double rOriginX;

  @Float()
  external double rOriginY;
}

/// {@category Struct}
class TA_TRANSFORM_CLIP extends Struct {
  external TA_TRANSFORM header;

  @Float()
  external double rLeft;

  @Float()
  external double rTop;

  @Float()
  external double rRight;

  @Float()
  external double rBottom;

  @Float()
  external double rInitialLeft;

  @Float()
  external double rInitialTop;

  @Float()
  external double rInitialRight;

  @Float()
  external double rInitialBottom;
}

/// {@category Struct}
class TA_TRANSFORM_OPACITY extends Struct {
  external TA_TRANSFORM header;

  @Float()
  external double rOpacity;

  @Float()
  external double rInitialOpacity;
}

/// {@category Struct}
class TBADDBITMAP extends Struct {
  @IntPtr()
  external int hInst;

  @IntPtr()
  external int nID;
}

/// {@category Struct}
class TBBUTTON extends Struct {
  @Int32()
  external int iBitmap;

  @Int32()
  external int idCommand;

  @Uint8()
  external int fsState;

  @Uint8()
  external int fsStyle;

  @Array(6)
  external Array<Uint8> bReserved;

  @IntPtr()
  external int dwData;

  @IntPtr()
  external int iString;
}

/// {@category Struct}
class TBBUTTONINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  @Int32()
  external int idCommand;

  @Int32()
  external int iImage;

  @Uint8()
  external int fsState;

  @Uint8()
  external int fsStyle;

  @Uint16()
  external int cx;

  @IntPtr()
  external int lParam;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchText;
}

/// {@category Struct}
class TBINSERTMARK extends Struct {
  @Int32()
  external int iButton;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class TBMETRICS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  @Int32()
  external int cxPad;

  @Int32()
  external int cyPad;

  @Int32()
  external int cxBarPad;

  @Int32()
  external int cyBarPad;

  @Int32()
  external int cxButtonSpacing;

  @Int32()
  external int cyButtonSpacing;
}

/// {@category Struct}
class TBREPLACEBITMAP extends Struct {
  @IntPtr()
  external int hInstOld;

  @IntPtr()
  external int nIDOld;

  @IntPtr()
  external int hInstNew;

  @IntPtr()
  external int nIDNew;

  @Int32()
  external int nButtons;
}

/// {@category Struct}
class TBSAVEPARAMS extends Struct {
  @IntPtr()
  external int hkr;

  external Pointer<Utf16> pszSubKey;

  external Pointer<Utf16> pszValueName;
}

/// {@category Struct}
class TCHITTESTINFO extends Struct {
  external POINT pt;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class TCITEMHEADER extends Struct {
  @Uint32()
  external int mask;

  @Uint32()
  external int lpReserved1;

  @Uint32()
  external int lpReserved2;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;
}

/// {@category Struct}
class TCITEM extends Struct {
  @Uint32()
  external int mask;

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStateMask;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class TOUCH_HIT_TESTING_INPUT extends Struct {
  @Uint32()
  external int pointerId;

  external POINT point;

  external RECT boundingBox;

  external RECT nonOccludedBoundingBox;

  @Uint32()
  external int orientation;
}

/// {@category Struct}
class TOUCH_HIT_TESTING_PROXIMITY_EVALUATION extends Struct {
  @Uint16()
  external int score;

  external POINT adjustedPoint;
}

/// {@category Struct}
class TTGETTITLE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int uTitleBitmap;

  @Uint32()
  external int cch;

  external Pointer<Utf16> pszTitle;
}

/// {@category Struct}
class TTHITTESTINFO extends Struct {
  @IntPtr()
  external int hwnd;

  external POINT pt;

  external TTTOOLINFO ti;
}

/// {@category Struct}
class TTTOOLINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int uFlags;

  @IntPtr()
  external int hwnd;

  @IntPtr()
  external int uId;

  external RECT rect;

  @IntPtr()
  external int hinst;

  external Pointer<Utf16> lpszText;

  @IntPtr()
  external int lParam;

  external Pointer lpReserved;
}

/// {@category Struct}
class TVGETITEMPARTRECTINFO extends Struct {
  @IntPtr()
  external int hti;

  external Pointer<RECT> prc;

  @Int32()
  external int partID;
}

/// {@category Struct}
class TVHITTESTINFO extends Struct {
  external POINT pt;

  @Uint32()
  external int flags;

  @IntPtr()
  external int hItem;
}

/// {@category Struct}
class TVINSERTSTRUCT extends Struct {
  @IntPtr()
  external int hParent;

  @IntPtr()
  external int hInsertAfter;

  external _TVINSERTSTRUCTW__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _TVINSERTSTRUCTW__Anonymous_e__Union extends Union {
  external TVITEMEX itemex;

  external TVITEM item;
}

extension TVINSERTSTRUCTW_Extension on TVINSERTSTRUCT {
  TVITEMEX get itemex => this.Anonymous.itemex;
  set itemex(TVITEMEX value) => this.Anonymous.itemex = value;

  TVITEM get item => this.Anonymous.item;
  set item(TVITEM value) => this.Anonymous.item = value;
}

/// {@category Struct}
class TVITEMEX extends Struct {
  @Uint32()
  external int mask;

  @IntPtr()
  external int hItem;

  @Uint32()
  external int state;

  @Uint32()
  external int stateMask;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;

  @Int32()
  external int iSelectedImage;

  @Int32()
  external int cChildren;

  @IntPtr()
  external int lParam;

  @Int32()
  external int iIntegral;

  @Uint32()
  external int uStateEx;

  @IntPtr()
  external int hwnd;

  @Int32()
  external int iExpandedImage;

  @Int32()
  external int iReserved;
}

/// {@category Struct}
class TVITEM extends Struct {
  @Uint32()
  external int mask;

  @IntPtr()
  external int hItem;

  @Uint32()
  external int state;

  @Uint32()
  external int stateMask;

  external Pointer<Utf16> pszText;

  @Int32()
  external int cchTextMax;

  @Int32()
  external int iImage;

  @Int32()
  external int iSelectedImage;

  @Int32()
  external int cChildren;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class TVSORTCB extends Struct {
  @IntPtr()
  external int hParent;

  external Pointer<NativeFunction<PFNTVCOMPARE>> lpfnCompare;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class UDACCEL extends Struct {
  @Uint32()
  external int nSec;

  @Uint32()
  external int nInc;
}

/// {@category Struct}
class USAGE_PROPERTIES extends Struct {
  @Uint16()
  external int level;

  @Uint16()
  external int page;

  @Uint16()
  external int usage;

  @Int32()
  external int logicalMinimum;

  @Int32()
  external int logicalMaximum;

  @Uint16()
  external int unit;

  @Uint16()
  external int exponent;

  @Uint8()
  external int count;

  @Int32()
  external int physicalMinimum;

  @Int32()
  external int physicalMaximum;
}

/// {@category Struct}
class WTA_OPTIONS extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwMask;
}
