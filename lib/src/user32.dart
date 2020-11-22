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

/// Appends a new item to the end of the specified menu bar, drop-down
/// menu, submenu, or shortcut menu. You can use this function to specify
/// the content, appearance, and behavior of the menu item.
///
/// ```c
/// BOOL AppendMenuW(
///   HMENU    hMenu,
///   UINT     uFlags,
///   UINT_PTR uIDNewItem,
///   LPCWSTR  lpNewItem
/// );
/// ```
/// {@category user32}
final AppendMenu = _user32.lookupFunction<
    Int32 Function(IntPtr hMenu, Uint32 uFlags, IntPtr uIDNewItem,
        Pointer<Utf16> lpNewItem),
    int Function(int hMenu, int uFlags, int uIDNewItem,
        Pointer<Utf16> lpNewItem)>('AppendMenuW');

/// The BeginPaint function prepares the specified window for painting and
/// fills a PAINTSTRUCT structure with information about the painting.
///
/// ```c
/// HDC BeginPaint(
///   HWND          hWnd,
///   LPPAINTSTRUCT lpPaint
/// );
/// ```
/// {@category user32}
final BeginPaint = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('BeginPaint');

/// Brings the specified window to the top of the Z order. If the window is
/// a top-level window, it is activated. If the window is a child window,
/// the top-level parent window associated with the child window is
/// activated.
///
/// ```c
/// BOOL BringWindowToTop(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final BringWindowToTop =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'BringWindowToTop');

/// Confines the cursor to a rectangular area on the screen. If a
/// subsequent cursor position (set by the SetCursorPos function or the
/// mouse) lies outside the rectangle, the system automatically adjusts the
/// position to keep the cursor inside the rectangular area.
///
/// ```c
/// BOOL ClipCursor(
///   const RECT *lpRect
/// );
/// ```
/// {@category user32}
final ClipCursor = _user32.lookupFunction<Int32 Function(Pointer<RECT> lpRect),
    int Function(Pointer<RECT> lpRect)>('ClipCursor');

/// Copies the specified icon from another module to the current module.
///
/// ```c
/// HICON CopyIcon(
///   HICON hIcon
/// );
/// ```
/// {@category user32}
final CopyIcon = _user32.lookupFunction<IntPtr Function(IntPtr hIcon),
    int Function(int hIcon)>('CopyIcon');

/// Creates an accelerator table.
///
/// ```c
/// HACCEL CreateAcceleratorTableW(
///   LPACCEL paccel,
///   int     cAccel
/// );
/// ```
/// {@category user32}
final CreateAcceleratorTable = _user32.lookupFunction<
    IntPtr Function(Pointer paccel, Int32 cAccel),
    int Function(Pointer paccel, int cAccel)>('CreateAcceleratorTableW');

/// Creates a menu. The menu is initially empty, but it can be filled with
/// menu items by using the InsertMenuItem, AppendMenu, and InsertMenu
/// functions.
///
/// ```c
/// HMENU CreateMenu();
/// ```
/// {@category user32}
final CreateMenu =
    _user32.lookupFunction<IntPtr Function(), int Function()>('CreateMenu');

/// Creates an overlapped, pop-up, or child window. It specifies the window
/// class, window title, window style, and (optionally) the initial
/// position and size of the window. The function also specifies the
/// window's parent or owner, if any, and the window's menu.
///
/// ```c
/// HWND CreateWindowExW(
///   DWORD     dwExStyle,
///   LPCWSTR   lpClassName,
///   LPCWSTR   lpWindowName,
///   DWORD     dwStyle,
///   int       X,
///   int       Y,
///   int       nWidth,
///   int       nHeight,
///   HWND      hWndParent,
///   HMENU     hMenu,
///   HINSTANCE hInstance,
///   LPVOID    lpParam
/// );
/// ```
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

/// Calls the default window procedure to provide default processing for
/// any window messages that an application does not process. This function
/// ensures that every message is processed. DefWindowProc is called with
/// the same parameters received by the window procedure.
///
/// ```c
/// LRESULT LRESULT DefWindowProcW(
///   HWND   hWnd,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
final DefWindowProc = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
    int Function(int hWnd, int Msg, int wParam, int lParam)>('DefWindowProcW');

/// Destroys an icon and frees any memory the icon occupied.
///
/// ```c
/// BOOL DestroyIcon(
///   HICON hIcon
/// );
/// ```
/// {@category user32}
final DestroyIcon = _user32.lookupFunction<Int32 Function(IntPtr hIcon),
    int Function(int hIcon)>('DestroyIcon');

