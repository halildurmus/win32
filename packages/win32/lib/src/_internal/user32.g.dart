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

import 'package:ffi/ffi.dart';
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
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result ActivateKeyboardLayout_Wrapper(
  Pointer hkl,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result AddClipboardFormatListener_Wrapper(Pointer hwnd);

@internal
@Native<NativeWin32Result Function(Pointer<RECT>, Uint32, Int32)>()
external NativeWin32Result AdjustWindowRect_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
);

@internal
@Native<NativeWin32Result Function(Pointer<RECT>, Uint32, Int32, Uint32)>()
external NativeWin32Result AdjustWindowRectEx_Wrapper(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<RECT>, Uint32, Int32, Uint32, Uint32)
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
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result AnimateWindow_Wrapper(
  Pointer hWnd,
  int dwTime,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, IntPtr, Pointer<Utf16>)>()
external NativeWin32Result AppendMenuW_Wrapper(
  Pointer hMenu,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result ArrangeIconicWindows_Wrapper(Pointer hWnd);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result BeginDeferWindowPos_Wrapper(int nNumWindows);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result BlockInput_Wrapper(int fBlockIt);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result BringWindowToTop_Wrapper(Pointer hWnd);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Uint32>, Uint32, IntPtr, IntPtr)
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
    IntPtr,
    IntPtr,
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
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Pointer<RECT>,
    Uint32,
    Pointer<Pointer>,
  )
>()
external NativeWin32Result CascadeWindows_Wrapper(
  Pointer hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<Pointer> lpKids,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32)>()
external NativeWin32Result ChangeWindowMessageFilter_Wrapper(
  int message,
  int dwFlag,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Uint32,
    Pointer<CHANGEFILTERSTRUCT>,
  )
>()
external NativeWin32Result ChangeWindowMessageFilterEx_Wrapper(
  Pointer hwnd,
  int message,
  int action,
  Pointer<CHANGEFILTERSTRUCT> pChangeFilterStruct,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Uint32)>()
external NativeWin32Result CheckDlgButton_Wrapper(
  Pointer hDlg,
  int nIDButton,
  int uCheck,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Int32, Int32)>()
