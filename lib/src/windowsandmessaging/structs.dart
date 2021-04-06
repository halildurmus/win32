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

class HWND extends Struct {
  @IntPtr()
  external int Value;
}

class LPARAM extends Struct {
  @IntPtr()
  external int Value;
}

class WPARAM extends Struct {
  @IntPtr()
  external int Value;
}

class HHOOK extends Struct {
  @IntPtr()
  external int Value;
}

class MESSAGE_RESOURCE_ENTRY extends Struct {
  @Uint16()
  external int Length;
  @Uint16()
  external int Flags;
  @Array(1)
  external Array<Uint8> Text;
}

class MESSAGE_RESOURCE_BLOCK extends Struct {
  @Uint32()
  external int LowId;
  @Uint32()
  external int HighId;
  @Uint32()
  external int OffsetToEntries;
}

class MESSAGE_RESOURCE_DATA extends Struct {
  @Uint32()
  external int NumberOfBlocks;
  @Array(1)
  external Array<MESSAGE_RESOURCE_BLOCK> Blocks;
}

class CBT_CREATEWNDA extends Struct {
  external Pointer<CREATESTRUCTA> lpcs;
  @IntPtr()
  external int hwndInsertAfter;
}

class CBT_CREATEWNDW extends Struct {
  external Pointer<CREATESTRUCT> lpcs;
  @IntPtr()
  external int hwndInsertAfter;
}

class CBTACTIVATESTRUCT extends Struct {
  @Int32()
  external int fMouse;
  @IntPtr()
  external int hWndActive;
}

class SHELLHOOKINFO extends Struct {
  @IntPtr()
  external int hwnd;
  external RECT rc;
}

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

class MOUSEHOOKSTRUCT extends Struct {
  external POINT pt;
  @IntPtr()
  external int hwnd;
  @Uint32()
  external int wHitTestCode;
  @IntPtr()
  external int dwExtraInfo;
}

class MOUSEHOOKSTRUCTEX extends Struct {
  external MOUSEHOOKSTRUCT __AnonymousBase_winuser_L1173_C46;
  @Uint32()
  external int mouseData;
}

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

class WNDCLASSEXA extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;
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
  external Pointer<Utf8> lpszMenuName;
  external Pointer<Utf8> lpszClassName;
  @IntPtr()
  external int hIconSm;
}

class WNDCLASSEXW extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;
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

class WNDCLASSA extends Struct {
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;
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
  external Pointer<Utf8> lpszMenuName;
  external Pointer<Utf8> lpszClassName;
}

class WNDCLASSW extends Struct {
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;
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

class MINMAXINFO extends Struct {
  external POINT ptReserved;
  external POINT ptMaxSize;
  external POINT ptMaxPosition;
  external POINT ptMinTrackSize;
  external POINT ptMaxTrackSize;
}

class MDINEXTMENU extends Struct {
  @IntPtr()
  external int hmenuIn;
  @IntPtr()
  external int hmenuNext;
  @IntPtr()
  external int hwndNext;
}

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

class NCCALCSIZE_PARAMS extends Struct {
  @Array(3)
  external Array<RECT> rgrc;
  external Pointer<WINDOWPOS> lppos;
}

class ACCEL extends Struct {
  @Uint8()
  external int fVirt;
  @Uint16()
  external int key;
  @Uint16()
  external int cmd;
}

class CREATESTRUCTA extends Struct {
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
  external Pointer<Utf8> lpszName;
  external Pointer<Utf8> lpszClass;
  @Uint32()
  external int dwExStyle;
}

class CREATESTRUCTW extends Struct {
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

class STYLESTRUCT extends Struct {
  @Uint32()
  external int styleOld;
  @Uint32()
  external int styleNew;
}

class BSMINFO extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hdesk;
  @IntPtr()
  external int hwnd;
  external LUID luid;
}

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

class TPMPARAMS extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcExclude;
}

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

class MENUITEMINFOA extends Struct {
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
  external Pointer<Utf8> dwTypeData;
  @Uint32()
  external int cch;
  @IntPtr()
  external int hbmpItem;
}

class MENUITEMINFOW extends Struct {
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

class MSGBOXPARAMSA extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf8> lpszText;
  external Pointer<Utf8> lpszCaption;
  @Uint32()
  external int dwStyle;
  external Pointer<Utf8> lpszIcon;
  @IntPtr()
  external int dwContextHelpId;
  external MSGBOXCALLBACK lpfnMsgBoxCallback;
  @Uint32()
  external int dwLanguageId;
}

class MSGBOXPARAMSW extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpszText;
  external Pointer<Utf16> lpszCaption;
  @Uint32()
  external int dwStyle;
  external Pointer<Utf16> lpszIcon;
  @IntPtr()
  external int dwContextHelpId;
  external MSGBOXCALLBACK lpfnMsgBoxCallback;
  @Uint32()
  external int dwLanguageId;
}

class MENUITEMTEMPLATEHEADER extends Struct {
  @Uint16()
  external int versionNumber;
  @Uint16()
  external int offset;
}