/// Destroys the specified window. The function sends WM_DESTROY and
/// WM_NCDESTROY messages to the window to deactivate it and remove the
/// keyboard focus from it. The function also destroys the window's menu,
/// flushes the thread message queue, destroys timers, removes clipboard
/// ownership, and breaks the clipboard viewer chain (if the window is at
/// the top of the viewer chain).
///
/// ```c
/// BOOL DestroyWindow(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final DestroyWindow =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'DestroyWindow');

/// Dispatches a message to a window procedure. It is typically used to
/// dispatch a message retrieved by the GetMessage function.
///
/// ```c
/// LRESULT DispatchMessage(
///   const MSG *lpMsg
/// );
/// ```
/// {@category user32}
final DispatchMessage = _user32.lookupFunction<
    IntPtr Function(Pointer<MSG> lpMsg),
    int Function(Pointer<MSG> lpMsg)>('DispatchMessageW');

/// Draws an icon or cursor into the specified device context.
///
/// ```c
/// BOOL DrawIcon(
///   HDC   hDC,
///   int   X,
///   int   Y,
///   HICON hIcon
/// );
/// ```
/// {@category user32}
final DrawIcon = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Int32 X, Int32 Y, IntPtr hIcon),
    int Function(int hDC, int X, int Y, int hIcon)>('DrawIcon');

/// The DrawText function draws formatted text in the specified rectangle.
/// It formats the text according to the specified method (expanding tabs,
/// justifying characters, breaking lines, and so forth).
///
/// ```c
/// int DrawTextW(
///   HDC     hdc,
///   LPCWSTR lpchText,
///   int     cchText,
///   LPRECT  lprc,
///   UINT    format
/// );
/// ```
/// {@category user32}
final DrawText = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
        Pointer<RECT> lprc, Uint32 format),
    int Function(int hdc, Pointer<Utf16> lpchText, int cchText,
        Pointer<RECT> lprc, int format)>('DrawTextW');

/// Enables, disables, or grays the specified menu item.
///
/// ```c
/// BOOL EnableMenuItem(
///   HMENU hMenu,
///   UINT  uIDEnableItem,
///   UINT  uEnable
/// );
/// ```
/// {@category user32}
final EnableMenuItem = _user32.lookupFunction<
    Int32 Function(IntPtr hMenu, Uint32 uIDEnableItem, Uint32 uEnable),
    int Function(int hMenu, int uIDEnableItem, int uEnable)>('EnableMenuItem');

/// The EndPaint function marks the end of painting in the specified
/// window. This function is required for each call to the BeginPaint
/// function, but only after painting is complete.
///
/// ```c
/// BOOL EndPaint(
///   HWND              hWnd,
///   const PAINTSTRUCT *lpPaint
/// );
/// ```
/// {@category user32}
final EndPaint = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
    int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('EndPaint');

/// The EnumDisplayMonitors function enumerates display monitors (including
/// invisible pseudo-monitors associated with the mirroring drivers) that
/// intersect a region formed by the intersection of a specified clipping
/// rectangle and the visible region of a device context.
/// EnumDisplayMonitors calls an application-defined MonitorEnumProc
/// callback function once for each monitor that is enumerated. Note that
/// GetSystemMetrics (SM_CMONITORS) counts only the display monitors.
///
/// ```c
/// BOOL EnumDisplayMonitors(
///   HDC             hdc,
///   LPCRECT         lprcClip,
///   MONITORENUMPROC lpfnEnum,
///   LPARAM          dwData
/// );
/// ```
/// {@category user32}
final EnumDisplayMonitors = _user32.lookupFunction<
    Int32 Function(IntPtr hdc, Pointer lprcClip,
        Pointer<NativeFunction> lpfnEnum, IntPtr dwData),
    int Function(int hdc, Pointer lprcClip, Pointer<NativeFunction> lpfnEnum,
        int dwData)>('EnumDisplayMonitors');

/// Enumerates all top-level windows on the screen by passing the handle to
/// each window, in turn, to an application-defined callback function.
/// EnumWindows continues until the last top-level window is enumerated or
/// the callback function returns FALSE.
///
/// ```c
/// BOOL EnumWindows(
///   WNDENUMPROC lpEnumFunc,
///   LPARAM      lParam
/// );
/// ```
/// {@category user32}
final EnumWindows = _user32.lookupFunction<
    Int32 Function(Pointer<NativeFunction> lpEnumFunc, IntPtr lParam),
    int Function(
        Pointer<NativeFunction> lpEnumFunc, int lParam)>('EnumWindows');

/// The FillRect function fills a rectangle by using the specified brush.
/// This function includes the left and top borders, but excludes the right
/// and bottom borders of the rectangle.
///
/// ```c
/// int FillRect(
///   HDC        hDC,
///   const RECT *lprc,
///   HBRUSH     hbr
/// );
/// ```
/// {@category user32}
final FillRect = _user32.lookupFunction<
    Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
    int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FillRect');