external NativeWin32Result CheckRadioButton_Wrapper(
  Pointer hDlg,
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
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseDesktop_Wrapper(Pointer hDesktop);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseGestureInfoHandle_Wrapper(Pointer hGestureInfo);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseTouchInputHandle_Wrapper(Pointer hTouchInput);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseWindow_Wrapper(Pointer hWnd);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CloseWindowStation_Wrapper(Pointer hWinSta);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result CopyIcon_Wrapper(Pointer hIcon);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Int32, Int32, Uint32)>()
external NativeWin32Result CopyImage_Wrapper(
  Pointer h,
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
@Native<NativeWin32Result Function(Pointer, Pointer, Int32, Int32)>()
external NativeWin32Result CreateCaret_Wrapper(
  Pointer hWnd,
  Pointer hBitmap,
  int nWidth,
  int nHeight,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Pointer,
  )
>()
external NativeWin32Result CreateCursor_Wrapper(
  Pointer hInst,
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
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<DEVMODE>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>()
external NativeWin32Result CreateDesktopW_Wrapper(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
  Pointer<DEVMODE> pDevmode,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<DEVMODE>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
    Uint32,
    Pointer,
  )
>()
external NativeWin32Result CreateDesktopExW_Wrapper(
  Pointer<Utf16> lpszDesktop,
  Pointer<Utf16> lpszDevice,
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
    Pointer,
    Pointer<DLGTEMPLATE>,
    Pointer,
    Pointer<NativeFunction<DLGPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result CreateDialogIndirectParamW_Wrapper(
  Pointer hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  Pointer hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Int32,
    Uint8,
    Uint8,
    Pointer<Uint8>,
    Pointer<Uint8>,
  )
>()
external NativeWin32Result CreateIcon_Wrapper(
  Pointer hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>, Uint32, Int32, Uint32)>()
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
    Int32,
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
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Pointer,
    IntPtr,
  )
>()
external NativeWin32Result CreateMDIWindowW_Wrapper(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
  int dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  Pointer hWndParent,
  Pointer hInstance,
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
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Int32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Pointer,
    Pointer,
    Pointer,
  )
>()
external NativeWin32Result CreateWindowExW_Wrapper(
  int dwExStyle,
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
  int dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  Pointer hWndParent,
  Pointer hMenu,
  Pointer hInstance,
  Pointer lpParam,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer<Utf16>,
    Uint32,
    Uint32,
    Pointer<SECURITY_ATTRIBUTES>,
  )
>()
external NativeWin32Result CreateWindowStationW_Wrapper(
  Pointer<Utf16> lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES> lpsa,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer,
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result DeferWindowPos_Wrapper(
  Pointer hWinPosInfo,
  Pointer hWnd,
  Pointer hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result DeleteMenu_Wrapper(
  Pointer hMenu,
  int uPosition,
  int uFlags,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result DestroyCaret_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DestroyCursor_Wrapper(Pointer hCursor);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DestroyIcon_Wrapper(Pointer hIcon);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DestroyMenu_Wrapper(Pointer hMenu);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result DestroyWindow_Wrapper(Pointer hWnd);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<DLGTEMPLATE>,
    Pointer,
    Pointer<NativeFunction<DLGPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result DialogBoxIndirectParamW_Wrapper(
  Pointer hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  Pointer hWndParent,
  Pointer<NativeFunction<DLGPROC>> lpDialogFunc,
  int dwInitParam,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Int32, Pointer)>()
external NativeWin32Result DrawIcon_Wrapper(
  Pointer hDC,
  int x,
  int y,
  Pointer hIcon,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result EmptyClipboard_Wrapper();

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result EnableMouseInPointer_Wrapper(int fEnable);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result EnableNonClientDpiScaling_Wrapper(Pointer hwnd);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result EnableScrollBar_Wrapper(
  Pointer hWnd,
  int wSBflags,
  int wArrows,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result EndDeferWindowPos_Wrapper(Pointer hWinPosInfo);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result EndDialog_Wrapper(Pointer hDlg, int nResult);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result EndMenu_Wrapper();

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result EnumClipboardFormats_Wrapper(int format);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<NativeFunction<WNDENUMPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result EnumDesktopWindows_Wrapper(
  Pointer hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<NativeFunction<WNDENUMPROC>>, IntPtr)
>()
external NativeWin32Result EnumWindows_Wrapper(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer<Utf16>)>()
external NativeWin32Result FindWindowW_Wrapper(
  Pointer<Utf16> lpClassName,
  Pointer<Utf16> lpWindowName,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer, Pointer<Utf16>, Pointer<Utf16>)
>()
external NativeWin32Result FindWindowExW_Wrapper(
  Pointer hWndParent,
  Pointer hWndChildAfter,
  Pointer<Utf16> lpszClass,
  Pointer<Utf16> lpszWindow,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Pointer<ALTTABINFO>,
    Pointer<Utf16>,
    Uint32,
  )
>()
external NativeWin32Result GetAltTabInfoW_Wrapper(
  Pointer hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  Pointer<Utf16> pszItemText,
  int cchItemText,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetCaretBlinkTime_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer<POINT>)>()
external NativeWin32Result GetCaretPos_Wrapper(Pointer<POINT> lpPoint);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASS>)
>()
external NativeWin32Result GetClassInfoW_Wrapper(
  Pointer hInstance,
  Pointer<Utf16> lpClassName,
  Pointer<WNDCLASS> lpWndClass,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASSEX>)
>()
external NativeWin32Result GetClassInfoExW_Wrapper(
  Pointer hInstance,
  Pointer<Utf16> lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result GetClassLongPtrW_Wrapper(Pointer hWnd, int nIndex);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Int32)>()
external NativeWin32Result GetClassNameW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpClassName,
  int nMaxCount,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<RECT>)>()
external NativeWin32Result GetClientRect_Wrapper(
  Pointer hWnd,
  Pointer<RECT> lpRect,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result GetClipboardData_Wrapper(int uFormat);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<Utf16>, Int32)>()
external NativeWin32Result GetClipboardFormatNameW_Wrapper(
  int format,
  Pointer<Utf16> lpszFormatName,
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
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetDialogControlDpiChangeBehavior_Wrapper(
  Pointer hWnd,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetDialogDpiChangeBehavior_Wrapper(Pointer hDlg);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result GetDlgItem_Wrapper(Pointer hDlg, int nIDDlgItem);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<Int32>, Int32)>()
external NativeWin32Result GetDlgItemInt_Wrapper(
  Pointer hDlg,
  int nIDDlgItem,
  Pointer<Int32> lpTranslated,
  int bSigned,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<Utf16>, Int32)>()
external NativeWin32Result GetDlgItemTextW_Wrapper(
  Pointer hDlg,
  int nIDDlgItem,
  Pointer<Utf16> lpString,
  int cchMax,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Uint32,
    Pointer<Uint32>,
    Pointer<GESTURECONFIG>,
    Uint32,
  )
>()
external NativeWin32Result GetGestureConfig_Wrapper(
  Pointer hwnd,
  int dwReserved,
  int dwFlags,
  Pointer<Uint32> pcIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<Uint8>)>()
external NativeWin32Result GetGestureExtraArgs_Wrapper(
  Pointer hGestureInfo,
  int cbExtraArgs,
  Pointer<Uint8> pExtraArgs,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<GESTUREINFO>)>()
external NativeWin32Result GetGestureInfo_Wrapper(
  Pointer hGestureInfo,
  Pointer<GESTUREINFO> pGestureInfo,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer<GUITHREADINFO>)>()
external NativeWin32Result GetGUIThreadInfo_Wrapper(
  int idThread,
  Pointer<GUITHREADINFO> pgui,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<ICONINFO>)>()
external NativeWin32Result GetIconInfo_Wrapper(
  Pointer hIcon,
  Pointer<ICONINFO> piconinfo,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<Pointer>)>()
external NativeWin32Result GetKeyboardLayoutList_Wrapper(
  int nBuff,
  Pointer<Pointer> lpList,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result GetKeyboardLayoutNameW_Wrapper(
  Pointer<Utf16> pwszKLID,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>)>()
external NativeWin32Result GetKeyboardState_Wrapper(Pointer<Uint8> lpKeyState);

@internal
@Native<NativeWin32Result Function(Int32)>()
external NativeWin32Result GetKeyboardType_Wrapper(int nTypeFlag);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<Utf16>, Int32)>()
external NativeWin32Result GetKeyNameTextW_Wrapper(
  int lParam,
  Pointer<Utf16> lpString,
  int cchSize,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Uint32>,
    Pointer<Uint8>,
    Pointer<Uint32>,
  )
>()
external NativeWin32Result GetLayeredWindowAttributes_Wrapper(
  Pointer hwnd,
  Pointer<Uint32> pcrKey,
  Pointer<Uint8> pbAlpha,
  Pointer<Uint32> pdwFlags,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Int32, Int32, Pointer<MENUBARINFO>)
>()
external NativeWin32Result GetMenuBarInfo_Wrapper(
  Pointer hwnd,
  int idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result GetMenuDefaultItem_Wrapper(
  Pointer hMenu,
  int fByPos,
  int gmdiFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<MENUINFO>)>()
external NativeWin32Result GetMenuInfo_Wrapper(
  Pointer param0,
  Pointer<MENUINFO> param1,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetMenuItemCount_Wrapper(Pointer hMenu);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>)
>()
external NativeWin32Result GetMenuItemInfoW_Wrapper(
  Pointer hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmii,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Uint32, Pointer<RECT>)>()
external NativeWin32Result GetMenuItemRect_Wrapper(
  Pointer hWnd,
  Pointer hMenu,
  int uItem,
  Pointer<RECT> lprcItem,
);

@internal
@Native<NativeWin32Result Function(Pointer<MSG>, Pointer, Uint32, Uint32)>()
external NativeWin32Result GetMessageW_Wrapper(
  Pointer<MSG> lpMsg,
  Pointer hWnd,
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
@Native<NativeWin32Result Function(Pointer, Pointer, Int32)>()
external NativeWin32Result GetNextDlgGroupItem_Wrapper(
  Pointer hDlg,
  Pointer hCtl,
  int bPrevious,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Int32)>()
external NativeWin32Result GetNextDlgTabItem_Wrapper(
  Pointer hDlg,
  Pointer hCtl,
  int bPrevious,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result GetOpenClipboardWindow_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetParent_Wrapper(Pointer hWnd);

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
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetRawInputDeviceInfoW_Wrapper(
  Pointer hDevice,
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
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<SCROLLBARINFO>)>()
external NativeWin32Result GetScrollBarInfo_Wrapper(
  Pointer hwnd,
  int idObject,
  Pointer<SCROLLBARINFO> psbi,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<SCROLLINFO>)>()
external NativeWin32Result GetScrollInfo_Wrapper(
  Pointer hwnd,
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
@Native<NativeWin32Result Function(Pointer, Pointer<TITLEBARINFO>)>()
external NativeWin32Result GetTitleBarInfo_Wrapper(
  Pointer hwnd,
  Pointer<TITLEBARINFO> pti,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetTopWindow_Wrapper(Pointer hWnd);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Pointer<TOUCHINPUT>, Int32)
>()
external NativeWin32Result GetTouchInputInfo_Wrapper(
  Pointer hTouchInput,
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
  NativeWin32Result Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>)
>()
external NativeWin32Result GetUserObjectInformationW_Wrapper(
  Pointer hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
  Pointer<Uint32> lpnLengthNeeded,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result GetWindow_Wrapper(Pointer hWnd, int uCmd);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Uint32>)>()
external NativeWin32Result GetWindowDisplayAffinity_Wrapper(
  Pointer hWnd,
  Pointer<Uint32> pdwAffinity,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<WINDOWINFO>)>()
external NativeWin32Result GetWindowInfo_Wrapper(
  Pointer hwnd,
  Pointer<WINDOWINFO> pwi,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result GetWindowLongPtrW_Wrapper(Pointer hWnd, int nIndex);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<WINDOWPLACEMENT>)>()
external NativeWin32Result GetWindowPlacement_Wrapper(
  Pointer hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<RECT>)>()
external NativeWin32Result GetWindowRect_Wrapper(
  Pointer hWnd,
  Pointer<RECT> lpRect,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Int32)>()
external NativeWin32Result GetWindowTextW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpString,
  int nMaxCount,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result GetWindowTextLengthW_Wrapper(Pointer hWnd);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result HideCaret_Wrapper(Pointer hWnd);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Uint32, IntPtr, Pointer<Utf16>)
>()
external NativeWin32Result InsertMenuW_Wrapper(
  Pointer hMenu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>)
>()
external NativeWin32Result InsertMenuItemW_Wrapper(
  Pointer hmenu,
  int item,
  int fByPosition,
  Pointer<MENUITEMINFO> lpmi,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result IsClipboardFormatAvailable_Wrapper(int format);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result IsImmersiveProcess_Wrapper(Pointer hProcess);

@internal
@Native<NativeWin32Result Function(Pointer, IntPtr)>()
external NativeWin32Result KillTimer_Wrapper(Pointer hWnd, int uIDEvent);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result LoadAcceleratorsW_Wrapper(
  Pointer hInstance,
  Pointer<Utf16> lpTableName,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result LoadCursorW_Wrapper(
  Pointer hInstance,
  Pointer<Utf16> lpCursorName,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result LoadCursorFromFileW_Wrapper(
  Pointer<Utf16> lpFileName,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result LoadIconW_Wrapper(
  Pointer hInstance,
  Pointer<Utf16> lpIconName,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Uint32,
    Int32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result LoadImageW_Wrapper(
  Pointer hInst,
  Pointer<Utf16> name,
  int type,
  int cx,
  int cy,
  int fuLoad,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32)>()
external NativeWin32Result LoadKeyboardLayoutW_Wrapper(
  Pointer<Utf16> pwszKLID,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result LoadMenuW_Wrapper(
  Pointer hInstance,
  Pointer<Utf16> lpMenuName,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result LoadMenuIndirectW_Wrapper(Pointer lpMenuTemplate);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Pointer<Utf16>, Int32)>()
external NativeWin32Result LoadStringW_Wrapper(
  Pointer hInstance,
  int uID,
  Pointer<Utf16> lpBuffer,
  int cchBufferMax,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result LockSetForegroundWindow_Wrapper(int uLockCode);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result LockWorkStation_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>, Int32)>()
external NativeWin32Result LookupIconIdFromDirectory_Wrapper(
  Pointer<Uint8> presbits,
  int fIcon,
);

@internal
@Native<
  NativeWin32Result Function(Pointer<Uint8>, Int32, Int32, Int32, Uint32)
>()
external NativeWin32Result LookupIconIdFromDirectoryEx_Wrapper(
  Pointer<Uint8> presbits,
  int fIcon,
  int cxDesired,
  int cyDesired,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<RECT>)>()
external NativeWin32Result MapDialogRect_Wrapper(
  Pointer hDlg,
  Pointer<RECT> lpRect,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result MessageBeep_Wrapper(int uType);

@internal
@Native<
  NativeWin32Result Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint32)
>()
external NativeWin32Result MessageBoxW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  int uType,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Uint32,
    Uint16,
  )
>()
external NativeWin32Result MessageBoxExW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpText,
  Pointer<Utf16> lpCaption,
  int uType,
  int wLanguageId,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Uint32, IntPtr, Pointer<Utf16>)
>()
external NativeWin32Result ModifyMenuW_Wrapper(
  Pointer hMnu,
  int uPosition,
  int uFlags,
  int uIDNewItem,
  Pointer<Utf16> lpNewItem,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Int32, Int32, Int32, Int32, Int32)
>()
external NativeWin32Result MoveWindow_Wrapper(
  Pointer hWnd,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int bRepaint,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Pointer>, Int32, Uint32, Uint32)
>()
external NativeWin32Result MsgWaitForMultipleObjects_Wrapper(
  int nCount,
  Pointer<Pointer> pHandles,
  int fWaitAll,
  int dwMilliseconds,
  int dwWakeMask,
);

@internal
@Native<
  NativeWin32Result Function(Uint32, Pointer<Pointer>, Uint32, Uint32, Uint32)
>()
external NativeWin32Result MsgWaitForMultipleObjectsEx_Wrapper(
  int nCount,
  Pointer<Pointer> pHandles,
  int dwMilliseconds,
  int dwWakeMask,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result OpenClipboard_Wrapper(Pointer hWndNewOwner);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Uint32, Int32, Uint32)>()
external NativeWin32Result OpenDesktopW_Wrapper(
  Pointer<Utf16> lpszDesktop,
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result OpenIcon_Wrapper(Pointer hWnd);

@internal
@Native<NativeWin32Result Function(Uint32, Int32, Uint32)>()
external NativeWin32Result OpenInputDesktop_Wrapper(
  int dwFlags,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Int32, Uint32)>()
external NativeWin32Result OpenWindowStationW_Wrapper(
  Pointer<Utf16> lpszWinSta,
  int fInherit,
  int dwDesiredAccess,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, IntPtr, IntPtr)>()
external NativeWin32Result PostMessageW_Wrapper(
  Pointer hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(Uint32, Uint32, IntPtr, IntPtr)>()
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
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result RegisterClipboardFormatW_Wrapper(
  Pointer<Utf16> lpszFormat,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Uint32)>()
external NativeWin32Result RegisterDeviceNotificationW_Wrapper(
  Pointer hRecipient,
  Pointer notificationFilter,
  int flags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Uint32, Uint32)>()
external NativeWin32Result RegisterHotKey_Wrapper(
  Pointer hWnd,
  int id,
  int fsModifiers,
  int vk,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<GUID>, Uint32)>()
external NativeWin32Result RegisterPowerSettingNotification_Wrapper(
  Pointer hRecipient,
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
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result RegisterTouchHitTestingWindow_Wrapper(
  Pointer hwnd,
  int value,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result RegisterTouchWindow_Wrapper(
  Pointer hwnd,
  int ulFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>)>()
external NativeWin32Result RegisterWindowMessageW_Wrapper(
  Pointer<Utf16> lpString,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result ReleaseCapture_Wrapper();

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result RemoveClipboardFormatListener_Wrapper(Pointer hwnd);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result RemoveMenu_Wrapper(
  Pointer hMenu,
  int uPosition,
  int uFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result RemovePropW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpString,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Int32,
    Pointer<RECT>,
    Pointer<RECT>,
    Pointer,
    Pointer<RECT>,
  )
>()
external NativeWin32Result ScrollDC_Wrapper(
  Pointer hDC,
  int dx,
  int dy,
  Pointer<RECT> lprcScroll,
  Pointer<RECT> lprcClip,
  Pointer hrgnUpdate,
  Pointer<RECT> lprcUpdate,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Int32,
    Pointer<RECT>,
    Pointer<RECT>,
  )
>()
external NativeWin32Result ScrollWindow_Wrapper(
  Pointer hWnd,
  int xAmount,
  int yAmount,
  Pointer<RECT> lpRect,
  Pointer<RECT> lpClipRect,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Int32,
    Int32,
    Pointer<RECT>,
    Pointer<RECT>,
    Pointer,
    Pointer<RECT>,
    Uint32,
  )
>()
external NativeWin32Result ScrollWindowEx_Wrapper(
  Pointer hWnd,
  int dx,
  int dy,
  Pointer<RECT> prcScroll,
  Pointer<RECT> prcClip,
  Pointer hrgnUpdate,
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
@Native<NativeWin32Result Function(Pointer, Uint32, IntPtr, IntPtr)>()
external NativeWin32Result SendMessageW_Wrapper(
  Pointer hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    IntPtr,
    IntPtr,
    Pointer<NativeFunction<SENDASYNCPROC>>,
    IntPtr,
  )
>()
external NativeWin32Result SendMessageCallbackW_Wrapper(
  Pointer hWnd,
  int msg,
  int wParam,
  int lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    IntPtr,
    IntPtr,
    Uint32,
    Uint32,
    Pointer<IntPtr>,
  )
>()
external NativeWin32Result SendMessageTimeoutW_Wrapper(
  Pointer hWnd,
  int msg,
  int wParam,
  int lParam,
  int fuFlags,
  int uTimeout,
  Pointer<IntPtr> lpdwResult,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, IntPtr, IntPtr)>()
external NativeWin32Result SendNotifyMessageW_Wrapper(
  Pointer hWnd,
  int msg,
  int wParam,
  int lParam,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetActiveWindow_Wrapper(Pointer hWnd);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SetCaretBlinkTime_Wrapper(int uMSeconds);

@internal
@Native<NativeWin32Result Function(Int32, Int32)>()
external NativeWin32Result SetCaretPos_Wrapper(int x, int y);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, IntPtr)>()
external NativeWin32Result SetClassLongPtrW_Wrapper(
  Pointer hWnd,
  int nIndex,
  int dwNewLong,
);

@internal
@Native<NativeWin32Result Function(Uint32, Pointer)>()
external NativeWin32Result SetClipboardData_Wrapper(int uFormat, Pointer hMem);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetClipboardViewer_Wrapper(Pointer hWndNewViewer);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    IntPtr,
    Uint32,
    Pointer<NativeFunction<TIMERPROC>>,
    Uint32,
  )
>()
external NativeWin32Result SetCoalescableTimer_Wrapper(
  Pointer hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
  int uToleranceDelay,
);

@internal
@Native<NativeWin32Result Function(Int32, Int32)>()
external NativeWin32Result SetCursorPos_Wrapper(int x, int y);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Int32)>()
external NativeWin32Result SetDialogControlDpiChangeBehavior_Wrapper(
  Pointer hWnd,
  int mask,
  int values,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Int32)>()
external NativeWin32Result SetDialogDpiChangeBehavior_Wrapper(
  Pointer hDlg,
  int mask,
  int values,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Uint32, Int32)>()
external NativeWin32Result SetDlgItemInt_Wrapper(
  Pointer hDlg,
  int nIDDlgItem,
  int uValue,
  int bSigned,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer<Utf16>)>()
external NativeWin32Result SetDlgItemTextW_Wrapper(
  Pointer hDlg,
  int nIDDlgItem,
  Pointer<Utf16> lpString,
);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SetDoubleClickTime_Wrapper(int param0);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetFocus_Wrapper(Pointer hWnd);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Uint32,
    Pointer<GESTURECONFIG>,
    Uint32,
  )
>()
external NativeWin32Result SetGestureConfig_Wrapper(
  Pointer hwnd,
  int dwReserved,
  int cIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
);

@internal
@Native<NativeWin32Result Function(Pointer<Uint8>)>()
external NativeWin32Result SetKeyboardState_Wrapper(Pointer<Uint8> lpKeyState);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint8, Uint32)>()
external NativeWin32Result SetLayeredWindowAttributes_Wrapper(
  Pointer hwnd,
  int crKey,
  int bAlpha,
  int dwFlags,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer)>()
external NativeWin32Result SetMenu_Wrapper(Pointer hWnd, Pointer hMenu);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32)>()
external NativeWin32Result SetMenuDefaultItem_Wrapper(
  Pointer hMenu,
  int uItem,
  int fByPos,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<MENUINFO>)>()
external NativeWin32Result SetMenuInfo_Wrapper(
  Pointer param0,
  Pointer<MENUINFO> param1,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32, Uint32, Pointer, Pointer)>()
external NativeWin32Result SetMenuItemBitmaps_Wrapper(
  Pointer hMenu,
  int uPosition,
  int uFlags,
  Pointer hBitmapUnchecked,
  Pointer hBitmapChecked,
);

@internal
@Native<
  NativeWin32Result Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>)
>()
external NativeWin32Result SetMenuItemInfoW_Wrapper(
  Pointer hmenu,
  int item,
  int fByPositon,
  Pointer<MENUITEMINFO> lpmii,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer)>()
external NativeWin32Result SetParent_Wrapper(
  Pointer hWndChild,
  Pointer hWndNewParent,
);

@internal
@Native<NativeWin32Result Function(Int32, Int32)>()
external NativeWin32Result SetPhysicalCursorPos_Wrapper(int x, int y);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SetProcessDpiAwarenessContext_Wrapper(Pointer value);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>, Pointer)>()
external NativeWin32Result SetPropW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpString,
  Pointer hData,
);

@internal
@Native<NativeWin32Result Function(Int32, Pointer<Int32>, Pointer<Uint32>)>()
external NativeWin32Result SetSysColors_Wrapper(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<Uint32> lpaRgbValues,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SetSystemCursor_Wrapper(Pointer hcur, int id);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    IntPtr,
    Uint32,
    Pointer<NativeFunction<TIMERPROC>>,
  )
>()
external NativeWin32Result SetTimer_Wrapper(
  Pointer hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>> lpTimerFunc,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, Pointer, Uint32)>()
external NativeWin32Result SetUserObjectInformationW_Wrapper(
  Pointer hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
);

@internal
@Native<NativeWin32Result Function(Pointer, Uint32)>()
external NativeWin32Result SetWindowDisplayAffinity_Wrapper(
  Pointer hWnd,
  int dwAffinity,
);

@internal
@Native<NativeWin32Result Function(Pointer, Int32, IntPtr)>()
external NativeWin32Result SetWindowLongPtrW_Wrapper(
  Pointer hWnd,
  int nIndex,
  int dwNewLong,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<WINDOWPLACEMENT>)>()
external NativeWin32Result SetWindowPlacement_Wrapper(
  Pointer hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Pointer,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>()
external NativeWin32Result SetWindowPos_Wrapper(
  Pointer hWnd,
  Pointer hWndInsertAfter,
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
    Pointer,
    Uint32,
  )
>()
external NativeWin32Result SetWindowsHookExW_Wrapper(
  int idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  Pointer hmod,
  int dwThreadId,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer<Utf16>)>()
external NativeWin32Result SetWindowTextW_Wrapper(
  Pointer hWnd,
  Pointer<Utf16> lpString,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result ShowCaret_Wrapper(Pointer hWnd);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result ShowOwnedPopups_Wrapper(Pointer hWnd, int fShow);

@internal
@Native<NativeWin32Result Function(Uint32)>()
external NativeWin32Result SkipPointerFrameMessages_Wrapper(int pointerId);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result SwitchDesktop_Wrapper(Pointer hDesktop);

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
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Pointer<RECT>,
    Uint32,
    Pointer<Pointer>,
  )
>()
external NativeWin32Result TileWindows_Wrapper(
  Pointer hwndParent,
  int wHow,
  Pointer<RECT> lpRect,
  int cKids,
  Pointer<Pointer> lpKids,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Int32,
    Int32,
    Int32,
    Pointer,
    Pointer<RECT>,
  )
>()
external NativeWin32Result TrackPopupMenu_Wrapper(
  Pointer hMenu,
  int uFlags,
  int x,
  int y,
  int nReserved,
  Pointer hWnd,
  Pointer<RECT> prcRect,
);

@internal
@Native<
  NativeWin32Result Function(
    Pointer,
    Uint32,
    Int32,
    Int32,
    Pointer,
    Pointer<TPMPARAMS>,
  )
>()
external NativeWin32Result TrackPopupMenuEx_Wrapper(
  Pointer hMenu,
  int uFlags,
  int x,
  int y,
  Pointer hwnd,
  Pointer<TPMPARAMS> lptpm,
);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Pointer<MSG>)>()
external NativeWin32Result TranslateAcceleratorW_Wrapper(
  Pointer hWnd,
  Pointer hAccTable,
  Pointer<MSG> lpMsg,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result UnhookWindowsHookEx_Wrapper(Pointer hhk);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result UnloadKeyboardLayout_Wrapper(Pointer hkl);

@internal
@Native<NativeWin32Result Function(Pointer<Utf16>, Pointer)>()
external NativeWin32Result UnregisterClassW_Wrapper(
  Pointer<Utf16> lpClassName,
  Pointer hInstance,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result UnregisterDeviceNotification_Wrapper(Pointer handle);

@internal
@Native<NativeWin32Result Function(Pointer, Int32)>()
external NativeWin32Result UnregisterHotKey_Wrapper(Pointer hWnd, int id);

@internal
@Native<NativeWin32Result Function(IntPtr)>()
external NativeWin32Result UnregisterPowerSettingNotification_Wrapper(
  int handle,
);

@internal
@Native<NativeWin32Result Function(Pointer)>()
external NativeWin32Result UnregisterTouchWindow_Wrapper(Pointer hwnd);

@internal
@Native<NativeWin32Result Function(Pointer, Pointer, Int32)>()
external NativeWin32Result UserHandleGrantAccess_Wrapper(
  Pointer hUserHandle,
  Pointer hJob,
  int bGrant,
);

@internal
@Native<NativeWin32Result Function()>()
external NativeWin32Result WaitMessage_Wrapper();