class MENUITEMTEMPLATE extends Struct {
  @Uint16()
  external int mtOption;
  @Uint16()
  external int mtID;
  @Array(1)
  external Array<Uint16> mtString;
}

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

class ICONINFOEXA extends Struct {
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
  @Array(129)
  external Array<Int8> szModName;
  @Array(129)
  external Array<Int8> szResName;
}

class ICONINFOEXW extends Struct {
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
  @Array(129)
  external Array<Uint16> szModName;
  @Array(129)
  external Array<Uint16> szResName;
}

class MDICREATESTRUCTA extends Struct {
  external Pointer<Utf8> szClass;
  external Pointer<Utf8> szTitle;
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

class MDICREATESTRUCTW extends Struct {
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

class CLIENTCREATESTRUCT extends Struct {
  @IntPtr()
  external int hWindowMenu;
  @Uint32()
  external int idFirstChild;
}

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

class NONCLIENTMETRICSA extends Struct {
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
  external LOGFONTA lfCaptionFont;
  @Int32()
  external int iSmCaptionWidth;
  @Int32()
  external int iSmCaptionHeight;
  external LOGFONTA lfSmCaptionFont;
  @Int32()
  external int iMenuWidth;
  @Int32()
  external int iMenuHeight;
  external LOGFONTA lfMenuFont;
  external LOGFONTA lfStatusFont;
  external LOGFONTA lfMessageFont;
  @Int32()
  external int iPaddedBorderWidth;
}

class NONCLIENTMETRICSW extends Struct {
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

class ICONMETRICSA extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iHorzSpacing;
  @Int32()
  external int iVertSpacing;
  @Int32()
  external int iTitleWrap;
  external LOGFONTA lfFont;
}

class ICONMETRICSW extends Struct {
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

class ANIMATIONINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iMinAnimate;
}

class AUDIODESCRIPTION extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int Enabled;
  @Uint32()
  external int Locale;
}

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

class CURSORINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flags;
  @IntPtr()
  external int hCursor;
  external POINT ptScreenPos;
}

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

class TITLEBARINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcTitleBar;
  @Array(6)
  external Array<Uint32> rgstate;
}

class TITLEBARINFOEX extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcTitleBar;
  @Array(6)
  external Array<Uint32> rgstate;
  @Array(6)
  external Array<RECT> rgrect;
}

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

class CHANGEFILTERSTRUCT extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int ExtStatus;
}

class IndexedResourceQualifier extends Struct {
  external Pointer<Utf16> name;
  external Pointer<Utf16> value;
}

class MrmResourceIndexerHandle extends Struct {
  external Pointer handle;
}

class MrmResourceIndexerMessage extends Struct {
  @Uint32()
  external int severity;
  @Uint32()
  external int id;
  external Pointer<Utf16> text;
}

class VS_FIXEDFILEINFO extends Struct {
  @Uint32()
  external int dwSignature;
  @Uint32()
  external int dwStrucVersion;
  @Uint32()
  external int dwFileVersionMS;
  @Uint32()
  external int dwFileVersionLS;
  @Uint32()
  external int dwProductVersionMS;
  @Uint32()
  external int dwProductVersionLS;
  @Uint32()
  external int dwFileFlagsMask;
  @Uint32()
  external int dwFileFlags;
  @Uint32()
  external int dwFileOS;
  @Uint32()
  external int dwFileType;
  @Uint32()
  external int dwFileSubtype;
  @Uint32()
  external int dwFileDateMS;
  @Uint32()
  external int dwFileDateLS;
}

class OPENFILENAME_NT4A extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf8> lpstrFilter;
  external Pointer<Utf8> lpstrCustomFilter;
  @Uint32()
  external int nMaxCustFilter;
  @Uint32()
  external int nFilterIndex;
  external Pointer<Utf8> lpstrFile;
  @Uint32()
  external int nMaxFile;
  external Pointer<Utf8> lpstrFileTitle;
  @Uint32()
  external int nMaxFileTitle;
  external Pointer<Utf8> lpstrInitialDir;
  external Pointer<Utf8> lpstrTitle;
  @Uint32()
  external int Flags;
  @Uint16()
  external int nFileOffset;
  @Uint16()
  external int nFileExtension;
  external Pointer<Utf8> lpstrDefExt;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<OFNHookProc>> lpfnHook;
  external Pointer<Utf8> lpTemplateName;
}

class OPENFILENAME_NT4W extends Struct {
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
  external Pointer<NativeFunction<OFNHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

class OPENFILENAMEA extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf8> lpstrFilter;
  external Pointer<Utf8> lpstrCustomFilter;
  @Uint32()
  external int nMaxCustFilter;
  @Uint32()
  external int nFilterIndex;
  external Pointer<Utf8> lpstrFile;
  @Uint32()
  external int nMaxFile;
  external Pointer<Utf8> lpstrFileTitle;
  @Uint32()
  external int nMaxFileTitle;
  external Pointer<Utf8> lpstrInitialDir;
  external Pointer<Utf8> lpstrTitle;
  @Uint32()
  external int Flags;
  @Uint16()
  external int nFileOffset;
  @Uint16()
  external int nFileExtension;
  external Pointer<Utf8> lpstrDefExt;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<OFNHookProc>> lpfnHook;
  external Pointer<Utf8> lpTemplateName;
  external Pointer pvReserved;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int FlagsEx;
}