/// Retrieves a handle to a window whose class name and window name match
/// the specified strings. The function searches child windows, beginning
/// with the one following the specified child window. This function does
/// not perform a case-sensitive search.
///
/// ```c
/// HWND FindWindowExW(
///   HWND    hWndParent,
///   HWND    hWndChildAfter,
///   LPCWSTR lpszClass,
///   LPCWSTR lpszWindow
/// );
/// ```
/// {@category user32}
final FindWindowEx = _user32.lookupFunction<
    IntPtr Function(IntPtr hWndParent, IntPtr hWndChildAfter,
        Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow),
    int Function(int hWndParent, int hWndChildAfter, Pointer<Utf16> lpszClass,
        Pointer<Utf16> lpszWindow)>('FindWindowExW');

/// Retrieves the coordinates of a window's client area. The client
/// coordinates specify the upper-left and lower-right corners of the
/// client area. Because client coordinates are relative to the upper-left
/// corner of a window's client area, the coordinates of the upper-left
/// corner are (0,0).
///
/// ```c
/// BOOL GetClientRect(
///   HWND   hWnd,
///   LPRECT lpRect
/// );
/// ```
/// {@category user32}
final GetClientRect = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Pointer<RECT> lpRect),
    int Function(int hwnd, Pointer<RECT> lpRect)>('GetClientRect');

/// Retrieves a handle to the current cursor.
///
/// ```c
/// HCURSOR GetCursor();
/// ```
/// {@category user32}
final GetCursor =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetCursor');

/// Retrieves the position of the mouse cursor, in screen coordinates.
///
/// ```c
/// BOOL GetCursorPos(
///   LPPOINT lpPoint
/// );
/// ```
/// {@category user32}
final GetCursorPos = _user32.lookupFunction<
    Int32 Function(Pointer<POINT> lpPoint),
    int Function(Pointer<POINT> lpPoint)>('GetCursorPos');

/// The GetDC function retrieves a handle to a device context (DC) for the
/// client area of a specified window or for the entire screen. You can use
/// the returned handle in subsequent GDI functions to draw in the DC. The
/// device context is an opaque data structure, whose values are used
/// internally by GDI.
///
/// ```c
/// HDC GetDC(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final GetDC = _user32.lookupFunction<IntPtr Function(IntPtr hwnd),
    int Function(int hwnd)>('GetDC');

/// Returns the system DPI.
///
/// ```c
/// UINT GetDpiForSystem();
/// ```
/// {@category user32}
final GetDpiForSystem =
    _user32.lookupFunction<Int32 Function(), int Function()>('GetDpiForSystem');

/// Retrieves a handle to the foreground window (the window with which the
/// user is currently working). The system assigns a slightly higher
/// priority to the thread that creates the foreground window than it does
/// to other threads.
///
/// ```c
/// HWND GetForegroundWindow();
/// ```
/// {@category user32}
final GetForegroundWindow = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetForegroundWindow');

/// Retrieves a message from the calling thread's message queue. The
/// function dispatches incoming sent messages until a posted message is
/// available for retrieval.
///
/// ```c
/// BOOL GetMessageW(
///   LPMSG lpMsg,
///   HWND  hWnd,
///   UINT  wMsgFilterMin,
///   UINT  wMsgFilterMax
/// );
/// ```
/// {@category user32}
final GetMessage = _user32.lookupFunction<
    Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
        Uint32 wMsgFilterMax),
    int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
        int wMsgFilterMax)>('GetMessageW');

/// The GetMonitorInfo function retrieves information about a display
/// monitor.
///
/// ```c
/// BOOL GetMonitorInfoW(
///   HMONITOR      hMonitor,
///   LPMONITORINFO lpmi
/// );
/// ```
/// {@category user32}
final GetMonitorInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hMonitor, Pointer<MONITORINFO> lpmi),
    int Function(int hMonitor, Pointer<MONITORINFO> lpmi)>('GetMonitorInfoW');

/// Retrieves a handle to the specified window's parent or owner.
///
/// ```c
/// HWND GetParent(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final GetParent = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('GetParent');

/// The GetScrollInfo function retrieves the parameters of a scroll bar,
/// including the minimum and maximum scrolling positions, the page size,
/// and the position of the scroll box (thumb).
///
/// ```c
/// BOOL GetScrollInfo(
///   HWND         hwnd,
///   int          nBar,
///   LPSCROLLINFO lpsi
/// );
/// ```
/// {@category user32}
final GetScrollInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi),
    int Function(
        int hwnd, int nBar, Pointer<SCROLLINFO> lpsi)>('GetScrollInfo');

