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
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/windowsandmessaging/callbacks.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/IUnknown.dart';

/// {@category Struct}
class ACCEL extends Struct {
  @Uint8()
  external int fVirt;
  @Uint16()
  external int key;
  @Uint16()
  external int cmd;
}

/// {@category Struct}
class ALTTABINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int cItems;
  @Int32()
  external int cColumns;
  @Int32()
  external int cRows;
  @Int32()
  external int iColFocus;
  @Int32()
  external int iRowFocus;
  @Int32()
  external int cxItem;
  @Int32()
  external int cyItem;
  external POINT ptStart;
}

/// {@category Struct}
class ANIMATIONINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iMinAnimate;
}

/// {@category Struct}
class AUDIODESCRIPTION extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int Enabled;
  @Uint32()
  external int Locale;
}

/// {@category Struct}
class CBTACTIVATESTRUCT extends Struct {
  @Int32()
  external int fMouse;
  @IntPtr()
  external int hWndActive;
}

/// {@category Struct}
class CBT_CREATEWND extends Struct {
  external Pointer<CREATESTRUCT> lpcs;
  @IntPtr()
  external int hwndInsertAfter;
}

/// {@category Struct}
class CHANGEFILTERSTRUCT extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int ExtStatus;
}

/// {@category Struct}
class CHOOSECOLOR extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int rgbResult;
  external Pointer<Uint32> lpCustColors;
  @Uint32()
  external int Flags;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPCCHOOKPROC>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

/// {@category Struct}
class CHOOSEFONT extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDC;
  external Pointer<LOGFONT> lpLogFont;
  @Int32()
  external int iPointSize;
  @Uint32()
  external int Flags;
  @Uint32()
  external int rgbColors;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPCFHOOKPROC>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpszStyle;
  @Uint32()
  external int nFontType;
  @Uint16()
  external int ___MISSING_ALIGNMENT__;
  @Int32()
  external int nSizeMin;
  @Int32()
  external int nSizeMax;
}

/// {@category Struct}
class CLIENTCREATESTRUCT extends Struct {
  @IntPtr()
  external int hWindowMenu;
  @Uint32()
  external int idFirstChild;
}

/// {@category Struct}
class CREATESTRUCT extends Struct {
  external Pointer lpCreateParams;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int hMenu;
  @IntPtr()
  external int hwndParent;
  @Int32()
  external int cy;
  @Int32()
  external int cx;
  @Int32()
  external int y;
  @Int32()
  external int x;
  @Int32()
  external int style;
  external Pointer<Utf16> lpszName;
  external Pointer<Utf16> lpszClass;
  @Uint32()
  external int dwExStyle;
}

/// {@category Struct}
class CURSORINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flags;
  @IntPtr()
  external int hCursor;
  external POINT ptScreenPos;
}

/// {@category Struct}
class CURSORSHAPE extends Struct {
  @Int32()
  external int xHotSpot;
  @Int32()
  external int yHotSpot;
  @Int32()
  external int cx;
  @Int32()
  external int cy;
  @Int32()
  external int cbWidth;
  @Uint8()
  external int Planes;
  @Uint8()
  external int BitsPixel;
}

/// {@category Struct}
class CWPRETSTRUCT extends Struct {
  @IntPtr()
  external int lResult;
  @IntPtr()
  external int lParam;
  @IntPtr()
  external int wParam;
  @Uint32()
  external int message;
  @IntPtr()
  external int hwnd;
}

/// {@category Struct}
class CWPSTRUCT extends Struct {
  @IntPtr()
  external int lParam;
  @IntPtr()
  external int wParam;
  @Uint32()
  external int message;
  @IntPtr()
  external int hwnd;
}

/// {@category Struct}
class DEBUGHOOKINFO extends Struct {
  @Uint32()
  external int idThread;
  @Uint32()
  external int idThreadInstaller;
  @IntPtr()
  external int lParam;
  @IntPtr()
  external int wParam;
  @Int32()
  external int code;
}

