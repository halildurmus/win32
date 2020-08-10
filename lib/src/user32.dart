// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _user32 = DynamicLibrary.open('user32.dll');

// BOOL AppendMenuW(
//   HMENU    hMenu,
//   UINT     uFlags,
//   UINT_PTR uIDNewItem,
//   LPCWSTR  lpNewItem
// );

/// {@category user32}
final AppendMenu = _user32.lookupFunction<
    Int32 Function(IntPtr hMenu, Uint32 uFlags, IntPtr uIDNewItem,
        Pointer<Utf16> lpNewItem),
    int Function(int hMenu, int uFlags, int uIDNewItem,
        Pointer<Utf16> lpNewItem)>('AppendMenuW');

// HDC BeginPaint(
//   HWND          hWnd,
//   LPPAINTSTRUCT lpPaint
// );

/// {@category user32}
final BeginPaint = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('BeginPaint');

// BOOL BringWindowToTop(
//   HWND hWnd
// );

/// {@category user32}
final BringWindowToTop =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'BringWindowToTop');

// HACCEL CreateAcceleratorTableW(
//   LPACCEL paccel,
//   int     cAccel
// );

/// {@category user32}
final CreateAcceleratorTable = _user32.lookupFunction<
    IntPtr Function(Pointer paccel, Int32 cAccel),
    int Function(Pointer paccel, int cAccel)>('CreateAcceleratorTableW');

// HMENU CreateMenu();

/// {@category user32}
final CreateMenu =
    _user32.lookupFunction<IntPtr Function(), int Function()>('CreateMenu');

// HWND CreateWindowExW(
//   DWORD     dwExStyle,
//   LPCWSTR   lpClassName,
//   LPCWSTR   lpWindowName,
//   DWORD     dwStyle,
//   int       X,
//   int       Y,
//   int       nWidth,
//   int       nHeight,
//   HWND      hWndParent,
//   HMENU     hMenu,
//   HINSTANCE hInstance,
//   LPVOID    lpParam
// );

/// {@category user32}
final CreateWindowEx = _user32.lookupFunction<
    Int32 Function(
        Uint32 dwExStyle,
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        Uint32 dwStyle,
        Int32 X,
        Int32 Y,
        Int32 nWidth,
        Int32 nHeight,
        IntPtr hWndParent,
        IntPtr hMenu,
        IntPtr hInstance,
        Pointer<Void> lpParam),
    int Function(
        int dwExStyle,
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        int dwStyle,
        int X,
        int Y,
        int nWidth,
        int nHeight,
        int hWndParent,
        int hMenu,
        int hInstance,
        Pointer<Void> lpParam)>('CreateWindowExW');

// LRESULT LRESULT DefWindowProcW(
//   HWND   hWnd,
//   UINT   Msg,
//   WPARAM wParam,
//   LPARAM lParam
// );

/// {@category user32}
final DefWindowProc = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
    int Function(int hWnd, int Msg, int wParam, int lParam)>('DefWindowProcW');

// BOOL DestroyWindow(
//   HWND hWnd
// );

/// {@category user32}
final DestroyWindow =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'DestroyWindow');

// LRESULT DispatchMessage(
//   const MSG *lpMsg
// );

/// {@category user32}
final DispatchMessage = _user32.lookupFunction<
    IntPtr Function(Pointer<MSG> lpMsg),
    int Function(Pointer<MSG> lpMsg)>('DispatchMessageW');

// int DrawTextW(
//   HDC     hdc,
//   LPCWSTR lpchText,
//   int     cchText,
//   LPRECT  lprc,
//   UINT    format
// );

/// {@category user32}
final DrawText = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
        Pointer<RECT> lprc, Uint32 format),
    int Function(int hdc, Pointer<Utf16> lpchText, int cchText,
        Pointer<RECT> lprc, int format)>('DrawTextW');

// BOOL EnableMenuItem(
//   HMENU hMenu,
//   UINT  uIDEnableItem,
//   UINT  uEnable
// );

/// {@category user32}
final EnableMenuItem = _user32.lookupFunction<
    Int32 Function(IntPtr hMenu, Uint32 uIDEnableItem, Uint32 uEnable),
    int Function(int hMenu, int uIDEnableItem, int uEnable)>('EnableMenuItem');

