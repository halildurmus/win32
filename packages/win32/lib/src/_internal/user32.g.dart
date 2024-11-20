// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Wrappers for Win32 API functions that wrap the native APIs and preserve the
// result of GetLastError(), making it easier to debug issues and handle errors
// reliably.
//
// ignore_for_file: non_constant_identifier_names, unused_import

@DefaultAsset('package:win32/win32.dart')
library;

import 'dart:ffi';

import 'package:meta/meta.dart';

import '../callbacks.g.dart';
import '../functions.dart';
import '../guid.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import 'win32.dart' show NativeWin32Result;

@internal
@Native<NativeWin32Result Function(HKL, Uint32)>()
external NativeWin32Result ActivateKeyboardLayout_Wrapper(int hkl, int flags);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result AddClipboardFormatListener_Wrapper(int hwnd);

@internal
@Native<NativeWin32Result Function(Pointer<RECT>, Uint32, BOOL)>()
external NativeWin32Result AdjustWindowRect_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
);

@internal
@Native<NativeWin32Result Function(Pointer<RECT>, Uint32, BOOL, Uint32)>()
external NativeWin32Result AdjustWindowRectEx_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<RECT>, Uint32, BOOL, Uint32, Uint32)
>()
external NativeWin32Result AdjustWindowRectExForDpi_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
  int dpi,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result AllowSetForegroundWindow_Wrapper(int dwProcessId);

@internal
@Native<NativeWin32Result Function(HWND, Uint32, Uint32)>()
external NativeWin32Result AnimateWindow_Wrapper(
  int hWnd,
  int dwTime,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, IntPtr, PCWSTR)>()
external NativeWin32Result AppendMenuW_Wrapper(
  int hMenu,
  int uFlags,
  int uIDNewItem,
  PCWSTR lpNewItem,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result ArrangeIconicWindows_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result BeginDeferWindowPos_Wrapper(int nNumWindows);

@internal
@Native<NativeWin32Result Function(BOOL)>()
external NativeWin32Result BlockInput_Wrapper(int fBlockIt);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result BringWindowToTop_Wrapper(int hWnd);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Uint32>, Uint32, WPARAM, LPARAM)
>()
external NativeWin32Result BroadcastSystemMessageW_Wrapper(
  int flags,
  Pointer<Uint32> lpInfo,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Uint32>,
    Uint32,
    WPARAM,
    LPARAM,
    Pointer<BSMINFO>,
  )
>()
external NativeWin32Result BroadcastSystemMessageExW_Wrapper(
  int flags,
  Pointer<Uint32> lpInfo,
  int msg,
  int wParam,
  int lParam,
  Pointer<BSMINFO> pbsmInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<POINT>,
    Pointer<SIZE>,
    Uint32,
    Pointer<RECT>,
    Pointer<RECT>,
  )
>()
external NativeWin32Result CalculatePopupWindowPosition_Wrapper(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  int flags,
  Pointer<RECT> excludeRect,
  Pointer<RECT> popupWindowPosition,
);

@internal
@Native<
  NativeWin32Result Function(HWND, Uint32, Pointer<RECT>, Uint32, Pointer<HWND>)
>()
external NativeWin32Result CascadeWindows_Wrapper(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<HWND> lpKids,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32)>()
external NativeWin32Result ChangeWindowMessageFilter_Wrapper(
  int message,
  int dwFlag,
);

@internal
@Native<
  NativeWin32Result Function(HWND, Uint32, Uint32, Pointer<CHANGEFILTERSTRUCT>)
>()
external NativeWin32Result ChangeWindowMessageFilterEx_Wrapper(
  int hwnd,
  int message,
  int action,
  Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Uint32)>()
external NativeWin32Result CheckDlgButton_Wrapper(
  int hDlg,
  int nIDButton,
  int uCheck,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Int32, Int32)>()
external NativeWin32Result CheckRadioButton_Wrapper(
  int hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton,
);

@internal
@Native<NativeWin32Result Function(Pointer<RECT>)>()
external NativeWin32Result ClipCursor_Wrapper(Pointer<RECT> lpRect);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result CloseClipboard_Wrapper();

@internal
@Native<NativeWin32Result Function(HGESTUREINFO)>()
external NativeWin32Result CloseGestureInfoHandle_Wrapper(int hGestureInfo);

@internal
@Native<NativeWin32Result Function(HTOUCHINPUT)>()
external NativeWin32Result CloseTouchInputHandle_Wrapper(int hTouchInput);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result CloseWindow_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(HICON)>()
external NativeWin32Result CopyIcon_Wrapper(int hIcon);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Int32, Int32, Uint32)>()
external NativeWin32Result CopyImage_Wrapper(
  int h,
  int type,
  int cx,
  int cy,
  int flags,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result CountClipboardFormats_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer<ACCEL>, Int32)>()
external NativeWin32Result CreateAcceleratorTableW_Wrapper(
  Pointer<ACCEL> paccel,
  int cAccel,
);

@internal
@Native<NativeWin32Result Function(HWND, HBITMAP, Int32, Int32)>()
external NativeWin32Result CreateCaret_Wrapper(
  int hWnd,
  int hBitmap,
  int nWidth,
  int nHeight,
);

@internal
@Native<
  NativeWin32Result Function(
    HINSTANCE,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Pointer,
  )
