// Wrappers for Win32 API functions.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
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

@internal
@Native<HKL Function(HKL, Uint32)>()
external int ActivateKeyboardLayout_Wrapper(int hkl, int flags);

@internal
@Native<BOOL Function(HWND)>()
external int AddClipboardFormatListener_Wrapper(int hwnd);

@internal
@Native<BOOL Function(Pointer<RECT>, Uint32, BOOL)>()
external int AdjustWindowRect_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
);

@internal
@Native<BOOL Function(Pointer<RECT>, Uint32, BOOL, Uint32)>()
external int AdjustWindowRectEx_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
);

@internal
@Native<BOOL Function(Pointer<RECT>, Uint32, BOOL, Uint32, Uint32)>()
external int AdjustWindowRectExForDpi_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
  int dpi,
);

@internal
@Native<BOOL Function(Uint32)>()
external int AllowSetForegroundWindow_Wrapper(int dwProcessId);

@internal
@Native<BOOL Function(HWND, Uint32, Uint32)>()
external int AnimateWindow_Wrapper(int hWnd, int dwTime, int dwFlags);

@internal
@Native<BOOL Function(HMENU, Uint32, IntPtr, PCWSTR)>()
external int AppendMenuW_Wrapper(
  int hMenu,
  int uFlags,
  int uIDNewItem,
  PCWSTR lpNewItem,
);

@internal
@Native<Uint32 Function(HWND)>()
external int ArrangeIconicWindows_Wrapper(int hWnd);

@internal
@Native<HDWP Function(Int32)>()
external int BeginDeferWindowPos_Wrapper(int nNumWindows);

@internal
@Native<BOOL Function(BOOL)>()
external int BlockInput_Wrapper(int fBlockIt);

@internal
@Native<BOOL Function(HWND)>()
external int BringWindowToTop_Wrapper(int hWnd);