// BOOL EndPaint(
//   HWND              hWnd,
//   const PAINTSTRUCT *lpPaint
// );

/// {@category user32}
final EndPaint = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('EndPaint');

// BOOL EnumDisplayMonitors(
//   HDC             hdc,
//   LPCRECT         lprcClip,
//   MONITORENUMPROC lpfnEnum,
//   LPARAM          dwData
// );

/// {@category user32}
final EnumDisplayMonitors = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer lprcClip,
        Pointer<NativeFunction> lpfnEnum, IntPtr dwData),
    int Function(int hdc, Pointer lprcClip, Pointer<NativeFunction> lpfnEnum,
        int dwData)>('EnumDisplayMonitors');

// BOOL EnumWindows(
//   WNDENUMPROC lpEnumFunc,
//   LPARAM      lParam
// );

/// {@category user32}
final EnumWindows = _user32.lookupFunction<
    Int32 Function(Pointer<NativeFunction> lpEnumFunc, IntPtr lParam),
    int Function(
        Pointer<NativeFunction> lpEnumFunc, int lParam)>('EnumWindows');

// int FillRect(
//   HDC        hDC,
//   const RECT *lprc,
//   HBRUSH     hbr
// );

/// {@category user32}
final FillRect = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
    int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FillRect');

// HWND FindWindowExW(
//   HWND    hWndParent,
//   HWND    hWndChildAfter,
//   LPCWSTR lpszClass,
//   LPCWSTR lpszWindow
// );

/// {@category user32}
final FindWindowEx = _user32.lookupFunction<
    IntPtr Function(IntPtr hWndParent, IntPtr hWndChildAfter,
        Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow),
    int Function(int hWndParent, int hWndChildAfter, Pointer<Utf16> lpszClass,
        Pointer<Utf16> lpszWindow)>('FindWindowExW');

// BOOL GetClientRect(
//   HWND   hWnd,
//   LPRECT lpRect
// );

/// {@category user32}
final GetClientRect = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Pointer<RECT> lpRect),
    int Function(int hwnd, Pointer<RECT> lpRect)>('GetClientRect');

// HDC GetDC(
//   HWND hWnd
// );

/// {@category user32}
final GetDC = _user32.lookupFunction<IntPtr Function(IntPtr hwnd),
    int Function(int hwnd)>('GetDC');

// UINT GetDpiForSystem();

/// {@category user32}
final GetDpiForSystem =
    _user32.lookupFunction<Int32 Function(), int Function()>('GetDpiForSystem');

// HWND GetForegroundWindow();

/// {@category user32}
final GetForegroundWindow = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetForegroundWindow');

// BOOL GetMessageW(
//   LPMSG lpMsg,
//   HWND  hWnd,
//   UINT  wMsgFilterMin,
//   UINT  wMsgFilterMax
// );

/// {@category user32}
final GetMessage = _user32.lookupFunction<
    Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
        Uint32 wMsgFilterMax),
    int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
        int wMsgFilterMax)>('GetMessageW');

// BOOL GetMonitorInfoW(
//   HMONITOR      hMonitor,
//   LPMONITORINFO lpmi
// );

/// {@category user32}
final GetMonitorInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<MONITORINFO> lpmi),
    int Function(int hMonitor, Pointer<MONITORINFO> lpmi)>('GetMonitorInfoW');

// HWND GetParent(
//   HWND hWnd
// );

/// {@category user32}
final GetParent = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('GetParent');

// BOOL GetScrollInfo(
//   HWND         hwnd,
//   int          nBar,
//   LPSCROLLINFO lpsi
// );

/// {@category user32}
final GetScrollInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi),
    int Function(
        int hwnd, int nBar, Pointer<SCROLLINFO> lpsi)>('GetScrollInfo');

// HWND GetShellWindow();

/// {@category user32}
final GetShellWindow =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetShellWindow');

// DWORD GetSysColor(
//   int nIndex
// );

/// {@category user32}
final GetSysColor = _user32.lookupFunction<Uint32 Function(Int32 nIndex),
    int Function(int nIndex)>('GetSysColor');

// UINT GetSystemDpiForProcess(
//   HANDLE hProcess
// );