>()
external NativeWin32Result CreateCursor_Wrapper(
  int hInst,
  int xHotSpot,
  int yHotSpot,
  int nWidth,
  int nHeight,
  Pointer pvANDPlane,
  Pointer pvXORPlane,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    PCWSTR,
    Pointer<DEVMODE>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>()
external NativeWin32Result CreateDesktopW_Wrapper(
  PCWSTR lpszDesktop,
  PCWSTR lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    PCWSTR,
    Pointer<DEVMODE>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
    Pointer,
  )
>()
external NativeWin32Result CreateDesktopExW_Wrapper(
  PCWSTR lpszDesktop,
  PCWSTR lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
  int ulHeapSize,
  Pointer pvoid,
);

@internal
@Native<
  NativeWin32Result Function(
    HINSTANCE,
    Pointer<DLGTEMPLATE>,
    HWND,
    Pointer<NativeFunction<DLGPROC>>,
    LPARAM,
  )
>()
external NativeWin32Result CreateDialogIndirectParamW_Wrapper(
  int hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
);

@internal
@Native<
  NativeWin32Result Function(
    HINSTANCE,
    Int32,
    Int32,
    Uint8,
    Uint8,
    Pointer<Uint8>,
    Pointer<Uint8>,
  )
>()
external NativeWin32Result CreateIcon_Wrapper(
  int hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>, Uint32, BOOL, Uint32)>()
external NativeWin32Result CreateIconFromResource_Wrapper(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Uint8>,
    Uint32,
    BOOL,
    Uint32,
    Int32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result CreateIconFromResourceEx_Wrapper(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
  int cxDesired,
  int cyDesired,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer<ICONINFO>)>()
external NativeWin32Result CreateIconIndirect_Wrapper(
  Pointer<ICONINFO> piconinfo,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    PCWSTR,
    Uint32,
    Int32,
    Int32,
    Int32,
    Int32,
    HWND,
    HINSTANCE,
    LPARAM,
  )
>()
external NativeWin32Result CreateMDIWindowW_Wrapper(
  PCWSTR lpClassName,
  PCWSTR lpWindowName,
  int dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int hWndParent,
  int hInstance,
  int lParam,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result CreateMenu_Wrapper();

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result CreatePopupMenu_Wrapper();

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    PCWSTR,
    PCWSTR,
    Uint32,
    Int32,
    Int32,
    Int32,
    Int32,
    HWND,
    HMENU,
    HINSTANCE,
    Pointer,
  )
>()
external NativeWin32Result CreateWindowExW_Wrapper(
  int dwExStyle,
  PCWSTR lpClassName,
  PCWSTR lpWindowName,
  int dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int hWndParent,
  int hMenu,
  int hInstance,
  Pointer lpParam,
);

@internal
@Native<
  NativeWin32Result Function(
    PCWSTR,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>()
external NativeWin32Result CreateWindowStationW_Wrapper(
  PCWSTR lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
);

@internal
@Native<
  NativeWin32Result Function(
    HDWP,
    HWND,
    HWND,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result DeferWindowPos_Wrapper(
  int hWinPosInfo,
  int hWnd,
  int hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32)>()
external NativeWin32Result DeleteMenu_Wrapper(
  int hMenu,
  int uPosition,
  int uFlags,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result DestroyCaret_Wrapper();

@internal
@Native<NativeWin32Result Function(HCURSOR)>()
external NativeWin32Result DestroyCursor_Wrapper(int hCursor);

@internal
@Native<NativeWin32Result Function(HICON)>()
external NativeWin32Result DestroyIcon_Wrapper(int hIcon);

@internal
@Native<NativeWin32Result Function(HMENU)>()
external NativeWin32Result DestroyMenu_Wrapper(int hMenu);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result DestroyWindow_Wrapper(int hWnd);

@internal
@Native<
  NativeWin32Result Function(
    HINSTANCE,
    Pointer<DLGTEMPLATE>,
    HWND,
    Pointer<NativeFunction<DLGPROC>>,
    LPARAM,
  )
>()
external NativeWin32Result DialogBoxIndirectParamW_Wrapper(
  int hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
);

@internal
@Native<NativeWin32Result Function(HDC, Int32, Int32, HICON)>()
external NativeWin32Result DrawIcon_Wrapper(int hDC, int x, int y, int hIcon);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result EmptyClipboard_Wrapper();

@internal
@Native<NativeWin32Result Function(BOOL)>()
external NativeWin32Result EnableMouseInPointer_Wrapper(int fEnable);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result EnableNonClientDpiScaling_Wrapper(int hwnd);

@internal
@Native<NativeWin32Result Function(HWND, Uint32, Uint32)>()
external NativeWin32Result EnableScrollBar_Wrapper(
  int hWnd,
  int wSBflags,
  int wArrows,
);

@internal
@Native<NativeWin32Result Function(HDWP)>()
external NativeWin32Result EndDeferWindowPos_Wrapper(int hWinPosInfo);

@internal
@Native<NativeWin32Result Function(HWND, IntPtr)>()
external NativeWin32Result EndDialog_Wrapper(int hDlg, int nResult);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result EndMenu_Wrapper();

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result EnumClipboardFormats_Wrapper(int format);

@internal
@Native<
  NativeWin32Result Function(
    HDESK,
    Pointer<NativeFunction<WNDENUMPROC>>,
    LPARAM,
  )
>()
external NativeWin32Result EnumDesktopWindows_Wrapper(
  int hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)
>()
external NativeWin32Result EnumWindows_Wrapper(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, PCWSTR)>()
external NativeWin32Result FindWindowW_Wrapper(
  PCWSTR lpClassName,
  PCWSTR lpWindowName,
);

@internal
@Native<NativeWin32Result Function(HWND, HWND, PCWSTR, PCWSTR)>()
external NativeWin32Result FindWindowExW_Wrapper(
  int hWndParent,
  int hWndChildAfter,
  PCWSTR lpszClass,
  PCWSTR lpszWindow,
);

@internal
@Native<
  NativeWin32Result Function(HWND, Int32, Pointer<ALTTABINFO>, PWSTR, Uint32)
>()
external NativeWin32Result GetAltTabInfoW_Wrapper(
  int hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  PWSTR pszItemText,
  int cchItemText,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetCaretBlinkTime_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer<POINT>)>()
external NativeWin32Result GetCaretPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<NativeWin32Result Function(HINSTANCE, PCWSTR, Pointer<WNDCLASS>)>()
external NativeWin32Result GetClassInfoW_Wrapper(
  int hInstance,
  PCWSTR lpClassName,
  Pointer<WNDCLASS> lpWndClass,
);

@internal
@Native<NativeWin32Result Function(HINSTANCE, PCWSTR, Pointer<WNDCLASSEX>)>()
external NativeWin32Result GetClassInfoExW_Wrapper(
  int hInstance,
  PCWSTR lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32)>()
external NativeWin32Result GetClassLongPtrW_Wrapper(int hWnd, int nIndex);

@internal
@Native<NativeWin32Result Function(HWND, PWSTR, Int32)>()
external NativeWin32Result GetClassNameW_Wrapper(
  int hWnd,
  PWSTR lpClassName,
  int nMaxCount,
);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<RECT>)>()
external NativeWin32Result GetClientRect_Wrapper(
  int hWnd,
  Pointer<RECT> lpRect,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetClipboardData_Wrapper(int uFormat);

@internal
@Native<NativeWin32Result Function(Uint32, PWSTR, Int32)>()
external NativeWin32Result GetClipboardFormatNameW_Wrapper(
  int format,
  PWSTR lpszFormatName,
  int cchMaxCount,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetClipboardOwner_Wrapper();

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetClipboardViewer_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer<RECT>)>()
external NativeWin32Result GetClipCursor_Wrapper(Pointer<RECT> lpRect);

@internal
@Native<NativeWin32Result Function(Pointer<CURSORINFO>)>()
external NativeWin32Result GetCursorInfo_Wrapper(Pointer<CURSORINFO> pci);

@internal
@Native<NativeWin32Result Function(Pointer<POINT>)>()
external NativeWin32Result GetCursorPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result GetDialogControlDpiChangeBehavior_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result GetDialogDpiChangeBehavior_Wrapper(int hDlg);

@internal
@Native<NativeWin32Result Function(HWND, Int32)>()
external NativeWin32Result GetDlgItem_Wrapper(int hDlg, int nIDDlgItem);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Pointer<BOOL>, BOOL)>()
external NativeWin32Result GetDlgItemInt_Wrapper(
  int hDlg,
  int nIDDlgItem,
  Pointer<BOOL> lpTranslated,
  int bSigned,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, PWSTR, Int32)>()
external NativeWin32Result GetDlgItemTextW_Wrapper(
  int hDlg,
  int nIDDlgItem,
  PWSTR lpString,
  int cchMax,
);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    Uint32,
    Uint32,
    Pointer<Uint32>,
    Pointer<GESTURECONFIG>,
    Uint32,
  )
>()
external NativeWin32Result GetGestureConfig_Wrapper(
  int hwnd,
  int dwReserved,
  int dwFlags,
  Pointer<Uint32> pcIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(HGESTUREINFO, Uint32, Pointer<Uint8>)>()
external NativeWin32Result GetGestureExtraArgs_Wrapper(
  int hGestureInfo,
  int cbExtraArgs,
  Pointer<Uint8> pExtraArgs,
);

@internal
@Native<NativeWin32Result Function(HGESTUREINFO, Pointer<GESTUREINFO>)>()
external NativeWin32Result GetGestureInfo_Wrapper(
  int hGestureInfo,
  Pointer<GESTUREINFO> pGestureInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<GUITHREADINFO>)>()
external NativeWin32Result GetGUIThreadInfo_Wrapper(
  int idThread,
  Pointer<GUITHREADINFO> pgui,
);

@internal
@Native<NativeWin32Result Function(HICON, Pointer<ICONINFO>)>()
external NativeWin32Result GetIconInfo_Wrapper(
  int hIcon,
  Pointer<ICONINFO> piconinfo,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<HKL>)>()
external NativeWin32Result GetKeyboardLayoutList_Wrapper(
  int nBuff,
  Pointer<HKL> lpList,
);

@internal
@Native<NativeWin32Result Function(PWSTR)>()
external NativeWin32Result GetKeyboardLayoutNameW_Wrapper(PWSTR pwszKLID);

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>)>()
external NativeWin32Result GetKeyboardState_Wrapper(Pointer<Uint8> lpKeyState);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result GetKeyboardType_Wrapper(int nTypeFlag);

@internal
@Native<NativeWin32Result Function(Int32, PWSTR, Int32)>()
external NativeWin32Result GetKeyNameTextW_Wrapper(
  int lParam,
  PWSTR lpString,
  int cchSize,
);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    Pointer<COLORREF>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetLayeredWindowAttributes_Wrapper(
  int hwnd,
  Pointer<COLORREF> pcrKey,
  Pointer<Uint8> pbAlpha,
  Pointer<Uint32> pdwFlags,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Int32, Pointer<MENUBARINFO>)>()
external NativeWin32Result GetMenuBarInfo_Wrapper(
  int hwnd,
  int idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32)>()
external NativeWin32Result GetMenuDefaultItem_Wrapper(
  int hMenu,
  int fByPos,
  int gmdiFlags,
);

@internal
@Native<NativeWin32Result Function(HMENU, Pointer<MENUINFO>)>()
external NativeWin32Result GetMenuInfo_Wrapper(
  int param0,
  Pointer<MENUINFO> param1,
);

@internal
@Native<NativeWin32Result Function(HMENU)>()
external NativeWin32Result GetMenuItemCount_Wrapper(int hMenu);

@internal
@Native<
  NativeWin32Result Function(HMENU, Uint32, BOOL, Pointer<MENUITEMINFO>)
>()
external NativeWin32Result GetMenuItemInfoW_Wrapper(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmii,
);

@internal
@Native<NativeWin32Result Function(HWND, HMENU, Uint32, Pointer<RECT>)>()
external NativeWin32Result GetMenuItemRect_Wrapper(
  int hWnd,
  int hMenu,
  int uItem,
  Pointer<RECT> lprcItem,
);

@internal
@Native<NativeWin32Result Function(Pointer<MSG>, HWND, Uint32, Uint32)>()
external NativeWin32Result GetMessageW_Wrapper(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<MOUSEMOVEPOINT>,
    Pointer<MOUSEMOVEPOINT>,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result GetMouseMovePointsEx_Wrapper(
  int cbSize,
  Pointer<MOUSEMOVEPOINT> lppt,
  Pointer<MOUSEMOVEPOINT> lpptBuf,
  int nBufPoints,
  int resolution,
);

@internal
@Native<NativeWin32Result Function(HWND, HWND, BOOL)>()
external NativeWin32Result GetNextDlgGroupItem_Wrapper(
  int hDlg,
  int hCtl,
  int bPrevious,
);

@internal
@Native<NativeWin32Result Function(HWND, HWND, BOOL)>()
external NativeWin32Result GetNextDlgTabItem_Wrapper(
  int hDlg,
  int hCtl,
  int bPrevious,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetOpenClipboardWindow_Wrapper();

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result GetParent_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(Pointer<POINT>)>()
external NativeWin32Result GetPhysicalCursorPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Uint32>)>()
external NativeWin32Result GetPointerCursorId_Wrapper(
  int pointerId,
  Pointer<Uint32> cursorId,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>)
>()
external NativeWin32Result GetPointerFrameInfo_Wrapper(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<POINTER_INFO>,
  )
>()
external NativeWin32Result GetPointerFrameInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)
>()
external NativeWin32Result GetPointerFramePenInfo_Wrapper(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<POINTER_PEN_INFO>,
  )
>()
external NativeWin32Result GetPointerFramePenInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<POINTER_TOUCH_INFO>,
  )
>()
external NativeWin32Result GetPointerFrameTouchInfo_Wrapper(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<POINTER_TOUCH_INFO>,
  )
>()
external NativeWin32Result GetPointerFrameTouchInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<POINTER_INFO>)>()
external NativeWin32Result GetPointerInfo_Wrapper(
  int pointerId,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>)
>()
external NativeWin32Result GetPointerInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32, Pointer<INPUT_TRANSFORM>)>()
external NativeWin32Result GetPointerInputTransform_Wrapper(
  int pointerId,
  int historyCount,
  Pointer<INPUT_TRANSFORM> inputTransform,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<POINTER_PEN_INFO>)>()