/// {@category Struct}
class DEVNAMES extends Struct {
  @Uint16()
  external int wDriverOffset;
  @Uint16()
  external int wDeviceOffset;
  @Uint16()
  external int wOutputOffset;
  @Uint16()
  external int wDefault;
}

/// {@category Struct}
@Packed(2)
class DLGITEMTEMPLATE extends Struct {
  @Uint32()
  external int style;
  @Uint32()
  external int dwExtendedStyle;
  @Int16()
  external int x;
  @Int16()
  external int y;
  @Int16()
  external int cx;
  @Int16()
  external int cy;
  @Uint16()
  external int id;
}

/// {@category Struct}
@Packed(2)
class DLGTEMPLATE extends Struct {
  @Uint32()
  external int style;
  @Uint32()
  external int dwExtendedStyle;
  @Uint16()
  external int cdit;
  @Int16()
  external int x;
  @Int16()
  external int y;
  @Int16()
  external int cx;
  @Int16()
  external int cy;
}

/// {@category Struct}
class DROPSTRUCT extends Struct {
  @IntPtr()
  external int hwndSource;
  @IntPtr()
  external int hwndSink;
  @Uint32()
  external int wFmt;
  @IntPtr()
  external int dwData;
  external POINT ptDrop;
  @Uint32()
  external int dwControlData;
}

/// {@category Struct}
class EVENTMSG extends Struct {
  @Uint32()
  external int message;
  @Uint32()
  external int paramL;
  @Uint32()
  external int paramH;
  @Uint32()
  external int time;
  @IntPtr()
  external int hwnd;
}

/// {@category Struct}
class FINDREPLACE extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int Flags;
  external Pointer<Utf16> lpstrFindWhat;
  external Pointer<Utf16> lpstrReplaceWith;
  @Uint16()
  external int wFindWhatLen;
  @Uint16()
  external int wReplaceWithLen;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPFRHOOKPROC>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

/// {@category Struct}
class GUITHREADINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flags;
  @IntPtr()
  external int hwndActive;
  @IntPtr()
  external int hwndFocus;
  @IntPtr()
  external int hwndCapture;
  @IntPtr()
  external int hwndMenuOwner;
  @IntPtr()
  external int hwndMoveSize;
  @IntPtr()
  external int hwndCaret;
  external RECT rcCaret;
}

/// {@category Struct}
class HARDWAREHOOKSTRUCT extends Struct {
  @IntPtr()
  external int hwnd;
  @Uint32()
  external int message;
  @IntPtr()
  external int wParam;
  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class ICONINFO extends Struct {
  @Int32()
  external int fIcon;
  @Uint32()
  external int xHotspot;
  @Uint32()
  external int yHotspot;
  @IntPtr()
  external int hbmMask;
  @IntPtr()
  external int hbmColor;
}

/// {@category Struct}
class ICONINFOEX extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int fIcon;
  @Uint32()
  external int xHotspot;
  @Uint32()
  external int yHotspot;
  @IntPtr()
  external int hbmMask;
  @IntPtr()
  external int hbmColor;
  @Uint16()
  external int wResID;
  @Array(260)
  external Array<Uint16> _szModName;

  String get szModName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szModName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szModName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szModName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szResName;

  String get szResName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szResName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szResName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szResName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class ICONMETRICS extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iHorzSpacing;
  @Int32()
  external int iVertSpacing;
  @Int32()
  external int iTitleWrap;
  external LOGFONT lfFont;
}

/// {@category Struct}
class IndexedResourceQualifier extends Struct {
  external Pointer<Utf16> name;
  external Pointer<Utf16> value;
}