/// Retrieves a handle to the Shell's desktop window.
///
/// ```c
/// HWND GetShellWindow();
/// ```
/// {@category user32}
final GetShellWindow =
    _user32.lookupFunction<IntPtr Function(), int Function()>('GetShellWindow');

/// Retrieves the current color of the specified display element. Display
/// elements are the parts of a window and the display that appear on the
/// system display screen.
///
/// ```c
/// DWORD GetSysColor(
///   int nIndex
/// );
/// ```
/// {@category user32}
final GetSysColor = _user32.lookupFunction<Uint32 Function(Int32 nIndex),
    int Function(int nIndex)>('GetSysColor');

/// Retrieves the system DPI associated with a given process. This is
/// useful for avoiding compatibility issues that arise from sharing
/// DPI-sensitive information between multiple system-aware processes with
/// different system DPI values.
///
/// ```c
/// UINT GetSystemDpiForProcess(
///   HANDLE hProcess
/// );
/// ```
/// {@category user32}
final GetSystemDpiForProcess = _user32.lookupFunction<
    Uint32 Function(IntPtr hProcess),
    int Function(int hProcess)>('GetSystemDpiForProcess');

/// Enables the application to access the window menu (also known as the
/// system menu or the control menu) for copying and modifying.
///
/// ```c
/// HMENU GetSystemMenu(
///   HWND hWnd,
///   BOOL bRevert
/// );
/// ```
/// {@category user32}
final GetSystemMenu = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Int32 bRevert),
    int Function(int hWnd, int bRevert)>('GetSystemMenu');

/// Retrieves the specified system metric or system configuration setting.
/// Note that all dimensions retrieved by GetSystemMetrics are in pixels.
///
/// ```c
/// int GetSystemMetrics(
///   int nIndex
/// );
/// ```
/// {@category user32}
final GetSystemMetrics = _user32.lookupFunction<Int32 Function(Int32 nIndex),
    int Function(int nIndex)>('GetSystemMetrics');

/// Retrieves a handle to a window that has the specified relationship
/// (Z-Order or owner) to the specified window.
///
/// ```c
/// HWND GetWindow(
///   HWND hWnd,
///   UINT uCmd
/// );
/// ```
/// {@category user32}
final GetWindow = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Uint32 uCmd),
    int Function(int hWnd, int uCmd)>('GetWindow');

/// Retrieves the length, in characters, of the specified window's title
/// bar text (if the window has a title bar). If the specified window is a
/// control, the function retrieves the length of the text within the
/// control. However, GetWindowTextLength cannot retrieve the length of the
/// text of an edit control in another application.
///
/// ```c
/// int GetWindowTextLengthW(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final GetWindowTextLength =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'GetWindowTextLengthW');

/// Copies the text of the specified window's title bar (if it has one)
/// into a buffer. If the specified window is a control, the text of the
/// control is copied. However, GetWindowText cannot retrieve the text of a
/// control in another application.
///
/// ```c
/// int GetWindowTextW(
///   HWND   hWnd,
///   LPWSTR lpString,
///   int    nMaxCount
/// );
/// ```
/// {@category user32}
final GetWindowText = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString, Int32 nMaxCount),
    int Function(
        int hWnd, Pointer<Utf16> lpString, int nMaxCount)>('GetWindowTextW');

/// The InvalidateRect function adds a rectangle to the specified window's
/// update region. The update region represents the portion of the window's
/// client area that must be redrawn.
///
/// ```c
/// BOOL InvalidateRect(
///   HWND       hWnd,
///   const RECT *lpRect,
///   BOOL       bErase
/// );
/// ```
/// {@category user32}
final InvalidateRect = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
    int Function(int hWnd, Pointer<RECT> lpRect, int bErase)>('InvalidateRect');

/// Determines whether the clipboard contains data in the specified format.
///
/// ```c
/// BOOL IsClipboardFormatAvailable(
///   UINT format
/// );
/// ```
/// {@category user32}
final IsClipboardFormatAvailable = _user32.lookupFunction<
    Int32 Function(Uint32 format),
    int Function(int format)>('IsClipboardFormatAvailable');

/// Determines whether a message is intended for the specified dialog box
/// and, if it is, processes the message.
///
/// ```c
/// BOOL IsDialogMessageW(
///   HWND  hDlg,
///   LPMSG lpMsg
/// );
/// ```
/// {@category user32}
final IsDialogMessage = _user32.lookupFunction<
    Int32 Function(IntPtr hDlg, Pointer<MSG> lpMsg),
    int Function(int hDlg, Pointer<MSG> lpMsg)>('IsDialogMessageW');

/// Determines the visibility state of the specified window.
///
/// ```c
/// BOOL IsWindowVisible(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final IsWindowVisible =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'IsWindowVisible');