external NativeWin32Result GetPointerPenInfo_Wrapper(
  int pointerId,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)
>()
external NativeWin32Result GetPointerPenInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<POINTER_TOUCH_INFO>)>()
external NativeWin32Result GetPointerTouchInfo_Wrapper(
  int pointerId,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<
  NativeWin32Result Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<POINTER_TOUCH_INFO>,
  )
>()
external NativeWin32Result GetPointerTouchInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Int32>)>()
external NativeWin32Result GetPointerType_Wrapper(
  int pointerId,
  Pointer<Int32> pointerType,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint32>, Int32)>()
external NativeWin32Result GetPriorityClipboardFormat_Wrapper(
  Pointer<Uint32> paFormatPriorityList,
  int cFormats,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetProcessWindowStation_Wrapper();

@internal
@Native<
  NativeWin32Result Function(Pointer<RAWINPUT>, Pointer<Uint32>, Uint32)
>()
external NativeWin32Result GetRawInputBuffer_Wrapper(
  Pointer<RAWINPUT> pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Uint32, Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetRawInputDeviceInfoW_Wrapper(
  int hDevice,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<RAWINPUTDEVICELIST>,
    Pointer<Uint32>,
    Uint32,
  )
>()
external NativeWin32Result GetRawInputDeviceList_Wrapper(
  Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<RAWINPUTDEVICE>, Pointer<Uint32>, Uint32)
>()
external NativeWin32Result GetRegisteredRawInputDevices_Wrapper(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Pointer<SCROLLBARINFO>)>()
external NativeWin32Result GetScrollBarInfo_Wrapper(
  int hwnd,
  int idObject,
  Pointer<SCROLLBARINFO> psbi,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Pointer<SCROLLINFO>)>()
external NativeWin32Result GetScrollInfo_Wrapper(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
);

@internal
@Native<NativeWin32Result Function(Int32, Uint32)>()
external NativeWin32Result GetSystemMetricsForDpi_Wrapper(int nIndex, int dpi);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetThreadDesktop_Wrapper(int dwThreadId);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<TITLEBARINFO>)>()
external NativeWin32Result GetTitleBarInfo_Wrapper(
  int hwnd,
  Pointer<TITLEBARINFO> pti,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result GetTopWindow_Wrapper(int hWnd);

@internal
@Native<
  NativeWin32Result Function(HTOUCHINPUT, Uint32, Pointer<TOUCHINPUT>, Int32)
>()
external NativeWin32Result GetTouchInputInfo_Wrapper(
  int hTouchInput,
  int cInputs,
  Pointer<TOUCHINPUT> pInputs,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint32>, Uint32, Pointer<Uint32>)>()
external NativeWin32Result GetUpdatedClipboardFormats_Wrapper(
  Pointer<Uint32> lpuiFormats,
  int cFormats,
  Pointer<Uint32> pcFormatsOut,
);

@internal
@Native<
  NativeWin32Result Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result GetUserObjectInformationW_Wrapper(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32)>()
external NativeWin32Result GetWindow_Wrapper(int hWnd, int uCmd);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<Uint32>)>()
external NativeWin32Result GetWindowDisplayAffinity_Wrapper(
  int hWnd,
  Pointer<Uint32> pdwAffinity,
);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<WINDOWINFO>)>()
external NativeWin32Result GetWindowInfo_Wrapper(
  int hwnd,
  Pointer<WINDOWINFO> pwi,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32)>()