/// {@category Struct}
class KBDLLHOOKSTRUCT extends Struct {
  @Uint32()
  external int vkCode;
  @Uint32()
  external int scanCode;
  @Uint32()
  external int flags;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class MDICREATESTRUCT extends Struct {
  external Pointer<Utf16> szClass;
  external Pointer<Utf16> szTitle;
  @IntPtr()
  external int hOwner;
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Int32()
  external int cx;
  @Int32()
  external int cy;
  @Uint32()
  external int style;
  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class MDINEXTMENU extends Struct {
  @IntPtr()
  external int hmenuIn;
  @IntPtr()
  external int hmenuNext;
  @IntPtr()
  external int hwndNext;
}

/// {@category Struct}
class MENUBARINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcBar;
  @IntPtr()
  external int hMenu;
  @IntPtr()
  external int hwndMenu;
  @Int32()
  external int _bitfield;
}

/// {@category Struct}
class MENUGETOBJECTINFO extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int uPos;
  @IntPtr()
  external int hmenu;
  external Pointer riid;
  external Pointer pvObj;
}

/// {@category Struct}
class MENUINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @Uint32()
  external int dwStyle;
  @Uint32()
  external int cyMax;
  @IntPtr()
  external int hbrBack;
  @Uint32()
  external int dwContextHelpID;
  @IntPtr()
  external int dwMenuData;
}

/// {@category Struct}
class MENUITEMINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @Uint32()
  external int fType;
  @Uint32()
  external int fState;
  @Uint32()
  external int wID;
  @IntPtr()
  external int hSubMenu;
  @IntPtr()
  external int hbmpChecked;
  @IntPtr()
  external int hbmpUnchecked;
  @IntPtr()
  external int dwItemData;
  external Pointer<Utf16> dwTypeData;
  @Uint32()
  external int cch;
  @IntPtr()
  external int hbmpItem;
}

/// {@category Struct}
class MENUITEMTEMPLATE extends Struct {
  @Uint16()
  external int mtOption;
  @Uint16()
  external int mtID;
  @Array(1)
  external Array<Uint16> _mtString;

  String get mtString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_mtString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set mtString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _mtString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class MENUITEMTEMPLATEHEADER extends Struct {
  @Uint16()
  external int versionNumber;
  @Uint16()
  external int offset;
}

/// {@category Struct}
class MESSAGE_RESOURCE_BLOCK extends Struct {
  @Uint32()
  external int LowId;
  @Uint32()
  external int HighId;
  @Uint32()
  external int OffsetToEntries;
}

/// {@category Struct}
class MESSAGE_RESOURCE_ENTRY extends Struct {
  @Uint16()
  external int Length;
  @Uint16()
  external int Flags;
  @Array(1)
  external Array<Uint8> Text;
}

/// {@category Struct}
class MINIMIZEDMETRICS extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iWidth;
  @Int32()
  external int iHorzGap;
  @Int32()
  external int iVertGap;
  @Uint32()
  external int iArrange;
}

/// {@category Struct}
class MINMAXINFO extends Struct {
  external POINT ptReserved;
  external POINT ptMaxSize;
  external POINT ptMaxPosition;
  external POINT ptMinTrackSize;
  external POINT ptMaxTrackSize;
}