/// Destroys the specified timer.
///
/// ```c
/// BOOL KillTimer(
///   HWND     hWnd,
///   UINT_PTR uIDEvent
/// );
/// ```
/// {@category user32}
final KillTimer = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr uIDEvent),
    int Function(int hWnd, int uIDEvent)>('KillTimer');

/// Loads the specified cursor resource from the executable (.EXE) file
/// associated with an application instance. Note: this function has been
/// superseded by the LoadImage function.
///
/// ```c
/// HCURSOR LoadCursorW(
///   HINSTANCE hInstance,
///   LPCWSTR   lpCursorName
/// );
/// ```
/// {@category user32}
final LoadCursor = _user32.lookupFunction<
    IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpCursorName),
    int Function(int hInstance, Pointer<Utf16> lpCursorName)>('LoadCursorW');

/// ```c
/// HICON LoadIconW(
///   HINSTANCE hInstance,
///   LPCWSTR   lpIconName
/// );
/// ```
/// {@category user32}
final LoadIcon = _user32.lookupFunction<
    IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpIconName),
    int Function(int hInstance, Pointer<Utf16> lpIconName)>('LoadIconW');

/// Loads an icon, cursor, animated cursor, or bitmap.
///
/// ```c
/// HANDLE LoadImageW(
///   HINSTANCE hInst,
///   LPCWSTR   name,
///   UINT      type,
///   int       cx,
///   int       cy,
///   UINT      fuLoad
/// );
/// ```
/// {@category user32}
final LoadImage = _user32.lookupFunction<
    IntPtr Function(IntPtr hInst, Pointer<Utf16> name, Uint32 type, Int32 cx,
        Int32 cy, Uint32 fuLoad),
    int Function(int hInst, Pointer<Utf16> name, int type, int cx, int cy,
        int fuLoad)>('LoadImageW');

/// Locks the workstation's display. Locking a workstation protects it from
/// unauthorized use.
///
/// ```c
/// BOOL LockWorkStation();
/// ```
/// {@category user32}
final LockWorkStation =
    _user32.lookupFunction<Int32 Function(), int Function()>('LockWorkStation');

/// Displays a modal dialog box that contains a system icon, a set of
/// buttons, and a brief application-specific message, such as status or
/// error information. The message box returns an integer value that
/// indicates which button the user clicked.
///
/// ```c
/// int MessageBoxW(
///   HWND    hWnd,
///   LPCWSTR lpText,
///   LPCWSTR lpCaption,
///   UINT    uType
/// );
/// ```
/// {@category user32}
final MessageBox = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        Uint32 uType),
    int Function(int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
        int uType)>('MessageBoxW');

/// The MonitorFromPoint function retrieves a handle to the display monitor
/// that contains a specified point.
///
/// ```c
/// HMONITOR MonitorFromPoint(
///   POINT pt,
///   DWORD dwFlags
/// );
/// ```
/// {@category user32}
final MonitorFromPoint = _user32.lookupFunction<
    IntPtr Function(Int64 pt, Uint32 dwFlags),
    int Function(int pt, int dwFlags)>('MonitorFromPoint');

/// The MonitorFromWindow function retrieves a handle to the display
/// monitor that has the largest area of intersection with the bounding
/// rectangle of a specified window.
///
/// ```c
/// HMONITOR MonitorFromWindow(
///   HWND  hwnd,
///   DWORD dwFlags
/// );
/// ```
/// {@category user32}
final MonitorFromWindow = _user32.lookupFunction<
    IntPtr Function(IntPtr hwnd, Uint32 dwFlags),
    int Function(int hwnd, int dwFlags)>('MonitorFromWindow');

/// Changes the position and dimensions of the specified window. For a
/// top-level window, the position and dimensions are relative to the
/// upper-left corner of the screen. For a child window, they are relative
/// to the upper-left corner of the parent window's client area.
///
/// ```c
/// BOOL MoveWindow(
///   HWND hWnd,
///   int  X,
///   int  Y,
///   int  nWidth,
///   int  nHeight,
///   BOOL bRepaint
/// );
/// ```
/// {@category user32}
final MoveWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 X, Int32 Y, Int32 nWidth, Int32 nHeight,
        Int32 bRepaint),
    int Function(int hWnd, int X, int Y, int nWidth, int nHeight,
        int bRepaint)>('MoveWindow');