external NativeWin32Result GetWindowLongPtrW_Wrapper(int hWnd, int nIndex);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<WINDOWPLACEMENT>)>()
external NativeWin32Result GetWindowPlacement_Wrapper(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<RECT>)>()
external NativeWin32Result GetWindowRect_Wrapper(
  int hWnd,
  Pointer<RECT> lpRect,
);

@internal
@Native<NativeWin32Result Function(HWND, PWSTR, Int32)>()
external NativeWin32Result GetWindowTextW_Wrapper(
  int hWnd,
  PWSTR lpString,
  int nMaxCount,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result GetWindowTextLengthW_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result HideCaret_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32, IntPtr, PCWSTR)>()
external NativeWin32Result InsertMenuW_Wrapper(
  int hMenu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  PCWSTR lpNewItem,
);

@internal
@Native<
  NativeWin32Result Function(HMENU, Uint32, BOOL, Pointer<MENUITEMINFO>)
>()
external NativeWin32Result InsertMenuItemW_Wrapper(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmi,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result IsClipboardFormatAvailable_Wrapper(int format);

@internal
@Native<NativeWin32Result Function(HANDLE)>()
external NativeWin32Result IsImmersiveProcess_Wrapper(int hProcess);

@internal
@Native<NativeWin32Result Function(HWND, IntPtr)>()
external NativeWin32Result KillTimer_Wrapper(int hWnd, int uIDEvent);

@internal
@Native<NativeWin32Result Function(HINSTANCE, PCWSTR)>()
external NativeWin32Result LoadAcceleratorsW_Wrapper(
  int hInstance,
  PCWSTR lpTableName,
);

@internal
@Native<NativeWin32Result Function(HINSTANCE, PCWSTR)>()
external NativeWin32Result LoadCursorW_Wrapper(
  int hInstance,
  PCWSTR lpCursorName,
);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result LoadCursorFromFileW_Wrapper(PCWSTR lpFileName);

@internal
@Native<NativeWin32Result Function(HINSTANCE, PCWSTR)>()
external NativeWin32Result LoadIconW_Wrapper(int hInstance, PCWSTR lpIconName);

@internal
@Native<
  NativeWin32Result Function(HINSTANCE, PCWSTR, Uint32, Int32, Int32, Uint32)
>()
external NativeWin32Result LoadImageW_Wrapper(
  int hInst,
  PCWSTR name,
  int type,
  int cx,
  int cy,
  int fuLoad,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32)>()
external NativeWin32Result LoadKeyboardLayoutW_Wrapper(
  PCWSTR pwszKLID,
  int flags,
);

@internal
@Native<NativeWin32Result Function(HINSTANCE, PCWSTR)>()
external NativeWin32Result LoadMenuW_Wrapper(int hInstance, PCWSTR lpMenuName);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result LoadMenuIndirectW_Wrapper(Pointer lpMenuTemplate);

@internal
@Native<NativeWin32Result Function(HINSTANCE, Uint32, PWSTR, Int32)>()
external NativeWin32Result LoadStringW_Wrapper(
  int hInstance,
  int uID,
  PWSTR lpBuffer,
  int cchBufferMax,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result LockSetForegroundWindow_Wrapper(int uLockCode);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result LockWorkStation_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>, BOOL)>()
external NativeWin32Result LookupIconIdFromDirectory_Wrapper(
  Pointer<Uint8> presbits,
  int fIcon,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Uint8>, BOOL, Int32, Int32, Uint32)
>()
external NativeWin32Result LookupIconIdFromDirectoryEx_Wrapper(
  Pointer<Uint8> presbits,
  int fIcon,
  int cxDesired,
  int cyDesired,
  int flags,
);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<RECT>)>()
external NativeWin32Result MapDialogRect_Wrapper(
  int hDlg,
  Pointer<RECT> lpRect,
);