/// {@category Struct}
class MOUSEHOOKSTRUCT extends Struct {
  external POINT pt;
  @IntPtr()
  external int hwnd;
  @Uint32()
  external int wHitTestCode;
  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class MOUSEHOOKSTRUCTEX extends Struct {
  external MOUSEHOOKSTRUCT __AnonymousBase_winuser_L1173_C46;
  @Uint32()
  external int mouseData;
}

/// {@category Struct}
class MSG extends Struct {
  @IntPtr()
  external int hwnd;
  @Uint32()
  external int message;
  @IntPtr()
  external int wParam;
  @IntPtr()
  external int lParam;
  @Uint32()
  external int time;
  external POINT pt;
}

/// {@category Struct}
class MSLLHOOKSTRUCT extends Struct {
  external POINT pt;
  @Uint32()
  external int mouseData;
  @Uint32()
  external int flags;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// {@category Struct}
class MrmResourceIndexerHandle extends Struct {
  external Pointer handle;
}

/// {@category Struct}
class MrmResourceIndexerMessage extends Struct {
  @Uint32()
  external int severity;
  @Uint32()
  external int id;
  external Pointer<Utf16> text;
}

/// {@category Struct}
class NCCALCSIZE_PARAMS extends Struct {
  @Array(3)
  external Array<RECT> rgrc;
  external Pointer<WINDOWPOS> lppos;
}

/// {@category Struct}
class NONCLIENTMETRICS extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iBorderWidth;
  @Int32()
  external int iScrollWidth;
  @Int32()
  external int iScrollHeight;
  @Int32()
  external int iCaptionWidth;
  @Int32()
  external int iCaptionHeight;
  external LOGFONT lfCaptionFont;
  @Int32()
  external int iSmCaptionWidth;
  @Int32()
  external int iSmCaptionHeight;
  external LOGFONT lfSmCaptionFont;
  @Int32()
  external int iMenuWidth;
  @Int32()
  external int iMenuHeight;
  external LOGFONT lfMenuFont;
  external LOGFONT lfStatusFont;
  external LOGFONT lfMessageFont;
  @Int32()
  external int iPaddedBorderWidth;
}

/// {@category Struct}
class OPENFILENAME extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpstrFilter;
  external Pointer<Utf16> lpstrCustomFilter;
  @Uint32()
  external int nMaxCustFilter;
  @Uint32()
  external int nFilterIndex;
  external Pointer<Utf16> lpstrFile;
  @Uint32()
  external int nMaxFile;
  external Pointer<Utf16> lpstrFileTitle;
  @Uint32()
  external int nMaxFileTitle;
  external Pointer<Utf16> lpstrInitialDir;
  external Pointer<Utf16> lpstrTitle;
  @Uint32()
  external int Flags;
  @Uint16()
  external int nFileOffset;
  @Uint16()
  external int nFileExtension;
  external Pointer<Utf16> lpstrDefExt;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  external Pointer pvReserved;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int FlagsEx;
}

/// {@category Struct}
class OPENFILENAME_NT4 extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpstrFilter;
  external Pointer<Utf16> lpstrCustomFilter;
  @Uint32()
  external int nMaxCustFilter;
  @Uint32()
  external int nFilterIndex;
  external Pointer<Utf16> lpstrFile;
  @Uint32()
  external int nMaxFile;
  external Pointer<Utf16> lpstrFileTitle;
  @Uint32()
  external int nMaxFileTitle;
  external Pointer<Utf16> lpstrInitialDir;
  external Pointer<Utf16> lpstrTitle;
  @Uint32()
  external int Flags;
  @Uint16()
  external int nFileOffset;
  @Uint16()
  external int nFileExtension;
  external Pointer<Utf16> lpstrDefExt;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPOFNHOOKPROC>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

/// {@category Struct}
class PAGESETUPDLG extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDevMode;
  @IntPtr()
  external int hDevNames;
  @Uint32()
  external int Flags;
  external POINT ptPaperSize;
  external RECT rtMinMargin;
  external RECT rtMargin;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPPAGESETUPHOOK>> lpfnPageSetupHook;
  external Pointer<NativeFunction<LPPAGEPAINTHOOK>> lpfnPagePaintHook;
  external Pointer<Utf16> lpPageSetupTemplateName;
  @IntPtr()
  external int hPageSetupTemplate;
}

/// {@category Struct}
class PRINTDLGEX extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDevMode;
  @IntPtr()
  external int hDevNames;
  @IntPtr()
  external int hDC;
  @Uint32()
  external int Flags;
  @Uint32()
  external int Flags2;
  @Uint32()
  external int ExclusionFlags;
  @Uint32()
  external int nPageRanges;
  @Uint32()
  external int nMaxPageRanges;
  external Pointer<PRINTPAGERANGE> lpPageRanges;
  @Uint32()
  external int nMinPage;
  @Uint32()
  external int nMaxPage;
  @Uint32()
  external int nCopies;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpPrintTemplateName;
  external COMObject lpCallback;
  @Uint32()
  external int nPropertyPages;
  external Pointer<IntPtr> lphPropertyPages;
  @Uint32()
  external int nStartPage;
  @Uint32()
  external int dwResultAction;
}