/// Waits until one or all of the specified objects are in the signaled
/// state or the time-out interval elapses. The objects can include input
/// event objects, which you specify using the dwWakeMask parameter.
///
/// ```c
/// DWORD MsgWaitForMultipleObjects(
///   DWORD        nCount,
///   const HANDLE *pHandles,
///   BOOL         fWaitAll,
///   DWORD        dwMilliseconds,
///   DWORD        dwWakeMask
/// );
/// ```
/// {@category user32}
final MsgWaitForMultipleObjects = _user32.lookupFunction<
    Uint32 Function(Uint32 count, Pointer<IntPtr> pHandles, Int32 fWaitAll,
        Uint32 dwMilliseconds, Uint32 dwWakeMask),
    int Function(int count, Pointer<IntPtr> pHandles, int fWaitAll,
        int dwMilliseconds, int dwWakeMask)>('MsgWaitForMultipleObjects');

/// Dispatches incoming sent messages, checks the thread message queue for
/// a posted message, and retrieves the message (if any exist).
///
/// ```c
/// BOOL PeekMessageW(
///   LPMSG lpMsg,
///   HWND  hWnd,
///   UINT  wMsgFilterMin,
///   UINT  wMsgFilterMax,
///   UINT  wRemoveMsg
/// );
/// ```
/// {@category user32}
final PeekMessage = _user32.lookupFunction<
    Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
        Uint32 wMsgFilterMax, Uint32 wRemoveMsg),
    int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
        int wMsgFilterMax, int wRemoveMsg)>('PeekMessageW');

/// Indicates to the system that a thread has made a request to terminate
/// (quit). It is typically used in response to a WM_DESTROY message.
///
/// ```c
/// void PostQuitMessage(
///   int nExitCode
/// );
/// ```
/// {@category user32}
final PostQuitMessage = _user32.lookupFunction<Void Function(Int32 nExitCode),
    void Function(int nExitCode)>('PostQuitMessage');

/// Registers a window class for subsequent use in calls to the
/// CreateWindow or CreateWindowEx function.
///
/// ```c
/// ATOM RegisterClassW(
///   const WNDCLASSW *lpWndClass
/// );
/// ```
/// {@category user32}
final RegisterClass = _user32.lookupFunction<
    Int16 Function(Pointer<WNDCLASS> lpWndClass),
    int Function(Pointer<WNDCLASS> lpWndClass)>('RegisterClassW');

/// Defines a new window message that is guaranteed to be unique throughout
/// the system. The message value can be used when sending or posting
/// messages.
///
/// ```c
/// UINT RegisterWindowMessageW(
///   LPCWSTR lpString
/// );
/// ```
/// {@category user32}
final RegisterWindowMessage = _user32.lookupFunction<
    Uint32 Function(Pointer<Utf16> lpString),
    int Function(Pointer<Utf16> lpString)>('RegisterWindowMessageW');

/// The ReleaseDC function releases a device context (DC), freeing it for
/// use by other applications. The effect of the ReleaseDC function depends
/// on the type of DC. It frees only common and window DCs. It has no
/// effect on class or private DCs.
///
/// ```c
/// int ReleaseDC(
///   HWND hWnd,
///   HDC  hDC
/// );
/// ```
/// {@category user32}
final ReleaseDC = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hDC),
    int Function(int hWnd, int hDC)>('ReleaseDC');

/// The ScrollWindow function scrolls the contents of the specified
/// window's client area.
///
/// ```c
/// BOOL ScrollWindow(
///   HWND       hWnd,
///   int        XAmount,
///   int        YAmount,
///   const RECT *lpRect,
///   const RECT *lpClipRect
/// );
/// ```
/// {@category user32}
final ScrollWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 XAmount, Int32 YAmount,
        Pointer<RECT> lpRect, Pointer<RECT> lpClipRect),
    int Function(int hWnd, int XAmount, int YAmount, Pointer<RECT> lpRect,
        Pointer<RECT> lpClipRect)>('ScrollWindow');

/// Synthesizes keystrokes, mouse motions, and button clicks.
///
/// ```c
/// UINT SendInput(
///   UINT    cInputs,
///   LPINPUT pInputs,
///   int     cbSize
/// );
/// ```
/// {@category user32}
final SendInput = _user32.lookupFunction<
    Uint32 Function(Uint32 cInputs, Pointer<INPUT> pInputs, Int32 cbSize),
    int Function(int cInputs, Pointer<INPUT> pInputs, int cbSize)>('SendInput');

/// Sends the specified message to a window or windows. The SendMessage
/// function calls the window procedure for the specified window and does
/// not return until the window procedure has processed the message.
///
/// ```c
/// LRESULT SendMessage(
///   HWND   hWnd,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
final SendMessage = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
    int Function(int hWnd, int Msg, int wParam, int lParam)>('SendMessageW');