@internal
@Native<NativeWin32Result Function(HWND, PCWSTR, PCWSTR, Uint32)>()
external NativeWin32Result MessageBoxW_Wrapper(
  int hWnd,
  PCWSTR lpText,
  PCWSTR lpCaption,
  int uType,
);

@internal
@Native<NativeWin32Result Function(HWND, PCWSTR, PCWSTR, Uint32, Uint16)>()
external NativeWin32Result MessageBoxExW_Wrapper(
  int hWnd,
  PCWSTR lpText,
  PCWSTR lpCaption,
  int uType,
  int wLanguageId,
);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32, IntPtr, PCWSTR)>()
external NativeWin32Result ModifyMenuW_Wrapper(
  int hMnu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  PCWSTR lpNewItem,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Int32, Int32, Int32, BOOL)>()
external NativeWin32Result MoveWindow_Wrapper(
  int hWnd,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int bRepaint,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<HANDLE>, BOOL, Uint32, Uint32)
>()
external NativeWin32Result MsgWaitForMultipleObjects_Wrapper(
  int nCount,
  Pointer<HANDLE> pHandles,
  int fWaitAll,
  int dwMilliseconds,
  int dwWakeMask,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<HANDLE>, Uint32, Uint32, Uint32)
>()
external NativeWin32Result MsgWaitForMultipleObjectsEx_Wrapper(
  int nCount,
  Pointer<HANDLE> pHandles,
  int dwMilliseconds,
  int dwWakeMask,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result OpenClipboard_Wrapper(int hWndNewOwner);

@internal
@Native<NativeWin32Result Function(PCWSTR, Uint32, BOOL, Uint32)>()
external NativeWin32Result OpenDesktopW_Wrapper(
  PCWSTR lpszDesktop,
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result OpenIcon_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(Uint32, BOOL, Uint32)>()
external NativeWin32Result OpenInputDesktop_Wrapper(
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(PCWSTR, BOOL, Uint32)>()
external NativeWin32Result OpenWindowStationW_Wrapper(
  PCWSTR lpszWinSta,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32, WPARAM, LPARAM)>()
external NativeWin32Result PostMessageW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32, WPARAM, LPARAM)>()
external NativeWin32Result PostThreadMessageW_Wrapper(
  int idThread,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(Pointer<WNDCLASS>)>()
external NativeWin32Result RegisterClassW_Wrapper(Pointer<WNDCLASS> lpWndClass);

@internal
@Native<NativeWin32Result Function(Pointer<WNDCLASSEX>)>()
external NativeWin32Result RegisterClassExW_Wrapper(Pointer<WNDCLASSEX> param0);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result RegisterClipboardFormatW_Wrapper(PCWSTR lpszFormat);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer, Uint32)>()
external NativeWin32Result RegisterDeviceNotificationW_Wrapper(
  int hRecipient,
  Pointer notificationFilter,
  int flags,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Uint32, Uint32)>()
external NativeWin32Result RegisterHotKey_Wrapper(
  int hWnd,
  int id,
  int fsModifiers,
  int vk,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Pointer<GUID>, Uint32)>()
external NativeWin32Result RegisterPowerSettingNotification_Wrapper(
  int hRecipient,
  Pointer<GUID> powerSettingGuid,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer<RAWINPUTDEVICE>, Uint32, Uint32)>()
external NativeWin32Result RegisterRawInputDevices_Wrapper(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  int uiNumDevices,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32)>()
external NativeWin32Result RegisterTouchHitTestingWindow_Wrapper(
  int hwnd,
  int value,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32)>()
external NativeWin32Result RegisterTouchWindow_Wrapper(int hwnd, int ulFlags);

@internal
@Native<NativeWin32Result Function(PCWSTR)>()
external NativeWin32Result RegisterWindowMessageW_Wrapper(PCWSTR lpString);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result ReleaseCapture_Wrapper();

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result RemoveClipboardFormatListener_Wrapper(int hwnd);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32)>()
external NativeWin32Result RemoveMenu_Wrapper(
  int hMenu,
  int uPosition,
  int uFlags,
);

@internal
@Native<NativeWin32Result Function(HWND, PCWSTR)>()
external NativeWin32Result RemovePropW_Wrapper(int hWnd, PCWSTR lpString);

@internal
@Native<
  NativeWin32Result Function(
    HDC,
    Int32,
    Int32,
    Pointer<RECT>,
    Pointer<RECT>,
    HRGN,
    Pointer<RECT>,
  )
>()
external NativeWin32Result ScrollDC_Wrapper(
  int hDC,
  int dx,
  int dy,
  Pointer<RECT> lprcScroll,
  Pointer<RECT> lprcClip,
  int hrgnUpdate,
  Pointer<RECT> lprcUpdate,
);

@internal
@Native<
  NativeWin32Result Function(HWND, Int32, Int32, Pointer<RECT>, Pointer<RECT>)
>()
external NativeWin32Result ScrollWindow_Wrapper(
  int hWnd,
  int xAmount,
  int yAmount,
  Pointer<RECT> lpRect,
  Pointer<RECT> lpClipRect,
);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    Int32,
    Int32,
    Pointer<RECT>,
    Pointer<RECT>,
    HRGN,
    Pointer<RECT>,
    Uint32,
  )