@internal
@Native<Int32 Function(Uint32, Pointer<Uint32>, Uint32, WPARAM, LPARAM)>()
external int BroadcastSystemMessageW_Wrapper(
  int flags,
  Pointer<Uint32> lpInfo,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<
  Int32 Function(
    Uint32,
    Pointer<Uint32>,
    Uint32,
    WPARAM,
    LPARAM,
    Pointer<BSMINFO>,
  )
>()
external int BroadcastSystemMessageExW_Wrapper(
  int flags,
  Pointer<Uint32> lpInfo,
  int msg,
  int wParam,
  int lParam,
  Pointer<BSMINFO> pbsmInfo,
);

@internal
@Native<
  BOOL Function(
    Pointer<POINT>,
    Pointer<SIZE>,
    Uint32,
    Pointer<RECT>,
    Pointer<RECT>,
  )
>()
external int CalculatePopupWindowPosition_Wrapper(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  int flags,
  Pointer<RECT> excludeRect,
  Pointer<RECT> popupWindowPosition,
);

@internal
@Native<Uint16 Function(HWND, Uint32, Pointer<RECT>, Uint32, Pointer<HWND>)>()
external int CascadeWindows_Wrapper(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<HWND> lpKids,
);

@internal
@Native<BOOL Function(Uint32, Uint32)>()
external int ChangeWindowMessageFilter_Wrapper(int message, int dwFlag);

@internal
@Native<BOOL Function(HWND, Uint32, Uint32, Pointer<CHANGEFILTERSTRUCT>)>()
external int ChangeWindowMessageFilterEx_Wrapper(
  int hwnd,
  int message,
  int action,
  Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct,
);

@internal
@Native<BOOL Function(HWND, Int32, Uint32)>()
external int CheckDlgButton_Wrapper(int hDlg, int nIDButton, int uCheck);

@internal
@Native<BOOL Function(HWND, Int32, Int32, Int32)>()
external int CheckRadioButton_Wrapper(
  int hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton,
);

@internal
@Native<BOOL Function(Pointer<RECT>)>()
external int ClipCursor_Wrapper(Pointer<RECT> lpRect);

@internal
@Native<BOOL Function()>()
external int CloseClipboard_Wrapper();

@internal
@Native<BOOL Function(HGESTUREINFO)>()
external int CloseGestureInfoHandle_Wrapper(int hGestureInfo);

@internal
@Native<BOOL Function(HTOUCHINPUT)>()
external int CloseTouchInputHandle_Wrapper(int hTouchInput);

@internal
@Native<BOOL Function(HWND)>()
external int CloseWindow_Wrapper(int hWnd);

@internal
@Native<HICON Function(HICON)>()
external int CopyIcon_Wrapper(int hIcon);

@internal
@Native<HANDLE Function(HANDLE, Uint32, Int32, Int32, Uint32)>()
external int CopyImage_Wrapper(int h, int type, int cx, int cy, int flags);

@internal
@Native<Int32 Function()>()
external int CountClipboardFormats_Wrapper();

@internal
@Native<HACCEL Function(Pointer<ACCEL>, Int32)>()
external int CreateAcceleratorTableW_Wrapper(Pointer<ACCEL> paccel, int cAccel);

@internal
@Native<BOOL Function(HWND, HBITMAP, Int32, Int32)>()
external int CreateCaret_Wrapper(
  int hWnd,
  int hBitmap,
  int nWidth,
  int nHeight,
);

@internal
@Native<
  HCURSOR Function(HINSTANCE, Int32, Int32, Int32, Int32, Pointer, Pointer)
>()
external int CreateCursor_Wrapper(
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
  HDESK Function(
    PCWSTR,
    PCWSTR,
    Pointer<DEVMODE>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>()
external int CreateDesktopW_Wrapper(
  PCWSTR lpszDesktop,
  PCWSTR lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
);

@internal
@Native<
  HDESK Function(
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
external int CreateDesktopExW_Wrapper(
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
  HWND Function(
    HINSTANCE,
    Pointer<DLGTEMPLATE>,
    HWND,
    Pointer<NativeFunction<DLGPROC>>,
    LPARAM,
  )
>()
external int CreateDialogIndirectParamW_Wrapper(
  int hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
);

@internal
@Native<
  HICON Function(
    HINSTANCE,
    Int32,
    Int32,
    Uint8,
    Uint8,
    Pointer<Uint8>,
    Pointer<Uint8>,
  )
>()
external int CreateIcon_Wrapper(
  int hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
);

@internal
@Native<HICON Function(Pointer<Uint8>, Uint32, BOOL, Uint32)>()
external int CreateIconFromResource_Wrapper(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
);

@internal
@Native<
  HICON Function(Pointer<Uint8>, Uint32, BOOL, Uint32, Int32, Int32, Uint32)
>()
external int CreateIconFromResourceEx_Wrapper(
  Pointer<Uint8> presbits,
  int dwResSize,
  int fIcon,
  int dwVer,
  int cxDesired,
  int cyDesired,
  int flags,
);

@internal
@Native<HICON Function(Pointer<ICONINFO>)>()
external int CreateIconIndirect_Wrapper(Pointer<ICONINFO> piconinfo);

@internal
@Native<
  HWND Function(
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
external int CreateMDIWindowW_Wrapper(
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
@Native<HMENU Function()>()
external int CreateMenu_Wrapper();

@internal
@Native<HMENU Function()>()
external int CreatePopupMenu_Wrapper();

@internal
@Native<
  HWND Function(
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
external int CreateWindowExW_Wrapper(
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
  HWINSTA Function(PCWSTR, Uint32, Uint32, Pointer<SECURITY_ATTRIBUTES>)
>()
external int CreateWindowStationW_Wrapper(
  PCWSTR lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
);

@internal
@Native<HDWP Function(HDWP, HWND, HWND, Int32, Int32, Int32, Int32, Uint32)>()
external int DeferWindowPos_Wrapper(
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
@Native<BOOL Function(HMENU, Uint32, Uint32)>()
external int DeleteMenu_Wrapper(int hMenu, int uPosition, int uFlags);

@internal
@Native<BOOL Function()>()
external int DestroyCaret_Wrapper();

@internal
@Native<BOOL Function(HCURSOR)>()
external int DestroyCursor_Wrapper(int hCursor);

@internal
@Native<BOOL Function(HICON)>()
external int DestroyIcon_Wrapper(int hIcon);

@internal
@Native<BOOL Function(HMENU)>()
external int DestroyMenu_Wrapper(int hMenu);

@internal
@Native<BOOL Function(HWND)>()
external int DestroyWindow_Wrapper(int hWnd);

@internal
@Native<
  IntPtr Function(
    HINSTANCE,
    Pointer<DLGTEMPLATE>,
    HWND,
    Pointer<NativeFunction<DLGPROC>>,
    LPARAM,
  )
>()
external int DialogBoxIndirectParamW_Wrapper(
  int hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  int hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
);

@internal
@Native<BOOL Function(HDC, Int32, Int32, HICON)>()
external int DrawIcon_Wrapper(int hDC, int x, int y, int hIcon);

@internal
@Native<BOOL Function()>()
external int EmptyClipboard_Wrapper();

@internal
@Native<BOOL Function(BOOL)>()
external int EnableMouseInPointer_Wrapper(int fEnable);

@internal
@Native<BOOL Function(HWND)>()
external int EnableNonClientDpiScaling_Wrapper(int hwnd);

@internal
@Native<BOOL Function(HWND, Uint32, Uint32)>()
external int EnableScrollBar_Wrapper(int hWnd, int wSBflags, int wArrows);

@internal
@Native<BOOL Function(HDWP)>()
external int EndDeferWindowPos_Wrapper(int hWinPosInfo);

@internal
@Native<BOOL Function(HWND, IntPtr)>()
external int EndDialog_Wrapper(int hDlg, int nResult);

@internal
@Native<BOOL Function()>()
external int EndMenu_Wrapper();

@internal
@Native<Uint32 Function(Uint32)>()
external int EnumClipboardFormats_Wrapper(int format);

@internal
@Native<BOOL Function(HDESK, Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)>()
external int EnumDesktopWindows_Wrapper(
  int hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
);

@internal
@Native<BOOL Function(Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)>()
external int EnumWindows_Wrapper(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
);

@internal
@Native<HWND Function(PCWSTR, PCWSTR)>()
external int FindWindowW_Wrapper(PCWSTR lpClassName, PCWSTR lpWindowName);

@internal
@Native<HWND Function(HWND, HWND, PCWSTR, PCWSTR)>()
external int FindWindowExW_Wrapper(
  int hWndParent,
  int hWndChildAfter,
  PCWSTR lpszClass,
  PCWSTR lpszWindow,
);

@internal
@Native<BOOL Function(HWND, Int32, Pointer<ALTTABINFO>, PWSTR, Uint32)>()
external int GetAltTabInfoW_Wrapper(
  int hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  PWSTR pszItemText,
  int cchItemText,
);

@internal
@Native<Uint32 Function()>()
external int GetCaretBlinkTime_Wrapper();

@internal
@Native<BOOL Function(Pointer<POINT>)>()
external int GetCaretPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<BOOL Function(HINSTANCE, PCWSTR, Pointer<WNDCLASS>)>()
external int GetClassInfoW_Wrapper(
  int hInstance,
  PCWSTR lpClassName,
  Pointer<WNDCLASS> lpWndClass,
);

@internal
@Native<BOOL Function(HINSTANCE, PCWSTR, Pointer<WNDCLASSEX>)>()
external int GetClassInfoExW_Wrapper(
  int hInstance,
  PCWSTR lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
);

@internal
@Native<IntPtr Function(HWND, Int32)>()
external int GetClassLongPtrW_Wrapper(int hWnd, int nIndex);

@internal
@Native<Int32 Function(HWND, PWSTR, Int32)>()
external int GetClassNameW_Wrapper(int hWnd, PWSTR lpClassName, int nMaxCount);

@internal
@Native<BOOL Function(HWND, Pointer<RECT>)>()
external int GetClientRect_Wrapper(int hWnd, Pointer<RECT> lpRect);

@internal
@Native<HANDLE Function(Uint32)>()
external int GetClipboardData_Wrapper(int uFormat);

@internal
@Native<Int32 Function(Uint32, PWSTR, Int32)>()
external int GetClipboardFormatNameW_Wrapper(
  int format,
  PWSTR lpszFormatName,
  int cchMaxCount,
);

@internal
@Native<HWND Function()>()
external int GetClipboardOwner_Wrapper();

@internal
@Native<HWND Function()>()
external int GetClipboardViewer_Wrapper();

@internal
@Native<BOOL Function(Pointer<RECT>)>()
external int GetClipCursor_Wrapper(Pointer<RECT> lpRect);

@internal
@Native<BOOL Function(Pointer<CURSORINFO>)>()
external int GetCursorInfo_Wrapper(Pointer<CURSORINFO> pci);

@internal
@Native<BOOL Function(Pointer<POINT>)>()
external int GetCursorPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<Int32 Function(HWND)>()
external int GetDialogControlDpiChangeBehavior_Wrapper(int hWnd);

@internal
@Native<Int32 Function(HWND)>()
external int GetDialogDpiChangeBehavior_Wrapper(int hDlg);

@internal
@Native<HWND Function(HWND, Int32)>()
external int GetDlgItem_Wrapper(int hDlg, int nIDDlgItem);

@internal
@Native<Uint32 Function(HWND, Int32, Pointer<BOOL>, BOOL)>()
external int GetDlgItemInt_Wrapper(
  int hDlg,
  int nIDDlgItem,
  Pointer<BOOL> lpTranslated,
  int bSigned,
);

@internal
@Native<Uint32 Function(HWND, Int32, PWSTR, Int32)>()
external int GetDlgItemTextW_Wrapper(
  int hDlg,
  int nIDDlgItem,
  PWSTR lpString,
  int cchMax,
);

@internal
@Native<
  BOOL Function(
    HWND,
    Uint32,
    Uint32,
    Pointer<Uint32>,
    Pointer<GESTURECONFIG>,
    Uint32,
  )
>()
external int GetGestureConfig_Wrapper(
  int hwnd,
  int dwReserved,
  int dwFlags,
  Pointer<Uint32> pcIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
);

@internal
@Native<BOOL Function(HGESTUREINFO, Uint32, Pointer<Uint8>)>()
external int GetGestureExtraArgs_Wrapper(
  int hGestureInfo,
  int cbExtraArgs,
  Pointer<Uint8> pExtraArgs,
);

@internal
@Native<BOOL Function(HGESTUREINFO, Pointer<GESTUREINFO>)>()
external int GetGestureInfo_Wrapper(
  int hGestureInfo,
  Pointer<GESTUREINFO> pGestureInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<GUITHREADINFO>)>()
external int GetGUIThreadInfo_Wrapper(
  int idThread,
  Pointer<GUITHREADINFO> pgui,
);

@internal
@Native<BOOL Function(HICON, Pointer<ICONINFO>)>()
external int GetIconInfo_Wrapper(int hIcon, Pointer<ICONINFO> piconinfo);

@internal
@Native<Int32 Function(Int32, Pointer<HKL>)>()
external int GetKeyboardLayoutList_Wrapper(int nBuff, Pointer<HKL> lpList);

@internal
@Native<BOOL Function(PWSTR)>()
external int GetKeyboardLayoutNameW_Wrapper(PWSTR pwszKLID);

@internal
@Native<BOOL Function(Pointer<Uint8>)>()
external int GetKeyboardState_Wrapper(Pointer<Uint8> lpKeyState);

@internal
@Native<Int32 Function(Int32)>()
external int GetKeyboardType_Wrapper(int nTypeFlag);

@internal
@Native<Int32 Function(Int32, PWSTR, Int32)>()
external int GetKeyNameTextW_Wrapper(int lParam, PWSTR lpString, int cchSize);

@internal
@Native<
  BOOL Function(HWND, Pointer<COLORREF>, Pointer<Uint8>, Pointer<Uint32>)
>()
external int GetLayeredWindowAttributes_Wrapper(
  int hwnd,
  Pointer<COLORREF> pcrKey,
  Pointer<Uint8> pbAlpha,
  Pointer<Uint32> pdwFlags,
);

@internal
@Native<BOOL Function(HWND, Int32, Int32, Pointer<MENUBARINFO>)>()
external int GetMenuBarInfo_Wrapper(
  int hwnd,
  int idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
);

@internal
@Native<Uint32 Function(HMENU, Uint32, Uint32)>()
external int GetMenuDefaultItem_Wrapper(int hMenu, int fByPos, int gmdiFlags);

@internal
@Native<BOOL Function(HMENU, Pointer<MENUINFO>)>()
external int GetMenuInfo_Wrapper(int param0, Pointer<MENUINFO> param1);

@internal
@Native<Int32 Function(HMENU)>()
external int GetMenuItemCount_Wrapper(int hMenu);

@internal
@Native<BOOL Function(HMENU, Uint32, BOOL, Pointer<MENUITEMINFO>)>()
external int GetMenuItemInfoW_Wrapper(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmii,
);

@internal
@Native<BOOL Function(HWND, HMENU, Uint32, Pointer<RECT>)>()
external int GetMenuItemRect_Wrapper(
  int hWnd,
  int hMenu,
  int uItem,
  Pointer<RECT> lprcItem,
);

@internal
@Native<BOOL Function(Pointer<MSG>, HWND, Uint32, Uint32)>()
external int GetMessageW_Wrapper(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
);

@internal
@Native<
  Int32 Function(
    Uint32,
    Pointer<MOUSEMOVEPOINT>,
    Pointer<MOUSEMOVEPOINT>,
    Int32,
    Uint32,
  )
>()
external int GetMouseMovePointsEx_Wrapper(
  int cbSize,
  Pointer<MOUSEMOVEPOINT> lppt,
  Pointer<MOUSEMOVEPOINT> lpptBuf,
  int nBufPoints,
  int resolution,
);

@internal
@Native<HWND Function(HWND, HWND, BOOL)>()
external int GetNextDlgGroupItem_Wrapper(int hDlg, int hCtl, int bPrevious);

@internal
@Native<HWND Function(HWND, HWND, BOOL)>()
external int GetNextDlgTabItem_Wrapper(int hDlg, int hCtl, int bPrevious);

@internal
@Native<HWND Function()>()
external int GetOpenClipboardWindow_Wrapper();

@internal
@Native<HWND Function(HWND)>()
external int GetParent_Wrapper(int hWnd);

@internal
@Native<BOOL Function(Pointer<POINT>)>()
external int GetPhysicalCursorPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>)>()
external int GetPointerCursorId_Wrapper(
  int pointerId,
  Pointer<Uint32> cursorId,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>)>()
external int GetPointerFrameInfo_Wrapper(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<
  BOOL Function(Uint32, Pointer<Uint32>, Pointer<Uint32>, Pointer<POINTER_INFO>)
>()
external int GetPointerFrameInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)>()
external int GetPointerFramePenInfo_Wrapper(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<
  BOOL Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<POINTER_PEN_INFO>,
  )
>()
external int GetPointerFramePenInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>)>()
external int GetPointerFrameTouchInfo_Wrapper(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<
  BOOL Function(
    Uint32,
    Pointer<Uint32>,
    Pointer<Uint32>,
    Pointer<POINTER_TOUCH_INFO>,
  )
>()
external int GetPointerFrameTouchInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<POINTER_INFO>)>()
external int GetPointerInfo_Wrapper(
  int pointerId,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>)>()
external int GetPointerInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_INFO> pointerInfo,
);

@internal
@Native<BOOL Function(Uint32, Uint32, Pointer<INPUT_TRANSFORM>)>()
external int GetPointerInputTransform_Wrapper(
  int pointerId,
  int historyCount,
  Pointer<INPUT_TRANSFORM> inputTransform,
);

@internal
@Native<BOOL Function(Uint32, Pointer<POINTER_PEN_INFO>)>()
external int GetPointerPenInfo_Wrapper(
  int pointerId,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)>()
external int GetPointerPenInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_PEN_INFO> penInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<POINTER_TOUCH_INFO>)>()
external int GetPointerTouchInfo_Wrapper(
  int pointerId,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>)>()
external int GetPointerTouchInfoHistory_Wrapper(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
);

@internal
@Native<BOOL Function(Uint32, Pointer<Int32>)>()
external int GetPointerType_Wrapper(int pointerId, Pointer<Int32> pointerType);

@internal
@Native<Int32 Function(Pointer<Uint32>, Int32)>()
external int GetPriorityClipboardFormat_Wrapper(
  Pointer<Uint32> paFormatPriorityList,
  int cFormats,
);

@internal
@Native<HWINSTA Function()>()
external int GetProcessWindowStation_Wrapper();

@internal
@Native<Uint32 Function(Pointer<RAWINPUT>, Pointer<Uint32>, Uint32)>()
external int GetRawInputBuffer_Wrapper(
  Pointer<RAWINPUT> pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
);

@internal
@Native<Uint32 Function(HANDLE, Uint32, Pointer, Pointer<Uint32>)>()
external int GetRawInputDeviceInfoW_Wrapper(
  int hDevice,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
);

@internal
@Native<Uint32 Function(Pointer<RAWINPUTDEVICELIST>, Pointer<Uint32>, Uint32)>()
external int GetRawInputDeviceList_Wrapper(
  Pointer<RAWINPUTDEVICELIST> pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
);

@internal
@Native<Uint32 Function(Pointer<RAWINPUTDEVICE>, Pointer<Uint32>, Uint32)>()
external int GetRegisteredRawInputDevices_Wrapper(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
);

@internal
@Native<BOOL Function(HWND, Int32, Pointer<SCROLLBARINFO>)>()
external int GetScrollBarInfo_Wrapper(
  int hwnd,
  int idObject,
  Pointer<SCROLLBARINFO> psbi,
);

@internal
@Native<BOOL Function(HWND, Int32, Pointer<SCROLLINFO>)>()
external int GetScrollInfo_Wrapper(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
);

@internal
@Native<Int32 Function(Int32, Uint32)>()
external int GetSystemMetricsForDpi_Wrapper(int nIndex, int dpi);

@internal
@Native<HDESK Function(Uint32)>()
external int GetThreadDesktop_Wrapper(int dwThreadId);

@internal
@Native<BOOL Function(HWND, Pointer<TITLEBARINFO>)>()
external int GetTitleBarInfo_Wrapper(int hwnd, Pointer<TITLEBARINFO> pti);

@internal
@Native<HWND Function(HWND)>()
external int GetTopWindow_Wrapper(int hWnd);

@internal
@Native<BOOL Function(HTOUCHINPUT, Uint32, Pointer<TOUCHINPUT>, Int32)>()
external int GetTouchInputInfo_Wrapper(
  int hTouchInput,
  int cInputs,
  Pointer<TOUCHINPUT> pInputs,
  int cbSize,
);

@internal
@Native<BOOL Function(Pointer<Uint32>, Uint32, Pointer<Uint32>)>()
external int GetUpdatedClipboardFormats_Wrapper(
  Pointer<Uint32> lpuiFormats,
  int cFormats,
  Pointer<Uint32> pcFormatsOut,
);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, Uint32, Pointer<Uint32>)>()
external int GetUserObjectInformationW_Wrapper(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
);

@internal
@Native<HWND Function(HWND, Uint32)>()
external int GetWindow_Wrapper(int hWnd, int uCmd);

@internal
@Native<BOOL Function(HWND, Pointer<Uint32>)>()
external int GetWindowDisplayAffinity_Wrapper(
  int hWnd,
  Pointer<Uint32> pdwAffinity,
);

@internal
@Native<BOOL Function(HWND, Pointer<WINDOWINFO>)>()
external int GetWindowInfo_Wrapper(int hwnd, Pointer<WINDOWINFO> pwi);

@internal
@Native<IntPtr Function(HWND, Int32)>()
external int GetWindowLongPtrW_Wrapper(int hWnd, int nIndex);

@internal
@Native<BOOL Function(HWND, Pointer<WINDOWPLACEMENT>)>()
external int GetWindowPlacement_Wrapper(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
);

@internal
@Native<BOOL Function(HWND, Pointer<RECT>)>()
external int GetWindowRect_Wrapper(int hWnd, Pointer<RECT> lpRect);

@internal
@Native<Int32 Function(HWND, PWSTR, Int32)>()
external int GetWindowTextW_Wrapper(int hWnd, PWSTR lpString, int nMaxCount);

@internal
@Native<Int32 Function(HWND)>()
external int GetWindowTextLengthW_Wrapper(int hWnd);

@internal
@Native<BOOL Function(HWND)>()
external int HideCaret_Wrapper(int hWnd);

@internal
@Native<BOOL Function(HMENU, Uint32, Uint32, IntPtr, PCWSTR)>()
external int InsertMenuW_Wrapper(
  int hMenu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  PCWSTR lpNewItem,
);

@internal
@Native<BOOL Function(HMENU, Uint32, BOOL, Pointer<MENUITEMINFO>)>()
external int InsertMenuItemW_Wrapper(
  int hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmi,
);

@internal
@Native<BOOL Function(Uint32)>()
external int IsClipboardFormatAvailable_Wrapper(int format);

@internal
@Native<BOOL Function(HANDLE)>()
external int IsImmersiveProcess_Wrapper(int hProcess);

@internal
@Native<BOOL Function(HWND, IntPtr)>()
external int KillTimer_Wrapper(int hWnd, int uIDEvent);

@internal
@Native<HACCEL Function(HINSTANCE, PCWSTR)>()
external int LoadAcceleratorsW_Wrapper(int hInstance, PCWSTR lpTableName);

@internal
@Native<HCURSOR Function(HINSTANCE, PCWSTR)>()
external int LoadCursorW_Wrapper(int hInstance, PCWSTR lpCursorName);

@internal
@Native<HCURSOR Function(PCWSTR)>()
external int LoadCursorFromFileW_Wrapper(PCWSTR lpFileName);

@internal
@Native<HICON Function(HINSTANCE, PCWSTR)>()
external int LoadIconW_Wrapper(int hInstance, PCWSTR lpIconName);

@internal
@Native<HANDLE Function(HINSTANCE, PCWSTR, Uint32, Int32, Int32, Uint32)>()
external int LoadImageW_Wrapper(
  int hInst,
  PCWSTR name,
  int type,
  int cx,
  int cy,
  int fuLoad,
);

@internal
@Native<HKL Function(PCWSTR, Uint32)>()
external int LoadKeyboardLayoutW_Wrapper(PCWSTR pwszKLID, int flags);

@internal
@Native<HMENU Function(HINSTANCE, PCWSTR)>()
external int LoadMenuW_Wrapper(int hInstance, PCWSTR lpMenuName);

@internal
@Native<HMENU Function(Pointer)>()
external int LoadMenuIndirectW_Wrapper(Pointer lpMenuTemplate);

@internal
@Native<Int32 Function(HINSTANCE, Uint32, PWSTR, Int32)>()
external int LoadStringW_Wrapper(
  int hInstance,
  int uID,
  PWSTR lpBuffer,
  int cchBufferMax,
);

@internal
@Native<BOOL Function(Uint32)>()
external int LockSetForegroundWindow_Wrapper(int uLockCode);

@internal
@Native<BOOL Function()>()
external int LockWorkStation_Wrapper();

@internal
@Native<Int32 Function(Pointer<Uint8>, BOOL)>()
external int LookupIconIdFromDirectory_Wrapper(
  Pointer<Uint8> presbits,
  int fIcon,
);

@internal
@Native<Int32 Function(Pointer<Uint8>, BOOL, Int32, Int32, Uint32)>()
external int LookupIconIdFromDirectoryEx_Wrapper(
  Pointer<Uint8> presbits,
  int fIcon,
  int cxDesired,
  int cyDesired,
  int flags,
);

@internal
@Native<BOOL Function(HWND, Pointer<RECT>)>()
external int MapDialogRect_Wrapper(int hDlg, Pointer<RECT> lpRect);

@internal
@Native<Int32 Function(HWND, PCWSTR, PCWSTR, Uint32)>()
external int MessageBoxW_Wrapper(
  int hWnd,
  PCWSTR lpText,
  PCWSTR lpCaption,
  int uType,
);

@internal
@Native<Int32 Function(HWND, PCWSTR, PCWSTR, Uint32, Uint16)>()
external int MessageBoxExW_Wrapper(
  int hWnd,
  PCWSTR lpText,
  PCWSTR lpCaption,
  int uType,
  int wLanguageId,
);

@internal
@Native<BOOL Function(HMENU, Uint32, Uint32, IntPtr, PCWSTR)>()
external int ModifyMenuW_Wrapper(
  int hMnu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  PCWSTR lpNewItem,
);

@internal
@Native<BOOL Function(HWND, Int32, Int32, Int32, Int32, BOOL)>()
external int MoveWindow_Wrapper(
  int hWnd,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int bRepaint,
);

@internal
@Native<Uint32 Function(Uint32, Pointer<HANDLE>, BOOL, Uint32, Uint32)>()
external int MsgWaitForMultipleObjects_Wrapper(
  int nCount,
  Pointer<HANDLE> pHandles,
  int fWaitAll,
  int dwMilliseconds,
  int dwWakeMask,
);

@internal
@Native<Uint32 Function(Uint32, Pointer<HANDLE>, Uint32, Uint32, Uint32)>()
external int MsgWaitForMultipleObjectsEx_Wrapper(
  int nCount,
  Pointer<HANDLE> pHandles,
  int dwMilliseconds,
  int dwWakeMask,
  int dwFlags,
);

@internal
@Native<BOOL Function(HWND)>()
external int OpenClipboard_Wrapper(int hWndNewOwner);

@internal
@Native<HDESK Function(PCWSTR, Uint32, BOOL, Uint32)>()
external int OpenDesktopW_Wrapper(
  PCWSTR lpszDesktop,
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<BOOL Function(HWND)>()
external int OpenIcon_Wrapper(int hWnd);

@internal
@Native<HDESK Function(Uint32, BOOL, Uint32)>()
external int OpenInputDesktop_Wrapper(
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<HWINSTA Function(PCWSTR, BOOL, Uint32)>()
external int OpenWindowStationW_Wrapper(
  PCWSTR lpszWinSta,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<BOOL Function(HWND, Uint32, WPARAM, LPARAM)>()
external int PostMessageW_Wrapper(int hWnd, int msg, int wParam, int lParam);

@internal
@Native<BOOL Function(Uint32, Uint32, WPARAM, LPARAM)>()
external int PostThreadMessageW_Wrapper(
  int idThread,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<Uint16 Function(Pointer<WNDCLASS>)>()
external int RegisterClassW_Wrapper(Pointer<WNDCLASS> lpWndClass);

@internal
@Native<Uint16 Function(Pointer<WNDCLASSEX>)>()
external int RegisterClassExW_Wrapper(Pointer<WNDCLASSEX> param0);

@internal
@Native<Uint32 Function(PCWSTR)>()
external int RegisterClipboardFormatW_Wrapper(PCWSTR lpszFormat);

@internal
@Native<HDEVNOTIFY Function(HANDLE, Pointer, Uint32)>()
external int RegisterDeviceNotificationW_Wrapper(
  int hRecipient,
  Pointer notificationFilter,
  int flags,
);

@internal
@Native<BOOL Function(HWND, Int32, Uint32, Uint32)>()
external int RegisterHotKey_Wrapper(int hWnd, int id, int fsModifiers, int vk);

@internal
@Native<HPOWERNOTIFY Function(HANDLE, Pointer<GUID>, Uint32)>()
external int RegisterPowerSettingNotification_Wrapper(
  int hRecipient,
  Pointer<GUID> powerSettingGuid,
  int flags,
);

@internal
@Native<BOOL Function(Pointer<RAWINPUTDEVICE>, Uint32, Uint32)>()
external int RegisterRawInputDevices_Wrapper(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  int uiNumDevices,
  int cbSize,
);

@internal
@Native<BOOL Function(HWND, Uint32)>()
external int RegisterTouchHitTestingWindow_Wrapper(int hwnd, int value);

@internal
@Native<BOOL Function(HWND, Uint32)>()
external int RegisterTouchWindow_Wrapper(int hwnd, int ulFlags);

@internal
@Native<Uint32 Function(PCWSTR)>()
external int RegisterWindowMessageW_Wrapper(PCWSTR lpString);

@internal
@Native<BOOL Function()>()
external int ReleaseCapture_Wrapper();

@internal
@Native<BOOL Function(HWND)>()
external int RemoveClipboardFormatListener_Wrapper(int hwnd);

@internal
@Native<BOOL Function(HMENU, Uint32, Uint32)>()
external int RemoveMenu_Wrapper(int hMenu, int uPosition, int uFlags);

@internal
@Native<HANDLE Function(HWND, PCWSTR)>()
external int RemovePropW_Wrapper(int hWnd, PCWSTR lpString);

@internal
@Native<
  BOOL Function(
    HDC,
    Int32,
    Int32,
    Pointer<RECT>,
    Pointer<RECT>,
    HRGN,
    Pointer<RECT>,
  )
>()
external int ScrollDC_Wrapper(
  int hDC,
  int dx,
  int dy,
  Pointer<RECT> lprcScroll,
  Pointer<RECT> lprcClip,
  int hrgnUpdate,
  Pointer<RECT> lprcUpdate,
);

@internal
@Native<BOOL Function(HWND, Int32, Int32, Pointer<RECT>, Pointer<RECT>)>()
external int ScrollWindow_Wrapper(
  int hWnd,
  int xAmount,
  int yAmount,
  Pointer<RECT> lpRect,
  Pointer<RECT> lpClipRect,
);

@internal
@Native<
  Int32 Function(
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
external int ScrollWindowEx_Wrapper(
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
@Native<Uint32 Function(Uint32, Pointer<INPUT>, Int32)>()
external int SendInput_Wrapper(int cInputs, Pointer<INPUT> pInputs, int cbSize);

@internal
@Native<LRESULT Function(HWND, Uint32, WPARAM, LPARAM)>()
external int SendMessageW_Wrapper(int hWnd, int msg, int wParam, int lParam);

@internal
@Native<
  BOOL Function(
    HWND,
    Uint32,
    WPARAM,
    LPARAM,
    Pointer<NativeFunction<SENDASYNCPROC>>,
    IntPtr,
  )
>()
external int SendMessageCallbackW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
);

@internal
@Native<
  LRESULT Function(
    HWND,
    Uint32,
    WPARAM,
    LPARAM,
    Uint32,
    Uint32,
    Pointer<IntPtr>,
  )
>()
external int SendMessageTimeoutW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  int fuFlags,
  int uTimeout,
  Pointer<IntPtr> lpdwResult,
);

@internal
@Native<BOOL Function(HWND, Uint32, WPARAM, LPARAM)>()
external int SendNotifyMessageW_Wrapper(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<HWND Function(HWND)>()
external int SetActiveWindow_Wrapper(int hWnd);

@internal
@Native<BOOL Function(Uint32)>()
external int SetCaretBlinkTime_Wrapper(int uMSeconds);

@internal
@Native<BOOL Function(Int32, Int32)>()
external int SetCaretPos_Wrapper(int x, int y);

@internal
@Native<IntPtr Function(HWND, Int32, IntPtr)>()
external int SetClassLongPtrW_Wrapper(int hWnd, int nIndex, int dwNewLong);

@internal
@Native<HANDLE Function(Uint32, HANDLE)>()
external int SetClipboardData_Wrapper(int uFormat, int hMem);

@internal
@Native<HWND Function(HWND)>()
external int SetClipboardViewer_Wrapper(int hWndNewViewer);

@internal
@Native<
  IntPtr Function(
    HWND,
    IntPtr,
    Uint32,
    Pointer<NativeFunction<TIMERPROC>>,
    Uint32,
  )
>()
external int SetCoalescableTimer_Wrapper(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
  int uToleranceDelay,
);

@internal
@Native<BOOL Function(Int32, Int32)>()
external int SetCursorPos_Wrapper(int x, int y);

@internal
@Native<BOOL Function(HWND, Int32, Int32)>()
external int SetDialogControlDpiChangeBehavior_Wrapper(
  int hWnd,
  int mask,
  int values,
);

@internal
@Native<BOOL Function(HWND, Int32, Int32)>()
external int SetDialogDpiChangeBehavior_Wrapper(int hDlg, int mask, int values);

@internal
@Native<BOOL Function(HWND, Int32, Uint32, BOOL)>()
external int SetDlgItemInt_Wrapper(
  int hDlg,
  int nIDDlgItem,
  int uValue,
  int bSigned,
);

@internal
@Native<BOOL Function(HWND, Int32, PCWSTR)>()
external int SetDlgItemTextW_Wrapper(int hDlg, int nIDDlgItem, PCWSTR lpString);

@internal
@Native<BOOL Function(Uint32)>()
external int SetDoubleClickTime_Wrapper(int param0);

@internal
@Native<HWND Function(HWND)>()
external int SetFocus_Wrapper(int hWnd);

@internal
@Native<BOOL Function(HWND, Uint32, Uint32, Pointer<GESTURECONFIG>, Uint32)>()
external int SetGestureConfig_Wrapper(
  int hwnd,
  int dwReserved,
  int cIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
);

@internal
@Native<BOOL Function(Pointer<Uint8>)>()
external int SetKeyboardState_Wrapper(Pointer<Uint8> lpKeyState);

@internal
@Native<BOOL Function(HWND, COLORREF, Uint8, Uint32)>()
external int SetLayeredWindowAttributes_Wrapper(
  int hwnd,
  int crKey,
  int bAlpha,
  int dwFlags,
);

@internal
@Native<BOOL Function(HWND, HMENU)>()
external int SetMenu_Wrapper(int hWnd, int hMenu);

@internal
@Native<BOOL Function(HMENU, Uint32, Uint32)>()
external int SetMenuDefaultItem_Wrapper(int hMenu, int uItem, int fByPos);

@internal
@Native<BOOL Function(HMENU, Pointer<MENUINFO>)>()
external int SetMenuInfo_Wrapper(int param0, Pointer<MENUINFO> param1);

@internal
@Native<BOOL Function(HMENU, Uint32, Uint32, HBITMAP, HBITMAP)>()
external int SetMenuItemBitmaps_Wrapper(
  int hMenu,
  int uPosition,
  int uFlags,
  int hBitmapUnchecked,
  int hBitmapChecked,
);

@internal
@Native<BOOL Function(HMENU, Uint32, BOOL, Pointer<MENUITEMINFO>)>()
external int SetMenuItemInfoW_Wrapper(
  int hmenu,
  int item,
  int fByPositon,
  Pointer<MENUITEMINFO> lpmii,
);

@internal
@Native<HWND Function(HWND, HWND)>()
external int SetParent_Wrapper(int hWndChild, int hWndNewParent);

@internal
@Native<BOOL Function(Int32, Int32)>()
external int SetPhysicalCursorPos_Wrapper(int x, int y);

@internal
@Native<BOOL Function(DPI_AWARENESS_CONTEXT)>()
external int SetProcessDpiAwarenessContext_Wrapper(int value);

@internal
@Native<BOOL Function(HWND, PCWSTR, HANDLE)>()
external int SetPropW_Wrapper(int hWnd, PCWSTR lpString, int hData);

@internal
@Native<BOOL Function(Int32, Pointer<Int32>, Pointer<COLORREF>)>()
external int SetSysColors_Wrapper(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<COLORREF> lpaRgbValues,
);

@internal
@Native<BOOL Function(HCURSOR, Uint32)>()
external int SetSystemCursor_Wrapper(int hcur, int id);

@internal
@Native<
  IntPtr Function(HWND, IntPtr, Uint32, Pointer<NativeFunction<TIMERPROC>>)
>()
external int SetTimer_Wrapper(
  int hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
);

@internal
@Native<BOOL Function(HANDLE, Int32, Pointer, Uint32)>()
external int SetUserObjectInformationW_Wrapper(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
);

@internal
@Native<BOOL Function(HWND, Uint32)>()
external int SetWindowDisplayAffinity_Wrapper(int hWnd, int dwAffinity);

@internal
@Native<IntPtr Function(HWND, Int32, IntPtr)>()
external int SetWindowLongPtrW_Wrapper(int hWnd, int nIndex, int dwNewLong);

@internal
@Native<BOOL Function(HWND, Pointer<WINDOWPLACEMENT>)>()
external int SetWindowPlacement_Wrapper(
  int hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
);

@internal
@Native<BOOL Function(HWND, HWND, Int32, Int32, Int32, Int32, Uint32)>()
external int SetWindowPos_Wrapper(
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
  HHOOK Function(Int32, Pointer<NativeFunction<HOOKPROC>>, HINSTANCE, Uint32)
>()
external int SetWindowsHookExW_Wrapper(
  int idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  int hmod,
  int dwThreadId,
);

@internal
@Native<BOOL Function(HWND, PCWSTR)>()
external int SetWindowTextW_Wrapper(int hWnd, PCWSTR lpString);

@internal
@Native<BOOL Function(HWND)>()
external int ShowCaret_Wrapper(int hWnd);

@internal
@Native<BOOL Function(HWND, BOOL)>()
external int ShowOwnedPopups_Wrapper(int hWnd, int fShow);

@internal
@Native<BOOL Function(Uint32)>()
external int SkipPointerFrameMessages_Wrapper(int pointerId);

@internal
@Native<BOOL Function(HDESK)>()
external int SwitchDesktop_Wrapper(int hDesktop);

@internal
@Native<BOOL Function(Uint32, Uint32, Pointer, Uint32)>()
external int SystemParametersInfoW_Wrapper(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
);

@internal
@Native<BOOL Function(Uint32, Uint32, Pointer, Uint32, Uint32)>()
external int SystemParametersInfoForDpi_Wrapper(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
  int dpi,
);

@internal
@Native<Uint16 Function(HWND, Uint32, Pointer<RECT>, Uint32, Pointer<HWND>)>()
external int TileWindows_Wrapper(
  int hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<HWND> lpKids,
);

@internal
@Native<
  BOOL Function(HMENU, Uint32, Int32, Int32, Int32, HWND, Pointer<RECT>)
>()
external int TrackPopupMenu_Wrapper(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int nReserved,
  int hWnd,
  Pointer<RECT> prcRect,
);

@internal
@Native<BOOL Function(HMENU, Uint32, Int32, Int32, HWND, Pointer<TPMPARAMS>)>()
external int TrackPopupMenuEx_Wrapper(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int hwnd,
  Pointer<TPMPARAMS> lptpm,
);

@internal
@Native<Int32 Function(HWND, HACCEL, Pointer<MSG>)>()
external int TranslateAcceleratorW_Wrapper(
  int hWnd,
  int hAccTable,
  Pointer<MSG> lpMsg,
);

@internal
@Native<BOOL Function(HHOOK)>()
external int UnhookWindowsHookEx_Wrapper(int hhk);

@internal
@Native<BOOL Function(HKL)>()
external int UnloadKeyboardLayout_Wrapper(int hkl);

@internal
@Native<BOOL Function(PCWSTR, HINSTANCE)>()
external int UnregisterClassW_Wrapper(PCWSTR lpClassName, int hInstance);

@internal
@Native<BOOL Function(HDEVNOTIFY)>()
external int UnregisterDeviceNotification_Wrapper(int handle);

@internal
@Native<BOOL Function(HWND, Int32)>()
external int UnregisterHotKey_Wrapper(int hWnd, int id);

@internal
@Native<BOOL Function(HPOWERNOTIFY)>()
external int UnregisterPowerSettingNotification_Wrapper(int handle);

@internal
@Native<BOOL Function(HWND)>()
external int UnregisterTouchWindow_Wrapper(int hwnd);

@internal
@Native<BOOL Function(HANDLE, HANDLE, BOOL)>()
external int UserHandleGrantAccess_Wrapper(
  int hUserHandle,
  int hJob,
  int bGrant,
);

@internal
@Native<BOOL Function()>()
external int WaitMessage_Wrapper();