/// Moves the cursor to the specified screen coordinates. If the new
/// coordinates are not within the screen rectangle set by the most recent
/// ClipCursor function call, the system automatically adjusts the
/// coordinates so that the cursor stays within the rectangle.
///
/// ```c
/// BOOL SetCursorPos(
///   int X,
///   int Y
/// );
/// ```
/// {@category user32}
final SetCursorPos = _user32.lookupFunction<Int32 Function(Int32 X, Int32 Y),
    int Function(int X, int Y)>('SetCursorPos');

/// Sets the keyboard focus to the specified window. The window must be
/// attached to the calling thread's message queue.
///
/// ```c
/// HWND SetFocus(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final SetFocus = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
    int Function(int hWnd)>('SetFocus');

/// Sets information for a specified menu.
///
/// ```c
/// BOOL SetMenuInfo(
///   HMENU       ,
///   LPCMENUINFO
/// );
/// ```
/// {@category user32}
final SetMenuInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hMenu, Pointer<MENUINFO> lpMenuInfo),
    int Function(int hMenu, Pointer<MENUINFO> lpMenuInfo)>('SetMenuInfo');

/// Changes information about a menu item.
///
/// ```c
/// BOOL SetMenuItemInfoW(
///   HMENU            hmenu,
///   UINT             item,
///   BOOL             fByPositon,
///   LPCMENUITEMINFOW lpmii
/// );
/// ```
/// {@category user32}
final SetMenuItemInfo = _user32.lookupFunction<
    Int32 Function(IntPtr hmenu, Uint32 item, Int32 fByPositon,
        Pointer<MENUITEMINFO> lpmii),
    int Function(int hmenu, int item, int fByPositon,
        Pointer<MENUITEMINFO> lpmii)>('SetMenuItemInfoW');

/// Changes the parent window of the specified child window.
///
/// ```c
/// HWND SetParent(
///   HWND hWndChild,
///   HWND hWndNewParent
/// );
/// ```
/// {@category user32}
final SetParent = _user32.lookupFunction<
    IntPtr Function(IntPtr hWndChild, IntPtr hWndNewParent),
    int Function(int hWndChild, int hWndNewParent)>('SetParent');

/// Sets the process-default DPI awareness to system-DPI awareness.
///
/// ```c
/// BOOL SetProcessDPIAware();
/// ```
/// {@category user32}
final SetProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('SetProcessDPIAware');

/// The SetScrollInfo function sets the parameters of a scroll bar,
/// including the minimum and maximum scrolling positions, the page size,
/// and the position of the scroll box (thumb). The function also redraws
/// the scroll bar, if requested.
///
/// ```c
/// int SetScrollInfo(
///   HWND          hwnd,
///   int           nBar,
///   LPCSCROLLINFO lpsi,
///   BOOL          redraw
/// );
/// ```
/// {@category user32}
final SetScrollInfo = _user32.lookupFunction<
    Int32 Function(
        IntPtr hwnd, Int32 nBar, Pointer<SCROLLINFO> lpsi, Int32 redraw),
    int Function(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi,
        int redraw)>('SetScrollInfo');

/// Creates a timer with the specified time-out value.
///
/// ```c
/// UINT_PTR SetTimer(
///   HWND      hWnd,
///   UINT_PTR  nIDEvent,
///   UINT      uElapse,
///   TIMERPROC lpTimerFunc
/// );
/// ```
/// {@category user32}
final SetTimer = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, IntPtr nIDEvent, Uint32 uElapse,
        Pointer<NativeFunction> lpTimerFunc),
    int Function(int hWnd, int nIDEvent, int uElapse,
        Pointer<NativeFunction> lpTimerFunc)>('SetTimer');

/// Changes an attribute of the specified window. The function also sets a
/// value at the specified offset in the extra window memory.
///
/// ```c
/// LONG_PTR SetWindowLongPtrW(
///   HWND     hWnd,
///   int      nIndex,
///   LONG_PTR dwNewLong
/// );
/// ```
/// {@category user32}
final SetWindowLongPtr = _user32.lookupFunction<
    IntPtr Function(IntPtr hWnd, Int32 nIndex, IntPtr dwNewLong),
    int Function(int hWnd, int nIndex, int dwNewLong)>('SetWindowLongPtrW');

/// Changes the size, position, and Z order of a child, pop-up, or
/// top-level window. These windows are ordered according to their
/// appearance on the screen. The topmost window receives the highest rank
/// and is the first window in the Z order.
///
/// ```c
/// BOOL SetWindowPos(
///   HWND hWnd,
///   HWND hWndInsertAfter,
///   int  X,
///   int  Y,
///   int  cx,
///   int  cy,
///   UINT uFlags,
/// );
/// ```
/// {@category user32}
final SetWindowPos = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hWndInsertAfter, Int32 X, Int32 Y,
        Int32 cx, Int32 cy, Uint32 uFlags),
    int Function(int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy,
        int uFlags)>('SetWindowPos');