>()
external NativeWin32Result ScrollWindowEx_Wrapper(
  int hWnd,
  int dx,
  int dy,
  Pointer<RECT> prcScroll,
  Pointer<RECT> prcClip,
  int hrgnUpdate,
  Pointer<RECT> prcUpdate,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<INPUT>, Int32)>()
external NativeWin32Result SendInput_Wrapper(
  int cInputs,
  Pointer<INPUT> pInputs,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32, WPARAM, LPARAM)>()
external NativeWin32Result SendMessageW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    Uint32,
    WPARAM,
    LPARAM,
    Pointer<NativeFunction<SENDASYNCPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result SendMessageCallbackW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    Uint32,
    WPARAM,
    LPARAM,
    Uint32,
    Uint32,
    Pointer<IntPtr>,
  )
>()
external NativeWin32Result SendMessageTimeoutW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  int fuFlags,
  int uTimeout,
  Pointer<IntPtr> lpdwResult,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32, WPARAM, LPARAM)>()
external NativeWin32Result SendNotifyMessageW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result SetActiveWindow_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SetCaretBlinkTime_Wrapper(int uMSeconds);

@internal
@Native<NativeWin32Result Function(Int32, Int32)>()
external NativeWin32Result SetCaretPos_Wrapper(int x, int y);