/// {@category Struct}
class PRINTDLG extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDevMode;
  @IntPtr()
  external int hDevNames;
  @IntPtr()
  external int hDC;
  @Uint32()
  external int Flags;
  @Uint16()
  external int nFromPage;
  @Uint16()
  external int nToPage;
  @Uint16()
  external int nMinPage;
  @Uint16()
  external int nMaxPage;
  @Uint16()
  external int nCopies;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<LPPRINTHOOKPROC>> lpfnPrintHook;
  external Pointer<NativeFunction<LPSETUPHOOKPROC>> lpfnSetupHook;
  external Pointer<Utf16> lpPrintTemplateName;
  external Pointer<Utf16> lpSetupTemplateName;
  @IntPtr()
  external int hPrintTemplate;
  @IntPtr()
  external int hSetupTemplate;
}

/// {@category Struct}
class PRINTPAGERANGE extends Struct {
  @Uint32()
  external int nFromPage;
  @Uint32()
  external int nToPage;
}

/// {@category Struct}
class SHELLHOOKINFO extends Struct {
  @IntPtr()
  external int hwnd;
  external RECT rc;
}

/// {@category Struct}
class STYLESTRUCT extends Struct {
  @Uint32()
  external int styleOld;
  @Uint32()
  external int styleNew;
}

/// {@category Struct}
class TITLEBARINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcTitleBar;
  @Array(6)
  external Array<Uint32> rgstate;
}

/// {@category Struct}
class TITLEBARINFOEX extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcTitleBar;
  @Array(6)
  external Array<Uint32> rgstate;
  @Array(6)
  external Array<RECT> rgrect;
}

/// {@category Struct}
class TPMPARAMS extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcExclude;
}

/// {@category Struct}
class TouchPredictionParameters extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwLatency;
  @Uint32()
  external int dwSampleTime;
  @Uint32()
  external int bUseHWTimeStamp;
}

/// {@category Struct}
class UPDATELAYEREDWINDOWINFO extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hdcDst;
  external Pointer<POINT> pptDst;
  external Pointer<SIZE> psize;
  @IntPtr()
  external int hdcSrc;
  external Pointer<POINT> pptSrc;
  @Uint32()
  external int crKey;
  external Pointer<BLENDFUNCTION> pblend;
  @Uint32()
  external int dwFlags;
  external Pointer<RECT> prcDirty;
}

/// {@category Struct}
class WINDOWINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcWindow;
  external RECT rcClient;
  @Uint32()
  external int dwStyle;
  @Uint32()
  external int dwExStyle;
  @Uint32()
  external int dwWindowStatus;
  @Uint32()
  external int cxWindowBorders;
  @Uint32()
  external int cyWindowBorders;
  @Uint16()
  external int atomWindowType;
  @Uint16()
  external int wCreatorVersion;
}

/// {@category Struct}
class WINDOWPLACEMENT extends Struct {
  @Uint32()
  external int length;
  @Uint32()
  external int flags;
  @Uint32()
  external int showCmd;
  external POINT ptMinPosition;
  external POINT ptMaxPosition;
  external RECT rcNormalPosition;
}

/// {@category Struct}
class WINDOWPOS extends Struct {
  @IntPtr()
  external int hwnd;
  @IntPtr()
  external int hwndInsertAfter;
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Int32()
  external int cx;
  @Int32()
  external int cy;
  @Uint32()
  external int flags;
}

/// {@category Struct}
class WNDCLASSEX extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;
  @Int32()
  external int cbClsExtra;
  @Int32()
  external int cbWndExtra;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int hIcon;
  @IntPtr()
  external int hCursor;
  @IntPtr()
  external int hbrBackground;
  external Pointer<Utf16> lpszMenuName;
  external Pointer<Utf16> lpszClassName;
  @IntPtr()
  external int hIconSm;
}

/// {@category Struct}
class WNDCLASS extends Struct {
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WNDPROC>> lpfnWndProc;
  @Int32()
  external int cbClsExtra;
  @Int32()
  external int cbWndExtra;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int hIcon;
  @IntPtr()
  external int hCursor;
  @IntPtr()
  external int hbrBackground;
  external Pointer<Utf16> lpszMenuName;
  external Pointer<Utf16> lpszClassName;
}