/// Changes the text of the specified window's title bar (if it has one).
/// If the specified window is a control, the text of the control is
/// changed. However, SetWindowText cannot change the text of a control in
/// another application.
///
/// ```c
/// BOOL SetWindowTextW(
///   HWND    hWnd,
///   LPCWSTR lpString
/// );
/// ```
/// {@category user32}
final SetWindowText = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString),
    int Function(int hWnd, Pointer<Utf16> lpString)>('SetWindowTextW');

/// Displays or hides the cursor.
///
/// ```c
/// int ShowCursor(
///   BOOL bShow
/// );
/// ```
/// {@category user32}
final ShowCursor = _user32.lookupFunction<Int32 Function(Int32 bShow),
    int Function(int bShow)>('ShowCursor');

/// Sets the specified window's show state.
///
/// ```c
/// BOOL ShowWindow(
///   HWND hWnd,
///   int  nCmdShow
/// );
/// ```
/// {@category user32}
final ShowWindow = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 nCmdShow),
    int Function(int hWnd, int nCmdShow)>('ShowWindow');

/// Sets the show state of a window without waiting for the operation to
/// complete.
///
/// ```c
/// BOOL ShowWindowAsync(
///   HWND hWnd,
///   int  nCmdShow
/// );
/// ```
/// {@category user32}
final ShowWindowAsync = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, Int32 nCmdShow),
    int Function(int hWnd, int nCmdShow)>('ShowWindowAsync');

/// Retrieves or sets the value of one of the system-wide parameters. This
/// function can also update the user profile while setting a parameter.
///
/// ```c
/// BOOL SystemParametersInfoW(
///   UINT  uiAction,
///   UINT  uiParam,
///   PVOID pvParam,
///   UINT  fWinIni
/// );
/// ```
/// {@category user32}
final SystemParametersInfo = _user32.lookupFunction<
    Int32 Function(
        Uint32 uiAction, Uint32 uiParam, Pointer pvParam, Uint32 fWinIni),
    int Function(int uiAction, int uiParam, Pointer pvParam,
        int fWinIni)>('SystemParametersInfoW');

/// Processes accelerator keys for menu commands. The function translates a
/// WM_KEYDOWN or WM_SYSKEYDOWN message to a WM_COMMAND or WM_SYSCOMMAND
/// message (if there is an entry for the key in the specified accelerator
/// table) and then sends the WM_COMMAND or WM_SYSCOMMAND message directly
/// to the specified window procedure. TranslateAccelerator does not return
/// until the window procedure has processed the message.
///
/// ```c
/// int TranslateAcceleratorW(
///   HWND   hWnd,
///   HACCEL hAccTable,
///   LPMSG  lpMsg
/// );
/// ```
/// {@category user32}
final TranslateAccelerator = _user32.lookupFunction<
    Int32 Function(IntPtr hWnd, IntPtr hAccTable, Pointer<MSG> lpMsg),
    int Function(
        int hWnd, int hAccTable, Pointer<MSG> lpMsg)>('TranslateAcceleratorW');

/// Translates virtual-key messages into character messages. The character
/// messages are posted to the calling thread's message queue, to be read
/// the next time the thread calls the GetMessage or PeekMessage function.
///
/// ```c
/// BOOL TranslateMessage(
///   const MSG *lpMsg
/// );
/// ```
/// {@category user32}
final TranslateMessage = _user32.lookupFunction<
    Int32 Function(Pointer<MSG> lpMsg),
    int Function(Pointer<MSG> lpMsg)>('TranslateMessage');

/// The UpdateWindow function updates the client area of the specified
/// window by sending a WM_PAINT message to the window if the window's
/// update region is not empty. The function sends a WM_PAINT message
/// directly to the window procedure of the specified window, bypassing the
/// application queue. If the update region is empty, no message is sent.
///
/// ```c
/// BOOL UpdateWindow(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
final UpdateWindow =
    _user32.lookupFunction<Int32 Function(IntPtr hWnd), int Function(int hWnd)>(
        'UpdateWindow');

/// Retrieves a handle to the window that contains the specified physical
/// point.
///
/// ```c
/// HWND WindowFromPhysicalPoint(
///   POINT Point
/// );
/// ```
/// {@category user32}
final WindowFromPhysicalPoint = _user32.lookupFunction<
    IntPtr Function(Int64 Point),
    int Function(int Point)>('WindowFromPhysicalPoint');

/// Retrieves a handle to the window that contains the specified point.
///
/// ```c
/// HWND WindowFromPoint(
///   POINT Point
/// );
/// ```
/// {@category user32}
final WindowFromPoint = _user32.lookupFunction<IntPtr Function(Int64 Point),
    int Function(int Point)>('WindowFromPoint');