@internal
@Native<NativeWin32Result Function(HWND, Int32, IntPtr)>()
external NativeWin32Result SetClassLongPtrW_Wrapper(
  int hWnd,
  int nIndex,
  int dwNewLong,
);

@internal
@Native<NativeWin32Result Function(Uint32, HANDLE)>()
external NativeWin32Result SetClipboardData_Wrapper(int uFormat, int hMem);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result SetClipboardViewer_Wrapper(int hWndNewViewer);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    IntPtr,
    Uint32,
    Pointer<NativeFunction<TIMERPROC>>,
    Uint32,
  )
>()
external NativeWin32Result SetCoalescableTimer_Wrapper(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
  int uToleranceDelay,
);

@internal
@Native<NativeWin32Result Function(Int32, Int32)>()
external NativeWin32Result SetCursorPos_Wrapper(int x, int y);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Int32)>()
external NativeWin32Result SetDialogControlDpiChangeBehavior_Wrapper(
  int hWnd,
  int mask,
  int values,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Int32)>()
external NativeWin32Result SetDialogDpiChangeBehavior_Wrapper(
  int hDlg,
  int mask,
  int values,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, Uint32, BOOL)>()
external NativeWin32Result SetDlgItemInt_Wrapper(
  int hDlg,
  int nIDDlgItem,
  int uValue,
  int bSigned,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, PCWSTR)>()
external NativeWin32Result SetDlgItemTextW_Wrapper(
  int hDlg,
  int nIDDlgItem,
  PCWSTR lpString,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SetDoubleClickTime_Wrapper(int param0);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result SetFocus_Wrapper(int hWnd);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    Uint32,
    Uint32,
    Pointer<GESTURECONFIG>,
    Uint32,
  )
>()
external NativeWin32Result SetGestureConfig_Wrapper(
  int hwnd,
  int dwReserved,
  int cIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>)>()
external NativeWin32Result SetKeyboardState_Wrapper(Pointer<Uint8> lpKeyState);

@internal
@Native<NativeWin32Result Function(HWND, COLORREF, Uint8, Uint32)>()
external NativeWin32Result SetLayeredWindowAttributes_Wrapper(
  int hwnd,
  int crKey,
  int bAlpha,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(HWND, HMENU)>()
external NativeWin32Result SetMenu_Wrapper(int hWnd, int hMenu);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32)>()
external NativeWin32Result SetMenuDefaultItem_Wrapper(
  int hMenu,
  int uItem,
  int fByPos,
);

@internal
@Native<NativeWin32Result Function(HMENU, Pointer<MENUINFO>)>()
external NativeWin32Result SetMenuInfo_Wrapper(
  int param0,
  Pointer<MENUINFO> param1,
);

@internal
@Native<NativeWin32Result Function(HMENU, Uint32, Uint32, HBITMAP, HBITMAP)>()
external NativeWin32Result SetMenuItemBitmaps_Wrapper(
  int hMenu,
  int uPosition,
  int uFlags,
  int hBitmapUnchecked,
  int hBitmapChecked,
);

@internal
@Native<
  NativeWin32Result Function(HMENU, Uint32, BOOL, Pointer<MENUITEMINFO>)
>()
external NativeWin32Result SetMenuItemInfoW_Wrapper(
  int hmenu,
  int item,
  int fByPositon,
  Pointer<MENUITEMINFO> lpmii,
);

@internal
@Native<NativeWin32Result Function(HWND, HWND)>()
external NativeWin32Result SetParent_Wrapper(int hWndChild, int hWndNewParent);

@internal
@Native<NativeWin32Result Function(Int32, Int32)>()
external NativeWin32Result SetPhysicalCursorPos_Wrapper(int x, int y);

@internal
@Native<NativeWin32Result Function(DPI_AWARENESS_CONTEXT)>()
external NativeWin32Result SetProcessDpiAwarenessContext_Wrapper(int value);

@internal
@Native<NativeWin32Result Function(HWND, PCWSTR, HANDLE)>()
external NativeWin32Result SetPropW_Wrapper(
  int hWnd,
  PCWSTR lpString,
  int hData,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<Int32>, Pointer<COLORREF>)>()