/// {@category user32}
final GetSystemDpiForProcess = _user32.lookupFunction<
    Uint32 Function(IntPtr hProcess),
    int Function(int hProcess)>('GetSystemDpiForProcess');

// int GetSystemMetrics(
//   int nIndex
// );

/// {@category user32}
final GetSystemMetrics = _user32.lookupFunction<Int32 Function(Int32 nIndex),
    int Function(int nIndex)>('GetSystemMetrics');

// HWND GetWindow(
//   HWND hWnd,
//   UINT uCmd
// );

/// {@category user32}
final GetWindow = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Uint32 uCmd),
    int Function(int hWnd, int uCmd)>('GetWindow');

// BOOL InvalidateRect(
//   HWND       hWnd,
//   const RECT *lpRect,
//   BOOL       bErase
// );

/// {@category user32}
final InvalidateRect = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
    int Function(int hWnd, Pointer<RECT> lpRect, int bErase)>('InvalidateRect');

// int GetWindowTextW(
//   HWND   hWnd,
//   LPWSTR lpString,
//   int    nMaxCount
// );

/// {@category user32}
final GetWindowText = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString, Int32 nMaxCount),
    int Function(
        int hWnd, Pointer<Utf16> lpString, int nMaxCount)>('GetWindowTextW');

// int GetWindowTextLengthW(
//   HWND hWnd
// );

/// {@category user32}
final GetWindowTextLength =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'GetWindowTextLengthW');

// BOOL IsClipboardFormatAvailable(
//   UINT format
// );

/// {@category user32}
final IsClipboardFormatAvailable = _user32.lookupFunction<
    Int32 Function(Uint32 format),
    int Function(int format)>('IsClipboardFormatAvailable');

// BOOL IsDialogMessageW(
//   HWND  hDlg,
//   LPMSG lpMsg
// );

/// {@category user32}
final IsDialogMessage = _user32.lookupFunction<
    Int32 Function(IntPtr hDlg, Pointer<MSG> lpMsg),
    int Function(int hDlg, Pointer<MSG> lpMsg)>('IsDialogMessageW');

// BOOL IsWindowVisible(
//   HWND hWnd
// );

/// {@category user32}
final IsWindowVisible =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'IsWindowVisible');

// BOOL KillTimer(
//   HWND     hWnd,
//   UINT_PTR uIDEvent
// );

/// {@category user32}
final KillTimer = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr uIDEvent),
    int Function(int hWnd, int uIDEvent)>('KillTimer');

// HCURSOR LoadCursorW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpCursorName
// );

/// {@category user32}
final LoadCursor = _user32.lookupFunction<
    IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpCursorName),
    int Function(int hInstance, Pointer<Utf16> lpCursorName)>('LoadCursorW');

// HICON LoadIconW(
//   HINSTANCE hInstance,
//   LPCWSTR   lpIconName
// );

/// {@category user32}
final LoadIcon = _user32.lookupFunction<
    IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpIconName),
    int Function(int hInstance, Pointer<Utf16> lpIconName)>('LoadIconW');

// BOOL LockWorkStation();

/// {@category user32}
final LockWorkStation =
    _user32.lookupFunction<Int32 Function(), int Function()>('LockWorkStation');

// int MessageBoxW(
//   HWND    hWnd,
//   LPCWSTR lpText,
//   LPCWSTR lpCaption,
//   UINT    uType
// );

/// {@category user32}
final MessageBox = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        Uint32 uType),
    int Function(int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        int uType)>('MessageBoxW');

// HMONITOR MonitorFromPoint(
//   POINT pt,
//   DWORD dwFlags
// );

/// {@category user32}
final MonitorFromPoint = _user32.lookupFunction<
    IntPtr Function(Int64 pt, Uint32 dwFlags),
    int Function(int pt, int dwFlags)>('MonitorFromPoint');

// HMONITOR MonitorFromWindow(
//   HWND  hwnd,
//   DWORD dwFlags
// );

/// {@category user32}
final MonitorFromWindow = _user32.lookupFunction<
    IntPtr Function(IntPtr hwnd, Uint32 dwFlags),
    int Function(int hwnd, int dwFlags)>('MonitorFromWindow');

// BOOL MoveWindow(
//   HWND hWnd,
//   int  X,
//   int  Y,
//   int  nWidth,
//   int  nHeight,
//   BOOL bRepaint
// );