class OPENFILENAMEW extends Struct {
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
  external Pointer<NativeFunction<OFNHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  external Pointer pvReserved;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int FlagsEx;
}

class OFNOTIFYA extends Struct {
  external NMHDR hdr;
  external Pointer<OPENFILENAMEA> lpOFN;
  external Pointer<Utf8> pszFile;
}

class OFNOTIFYW extends Struct {
  external NMHDR hdr;
  external Pointer<OPENFILENAME> lpOFN;
  external Pointer<Utf16> pszFile;
}

class OFNOTIFYEXA extends Struct {
  external NMHDR hdr;
  external Pointer<OPENFILENAMEA> lpOFN;
  external Pointer psf;
  external Pointer pidl;
}

class OFNOTIFYEXW extends Struct {
  external NMHDR hdr;
  external Pointer<OPENFILENAME> lpOFN;
  external Pointer psf;
  external Pointer pidl;
}

class CHOOSECOLORA extends Struct {
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
  external Pointer<NativeFunction<CCHookProc>> lpfnHook;
  external Pointer<Utf8> lpTemplateName;
}

class CHOOSECOLORW extends Struct {
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
  external Pointer<NativeFunction<CCHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

class FINDREPLACEA extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int Flags;
  external Pointer<Utf8> lpstrFindWhat;
  external Pointer<Utf8> lpstrReplaceWith;
  @Uint16()
  external int wFindWhatLen;
  @Uint16()
  external int wReplaceWithLen;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<FRHookProc>> lpfnHook;
  external Pointer<Utf8> lpTemplateName;
}

class FINDREPLACEW extends Struct {
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
  external Pointer<NativeFunction<FRHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

class CHOOSEFONTA extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDC;
  external Pointer<LOGFONTA> lpLogFont;
  @Int32()
  external int iPointSize;
  @Uint32()
  external int Flags;
  @Uint32()
  external int rgbColors;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<CFHookProc>> lpfnHook;
  external Pointer<Utf8> lpTemplateName;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf8> lpszStyle;
  @Uint32()
  external int nFontType;
  @Uint16()
  external int ___MISSING_ALIGNMENT__;
  @Int32()
  external int nSizeMin;
  @Int32()
  external int nSizeMax;
}

class CHOOSEFONTW extends Struct {
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
  external Pointer<NativeFunction<CFHookProc>> lpfnHook;
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

class PRINTDLGA extends Struct {
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
  external Pointer<PRINTHOOKPROC> lpfnPrintHook;
  external Pointer<SETUPHOOKPROC> lpfnSetupHook;
  external Pointer<Utf8> lpPrintTemplateName;
  external Pointer<Utf8> lpSetupTemplateName;
  @IntPtr()
  external int hPrintTemplate;
  @IntPtr()
  external int hSetupTemplate;
}

class PRINTDLGW extends Struct {
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
  external Pointer<PRINTHOOKPROC> lpfnPrintHook;
  external Pointer<SETUPHOOKPROC> lpfnSetupHook;
  external Pointer<Utf16> lpPrintTemplateName;
  external Pointer<Utf16> lpSetupTemplateName;
  @IntPtr()
  external int hPrintTemplate;
  @IntPtr()
  external int hSetupTemplate;
}

class PRINTPAGERANGE extends Struct {
  @Uint32()
  external int nFromPage;
  @Uint32()
  external int nToPage;
}

class PRINTDLGEXA extends Struct {
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
  external Pointer<Utf8> lpPrintTemplateName;
  external Pointer lpCallback;
  @Uint32()
  external int nPropertyPages;
  external Pointer<HPROPSHEETPAGE> lphPropertyPages;
  @Uint32()
  external int nStartPage;
  @Uint32()
  external int dwResultAction;
}

class PRINTDLGEXW extends Struct {
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
  external Pointer lpCallback;
  @Uint32()
  external int nPropertyPages;
  external Pointer<HPROPSHEETPAGE> lphPropertyPages;
  @Uint32()
  external int nStartPage;
  @Uint32()
  external int dwResultAction;
}

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

class PAGESETUPDLGA extends Struct {
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
  external Pointer<PAGESETUPHOOK> lpfnPageSetupHook;
  external Pointer<PAGEPAINTHOOK> lpfnPagePaintHook;
  external Pointer<Utf8> lpPageSetupTemplateName;
  @IntPtr()
  external int hPageSetupTemplate;
}

class PAGESETUPDLGW extends Struct {
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
  external Pointer<PAGESETUPHOOK> lpfnPageSetupHook;
  external Pointer<PAGEPAINTHOOK> lpfnPagePaintHook;
  external Pointer<Utf16> lpPageSetupTemplateName;
  @IntPtr()
  external int hPageSetupTemplate;
}