external NativeWin32Result SetSysColors_Wrapper(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<COLORREF> lpaRgbValues,
);

@internal
@Native<NativeWin32Result Function(HCURSOR, Uint32)>()
external NativeWin32Result SetSystemCursor_Wrapper(int hcur, int id);

@internal
@Native<
  NativeWin32Result Function(
    HWND,
    IntPtr,
    Uint32,
    Pointer<NativeFunction<TIMERPROC>>,
  )
>()
external NativeWin32Result SetTimer_Wrapper(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
);

@internal
@Native<NativeWin32Result Function(HANDLE, Int32, Pointer, Uint32)>()
external NativeWin32Result SetUserObjectInformationW_Wrapper(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
);

@internal
@Native<NativeWin32Result Function(HWND, Uint32)>()
external NativeWin32Result SetWindowDisplayAffinity_Wrapper(
  int hWnd,
  int dwAffinity,
);

@internal
@Native<NativeWin32Result Function(HWND, Int32, IntPtr)>()
external NativeWin32Result SetWindowLongPtrW_Wrapper(
  int hWnd,
  int nIndex,
  int dwNewLong,
);

@internal
@Native<NativeWin32Result Function(HWND, Pointer<WINDOWPLACEMENT>)>()
external NativeWin32Result SetWindowPlacement_Wrapper(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
);

@internal
@Native<
  NativeWin32Result Function(HWND, HWND, Int32, Int32, Int32, Int32, Uint32)
>()
external NativeWin32Result SetWindowPos_Wrapper(
  int hWnd,
  int hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
);

@internal
@Native<
  NativeWin32Result Function(
    Int32,
    Pointer<NativeFunction<HOOKPROC>>,
    HINSTANCE,
    Uint32,
  )
>()
external NativeWin32Result SetWindowsHookExW_Wrapper(
  int idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  int hmod,
  int dwThreadId,
);

@internal
@Native<NativeWin32Result Function(HWND, PCWSTR)>()
external NativeWin32Result SetWindowTextW_Wrapper(int hWnd, PCWSTR lpString);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result ShowCaret_Wrapper(int hWnd);

@internal
@Native<NativeWin32Result Function(HWND, BOOL)>()
external NativeWin32Result ShowOwnedPopups_Wrapper(int hWnd, int fShow);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SkipPointerFrameMessages_Wrapper(int pointerId);

@internal
@Native<NativeWin32Result Function(HDESK)>()
external NativeWin32Result SwitchDesktop_Wrapper(int hDesktop);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32, Pointer, Uint32)>()
external NativeWin32Result SystemParametersInfoW_Wrapper(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32, Pointer, Uint32, Uint32)>()
external NativeWin32Result SystemParametersInfoForDpi_Wrapper(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
  int dpi,
);

@internal
@Native<
  NativeWin32Result Function(HWND, Uint32, Pointer<RECT>, Uint32, Pointer<HWND>)
>()
external NativeWin32Result TileWindows_Wrapper(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<HWND> lpKids,
);

@internal
@Native<
  NativeWin32Result Function(
    HMENU,
    Uint32,
    Int32,
    Int32,
    Int32,
    HWND,
    Pointer<RECT>,
  )
>()
external NativeWin32Result TrackPopupMenu_Wrapper(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int nReserved,
  int hWnd,
  Pointer<RECT> prcRect,
);

@internal
@Native<
  NativeWin32Result Function(
    HMENU,
    Uint32,
    Int32,
    Int32,
    HWND,
    Pointer<TPMPARAMS>,
  )
>()
external NativeWin32Result TrackPopupMenuEx_Wrapper(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int hwnd,
  Pointer<TPMPARAMS> lptpm,
);

@internal
@Native<NativeWin32Result Function(HWND, HACCEL, Pointer<MSG>)>()
external NativeWin32Result TranslateAcceleratorW_Wrapper(
  int hWnd,
  int hAccTable,
  Pointer<MSG> lpMsg,
);

@internal
@Native<NativeWin32Result Function(HHOOK)>()
external NativeWin32Result UnhookWindowsHookEx_Wrapper(int hhk);

@internal
@Native<NativeWin32Result Function(HKL)>()
external NativeWin32Result UnloadKeyboardLayout_Wrapper(int hkl);

@internal
@Native<NativeWin32Result Function(PCWSTR, HINSTANCE)>()
external NativeWin32Result UnregisterClassW_Wrapper(
  PCWSTR lpClassName,
  int hInstance,
);

@internal
@Native<NativeWin32Result Function(HDEVNOTIFY)>()
external NativeWin32Result UnregisterDeviceNotification_Wrapper(int handle);

@internal
@Native<NativeWin32Result Function(HWND, Int32)>()
external NativeWin32Result UnregisterHotKey_Wrapper(int hWnd, int id);

@internal
@Native<NativeWin32Result Function(HPOWERNOTIFY)>()
external NativeWin32Result UnregisterPowerSettingNotification_Wrapper(
  int handle,
);

@internal
@Native<NativeWin32Result Function(HWND)>()
external NativeWin32Result UnregisterTouchWindow_Wrapper(int hwnd);

@internal
@Native<NativeWin32Result Function(HANDLE, HANDLE, BOOL)>()
external NativeWin32Result UserHandleGrantAccess_Wrapper(
  int hUserHandle,
  int hJob,
  int bGrant,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result WaitMessage_Wrapper();