/// {@category user32}
final MoveWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 X, Int32 Y, Int32 nWidth, Int32 nHeight,
        Int32 bRepaint),
    int Function(int hWnd, int X, int Y, int nWidth, int nHeight,
        int bRepaint)>('MoveWindow');

// DWORD MsgWaitForMultipleObjects(
//   DWORD        nCount,
//   const HANDLE *pHandles,
//   BOOL         fWaitAll,
//   DWORD        dwMilliseconds,
//   DWORD        dwWakeMask
// );

/// {@category user32}
final MsgWaitForMultipleObjects = _user32.lookupFunction<
    Uint32 Function(Uint32 count, Pointer<IntPtr> pHandles, Int32 fWaitAll,
        Uint32 dwMilliseconds, Uint32 dwWakeMask),
    int Function(int count, Pointer<IntPtr> pHandles, int fWaitAll,
        int dwMilliseconds, int dwWakeMask)>('MsgWaitForMultipleObjects');

// BOOL PeekMessageW(
//   LPMSG lpMsg,
//   HWND  hWnd,
//   UINT  wMsgFilterMin,
//   UINT  wMsgFilterMax,
//   UINT  wRemoveMsg
// );

/// {@category user32}
final PeekMessage = _user32.lookupFunction<
    Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
        Uint32 wMsgFilterMax, Uint32 wRemoveMsg),
    int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
        int wMsgFilterMax, int wRemoveMsg)>('PeekMessageW');

// ATOM RegisterClassW(
//   const WNDCLASSW *lpWndClass
// );

/// {@category user32}
final RegisterClass = _user32.lookupFunction<
    Int16 Function(Pointer<WNDCLASS> lpWndClass),
    int Function(Pointer<WNDCLASS> lpWndClass)>('RegisterClassW');

// UINT RegisterWindowMessageW(
//   LPCWSTR lpString
// );

/// {@category user32}
final RegisterWindowMessage = _user32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpString),
    int Function(Pointer<Utf16> lpString)>('RegisterWindowMessageW');

// int ReleaseDC(
//   HWND hWnd,
//   HDC  hDC
// );

/// {@category user32}
final ReleaseDC = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hDC),
    int Function(int hWnd, int hDC)>('ReleaseDC');

// BOOL ScrollWindow(
//   HWND       hWnd,
//   int        XAmount,
//   int        YAmount,
//   const RECT *lpRect,
//   const RECT *lpClipRect
// );

/// {@category user32}
final ScrollWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 XAmount, Int32 YAmount,
        Pointer<RECT> lpRect, Pointer<RECT> lpClipRect),
    int Function(int hWnd, int XAmount, int YAmount, Pointer<RECT> lpRect,
        Pointer<RECT> lpClipRect)>('ScrollWindow');

// UINT SendInput(
//   UINT    cInputs,
//   LPINPUT pInputs,
//   int     cbSize
// );

/// {@category user32}
final SendInput = _user32.lookupFunction<
    Uint32 Function(Uint32 cInputs, Pointer<Void> pInputs, Int32 cbSize),
    int Function(int cInputs, Pointer<Void> pInputs, int cbSize)>('SendInput');

// LRESULT SendMessage(
//   HWND   hWnd,
//   UINT   Msg,
//   WPARAM wParam,
//   LPARAM lParam
// );

/// {@category user32}
final SendMessage = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
    int Function(int hWnd, int Msg, int wParam, int lParam)>('SendMessageW');

// HWND SetFocus(
//   HWND hWnd
// );

/// {@category user32}
final SetFocus = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('SetFocus');

// HWND SetParent(
//   HWND hWndChild,
//   HWND hWndNewParent
// );

/// {@category user32}
final SetParent = _user32.lookupFunction<
    IntPtr Function(IntPtr hWndChild, IntPtr hWndNewParent),
    int Function(int hWndChild, int hWndNewParent)>('SetParent');

// int SetScrollInfo(
//   HWND          hwnd,
//   int           nBar,
//   LPCSCROLLINFO lpsi,
//   BOOL          redraw
// );

/// {@category user32}
final SetScrollInfo = _user32.lookupFunction<
    Int32 Function(
        IntPtr hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi, Int32 redraw),
    int Function(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi,
        int redraw)>('SetScrollInfo');

// BOOL SetProcessDPIAware();

/// {@category user32}
final SetProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('SetProcessDPIAware');

// UINT_PTR SetTimer(
//   HWND      hWnd,
//   UINT_PTR  nIDEvent,
//   UINT      uElapse,
//   TIMERPROC lpTimerFunc
// );

/// {@category user32}
final SetTimer = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, IntPtr nIDEvent, Uint32 uElapse,
        Pointer<NativeFunction> lpTimerFunc),
    int Function(int hWnd, int nIDEvent, int uElapse,
        Pointer<NativeFunction> lpTimerFunc)>('SetTimer');

// LONG_PTR SetWindowLongPtrW(
//   HWND     hWnd,
//   int      nIndex,
//   LONG_PTR dwNewLong
// );

/// {@category user32}
final SetWindowLongPtr = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Int32 nIndex, IntPtr dwNewLong),
    int Function(int hWnd, int nIndex, int dwNewLong)>('SetWindowLongPtrW');

// BOOL SetWindowPos(
//   HWND hWnd,
//   HWND hWndInsertAfter,
//   int  X,
//   int  Y,
//   int  cx,
//   int  cy,
//   UINT uFlags,
// );

/// {@category user32}
final SetWindowPos = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hWndInsertAfter, Int32 X, Int32 Y,
        Int32 cx, Int32 cy, Uint32 uFlags),
    int Function(int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy,
        int uFlags)>('SetWindowPos');

// BOOL SetWindowTextW(
//   HWND    hWnd,
//   LPCWSTR lpString
// );

/// {@category user32}
final SetWindowText = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString),
    int Function(int hWnd, Pointer<Utf16> lpString)>('SetWindowTextW');

// BOOL ShowWindow(
//   HWND hWnd,
//   int  nCmdShow
// );

/// {@category user32}
final ShowWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 nCmdShow),
    int Function(int hWnd, int nCmdShow)>('ShowWindow');

// BOOL ShowWindowAsync(
//   HWND hWnd,
//   int  nCmdShow
// );

/// {@category user32}
final ShowWindowAsync = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 nCmdShow),
    int Function(int hWnd, int nCmdShow)>('ShowWindowAsync');

// BOOL SystemParametersInfoW(
//   UINT  uiAction,
//   UINT  uiParam,
//   PVOID pvParam,
//   UINT  fWinIni
// );

/// {@category user32}
final SystemParametersInfo = _user32.lookupFunction<
    Int32 Function(
        Uint32 uiAction, Uint32 uiParam, Pointer pvParam, Uint32 fWinIni),
    int Function(int uiAction, int uiParam, Pointer pvParam,
        int fWinIni)>('SystemParametersInfoW');

// int TranslateAcceleratorW(
//   HWND   hWnd,
//   HACCEL hAccTable,
//   LPMSG  lpMsg
// );

/// {@category user32}
final TranslateAccelerator = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hAccTable, Pointer<MSG> lpMsg),
    int Function(
        int hWnd, int hAccTable, Pointer<MSG> lpMsg)>('TranslateAcceleratorW');

// BOOL TranslateMessage(
//   const MSG *lpMsg
// );

/// {@category user32}
final TranslateMessage = _user32.lookupFunction<
    Int32 Function(Pointer<MSG> lpMsg),
    int Function(Pointer<MSG> lpMsg)>('TranslateMessage');

// void PostQuitMessage(
//   int nExitCode
// );

/// {@category user32}
final PostQuitMessage = _user32.lookupFunction<Void Function(Int32 nExitCode),
    void Function(int nExitCode)>('PostQuitMessage');

// BOOL UpdateWindow(
//   HWND hWnd
// );

/// {@category user32}
final UpdateWindow =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'UpdateWindow');

// HWND WindowFromPhysicalPoint(
//   POINT Point
// );

/// {@category user32}
final WindowFromPhysicalPoint = _user32.lookupFunction<
    IntPtr Function(Int64 Point),
    int Function(int Point)>('WindowFromPhysicalPoint');

// HWND WindowFromPoint(
//   POINT Point
// );

/// {@category user32}
final WindowFromPoint = _user32.lookupFunction<IntPtr Function(Int64 Point),
    int Function(int Point)>('WindowFromPoint');
