// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _user32 = DynamicLibrary.open('user32.dll');

/// Sets the input locale identifier (formerly called the keyboard layout
/// handle) for the calling thread or the current process. The input locale
/// identifier specifies a locale as well as the physical layout of the
/// keyboard.
///
/// ```c
/// HKL ActivateKeyboardLayout(
///   HKL  hkl,
///   UINT Flags
/// );
/// ```
/// {@category user32}
int ActivateKeyboardLayout(int hkl, int Flags) {
  final _ActivateKeyboardLayout = _user32.lookupFunction<
      IntPtr Function(IntPtr hkl, Uint32 Flags),
      int Function(int hkl, int Flags)>('ActivateKeyboardLayout');
  return _ActivateKeyboardLayout(hkl, Flags);
}

/// Places the given window in the system-maintained clipboard format
/// listener list.
///
/// ```c
/// BOOL AddClipboardFormatListener(
///   HWND hwnd
/// );
/// ```
/// {@category user32}
int AddClipboardFormatListener(int hwnd) {
  final _AddClipboardFormatListener = _user32.lookupFunction<
      Int32 Function(IntPtr hwnd),
      int Function(int hwnd)>('AddClipboardFormatListener');
  return _AddClipboardFormatListener(hwnd);
}

/// Enables you to produce special effects when showing or hiding windows.
/// There are four types of animation: roll, slide, collapse or expand, and
/// alpha-blended fade.
///
/// ```c
/// BOOL AnimateWindow(
///   HWND  hWnd,
///   DWORD dwTime,
///   DWORD dwFlags
/// );
/// ```
/// {@category user32}
int AnimateWindow(int hWnd, int dwTime, int dwFlags) {
  final _AnimateWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Uint32 dwTime, Uint32 dwFlags),
      int Function(int hWnd, int dwTime, int dwFlags)>('AnimateWindow');
  return _AnimateWindow(hWnd, dwTime, dwFlags);
}

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
int AppendMenu(
    int hMenu, int uFlags, int uIDNewItem, Pointer<Utf16> lpNewItem) {
  final _AppendMenu = _user32.lookupFunction<
      Int32 Function(IntPtr hMenu, Uint32 uFlags, IntPtr uIDNewItem,
          Pointer<Utf16> lpNewItem),
      int Function(int hMenu, int uFlags, int uIDNewItem,
          Pointer<Utf16> lpNewItem)>('AppendMenuW');
  return _AppendMenu(hMenu, uFlags, uIDNewItem, lpNewItem);
}

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
int BeginPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) {
  final _BeginPaint = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
      int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('BeginPaint');
  return _BeginPaint(hWnd, lpPaint);
}

/// Blocks keyboard and mouse input events from reaching applications.
///
/// ```c
/// BOOL BlockInput(
///   BOOL fBlockIt);
/// ```
/// {@category user32}
int BlockInput(int fBlockIt) {
  final _BlockInput = _user32.lookupFunction<Int32 Function(Int32 fBlockIt),
      int Function(int fBlockIt)>('BlockInput');
  return _BlockInput(fBlockIt);
}

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
int BringWindowToTop(int hWnd) {
  final _BringWindowToTop = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('BringWindowToTop');
  return _BringWindowToTop(hWnd);
}

/// Removes a specified window from the chain of clipboard viewers.
///
/// ```c
/// BOOL ChangeClipboardChain(
///   HWND hWndRemove,
///   HWND hWndNewNext
///   );
/// ```
/// {@category user32}
int ChangeClipboardChain(int hWndRemove, int hWndNewNext) {
  final _ChangeClipboardChain = _user32.lookupFunction<
      Int32 Function(IntPtr hWndRemove, IntPtr hWndNewNext),
      int Function(int hWndRemove, int hWndNewNext)>('ChangeClipboardChain');
  return _ChangeClipboardChain(hWndRemove, hWndNewNext);
}

/// Determines which, if any, of the child windows belonging to a parent
/// window contains the specified point. The search is restricted to
/// immediate child windows. Grandchildren, and deeper descendant windows
/// are not searched.
///
/// ```c
/// HWND ChildWindowFromPoint(
///   HWND  hWndParent,
///   POINT Point
/// );
/// ```
/// {@category user32}
int ChildWindowFromPoint(int hWndParent, POINT Point) {
  final _ChildWindowFromPoint = _user32.lookupFunction<
      IntPtr Function(IntPtr hWndParent, POINT Point),
      int Function(int hWndParent, POINT Point)>('ChildWindowFromPoint');
  return _ChildWindowFromPoint(hWndParent, Point);
}

/// Determines which, if any, of the child windows belonging to the
/// specified parent window contains the specified point. The function can
/// ignore invisible, disabled, and transparent child windows.
/// Grandchildren and deeper descendants are not searched.
///
/// ```c
/// HWND ChildWindowFromPointEx(
///   HWND  hwnd,
///   POINT pt,
///   UINT  flags
/// );
/// ```
/// {@category user32}
int ChildWindowFromPointEx(int hwnd, POINT pt, int flags) {
  final _ChildWindowFromPointEx = _user32.lookupFunction<
      IntPtr Function(IntPtr hwnd, POINT pt, Uint32 flags),
      int Function(int hwnd, POINT pt, int flags)>('ChildWindowFromPointEx');
  return _ChildWindowFromPointEx(hwnd, pt, flags);
}

/// The ClientToScreen function converts the client-area coordinates of a
/// specified point to screen coordinates.
///
/// ```c
/// BOOL ClientToScreen(
///   HWND    hWnd,
///   LPPOINT lpPoint
/// );
/// ```
/// {@category user32}
int ClientToScreen(int hWnd, Pointer<POINT> lpPoint) {
  final _ClientToScreen = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
      int Function(int hWnd, Pointer<POINT> lpPoint)>('ClientToScreen');
  return _ClientToScreen(hWnd, lpPoint);
}

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
int ClipCursor(Pointer<RECT> lpRect) {
  final _ClipCursor = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lpRect),
      int Function(Pointer<RECT> lpRect)>('ClipCursor');
  return _ClipCursor(lpRect);
}

/// Closes the clipboard.
///
/// ```c
/// BOOL CloseClipboard();
/// ```
/// {@category user32}
int CloseClipboard() {
  final _CloseClipboard = _user32
      .lookupFunction<Int32 Function(), int Function()>('CloseClipboard');
  return _CloseClipboard();
}

/// Copies the specified accelerator table. This function is used to obtain
/// the accelerator-table data that corresponds to an accelerator-table
/// handle, or to determine the size of the accelerator-table data.
///
/// ```c
/// int CopyAcceleratorTableW(
///   HACCEL  hAccelSrc,
///   LPACCEL lpAccelDst,
///   int     cAccelEntries
/// );
/// ```
/// {@category user32}
int CopyAcceleratorTable(
    int hAccelSrc, Pointer<ACCEL> lpAccelDst, int cAccelEntries) {
  final _CopyAcceleratorTable = _user32.lookupFunction<
      Int32 Function(
          IntPtr hAccelSrc, Pointer<ACCEL> lpAccelDst, Int32 cAccelEntries),
      int Function(int hAccelSrc, Pointer<ACCEL> lpAccelDst,
          int cAccelEntries)>('CopyAcceleratorTableW');
  return _CopyAcceleratorTable(hAccelSrc, lpAccelDst, cAccelEntries);
}

/// Copies the specified icon from another module to the current module.
///
/// ```c
/// HICON CopyIcon(
///   HICON hIcon
/// );
/// ```
/// {@category user32}
int CopyIcon(int hIcon) {
  final _CopyIcon = _user32.lookupFunction<IntPtr Function(IntPtr hIcon),
      int Function(int hIcon)>('CopyIcon');
  return _CopyIcon(hIcon);
}

/// Creates a new image (icon, cursor, or bitmap) and copies the attributes
/// of the specified image to the new one. If necessary, the function
/// stretches the bits to fit the desired size of the new image.
///
/// ```c
/// HANDLE CopyImage(
///   HANDLE h,
///   UINT   type,
///   int    cx,
///   int    cy,
///   UINT   flags
/// );
/// ```
/// {@category user32}
int CopyImage(int h, int type, int cx, int cy, int flags) {
  final _CopyImage = _user32.lookupFunction<
      IntPtr Function(IntPtr h, Uint32 type, Int32 cx, Int32 cy, Uint32 flags),
      int Function(int h, int type, int cx, int cy, int flags)>('CopyImage');
  return _CopyImage(h, type, cx, cy, flags);
}

/// The CopyRect function copies the coordinates of one rectangle to
/// another.
///
/// ```c
/// BOOL CopyRect(
///   LPRECT     lprcDst,
///   const RECT *lprcSrc
/// );
/// ```
/// {@category user32}
int CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc) {
  final _CopyRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc),
      int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc)>('CopyRect');
  return _CopyRect(lprcDst, lprcSrc);
}

/// Retrieves the number of different data formats currently on the
/// clipboard.
///
/// ```c
/// int CountClipboardFormats();
/// ```
/// {@category user32}
int CountClipboardFormats() {
  final _CountClipboardFormats =
      _user32.lookupFunction<Int32 Function(), int Function()>(
          'CountClipboardFormats');
  return _CountClipboardFormats();
}

/// Creates an accelerator table.
///
/// ```c
/// HACCEL CreateAcceleratorTableW(
///   LPACCEL paccel,
///   int     cAccel
/// );
/// ```
/// {@category user32}
int CreateAcceleratorTable(Pointer<ACCEL> paccel, int cAccel) {
  final _CreateAcceleratorTable = _user32.lookupFunction<
      IntPtr Function(Pointer<ACCEL> paccel, Int32 cAccel),
      int Function(
          Pointer<ACCEL> paccel, int cAccel)>('CreateAcceleratorTableW');
  return _CreateAcceleratorTable(paccel, cAccel);
}

/// Creates a modeless dialog box from a dialog box template in memory.
/// Before displaying the dialog box, the function passes an
/// application-defined value to the dialog box procedure as the lParam
/// parameter of the WM_INITDIALOG message. An application can use this
/// value to initialize dialog box controls.
///
/// ```c
/// HWND CreateDialogIndirectParamW(
///   HINSTANCE       hInstance,
///   LPCDLGTEMPLATEW lpTemplate,
///   HWND            hWndParent,
///   DLGPROC         lpDialogFunc,
///   LPARAM          dwInitParam
/// );
/// ```
/// {@category user32}
int CreateDialogIndirectParam(
    int hInstance,
    Pointer<DLGTEMPLATE> lpTemplate,
    int hWndParent,
    Pointer<NativeFunction<DlgProc>> lpDialogFunc,
    int dwInitParam) {
  final _CreateDialogIndirectParam = _user32.lookupFunction<
      IntPtr Function(
          IntPtr hInstance,
          Pointer<DLGTEMPLATE> lpTemplate,
          IntPtr hWndParent,
          Pointer<NativeFunction<DlgProc>> lpDialogFunc,
          IntPtr dwInitParam),
      int Function(
          int hInstance,
          Pointer<DLGTEMPLATE> lpTemplate,
          int hWndParent,
          Pointer<NativeFunction<DlgProc>> lpDialogFunc,
          int dwInitParam)>('CreateDialogIndirectParamW');
  return _CreateDialogIndirectParam(
      hInstance, lpTemplate, hWndParent, lpDialogFunc, dwInitParam);
}

/// Creates a menu. The menu is initially empty, but it can be filled with
/// menu items by using the InsertMenuItem, AppendMenu, and InsertMenu
/// functions.
///
/// ```c
/// HMENU CreateMenu();
/// ```
/// {@category user32}
int CreateMenu() {
  final _CreateMenu =
      _user32.lookupFunction<IntPtr Function(), int Function()>('CreateMenu');
  return _CreateMenu();
}

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
int CreateWindowEx(
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
    Pointer lpParam) {
  final _CreateWindowEx = _user32.lookupFunction<
      IntPtr Function(
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
          Pointer lpParam),
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
          Pointer lpParam)>('CreateWindowExW');
  return _CreateWindowEx(dwExStyle, lpClassName, lpWindowName, dwStyle, X, Y,
      nWidth, nHeight, hWndParent, hMenu, hInstance, lpParam);
}

/// Calls the default window procedure to provide default processing for
/// any window messages that an application does not process. This function
/// ensures that every message is processed. DefWindowProc is called with
/// the same parameters received by the window procedure.
///
/// ```c
/// LRESULT DefWindowProcW(
///   HWND   hWnd,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
int DefWindowProc(int hWnd, int Msg, int wParam, int lParam) {
  final _DefWindowProc = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
      int Function(
          int hWnd, int Msg, int wParam, int lParam)>('DefWindowProcW');
  return _DefWindowProc(hWnd, Msg, wParam, lParam);
}

/// Destroys an icon and frees any memory the icon occupied.
///
/// ```c
/// BOOL DestroyIcon(
///   HICON hIcon
/// );
/// ```
/// {@category user32}
int DestroyIcon(int hIcon) {
  final _DestroyIcon = _user32.lookupFunction<Int32 Function(IntPtr hIcon),
      int Function(int hIcon)>('DestroyIcon');
  return _DestroyIcon(hIcon);
}

/// Destroys the specified menu and frees any memory that the menu
/// occupies.
///
/// ```c
/// BOOL DestroyMenu(
///   HMENU hMenu
/// );
/// ```
/// {@category user32}
int DestroyMenu(int hMenu) {
  final _DestroyMenu = _user32.lookupFunction<Int32 Function(IntPtr hMenu),
      int Function(int hMenu)>('DestroyMenu');
  return _DestroyMenu(hMenu);
}

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
int DestroyWindow(int hWnd) {
  final _DestroyWindow = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('DestroyWindow');
  return _DestroyWindow(hWnd);
}

/// Creates a modal dialog box from a dialog box template in memory. Before
/// displaying the dialog box, the function passes an application-defined
/// value to the dialog box procedure as the lParam parameter of the
/// WM_INITDIALOG message. An application can use this value to initialize
/// dialog box controls.
///
/// ```c
/// INT_PTR DialogBoxIndirectParamW(
///   HINSTANCE       hInstance,
///   LPCDLGTEMPLATEW hDialogTemplate,
///   HWND            hWndParent,
///   DLGPROC         lpDialogFunc,
///   LPARAM          dwInitParam
/// );
/// ```
/// {@category user32}
int DialogBoxIndirectParam(
    int hInstance,
    Pointer<DLGTEMPLATE> hDialogTemplate,
    int hWndParent,
    Pointer<NativeFunction<DlgProc>> lpDialogFunc,
    int dwInitParam) {
  final _DialogBoxIndirectParam = _user32.lookupFunction<
      IntPtr Function(
          IntPtr hInstance,
          Pointer<DLGTEMPLATE> hDialogTemplate,
          IntPtr hWndParent,
          Pointer<NativeFunction<DlgProc>> lpDialogFunc,
          IntPtr dwInitParam),
      int Function(
          int hInstance,
          Pointer<DLGTEMPLATE> hDialogTemplate,
          int hWndParent,
          Pointer<NativeFunction<DlgProc>> lpDialogFunc,
          int dwInitParam)>('DialogBoxIndirectParamW');
  return _DialogBoxIndirectParam(
      hInstance, hDialogTemplate, hWndParent, lpDialogFunc, dwInitParam);
}

/// Disables the window ghosting feature for the calling GUI process.
/// Window ghosting is a Windows Manager feature that lets the user
/// minimize, move, or close the main window of an application that is not
/// responding.
///
/// ```c
/// void DisableProcessWindowsGhosting();
/// ```
/// {@category user32}
void DisableProcessWindowsGhosting() {
  final _DisableProcessWindowsGhosting =
      _user32.lookupFunction<Void Function(), void Function()>(
          'DisableProcessWindowsGhosting');
  return _DisableProcessWindowsGhosting();
}

/// Dispatches a message to a window procedure. It is typically used to
/// dispatch a message retrieved by the GetMessage function.
///
/// ```c
/// LRESULT DispatchMessageW(
///   const MSG *lpMsg
/// );
/// ```
/// {@category user32}
int DispatchMessage(Pointer<MSG> lpMsg) {
  final _DispatchMessage = _user32.lookupFunction<
      IntPtr Function(Pointer<MSG> lpMsg),
      int Function(Pointer<MSG> lpMsg)>('DispatchMessageW');
  return _DispatchMessage(lpMsg);
}

/// Captures the mouse and tracks its movement until the user releases the
/// left button, presses the ESC key, or moves the mouse outside the drag
/// rectangle around the specified point.
///
/// ```c
/// BOOL DragDetect(
///   HWND  hwnd,
///   POINT pt);
/// ```
/// {@category user32}
int DragDetect(int hwnd, POINT pt) {
  final _DragDetect = _user32.lookupFunction<
      Int32 Function(IntPtr hwnd, POINT pt),
      int Function(int hwnd, POINT pt)>('DragDetect');
  return _DragDetect(hwnd, pt);
}

/// The DrawCaption function draws a window caption.
///
/// ```c
/// BOOL DrawCaption(
///   HWND       hwnd,
///   HDC        hdc,
///   const RECT *lprect,
///   UINT       flags
/// );
/// ```
/// {@category user32}
int DrawCaption(int hwnd, int hdc, Pointer<RECT> lprect, int flags) {
  final _DrawCaption = _user32.lookupFunction<
      Int32 Function(
          IntPtr hwnd, IntPtr hdc, Pointer<RECT> lprect, Uint32 flags),
      int Function(
          int hwnd, int hdc, Pointer<RECT> lprect, int flags)>('DrawCaption');
  return _DrawCaption(hwnd, hdc, lprect, flags);
}

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
int DrawIcon(int hDC, int X, int Y, int hIcon) {
  final _DrawIcon = _user32.lookupFunction<
      Int32 Function(IntPtr hDC, Int32 X, Int32 Y, IntPtr hIcon),
      int Function(int hDC, int X, int Y, int hIcon)>('DrawIcon');
  return _DrawIcon(hDC, X, Y, hIcon);
}

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
int DrawText(int hdc, Pointer<Utf16> lpchText, int cchText, Pointer<RECT> lprc,
    int format) {
  final _DrawText = _user32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
          Pointer<RECT> lprc, Uint32 format),
      int Function(int hdc, Pointer<Utf16> lpchText, int cchText,
          Pointer<RECT> lprc, int format)>('DrawTextW');
  return _DrawText(hdc, lpchText, cchText, lprc, format);
}

/// The DrawTextEx function draws formatted text in the specified
/// rectangle.
///
/// ```c
/// int DrawTextExW(
///   HDC              hdc,
///   LPWSTR           lpchText,
///   int              cchText,
///   LPRECT           lprc,
///   UINT             format,
///   LPDRAWTEXTPARAMS lpdtp
/// );
/// ```
/// {@category user32}
int DrawTextEx(int hdc, Pointer<Utf16> lpchText, int cchText,
    Pointer<RECT> lprc, int format, Pointer<DRAWTEXTPARAMS> lpdtp) {
  final _DrawTextEx = _user32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<Utf16> lpchText, Int32 cchText,
          Pointer<RECT> lprc, Uint32 format, Pointer<DRAWTEXTPARAMS> lpdtp),
      int Function(
          int hdc,
          Pointer<Utf16> lpchText,
          int cchText,
          Pointer<RECT> lprc,
          int format,
          Pointer<DRAWTEXTPARAMS> lpdtp)>('DrawTextExW');
  return _DrawTextEx(hdc, lpchText, cchText, lprc, format, lpdtp);
}

/// Empties the clipboard and frees handles to data in the clipboard. The
/// function then assigns ownership of the clipboard to the window that
/// currently has the clipboard open.
///
/// ```c
/// BOOL EmptyClipboard();
/// ```
/// {@category user32}
int EmptyClipboard() {
  final _EmptyClipboard = _user32
      .lookupFunction<Int32 Function(), int Function()>('EmptyClipboard');
  return _EmptyClipboard();
}

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
int EnableMenuItem(int hMenu, int uIDEnableItem, int uEnable) {
  final _EnableMenuItem = _user32.lookupFunction<
      Int32 Function(IntPtr hMenu, Uint32 uIDEnableItem, Uint32 uEnable),
      int Function(
          int hMenu, int uIDEnableItem, int uEnable)>('EnableMenuItem');
  return _EnableMenuItem(hMenu, uIDEnableItem, uEnable);
}

/// Enables or disables mouse and keyboard input to the specified window or
/// control. When input is disabled, the window does not receive input such
/// as mouse clicks and key presses. When input is enabled, the window
/// receives all input.
///
/// ```c
/// BOOL EnableWindow(
///   HWND hWnd,
///   BOOL bEnable
/// );
/// ```
/// {@category user32}
int EnableWindow(int hWnd, int bEnable) {
  final _EnableWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 bEnable),
      int Function(int hWnd, int bEnable)>('EnableWindow');
  return _EnableWindow(hWnd, bEnable);
}

/// Destroys a modal dialog box, causing the system to end any processing
/// for the dialog box.
///
/// ```c
/// BOOL EndDialog(
///   HWND    hDlg,
///   INT_PTR nResult
/// );
/// ```
/// {@category user32}
int EndDialog(int hDlg, int nResult) {
  final _EndDialog = _user32.lookupFunction<
      Int32 Function(IntPtr hDlg, IntPtr nResult),
      int Function(int hDlg, int nResult)>('EndDialog');
  return _EndDialog(hDlg, nResult);
}

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
int EndPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) {
  final _EndPaint = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<PAINTSTRUCT> lpPaint),
      int Function(int hWnd, Pointer<PAINTSTRUCT> lpPaint)>('EndPaint');
  return _EndPaint(hWnd, lpPaint);
}

/// Enumerates the child windows that belong to the specified parent window
/// by passing the handle to each child window, in turn, to an
/// application-defined callback function. EnumChildWindows continues until
/// the last child window is enumerated or the callback function returns
/// FALSE.
///
/// ```c
/// BOOL EnumChildWindows(
///   HWND        hWndParent,
///   WNDENUMPROC lpEnumFunc,
///   LPARAM      lParam
/// );
/// ```
/// {@category user32}
int EnumChildWindows(int hWndParent,
    Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc, int lParam) {
  final _EnumChildWindows = _user32.lookupFunction<
      Int32 Function(IntPtr hWndParent,
          Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc, IntPtr lParam),
      int Function(
          int hWndParent,
          Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc,
          int lParam)>('EnumChildWindows');
  return _EnumChildWindows(hWndParent, lpEnumFunc, lParam);
}

/// Enumerates the data formats currently available on the clipboard.
///
/// ```c
/// UINT EnumClipboardFormats(
///   UINT format
/// );
/// ```
/// {@category user32}
int EnumClipboardFormats(int format) {
  final _EnumClipboardFormats = _user32.lookupFunction<
      Uint32 Function(Uint32 format),
      int Function(int format)>('EnumClipboardFormats');
  return _EnumClipboardFormats(format);
}

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
int EnumDisplayMonitors(int hdc, Pointer<RECT> lprcClip,
    Pointer<NativeFunction<MonitorEnumProc>> lpfnEnum, int dwData) {
  final _EnumDisplayMonitors = _user32.lookupFunction<
      Int32 Function(IntPtr hdc, Pointer<RECT> lprcClip,
          Pointer<NativeFunction<MonitorEnumProc>> lpfnEnum, IntPtr dwData),
      int Function(
          int hdc,
          Pointer<RECT> lprcClip,
          Pointer<NativeFunction<MonitorEnumProc>> lpfnEnum,
          int dwData)>('EnumDisplayMonitors');
  return _EnumDisplayMonitors(hdc, lprcClip, lpfnEnum, dwData);
}

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
int EnumWindows(
    Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc, int lParam) {
  final _EnumWindows = _user32.lookupFunction<
      Int32 Function(
          Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc, IntPtr lParam),
      int Function(Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc,
          int lParam)>('EnumWindows');
  return _EnumWindows(lpEnumFunc, lParam);
}

/// The EqualRect function determines whether the two specified rectangles
/// are equal by comparing the coordinates of their upper-left and
/// lower-right corners.
///
/// ```c
/// BOOL EqualRect(
///   const RECT *lprc1,
///   const RECT *lprc2
/// );
/// ```
/// {@category user32}
int EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2) {
  final _EqualRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2),
      int Function(Pointer<RECT> lprc1, Pointer<RECT> lprc2)>('EqualRect');
  return _EqualRect(lprc1, lprc2);
}

/// The ExcludeUpdateRgn function prevents drawing within invalid areas of
/// a window by excluding an updated region in the window from a clipping
/// region.
///
/// ```c
/// int ExcludeUpdateRgn(
///   HDC  hDC,
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int ExcludeUpdateRgn(int hDC, int hWnd) {
  final _ExcludeUpdateRgn = _user32.lookupFunction<
      Int32 Function(IntPtr hDC, IntPtr hWnd),
      int Function(int hDC, int hWnd)>('ExcludeUpdateRgn');
  return _ExcludeUpdateRgn(hDC, hWnd);
}

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
int FillRect(int hDC, Pointer<RECT> lprc, int hbr) {
  final _FillRect = _user32.lookupFunction<
      Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
      int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FillRect');
  return _FillRect(hDC, lprc, hbr);
}

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
int FindWindowEx(int hWndParent, int hWndChildAfter, Pointer<Utf16> lpszClass,
    Pointer<Utf16> lpszWindow) {
  final _FindWindowEx = _user32.lookupFunction<
      IntPtr Function(IntPtr hWndParent, IntPtr hWndChildAfter,
          Pointer<Utf16> lpszClass, Pointer<Utf16> lpszWindow),
      int Function(int hWndParent, int hWndChildAfter, Pointer<Utf16> lpszClass,
          Pointer<Utf16> lpszWindow)>('FindWindowExW');
  return _FindWindowEx(hWndParent, hWndChildAfter, lpszClass, lpszWindow);
}

/// The FrameRect function draws a border around the specified rectangle by
/// using the specified brush. The width and height of the border are
/// always one logical unit.
///
/// ```c
/// int FrameRect(
///   HDC        hDC,
///   const RECT *lprc,
///   HBRUSH     hbr
/// );
/// ```
/// {@category user32}
int FrameRect(int hDC, Pointer<RECT> lprc, int hbr) {
  final _FrameRect = _user32.lookupFunction<
      Int32 Function(IntPtr hDC, Pointer<RECT> lprc, IntPtr hbr),
      int Function(int hDC, Pointer<RECT> lprc, int hbr)>('FrameRect');
  return _FrameRect(hDC, lprc, hbr);
}

/// Retrieves the window handle to the active window attached to the
/// calling thread's message queue.
///
/// ```c
/// HWND GetActiveWindow();
/// ```
/// {@category user32}
int GetActiveWindow() {
  final _GetActiveWindow = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetActiveWindow');
  return _GetActiveWindow();
}

/// Retrieves the handle to the ancestor of the specified window.
///
/// ```c
/// HWND GetAncestor(
///   HWND hwnd,
///   UINT gaFlags
/// );
/// ```
/// {@category user32}
int GetAncestor(int hwnd, int gaFlags) {
  final _GetAncestor = _user32.lookupFunction<
      IntPtr Function(IntPtr hwnd, Uint32 gaFlags),
      int Function(int hwnd, int gaFlags)>('GetAncestor');
  return _GetAncestor(hwnd, gaFlags);
}

/// Determines whether a key is up or down at the time the function is
/// called, and whether the key was pressed after a previous call to
/// GetAsyncKeyState.
///
/// ```c
/// SHORT GetAsyncKeyState(
///   int vKey
/// );
/// ```
/// {@category user32}
int GetAsyncKeyState(int vKey) {
  final _GetAsyncKeyState = _user32.lookupFunction<Int16 Function(Int32 vKey),
      int Function(int vKey)>('GetAsyncKeyState');
  return _GetAsyncKeyState(vKey);
}

/// Retrieves a handle to the window (if any) that has captured the mouse.
/// Only one window at a time can capture the mouse; this window receives
/// mouse input whether or not the cursor is within its borders.
///
/// ```c
/// HWND GetCapture();
/// ```
/// {@category user32}
int GetCapture() {
  final _GetCapture =
      _user32.lookupFunction<IntPtr Function(), int Function()>('GetCapture');
  return _GetCapture();
}

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
int GetClientRect(int hWnd, Pointer<RECT> lpRect) {
  final _GetClientRect = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
      int Function(int hWnd, Pointer<RECT> lpRect)>('GetClientRect');
  return _GetClientRect(hWnd, lpRect);
}

/// Retrieves data from the clipboard in a specified format. The clipboard
/// must have been opened previously.
///
/// ```c
/// HANDLE GetClipboardData(
///   UINT uFormat
/// );
/// ```
/// {@category user32}
int GetClipboardData(int uFormat) {
  final _GetClipboardData = _user32.lookupFunction<
      IntPtr Function(Uint32 uFormat),
      int Function(int uFormat)>('GetClipboardData');
  return _GetClipboardData(uFormat);
}

/// Retrieves from the clipboard the name of the specified registered
/// format. The function copies the name to the specified buffer.
///
/// ```c
/// int GetClipboardFormatNameW(
///   UINT format,
///   LPWSTR lpszFormatName,
///   int cchMaxCount
/// );
/// ```
/// {@category user32}
int GetClipboardFormatName(
    int format, Pointer<Utf16> lpszFormatName, int cchMaxCount) {
  final _GetClipboardFormatName = _user32.lookupFunction<
      Int32 Function(
          Uint32 format, Pointer<Utf16> lpszFormatName, Int32 cchMaxCount),
      int Function(int format, Pointer<Utf16> lpszFormatName,
          int cchMaxCount)>('GetClipboardFormatNameW');
  return _GetClipboardFormatName(format, lpszFormatName, cchMaxCount);
}

/// Retrieves the window handle of the current owner of the clipboard.
///
/// ```c
/// HWND GetClipboardOwner();
/// ```
/// {@category user32}
int GetClipboardOwner() {
  final _GetClipboardOwner = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetClipboardOwner');
  return _GetClipboardOwner();
}

/// Retrieves the clipboard sequence number for the current window station.
///
/// ```c
/// DWORD GetClipboardSequenceNumber();
/// ```
/// {@category user32}
int GetClipboardSequenceNumber() {
  final _GetClipboardSequenceNumber =
      _user32.lookupFunction<Uint32 Function(), int Function()>(
          'GetClipboardSequenceNumber');
  return _GetClipboardSequenceNumber();
}

/// Retrieves the handle to the first window in the clipboard viewer chain.
///
/// ```c
/// HWND GetClipboardViewer();
/// ```
/// {@category user32}
int GetClipboardViewer() {
  final _GetClipboardViewer = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetClipboardViewer');
  return _GetClipboardViewer();
}

/// Retrieves a handle to the current cursor.
///
/// ```c
/// HCURSOR GetCursor();
/// ```
/// {@category user32}
int GetCursor() {
  final _GetCursor =
      _user32.lookupFunction<IntPtr Function(), int Function()>('GetCursor');
  return _GetCursor();
}

/// Retrieves the position of the mouse cursor, in screen coordinates.
///
/// ```c
/// BOOL GetCursorPos(
///   LPPOINT lpPoint
/// );
/// ```
/// {@category user32}
int GetCursorPos(Pointer<POINT> lpPoint) {
  final _GetCursorPos = _user32.lookupFunction<
      Int32 Function(Pointer<POINT> lpPoint),
      int Function(Pointer<POINT> lpPoint)>('GetCursorPos');
  return _GetCursorPos(lpPoint);
}

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
int GetDC(int hWnd) {
  final _GetDC = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('GetDC');
  return _GetDC(hWnd);
}

/// The GetDCEx function retrieves a handle to a device context (DC) for
/// the client area of a specified window or for the entire screen. You can
/// use the returned handle in subsequent GDI functions to draw in the DC.
/// The device context is an opaque data structure, whose values are used
/// internally by GDI.
///
/// ```c
/// HDC GetDCEx(
///   HWND  hWnd,
///   HRGN  hrgnClip,
///   DWORD flags
/// );
/// ```
/// {@category user32}
int GetDCEx(int hWnd, int hrgnClip, int flags) {
  final _GetDCEx = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, IntPtr hrgnClip, Uint32 flags),
      int Function(int hWnd, int hrgnClip, int flags)>('GetDCEx');
  return _GetDCEx(hWnd, hrgnClip, flags);
}

/// Retrieves a handle to the desktop window. The desktop window covers the
/// entire screen. The desktop window is the area on top of which other
/// windows are painted.
///
/// ```c
/// HWND GetDesktopWindow();
/// ```
/// {@category user32}
int GetDesktopWindow() {
  final _GetDesktopWindow = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetDesktopWindow');
  return _GetDesktopWindow();
}

/// Retrieves the system's dialog base units, which are the average width
/// and height of characters in the system font. For dialog boxes that use
/// the system font, you can use these values to convert between dialog
/// template units, as specified in dialog box templates, and pixels. For
/// dialog boxes that do not use the system font, the conversion from
/// dialog template units to pixels depends on the font used by the dialog
/// box.
///
/// ```c
/// long GetDialogBaseUnits();
/// ```
/// {@category user32}
int GetDialogBaseUnits() {
  final _GetDialogBaseUnits = _user32
      .lookupFunction<Int32 Function(), int Function()>('GetDialogBaseUnits');
  return _GetDialogBaseUnits();
}

/// Retrieves a handle to a control in the specified dialog box.
///
/// ```c
/// HWND GetDlgItem(
///   HWND hDlg,
///   int  nIDDlgItem
/// );
/// ```
/// {@category user32}
int GetDlgItem(int hDlg, int nIDDlgItem) {
  final _GetDlgItem = _user32.lookupFunction<
      IntPtr Function(IntPtr hDlg, Int32 nIDDlgItem),
      int Function(int hDlg, int nIDDlgItem)>('GetDlgItem');
  return _GetDlgItem(hDlg, nIDDlgItem);
}

/// Translates the text of a specified control in a dialog box into an
/// integer value.
///
/// ```c
/// UINT GetDlgItemInt(
///   HWND hDlg,
///   int  nIDDlgItem,
///   BOOL *lpTranslated,
///   BOOL bSigned
/// );
/// ```
/// {@category user32}
int GetDlgItemInt(
    int hDlg, int nIDDlgItem, Pointer<Int32> lpTranslated, int bSigned) {
  final _GetDlgItemInt = _user32.lookupFunction<
      Uint32 Function(IntPtr hDlg, Int32 nIDDlgItem,
          Pointer<Int32> lpTranslated, Int32 bSigned),
      int Function(int hDlg, int nIDDlgItem, Pointer<Int32> lpTranslated,
          int bSigned)>('GetDlgItemInt');
  return _GetDlgItemInt(hDlg, nIDDlgItem, lpTranslated, bSigned);
}

/// Retrieves the title or text associated with a control in a dialog box.
///
/// ```c
/// UINT GetDlgItemTextW(
///   HWND   hDlg,
///   int    nIDDlgItem,
///   LPWSTR lpString,
///   int    cchMax
/// );
/// ```
/// {@category user32}
int GetDlgItemText(
    int hDlg, int nIDDlgItem, Pointer<Utf16> lpString, int cchMax) {
  final _GetDlgItemText = _user32.lookupFunction<
      Uint32 Function(
          IntPtr hDlg, Int32 nIDDlgItem, Pointer<Utf16> lpString, Int32 cchMax),
      int Function(int hDlg, int nIDDlgItem, Pointer<Utf16> lpString,
          int cchMax)>('GetDlgItemTextW');
  return _GetDlgItemText(hDlg, nIDDlgItem, lpString, cchMax);
}

/// Retrieves the current double-click time for the mouse. A double-click
/// is a series of two clicks of the mouse button, the second occurring
/// within a specified time after the first. The double-click time is the
/// maximum number of milliseconds that may occur between the first and
/// second click of a double-click. The maximum double-click time is 5000
/// milliseconds.
///
/// ```c
/// UINT GetDoubleClickTime();
/// ```
/// {@category user32}
int GetDoubleClickTime() {
  final _GetDoubleClickTime = _user32
      .lookupFunction<Uint32 Function(), int Function()>('GetDoubleClickTime');
  return _GetDoubleClickTime();
}

/// Returns the system DPI.
///
/// ```c
/// UINT GetDpiForSystem();
/// ```
/// {@category user32}
int GetDpiForSystem() {
  final _GetDpiForSystem = _user32
      .lookupFunction<Uint32 Function(), int Function()>('GetDpiForSystem');
  return _GetDpiForSystem();
}

/// Returns the dots per inch (dpi) value for the associated window.
///
/// ```c
/// UINT GetDpiForWindow(
///   HWND hwnd
/// );
/// ```
/// {@category user32}
int GetDpiForWindow(int hwnd) {
  final _GetDpiForWindow = _user32.lookupFunction<Uint32 Function(IntPtr hwnd),
      int Function(int hwnd)>('GetDpiForWindow');
  return _GetDpiForWindow(hwnd);
}

/// Retrieves the handle to the window that has the keyboard focus, if the
/// window is attached to the calling thread's message queue.
///
/// ```c
/// HWND GetFocus();
/// ```
/// {@category user32}
int GetFocus() {
  final _GetFocus =
      _user32.lookupFunction<IntPtr Function(), int Function()>('GetFocus');
  return _GetFocus();
}

/// Retrieves a handle to the foreground window (the window with which the
/// user is currently working). The system assigns a slightly higher
/// priority to the thread that creates the foreground window than it does
/// to other threads.
///
/// ```c
/// HWND GetForegroundWindow();
/// ```
/// {@category user32}
int GetForegroundWindow() {
  final _GetForegroundWindow = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetForegroundWindow');
  return _GetForegroundWindow();
}

/// Determines whether there are mouse-button or keyboard messages in the
/// calling thread's message queue.
///
/// ```c
/// BOOL GetInputState();
/// ```
/// {@category user32}
int GetInputState() {
  final _GetInputState =
      _user32.lookupFunction<Int32 Function(), int Function()>('GetInputState');
  return _GetInputState();
}

/// Retrieves the active input locale identifier (formerly called the
/// keyboard layout).
///
/// ```c
/// HKL GetKeyboardLayout(
///   DWORD idThread
/// );
/// ```
/// {@category user32}
int GetKeyboardLayout(int idThread) {
  final _GetKeyboardLayout = _user32.lookupFunction<
      IntPtr Function(Uint32 idThread),
      int Function(int idThread)>('GetKeyboardLayout');
  return _GetKeyboardLayout(idThread);
}

/// Retrieves the input locale identifiers (formerly called keyboard layout
/// handles) corresponding to the current set of input locales in the
/// system. The function copies the identifiers to the specified buffer.
///
/// ```c
/// int GetKeyboardLayoutList(
///   int nBuff,
///   HKL *lpList
/// );
/// ```
/// {@category user32}
int GetKeyboardLayoutList(int nBuff, Pointer<IntPtr> lpList) {
  final _GetKeyboardLayoutList = _user32.lookupFunction<
      Int32 Function(Int32 nBuff, Pointer<IntPtr> lpList),
      int Function(int nBuff, Pointer<IntPtr> lpList)>('GetKeyboardLayoutList');
  return _GetKeyboardLayoutList(nBuff, lpList);
}

/// Retrieves the name of the active input locale identifier (formerly
/// called the keyboard layout) for the system.
///
/// ```c
/// BOOL GetKeyboardLayoutNameW(
///   LPWSTR pwszKLID
/// );
/// ```
/// {@category user32}
int GetKeyboardLayoutName(Pointer<Utf16> pwszKLID) {
  final _GetKeyboardLayoutName = _user32.lookupFunction<
      Int32 Function(Pointer<Utf16> pwszKLID),
      int Function(Pointer<Utf16> pwszKLID)>('GetKeyboardLayoutNameW');
  return _GetKeyboardLayoutName(pwszKLID);
}

/// Copies the status of the 256 virtual keys to the specified buffer.
///
/// ```c
/// BOOL GetKeyboardState(
///   PBYTE lpKeyState
/// );
/// ```
/// {@category user32}
int GetKeyboardState(Pointer<Uint8> lpKeyState) {
  final _GetKeyboardState = _user32.lookupFunction<
      Int32 Function(Pointer<Uint8> lpKeyState),
      int Function(Pointer<Uint8> lpKeyState)>('GetKeyboardState');
  return _GetKeyboardState(lpKeyState);
}

/// Retrieves information about the current keyboard.
///
/// ```c
/// int GetKeyboardType(
///   int nTypeFlag
/// );
/// ```
/// {@category user32}
int GetKeyboardType(int nTypeFlag) {
  final _GetKeyboardType = _user32.lookupFunction<
      Int32 Function(Int32 nTypeFlag),
      int Function(int nTypeFlag)>('GetKeyboardType');
  return _GetKeyboardType(nTypeFlag);
}

/// Retrieves a string that represents the name of a key.
///
/// ```c
/// int GetKeyNameTextW(
///   LONG   lParam,
///   LPWSTR lpString,
///   int    cchSize
/// );
/// ```
/// {@category user32}
int GetKeyNameText(int lParam, Pointer<Utf16> lpString, int cchSize) {
  final _GetKeyNameText = _user32.lookupFunction<
      Int32 Function(Int32 lParam, Pointer<Utf16> lpString, Int32 cchSize),
      int Function(
          int lParam, Pointer<Utf16> lpString, int cchSize)>('GetKeyNameTextW');
  return _GetKeyNameText(lParam, lpString, cchSize);
}

/// Retrieves the status of the specified virtual key. The status specifies
/// whether the key is up, down, or toggled (on, off—alternating each time
/// the key is pressed).
///
/// ```c
/// SHORT GetKeyState(
///   int nVirtKey
/// );
/// ```
/// {@category user32}
int GetKeyState(int nVirtKey) {
  final _GetKeyState = _user32.lookupFunction<Int16 Function(Int32 nVirtKey),
      int Function(int nVirtKey)>('GetKeyState');
  return _GetKeyState(nVirtKey);
}

/// Retrieves the time of the last input event.
///
/// ```c
/// BOOL GetLastInputInfo(
///   PLASTINPUTINFO plii
/// );
/// ```
/// {@category user32}
int GetLastInputInfo(Pointer<LASTINPUTINFO> plii) {
  final _GetLastInputInfo = _user32.lookupFunction<
      Int32 Function(Pointer<LASTINPUTINFO> plii),
      int Function(Pointer<LASTINPUTINFO> plii)>('GetLastInputInfo');
  return _GetLastInputInfo(plii);
}

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
int GetMessage(
    Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin, int wMsgFilterMax) {
  final _GetMessage = _user32.lookupFunction<
      Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
          Uint32 wMsgFilterMax),
      int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
          int wMsgFilterMax)>('GetMessageW');
  return _GetMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax);
}

/// Retrieves the extra message information for the current thread. Extra
/// message information is an application- or driver-defined value
/// associated with the current thread's message queue.
///
/// ```c
/// LPARAM GetMessageExtraInfo();
/// ```
/// {@category user32}
int GetMessageExtraInfo() {
  final _GetMessageExtraInfo = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetMessageExtraInfo');
  return _GetMessageExtraInfo();
}

/// Retrieves the message time for the last message retrieved by the
/// GetMessage function. The time is a long integer that specifies the
/// elapsed time, in milliseconds, from the time the system was started to
/// the time the message was created (that is, placed in the thread's
/// message queue).
///
/// ```c
/// LONG GetMessageTime();
/// ```
/// {@category user32}
int GetMessageTime() {
  final _GetMessageTime = _user32
      .lookupFunction<Int32 Function(), int Function()>('GetMessageTime');
  return _GetMessageTime();
}

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
int GetMonitorInfo(int hMonitor, Pointer<MONITORINFO> lpmi) {
  final _GetMonitorInfo = _user32.lookupFunction<
      Int32 Function(IntPtr hMonitor, Pointer<MONITORINFO> lpmi),
      int Function(int hMonitor, Pointer<MONITORINFO> lpmi)>('GetMonitorInfoW');
  return _GetMonitorInfo(hMonitor, lpmi);
}

/// Retrieves a history of up to 64 previous coordinates of the mouse or
/// pen.
///
/// ```c
/// int GetMouseMovePointsEx(
///   UINT             cbSize,
///   LPMOUSEMOVEPOINT lppt,
///   LPMOUSEMOVEPOINT lpptBuf,
///   int              nBufPoints,
///   DWORD            resolution
/// );
/// ```
/// {@category user32}
int GetMouseMovePointsEx(int cbSize, Pointer<MOUSEMOVEPOINT> lppt,
    Pointer<MOUSEMOVEPOINT> lpptBuf, int nBufPoints, int resolution) {
  final _GetMouseMovePointsEx = _user32.lookupFunction<
      Int32 Function(Uint32 cbSize, Pointer<MOUSEMOVEPOINT> lppt,
          Pointer<MOUSEMOVEPOINT> lpptBuf, Int32 nBufPoints, Uint32 resolution),
      int Function(
          int cbSize,
          Pointer<MOUSEMOVEPOINT> lppt,
          Pointer<MOUSEMOVEPOINT> lpptBuf,
          int nBufPoints,
          int resolution)>('GetMouseMovePointsEx');
  return _GetMouseMovePointsEx(cbSize, lppt, lpptBuf, nBufPoints, resolution);
}

/// Retrieves a handle to the first control in a group of controls that
/// precedes (or follows) the specified control in a dialog box.
///
/// ```c
/// HWND GetNextDlgGroupItem(
///   HWND hDlg,
///   HWND hCtl,
///   BOOL bPrevious
/// );
/// ```
/// {@category user32}
int GetNextDlgGroupItem(int hDlg, int hCtl, int bPrevious) {
  final _GetNextDlgGroupItem = _user32.lookupFunction<
      IntPtr Function(IntPtr hDlg, IntPtr hCtl, Int32 bPrevious),
      int Function(int hDlg, int hCtl, int bPrevious)>('GetNextDlgGroupItem');
  return _GetNextDlgGroupItem(hDlg, hCtl, bPrevious);
}

/// Retrieves a handle to the first control that has the WS_TABSTOP style
/// that precedes (or follows) the specified control.
///
/// ```c
/// HWND GetNextDlgTabItem(
///   HWND hDlg,
///   HWND hCtl,
///   BOOL bPrevious
/// );
/// ```
/// {@category user32}
int GetNextDlgTabItem(int hDlg, int hCtl, int bPrevious) {
  final _GetNextDlgTabItem = _user32.lookupFunction<
      IntPtr Function(IntPtr hDlg, IntPtr hCtl, Int32 bPrevious),
      int Function(int hDlg, int hCtl, int bPrevious)>('GetNextDlgTabItem');
  return _GetNextDlgTabItem(hDlg, hCtl, bPrevious);
}

/// Retrieves the handle to the window that currently has the clipboard
/// open.
///
/// ```c
/// HWND GetOpenClipboardWindow();
/// ```
/// {@category user32}
int GetOpenClipboardWindow() {
  final _GetOpenClipboardWindow =
      _user32.lookupFunction<IntPtr Function(), int Function()>(
          'GetOpenClipboardWindow');
  return _GetOpenClipboardWindow();
}

/// Retrieves a handle to the specified window's parent or owner.
///
/// ```c
/// HWND GetParent(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int GetParent(int hWnd) {
  final _GetParent = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('GetParent');
  return _GetParent(hWnd);
}

/// Retrieves the first available clipboard format in the specified list.
///
/// ```c
/// int GetPriorityClipboardFormat(
///   UINT *paFormatPriorityList,
///   int  cFormats
/// );
/// ```
/// {@category user32}
int GetPriorityClipboardFormat(
    Pointer<Uint32> paFormatPriorityList, int cFormats) {
  final _GetPriorityClipboardFormat = _user32.lookupFunction<
      Int32 Function(Pointer<Uint32> paFormatPriorityList, Int32 cFormats),
      int Function(Pointer<Uint32> paFormatPriorityList,
          int cFormats)>('GetPriorityClipboardFormat');
  return _GetPriorityClipboardFormat(paFormatPriorityList, cFormats);
}

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
int GetScrollInfo(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi) {
  final _GetScrollInfo = _user32.lookupFunction<
      Int32 Function(IntPtr hwnd, Uint32 nBar, Pointer<SCROLLINFO> lpsi),
      int Function(
          int hwnd, int nBar, Pointer<SCROLLINFO> lpsi)>('GetScrollInfo');
  return _GetScrollInfo(hwnd, nBar, lpsi);
}

/// Retrieves a handle to the Shell's desktop window.
///
/// ```c
/// HWND GetShellWindow();
/// ```
/// {@category user32}
int GetShellWindow() {
  final _GetShellWindow = _user32
      .lookupFunction<IntPtr Function(), int Function()>('GetShellWindow');
  return _GetShellWindow();
}

/// Retrieves a handle to the drop-down menu or submenu activated by the
/// specified menu item.
///
/// ```c
/// HMENU GetSubMenu(
///   HMENU hMenu,
///   int nPos
/// );
/// ```
/// {@category user32}
int GetSubMenu(int hMenu, int nPos) {
  final _GetSubMenu = _user32.lookupFunction<
      IntPtr Function(IntPtr hMenu, Int32 nPos),
      int Function(int hMenu, int nPos)>('GetSubMenu');
  return _GetSubMenu(hMenu, nPos);
}

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
int GetSysColor(int nIndex) {
  final _GetSysColor = _user32.lookupFunction<Uint32 Function(Uint32 nIndex),
      int Function(int nIndex)>('GetSysColor');
  return _GetSysColor(nIndex);
}

/// The GetSysColorBrush function retrieves a handle identifying a logical
/// brush that corresponds to the specified color index.
///
/// ```c
/// HBRUSH GetSysColorBrush(
///   int nIndex
/// );
/// ```
/// {@category user32}
int GetSysColorBrush(int nIndex) {
  final _GetSysColorBrush = _user32.lookupFunction<
      IntPtr Function(Int32 nIndex),
      int Function(int nIndex)>('GetSysColorBrush');
  return _GetSysColorBrush(nIndex);
}

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
int GetSystemDpiForProcess(int hProcess) {
  final _GetSystemDpiForProcess = _user32.lookupFunction<
      Uint32 Function(IntPtr hProcess),
      int Function(int hProcess)>('GetSystemDpiForProcess');
  return _GetSystemDpiForProcess(hProcess);
}

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
int GetSystemMenu(int hWnd, int bRevert) {
  final _GetSystemMenu = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, Int32 bRevert),
      int Function(int hWnd, int bRevert)>('GetSystemMenu');
  return _GetSystemMenu(hWnd, bRevert);
}

/// Retrieves the specified system metric or system configuration setting.
/// Note that all dimensions retrieved by GetSystemMetrics are in pixels.
///
/// ```c
/// int GetSystemMetrics(
///   int nIndex
/// );
/// ```
/// {@category user32}
int GetSystemMetrics(int nIndex) {
  final _GetSystemMetrics = _user32.lookupFunction<
      Int32 Function(Uint32 nIndex),
      int Function(int nIndex)>('GetSystemMetrics');
  return _GetSystemMetrics(nIndex);
}

/// Retrieves the specified system metric or system configuration setting
/// taking into account a provided DPI.
///
/// ```c
/// int GetSystemMetricsForDpi(
///   int  nIndex,
///   UINT dpi
/// );
/// ```
/// {@category user32}
int GetSystemMetricsForDpi(int nIndex, int dpi) {
  final _GetSystemMetricsForDpi = _user32.lookupFunction<
      Int32 Function(Int32 nIndex, Uint32 dpi),
      int Function(int nIndex, int dpi)>('GetSystemMetricsForDpi');
  return _GetSystemMetricsForDpi(nIndex, dpi);
}

/// The GetTabbedTextExtent function computes the width and height of a
/// character string. If the string contains one or more tab characters,
/// the width of the string is based upon the specified tab stops. The
/// GetTabbedTextExtent function uses the currently selected font to
/// compute the dimensions of the string.
///
/// ```c
/// DWORD GetTabbedTextExtentW(
///   HDC       hdc,
///   LPCWSTR   lpString,
///   int       chCount,
///   int       nTabPositions,
///   const INT *lpnTabStopPositions
/// );
/// ```
/// {@category user32}
int GetTabbedTextExtent(int hdc, Pointer<Utf16> lpString, int chCount,
    int nTabPositions, Pointer<Int32> lpnTabStopPositions) {
  final _GetTabbedTextExtent = _user32.lookupFunction<
      Uint32 Function(IntPtr hdc, Pointer<Utf16> lpString, Int32 chCount,
          Int32 nTabPositions, Pointer<Int32> lpnTabStopPositions),
      int Function(
          int hdc,
          Pointer<Utf16> lpString,
          int chCount,
          int nTabPositions,
          Pointer<Int32> lpnTabStopPositions)>('GetTabbedTextExtentW');
  return _GetTabbedTextExtent(
      hdc, lpString, chCount, nTabPositions, lpnTabStopPositions);
}

/// Examines the Z order of the child windows associated with the specified
/// parent window and retrieves a handle to the child window at the top of
/// the Z order.
///
/// ```c
/// HWND GetTopWindow(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int GetTopWindow(int hWnd) {
  final _GetTopWindow = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('GetTopWindow');
  return _GetTopWindow(hWnd);
}

/// Retrieves the currently supported clipboard formats.
///
/// ```c
/// BOOL GetUpdatedClipboardFormats(
///   PUINT lpuiFormats,
///   UINT  cFormats,
///   PUINT pcFormatsOut
/// );
/// ```
/// {@category user32}
int GetUpdatedClipboardFormats(
    Pointer<Uint32> lpuiFormats, int cFormats, Pointer<Uint32> pcFormatsOut) {
  final _GetUpdatedClipboardFormats = _user32.lookupFunction<
      Int32 Function(Pointer<Uint32> lpuiFormats, Uint32 cFormats,
          Pointer<Uint32> pcFormatsOut),
      int Function(Pointer<Uint32> lpuiFormats, int cFormats,
          Pointer<Uint32> pcFormatsOut)>('GetUpdatedClipboardFormats');
  return _GetUpdatedClipboardFormats(lpuiFormats, cFormats, pcFormatsOut);
}

/// The GetUpdateRect function retrieves the coordinates of the smallest
/// rectangle that completely encloses the update region of the specified
/// window. GetUpdateRect retrieves the rectangle in logical coordinates.
/// If there is no update region, GetUpdateRect retrieves an empty
/// rectangle (sets all coordinates to zero).
///
/// ```c
/// BOOL GetUpdateRect(
///   HWND   hWnd,
///   LPRECT lpRect,
///   BOOL   bErase
/// );
/// ```
/// {@category user32}
int GetUpdateRect(int hWnd, Pointer<RECT> lpRect, int bErase) {
  final _GetUpdateRect = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
      int Function(
          int hWnd, Pointer<RECT> lpRect, int bErase)>('GetUpdateRect');
  return _GetUpdateRect(hWnd, lpRect, bErase);
}

/// The GetUpdateRgn function retrieves the update region of a window by
/// copying it into the specified region. The coordinates of the update
/// region are relative to the upper-left corner of the window (that is,
/// they are client coordinates).
///
/// ```c
/// int GetUpdateRgn(
///   HWND hWnd,
///   HRGN hRgn,
///   BOOL bErase
/// );
/// ```
/// {@category user32}
int GetUpdateRgn(int hWnd, int hRgn, int bErase) {
  final _GetUpdateRgn = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bErase),
      int Function(int hWnd, int hRgn, int bErase)>('GetUpdateRgn');
  return _GetUpdateRgn(hWnd, hRgn, bErase);
}

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
int GetWindow(int hWnd, int uCmd) {
  final _GetWindow = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, Uint32 uCmd),
      int Function(int hWnd, int uCmd)>('GetWindow');
  return _GetWindow(hWnd, uCmd);
}

/// The GetWindowDC function retrieves the device context (DC) for the
/// entire window, including title bar, menus, and scroll bars. A window
/// device context permits painting anywhere in a window, because the
/// origin of the device context is the upper-left corner of the window
/// instead of the client area.
///
/// ```c
/// HDC GetWindowDC(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int GetWindowDC(int hWnd) {
  final _GetWindowDC = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('GetWindowDC');
  return _GetWindowDC(hWnd);
}

/// Retrieves the current display affinity setting, from any process, for a
/// given window.
///
/// ```c
/// BOOL GetWindowDisplayAffinity(
///   HWND  hWnd,
///   DWORD *pdwAffinity
/// );
/// ```
/// {@category user32}
int GetWindowDisplayAffinity(int hWnd, Pointer<Uint32> pdwAffinity) {
  final _GetWindowDisplayAffinity = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<Uint32> pdwAffinity),
      int Function(
          int hWnd, Pointer<Uint32> pdwAffinity)>('GetWindowDisplayAffinity');
  return _GetWindowDisplayAffinity(hWnd, pdwAffinity);
}

/// Retrieves information about the specified window.
///
/// ```c
/// BOOL GetWindowInfo(
///   HWND hwnd,
///   PWINDOWINFO pwi
/// );
/// ```
/// {@category user32}
int GetWindowInfo(int hwnd, Pointer<WINDOWINFO> pwi) {
  final _GetWindowInfo = _user32.lookupFunction<
      Int32 Function(IntPtr hwnd, Pointer<WINDOWINFO> pwi),
      int Function(int hwnd, Pointer<WINDOWINFO> pwi)>('GetWindowInfo');
  return _GetWindowInfo(hwnd, pwi);
}

/// Retrieves the full path and file name of the module associated with the
/// specified window handle.
///
/// ```c
/// UINT GetWindowModuleFileNameW(
///   HWND   hwnd,
///   LPWSTR pszFileName,
///   UINT   cchFileNameMax
/// );
/// ```
/// {@category user32}
int GetWindowModuleFileName(
    int hwnd, Pointer<Utf16> pszFileName, int cchFileNameMax) {
  final _GetWindowModuleFileName = _user32.lookupFunction<
      Uint32 Function(
          IntPtr hwnd, Pointer<Utf16> pszFileName, Uint32 cchFileNameMax),
      int Function(int hwnd, Pointer<Utf16> pszFileName,
          int cchFileNameMax)>('GetWindowModuleFileNameW');
  return _GetWindowModuleFileName(hwnd, pszFileName, cchFileNameMax);
}

/// Retrieves the dimensions of the bounding rectangle of the specified
/// window. The dimensions are given in screen coordinates that are
/// relative to the upper-left corner of the screen.
///
/// ```c
/// BOOL GetWindowRect(
///   HWND   hWnd,
///   LPRECT lpRect
/// );
/// ```
/// {@category user32}
int GetWindowRect(int hWnd, Pointer<RECT> lpRect) {
  final _GetWindowRect = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
      int Function(int hWnd, Pointer<RECT> lpRect)>('GetWindowRect');
  return _GetWindowRect(hWnd, lpRect);
}

/// The GetWindowRgnBox function retrieves the dimensions of the tightest
/// bounding rectangle for the window region of a window.
///
/// ```c
/// int GetWindowRgnBox(
///   HWND   hWnd,
///   LPRECT lprc
/// );
/// ```
/// {@category user32}
int GetWindowRgnBox(int hWnd, Pointer<RECT> lprc) {
  final _GetWindowRgnBox = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lprc),
      int Function(int hWnd, Pointer<RECT> lprc)>('GetWindowRgnBox');
  return _GetWindowRgnBox(hWnd, lprc);
}

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
int GetWindowText(int hWnd, Pointer<Utf16> lpString, int nMaxCount) {
  final _GetWindowText = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString, Int32 nMaxCount),
      int Function(
          int hWnd, Pointer<Utf16> lpString, int nMaxCount)>('GetWindowTextW');
  return _GetWindowText(hWnd, lpString, nMaxCount);
}

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
int GetWindowTextLength(int hWnd) {
  final _GetWindowTextLength = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('GetWindowTextLengthW');
  return _GetWindowTextLength(hWnd);
}

/// The GrayString function draws gray text at the specified location. The
/// function draws the text by copying it into a memory bitmap, graying the
/// bitmap, and then copying the bitmap to the screen. The function grays
/// the text regardless of the selected brush and background. GrayString
/// uses the font currently selected for the specified device context.
///
/// ```c
/// BOOL GrayStringW(
///   HDC            hDC,
///   HBRUSH         hBrush,
///   GRAYSTRINGPROC lpOutputFunc,
///   LPARAM         lpData,
///   int            nCount,
///   int            X,
///   int            Y,
///   int            nWidth,
///   int            nHeight
/// );
/// ```
/// {@category user32}
int GrayString(
    int hDC,
    int hBrush,
    Pointer<NativeFunction<OutputProc>> lpOutputFunc,
    int lpData,
    int nCount,
    int X,
    int Y,
    int nWidth,
    int nHeight) {
  final _GrayString = _user32.lookupFunction<
      Int32 Function(
          IntPtr hDC,
          IntPtr hBrush,
          Pointer<NativeFunction<OutputProc>> lpOutputFunc,
          IntPtr lpData,
          Int32 nCount,
          Int32 X,
          Int32 Y,
          Int32 nWidth,
          Int32 nHeight),
      int Function(
          int hDC,
          int hBrush,
          Pointer<NativeFunction<OutputProc>> lpOutputFunc,
          int lpData,
          int nCount,
          int X,
          int Y,
          int nWidth,
          int nHeight)>('GrayStringW');
  return _GrayString(
      hDC, hBrush, lpOutputFunc, lpData, nCount, X, Y, nWidth, nHeight);
}

/// The InflateRect function increases or decreases the width and height of
/// the specified rectangle. The InflateRect function adds -dx units to the
/// left end and dx to the right end of the rectangle and -dy units to the
/// top and dy to the bottom. The dx and dy parameters are signed values;
/// positive values increase the width and height, and negative values
/// decrease them.
///
/// ```c
/// BOOL InflateRect(
///   LPRECT lprc,
///   int    dx,
///   int    dy
/// );
/// ```
/// {@category user32}
int InflateRect(Pointer<RECT> lprc, int dx, int dy) {
  final _InflateRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
      int Function(Pointer<RECT> lprc, int dx, int dy)>('InflateRect');
  return _InflateRect(lprc, dx, dy);
}

/// Inserts a new menu item into a menu, moving other items down the menu.
///
/// ```c
/// BOOL InsertMenuW(
///   HMENU    hMenu,
///   UINT     uPosition,
///   UINT     uFlags,
///   UINT_PTR uIDNewItem,
///   LPCWSTR  lpNewItem
/// );
/// ```
/// {@category user32}
int InsertMenu(int hMenu, int uPosition, int uFlags, int uIDNewItem,
    Pointer<Utf16> lpNewItem) {
  final _InsertMenu = _user32.lookupFunction<
      Int32 Function(IntPtr hMenu, Uint32 uPosition, Uint32 uFlags,
          IntPtr uIDNewItem, Pointer<Utf16> lpNewItem),
      int Function(int hMenu, int uPosition, int uFlags, int uIDNewItem,
          Pointer<Utf16> lpNewItem)>('InsertMenuW');
  return _InsertMenu(hMenu, uPosition, uFlags, uIDNewItem, lpNewItem);
}

/// Inserts a new menu item at the specified position in a menu.
///
/// ```c
/// BOOL InsertMenuItemW(
///   HMENU            hmenu,
///   UINT             item,
///   BOOL             fByPosition,
///   LPCMENUITEMINFOW lpmi
/// );
/// ```
/// {@category user32}
int InsertMenuItem(
    int hmenu, int item, int fByPosition, Pointer<MENUITEMINFO> lpmi) {
  final _InsertMenuItem = _user32.lookupFunction<
      Int32 Function(IntPtr hmenu, Uint32 item, Int32 fByPosition,
          Pointer<MENUITEMINFO> lpmi),
      int Function(int hmenu, int item, int fByPosition,
          Pointer<MENUITEMINFO> lpmi)>('InsertMenuItemW');
  return _InsertMenuItem(hmenu, item, fByPosition, lpmi);
}

/// The IntersectRect function calculates the intersection of two source
/// rectangles and places the coordinates of the intersection rectangle
/// into the destination rectangle. If the source rectangles do not
/// intersect, an empty rectangle (in which all coordinates are set to
/// zero) is placed into the destination rectangle.
///
/// ```c
/// BOOL IntersectRect(
///   LPRECT     lprcDst,
///   const RECT *lprcSrc1,
///   const RECT *lprcSrc2
/// );
/// ```
/// {@category user32}
int IntersectRect(
    Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2) {
  final _IntersectRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
          Pointer<RECT> lprcSrc2),
      int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
          Pointer<RECT> lprcSrc2)>('IntersectRect');
  return _IntersectRect(lprcDst, lprcSrc1, lprcSrc2);
}

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
int InvalidateRect(int hWnd, Pointer<RECT> lpRect, int bErase) {
  final _InvalidateRect = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect, Int32 bErase),
      int Function(
          int hWnd, Pointer<RECT> lpRect, int bErase)>('InvalidateRect');
  return _InvalidateRect(hWnd, lpRect, bErase);
}

/// The InvalidateRgn function invalidates the client area within the
/// specified region by adding it to the current update region of a window.
/// The invalidated region, along with all other areas in the update
/// region, is marked for painting when the next WM_PAINT message occurs.
///
/// ```c
/// BOOL InvalidateRgn(
///   HWND hWnd,
///   HRGN hRgn,
///   BOOL bErase
/// );
/// ```
/// {@category user32}
int InvalidateRgn(int hWnd, int hRgn, int bErase) {
  final _InvalidateRgn = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bErase),
      int Function(int hWnd, int hRgn, int bErase)>('InvalidateRgn');
  return _InvalidateRgn(hWnd, hRgn, bErase);
}

/// The InvertRect function inverts a rectangle in a window by performing a
/// logical NOT operation on the color values for each pixel in the
/// rectangle's interior.
///
/// ```c
/// BOOL InvertRect(
///   HDC        hDC,
///   const RECT *lprc
/// );
/// ```
/// {@category user32}
int InvertRect(int hDC, Pointer<RECT> lprc) {
  final _InvertRect = _user32.lookupFunction<
      Int32 Function(IntPtr hDC, Pointer<RECT> lprc),
      int Function(int hDC, Pointer<RECT> lprc)>('InvertRect');
  return _InvertRect(hDC, lprc);
}

/// Determines whether the clipboard contains data in the specified format.
///
/// ```c
/// BOOL IsClipboardFormatAvailable(
///   UINT format
/// );
/// ```
/// {@category user32}
int IsClipboardFormatAvailable(int format) {
  final _IsClipboardFormatAvailable = _user32.lookupFunction<
      Int32 Function(Uint32 format),
      int Function(int format)>('IsClipboardFormatAvailable');
  return _IsClipboardFormatAvailable(format);
}

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
int IsDialogMessage(int hDlg, Pointer<MSG> lpMsg) {
  final _IsDialogMessage = _user32.lookupFunction<
      Int32 Function(IntPtr hDlg, Pointer<MSG> lpMsg),
      int Function(int hDlg, Pointer<MSG> lpMsg)>('IsDialogMessageW');
  return _IsDialogMessage(hDlg, lpMsg);
}

/// Determines whether the specified window is minimized (iconic).
///
/// ```c
/// BOOL IsIconic(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int IsIconic(int hWnd) {
  final _IsIconic = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('IsIconic');
  return _IsIconic(hWnd);
}

/// The IsRectEmpty function determines whether the specified rectangle is
/// empty. An empty rectangle is one that has no area; that is, the
/// coordinate of the right side is less than or equal to the coordinate of
/// the left side, or the coordinate of the bottom side is less than or
/// equal to the coordinate of the top side.
///
/// ```c
/// BOOL IsRectEmpty(
///   const RECT *lprc
/// );
/// ```
/// {@category user32}
int IsRectEmpty(Pointer<RECT> lprc) {
  final _IsRectEmpty = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc),
      int Function(Pointer<RECT> lprc)>('IsRectEmpty');
  return _IsRectEmpty(lprc);
}

/// Determines whether the specified window is enabled for mouse and
/// keyboard input.
///
/// ```c
/// BOOL IsWindowEnabled(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int IsWindowEnabled(int hWnd) {
  final _IsWindowEnabled = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('IsWindowEnabled');
  return _IsWindowEnabled(hWnd);
}

/// Determines the visibility state of the specified window.
///
/// ```c
/// BOOL IsWindowVisible(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int IsWindowVisible(int hWnd) {
  final _IsWindowVisible = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('IsWindowVisible');
  return _IsWindowVisible(hWnd);
}

/// Determines whether a window is maximized.
///
/// ```c
/// BOOL IsZoomed(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int IsZoomed(int hWnd) {
  final _IsZoomed = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('IsZoomed');
  return _IsZoomed(hWnd);
}

/// Destroys the specified timer.
///
/// ```c
/// BOOL KillTimer(
///   HWND     hWnd,
///   UINT_PTR uIDEvent
/// );
/// ```
/// {@category user32}
int KillTimer(int hWnd, int uIDEvent) {
  final _KillTimer = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr uIDEvent),
      int Function(int hWnd, int uIDEvent)>('KillTimer');
  return _KillTimer(hWnd, uIDEvent);
}

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
int LoadCursor(int hInstance, Pointer<Utf16> lpCursorName) {
  final _LoadCursor = _user32.lookupFunction<
      IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpCursorName),
      int Function(int hInstance, Pointer<Utf16> lpCursorName)>('LoadCursorW');
  return _LoadCursor(hInstance, lpCursorName);
}

/// Loads the specified icon resource from the executable (.exe) file
/// associated with an application instance.
///
/// ```c
/// HICON LoadIconW(
///   HINSTANCE hInstance,
///   LPCWSTR   lpIconName
/// );
/// ```
/// {@category user32}
int LoadIcon(int hInstance, Pointer<Utf16> lpIconName) {
  final _LoadIcon = _user32.lookupFunction<
      IntPtr Function(IntPtr hInstance, Pointer<Utf16> lpIconName),
      int Function(int hInstance, Pointer<Utf16> lpIconName)>('LoadIconW');
  return _LoadIcon(hInstance, lpIconName);
}

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
int LoadImage(
    int hInst, Pointer<Utf16> name, int type, int cx, int cy, int fuLoad) {
  final _LoadImage = _user32.lookupFunction<
      IntPtr Function(IntPtr hInst, Pointer<Utf16> name, Uint32 type, Int32 cx,
          Int32 cy, Uint32 fuLoad),
      int Function(int hInst, Pointer<Utf16> name, int type, int cx, int cy,
          int fuLoad)>('LoadImageW');
  return _LoadImage(hInst, name, type, cx, cy, fuLoad);
}

/// Loads a new input locale identifier (formerly called the keyboard
/// layout) into the system.
///
/// ```c
/// HKL LoadKeyboardLayoutW(
///   LPCWSTR pwszKLID,
///   UINT    Flags
/// );
/// ```
/// {@category user32}
int LoadKeyboardLayout(Pointer<Utf16> pwszKLID, int Flags) {
  final _LoadKeyboardLayout = _user32.lookupFunction<
      IntPtr Function(Pointer<Utf16> pwszKLID, Uint32 Flags),
      int Function(Pointer<Utf16> pwszKLID, int Flags)>('LoadKeyboardLayoutW');
  return _LoadKeyboardLayout(pwszKLID, Flags);
}

/// The LockWindowUpdate function disables or enables drawing in the
/// specified window. Only one window can be locked at a time.
///
/// ```c
/// BOOL LockWindowUpdate(
///   HWND hWndLock
/// );
/// ```
/// {@category user32}
int LockWindowUpdate(int hWndLock) {
  final _LockWindowUpdate = _user32.lookupFunction<
      Int32 Function(IntPtr hWndLock),
      int Function(int hWndLock)>('LockWindowUpdate');
  return _LockWindowUpdate(hWndLock);
}

/// Locks the workstation's display. Locking a workstation protects it from
/// unauthorized use.
///
/// ```c
/// BOOL LockWorkStation();
/// ```
/// {@category user32}
int LockWorkStation() {
  final _LockWorkStation = _user32
      .lookupFunction<Int32 Function(), int Function()>('LockWorkStation');
  return _LockWorkStation();
}

/// Converts the logical coordinates of a point in a window to physical
/// coordinates.
///
/// ```c
/// BOOL LogicalToPhysicalPoint(
///   HWND    hWnd,
///   LPPOINT lpPoint
/// );
/// ```
/// {@category user32}
int LogicalToPhysicalPoint(int hWnd, Pointer<POINT> lpPoint) {
  final _LogicalToPhysicalPoint = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
      int Function(int hWnd, Pointer<POINT> lpPoint)>('LogicalToPhysicalPoint');
  return _LogicalToPhysicalPoint(hWnd, lpPoint);
}

/// Converts the specified dialog box units to screen units (pixels). The
/// function replaces the coordinates in the specified RECT structure with
/// the converted coordinates, which allows the structure to be used to
/// create a dialog box or position a control within a dialog box.
///
/// ```c
/// BOOL MapDialogRect(
///   HWND   hDlg,
///   LPRECT lpRect
/// );
/// ```
/// {@category user32}
int MapDialogRect(int hDlg, Pointer<RECT> lpRect) {
  final _MapDialogRect = _user32.lookupFunction<
      Int32 Function(IntPtr hDlg, Pointer<RECT> lpRect),
      int Function(int hDlg, Pointer<RECT> lpRect)>('MapDialogRect');
  return _MapDialogRect(hDlg, lpRect);
}

/// Translates (maps) a virtual-key code into a scan code or character
/// value, or translates a scan code into a virtual-key code.
///
/// ```c
/// UINT MapVirtualKeyW(
///   UINT uCode,
///   UINT uMapType
/// );
/// ```
/// {@category user32}
int MapVirtualKey(int uCode, int uMapType) {
  final _MapVirtualKey = _user32.lookupFunction<
      Uint32 Function(Uint32 uCode, Uint32 uMapType),
      int Function(int uCode, int uMapType)>('MapVirtualKeyW');
  return _MapVirtualKey(uCode, uMapType);
}

/// The MapWindowPoints function converts (maps) a set of points from a
/// coordinate space relative to one window to a coordinate space relative
/// to another window.
///
/// ```c
/// int MapWindowPoints(
///   HWND    hWndFrom,
///   HWND    hWndTo,
///   LPPOINT lpPoints,
///   UINT    cPoints
/// );
/// ```
/// {@category user32}
int MapWindowPoints(
    int hWndFrom, int hWndTo, Pointer<POINT> lpPoints, int cPoints) {
  final _MapWindowPoints = _user32.lookupFunction<
      Int32 Function(IntPtr hWndFrom, IntPtr hWndTo, Pointer<POINT> lpPoints,
          Uint32 cPoints),
      int Function(int hWndFrom, int hWndTo, Pointer<POINT> lpPoints,
          int cPoints)>('MapWindowPoints');
  return _MapWindowPoints(hWndFrom, hWndTo, lpPoints, cPoints);
}

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
int MessageBox(
    int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption, int uType) {
  final _MessageBox = _user32.lookupFunction<
      Uint32 Function(IntPtr hWnd, Pointer<Utf16> lpText,
          Pointer<Utf16> lpCaption, Uint32 uType),
      int Function(int hWnd, Pointer<Utf16> lpText, Pointer<Utf16> lpCaption,
          int uType)>('MessageBoxW');
  return _MessageBox(hWnd, lpText, lpCaption, uType);
}

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
int MonitorFromPoint(POINT pt, int dwFlags) {
  final _MonitorFromPoint = _user32.lookupFunction<
      IntPtr Function(POINT pt, Uint32 dwFlags),
      int Function(POINT pt, int dwFlags)>('MonitorFromPoint');
  return _MonitorFromPoint(pt, dwFlags);
}

/// The MonitorFromRect function retrieves a handle to the display monitor
/// that has the largest area of intersection with a specified rectangle.
///
/// ```c
/// HMONITOR MonitorFromRect(
///   LPCRECT lprc,
///   DWORD   dwFlags
/// );
/// ```
/// {@category user32}
int MonitorFromRect(Pointer<RECT> lprc, int dwFlags) {
  final _MonitorFromRect = _user32.lookupFunction<
      IntPtr Function(Pointer<RECT> lprc, Uint32 dwFlags),
      int Function(Pointer<RECT> lprc, int dwFlags)>('MonitorFromRect');
  return _MonitorFromRect(lprc, dwFlags);
}

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
int MonitorFromWindow(int hwnd, int dwFlags) {
  final _MonitorFromWindow = _user32.lookupFunction<
      IntPtr Function(IntPtr hwnd, Uint32 dwFlags),
      int Function(int hwnd, int dwFlags)>('MonitorFromWindow');
  return _MonitorFromWindow(hwnd, dwFlags);
}

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
int MoveWindow(int hWnd, int X, int Y, int nWidth, int nHeight, int bRepaint) {
  final _MoveWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 X, Int32 Y, Int32 nWidth, Int32 nHeight,
          Int32 bRepaint),
      int Function(int hWnd, int X, int Y, int nWidth, int nHeight,
          int bRepaint)>('MoveWindow');
  return _MoveWindow(hWnd, X, Y, nWidth, nHeight, bRepaint);
}

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
int MsgWaitForMultipleObjects(int nCount, Pointer<IntPtr> pHandles,
    int fWaitAll, int dwMilliseconds, int dwWakeMask) {
  final _MsgWaitForMultipleObjects = _user32.lookupFunction<
      Uint32 Function(Uint32 nCount, Pointer<IntPtr> pHandles, Int32 fWaitAll,
          Uint32 dwMilliseconds, Uint32 dwWakeMask),
      int Function(int nCount, Pointer<IntPtr> pHandles, int fWaitAll,
          int dwMilliseconds, int dwWakeMask)>('MsgWaitForMultipleObjects');
  return _MsgWaitForMultipleObjects(
      nCount, pHandles, fWaitAll, dwMilliseconds, dwWakeMask);
}

/// The OffsetRect function moves the specified rectangle by the specified
/// offsets.
///
/// ```c
/// BOOL OffsetRect(
///   LPRECT lprc,
///   int    dx,
///   int    dy
/// );
/// ```
/// {@category user32}
int OffsetRect(Pointer<RECT> lprc, int dx, int dy) {
  final _OffsetRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc, Int32 dx, Int32 dy),
      int Function(Pointer<RECT> lprc, int dx, int dy)>('OffsetRect');
  return _OffsetRect(lprc, dx, dy);
}

/// Opens the clipboard for examination and prevents other applications
/// from modifying the clipboard content.
///
/// ```c
/// BOOL OpenClipboard(
///   HWND hWndNewOwner
/// );
/// ```
/// {@category user32}
int OpenClipboard(int hWndNewOwner) {
  final _OpenClipboard = _user32.lookupFunction<
      Int32 Function(IntPtr hWndNewOwner),
      int Function(int hWndNewOwner)>('OpenClipboard');
  return _OpenClipboard(hWndNewOwner);
}

/// Restores a minimized (iconic) window to its previous size and position;
/// it then activates the window.
///
/// ```c
/// BOOL OpenIcon(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int OpenIcon(int hWnd) {
  final _OpenIcon = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('OpenIcon');
  return _OpenIcon(hWnd);
}

/// The PaintDesktop function fills the clipping region in the specified
/// device context with the desktop pattern or wallpaper. The function is
/// provided primarily for shell desktops.
///
/// ```c
/// BOOL PaintDesktop(
///   HDC hdc
/// );
/// ```
/// {@category user32}
int PaintDesktop(int hdc) {
  final _PaintDesktop =
      _user32.lookupFunction<Int32 Function(IntPtr hdc), int Function(int hdc)>(
          'PaintDesktop');
  return _PaintDesktop(hdc);
}

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
int PeekMessage(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
    int wMsgFilterMax, int wRemoveMsg) {
  final _PeekMessage = _user32.lookupFunction<
      Int32 Function(Pointer<MSG> lpMsg, IntPtr hWnd, Uint32 wMsgFilterMin,
          Uint32 wMsgFilterMax, Uint32 wRemoveMsg),
      int Function(Pointer<MSG> lpMsg, int hWnd, int wMsgFilterMin,
          int wMsgFilterMax, int wRemoveMsg)>('PeekMessageW');
  return _PeekMessage(lpMsg, hWnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg);
}

/// Converts the physical coordinates of a point in a window to logical
/// coordinates.
///
/// ```c
/// BOOL PhysicalToLogicalPoint(
///   HWND    hWnd,
///   LPPOINT lpPoint
/// );
/// ```
/// {@category user32}
int PhysicalToLogicalPoint(int hWnd, Pointer<POINT> lpPoint) {
  final _PhysicalToLogicalPoint = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
      int Function(int hWnd, Pointer<POINT> lpPoint)>('PhysicalToLogicalPoint');
  return _PhysicalToLogicalPoint(hWnd, lpPoint);
}

/// Places (posts) a message in the message queue associated with the
/// thread that created the specified window and returns without waiting
/// for the thread to process the message.
///
/// ```c
/// BOOL PostMessageW(
///   HWND   hWnd,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
int PostMessage(int hWnd, int Msg, int wParam, int lParam) {
  final _PostMessage = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
      int Function(int hWnd, int Msg, int wParam, int lParam)>('PostMessageW');
  return _PostMessage(hWnd, Msg, wParam, lParam);
}

/// Indicates to the system that a thread has made a request to terminate
/// (quit). It is typically used in response to a WM_DESTROY message.
///
/// ```c
/// void PostQuitMessage(
///   int nExitCode
/// );
/// ```
/// {@category user32}
void PostQuitMessage(int nExitCode) {
  final _PostQuitMessage = _user32.lookupFunction<
      Void Function(Int32 nExitCode),
      void Function(int nExitCode)>('PostQuitMessage');
  return _PostQuitMessage(nExitCode);
}

/// Posts a message to the message queue of the specified thread. It
/// returns without waiting for the thread to process the message.
///
/// ```c
/// BOOL PostThreadMessageW(
///   DWORD  idThread,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
int PostThreadMessage(int idThread, int Msg, int wParam, int lParam) {
  final _PostThreadMessage = _user32.lookupFunction<
      Int32 Function(Uint32 idThread, Uint32 Msg, IntPtr wParam, IntPtr lParam),
      int Function(
          int idThread, int Msg, int wParam, int lParam)>('PostThreadMessageW');
  return _PostThreadMessage(idThread, Msg, wParam, lParam);
}

/// The PtInRect function determines whether the specified point lies
/// within the specified rectangle. A point is within a rectangle if it
/// lies on the left or top side or is within all four sides. A point on
/// the right or bottom side is considered outside the rectangle.
///
/// ```c
/// BOOL PtInRect(
///   const RECT *lprc,
///   POINT      pt
/// );
/// ```
/// {@category user32}
int PtInRect(Pointer<RECT> lprc, POINT pt) {
  final _PtInRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc, POINT pt),
      int Function(Pointer<RECT> lprc, POINT pt)>('PtInRect');
  return _PtInRect(lprc, pt);
}

/// The RedrawWindow function updates the specified rectangle or region in
/// a window's client area.
///
/// ```c
/// BOOL RedrawWindow(
///   HWND       hWnd,
///   const RECT *lprcUpdate,
///   HRGN       hrgnUpdate,
///   UINT       flags
/// );
/// ```
/// {@category user32}
int RedrawWindow(
    int hWnd, Pointer<RECT> lprcUpdate, int hrgnUpdate, int flags) {
  final _RedrawWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lprcUpdate, IntPtr hrgnUpdate,
          Uint32 flags),
      int Function(int hWnd, Pointer<RECT> lprcUpdate, int hrgnUpdate,
          int flags)>('RedrawWindow');
  return _RedrawWindow(hWnd, lprcUpdate, hrgnUpdate, flags);
}

/// Registers a window class for subsequent use in calls to the
/// CreateWindow or CreateWindowEx function.
///
/// ```c
/// ATOM RegisterClassW(
///   const WNDCLASSW *lpWndClass
/// );
/// ```
/// {@category user32}
int RegisterClass(Pointer<WNDCLASS> lpWndClass) {
  final _RegisterClass = _user32.lookupFunction<
      Uint16 Function(Pointer<WNDCLASS> lpWndClass),
      int Function(Pointer<WNDCLASS> lpWndClass)>('RegisterClassW');
  return _RegisterClass(lpWndClass);
}

/// Registers a new clipboard format. This format can then be used as a
/// valid clipboard format.
///
/// ```c
/// UINT RegisterClipboardFormatW(
///   LPCWSTR lpszFormat
/// );
/// ```
/// {@category user32}
int RegisterClipboardFormat(Pointer<Utf16> lpszFormat) {
  final _RegisterClipboardFormat = _user32.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpszFormat),
      int Function(Pointer<Utf16> lpszFormat)>('RegisterClipboardFormatW');
  return _RegisterClipboardFormat(lpszFormat);
}

/// Defines a system-wide hot key.
///
/// ```c
/// BOOL RegisterHotKey(
///   HWND hWnd,
///   int  id,
///   UINT fsModifiers,
///   UINT vk
/// );
/// ```
/// {@category user32}
int RegisterHotKey(int hWnd, int id, int fsModifiers, int vk) {
  final _RegisterHotKey = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 id, Uint32 fsModifiers, Uint32 vk),
      int Function(
          int hWnd, int id, int fsModifiers, int vk)>('RegisterHotKey');
  return _RegisterHotKey(hWnd, id, fsModifiers, vk);
}

/// Registers the application to receive power setting notifications for
/// the specific power setting event.
///
/// ```c
/// HPOWERNOTIFY RegisterPowerSettingNotification(
///   HANDLE  hRecipient,
///   LPCGUID PowerSettingGuid,
///   DWORD   Flags
/// );
/// ```
/// {@category user32}
int RegisterPowerSettingNotification(
    int hRecipient, Pointer<GUID> PowerSettingGuid, int Flags) {
  final _RegisterPowerSettingNotification = _user32.lookupFunction<
      IntPtr Function(
          IntPtr hRecipient, Pointer<GUID> PowerSettingGuid, Uint32 Flags),
      int Function(int hRecipient, Pointer<GUID> PowerSettingGuid,
          int Flags)>('RegisterPowerSettingNotification');
  return _RegisterPowerSettingNotification(hRecipient, PowerSettingGuid, Flags);
}

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
int RegisterWindowMessage(Pointer<Utf16> lpString) {
  final _RegisterWindowMessage = _user32.lookupFunction<
      Uint32 Function(Pointer<Utf16> lpString),
      int Function(Pointer<Utf16> lpString)>('RegisterWindowMessageW');
  return _RegisterWindowMessage(lpString);
}

/// Releases the mouse capture from a window in the current thread and
/// restores normal mouse input processing. A window that has captured the
/// mouse receives all mouse input, regardless of the position of the
/// cursor, except when a mouse button is clicked while the cursor hot spot
/// is in the window of another thread.
///
/// ```c
/// BOOL ReleaseCapture();
/// ```
/// {@category user32}
int ReleaseCapture() {
  final _ReleaseCapture = _user32
      .lookupFunction<Int32 Function(), int Function()>('ReleaseCapture');
  return _ReleaseCapture();
}

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
int ReleaseDC(int hWnd, int hDC) {
  final _ReleaseDC = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hDC),
      int Function(int hWnd, int hDC)>('ReleaseDC');
  return _ReleaseDC(hWnd, hDC);
}

/// Removes the given window from the system-maintained clipboard format
/// listener list.
///
/// ```c
/// BOOL RemoveClipboardFormatListener(
///   HWND hwnd
/// );
/// ```
/// {@category user32}
int RemoveClipboardFormatListener(int hwnd) {
  final _RemoveClipboardFormatListener = _user32.lookupFunction<
      Int32 Function(IntPtr hwnd),
      int Function(int hwnd)>('RemoveClipboardFormatListener');
  return _RemoveClipboardFormatListener(hwnd);
}

/// Replies to a message sent from another thread by the SendMessage
/// function.
///
/// ```c
/// BOOL ReplyMessage(
///   LRESULT lResult
/// );
/// ```
/// {@category user32}
int ReplyMessage(int lResult) {
  final _ReplyMessage = _user32.lookupFunction<Int32 Function(IntPtr lResult),
      int Function(int lResult)>('ReplyMessage');
  return _ReplyMessage(lResult);
}

/// The ScreenToClient function converts the screen coordinates of a
/// specified point on the screen to client-area coordinates.
///
/// ```c
/// BOOL ScreenToClient(
///   HWND    hWnd,
///   LPPOINT lpPoint
/// );
/// ```
/// {@category user32}
int ScreenToClient(int hWnd, Pointer<POINT> lpPoint) {
  final _ScreenToClient = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<POINT> lpPoint),
      int Function(int hWnd, Pointer<POINT> lpPoint)>('ScreenToClient');
  return _ScreenToClient(hWnd, lpPoint);
}

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
int ScrollWindow(int hWnd, int XAmount, int YAmount, Pointer<RECT> lpRect,
    Pointer<RECT> lpClipRect) {
  final _ScrollWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 XAmount, Int32 YAmount,
          Pointer<RECT> lpRect, Pointer<RECT> lpClipRect),
      int Function(int hWnd, int XAmount, int YAmount, Pointer<RECT> lpRect,
          Pointer<RECT> lpClipRect)>('ScrollWindow');
  return _ScrollWindow(hWnd, XAmount, YAmount, lpRect, lpClipRect);
}

/// Sends a message to the specified control in a dialog box.
///
/// ```c
/// LRESULT SendDlgItemMessageW(
///   HWND   hDlg,
///   int    nIDDlgItem,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
int SendDlgItemMessage(
    int hDlg, int nIDDlgItem, int Msg, int wParam, int lParam) {
  final _SendDlgItemMessage = _user32.lookupFunction<
      IntPtr Function(IntPtr hDlg, Int32 nIDDlgItem, Uint32 Msg, IntPtr wParam,
          IntPtr lParam),
      int Function(int hDlg, int nIDDlgItem, int Msg, int wParam,
          int lParam)>('SendDlgItemMessageW');
  return _SendDlgItemMessage(hDlg, nIDDlgItem, Msg, wParam, lParam);
}

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
int SendInput(int cInputs, Pointer<INPUT> pInputs, int cbSize) {
  final _SendInput = _user32.lookupFunction<
      Uint32 Function(Uint32 cInputs, Pointer<INPUT> pInputs, Int32 cbSize),
      int Function(
          int cInputs, Pointer<INPUT> pInputs, int cbSize)>('SendInput');
  return _SendInput(cInputs, pInputs, cbSize);
}

/// Sends the specified message to a window or windows. The SendMessage
/// function calls the window procedure for the specified window and does
/// not return until the window procedure has processed the message.
///
/// ```c
/// LRESULT SendMessageW(
///   HWND   hWnd,
///   UINT   Msg,
///   WPARAM wParam,
///   LPARAM lParam
/// );
/// ```
/// {@category user32}
int SendMessage(int hWnd, int Msg, int wParam, int lParam) {
  final _SendMessage = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, Uint32 Msg, IntPtr wParam, IntPtr lParam),
      int Function(int hWnd, int Msg, int wParam, int lParam)>('SendMessageW');
  return _SendMessage(hWnd, Msg, wParam, lParam);
}

/// Activates a window. The window must be attached to the calling thread's
/// message queue.
///
/// ```c
/// HWND SetActiveWindow(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int SetActiveWindow(int hWnd) {
  final _SetActiveWindow = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('SetActiveWindow');
  return _SetActiveWindow(hWnd);
}

/// Sets the mouse capture to the specified window belonging to the current
/// thread. SetCapture captures mouse input either when the mouse is over
/// the capturing window, or when the mouse button was pressed while the
/// mouse was over the capturing window and the button is still down. Only
/// one window at a time can capture the mouse.
///
/// ```c
/// HWND SetCapture(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int SetCapture(int hWnd) {
  final _SetCapture = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('SetCapture');
  return _SetCapture(hWnd);
}

/// Places data on the clipboard in a specified clipboard format. The
/// window must be the current clipboard owner, and the application must
/// have called the OpenClipboard function.
///
/// ```c
/// HANDLE SetClipboardData(
///   UINT   uFormat,
///   HANDLE hMem
/// );
/// ```
/// {@category user32}
int SetClipboardData(int uFormat, int hMem) {
  final _SetClipboardData = _user32.lookupFunction<
      IntPtr Function(Uint32 uFormat, IntPtr hMem),
      int Function(int uFormat, int hMem)>('SetClipboardData');
  return _SetClipboardData(uFormat, hMem);
}

/// Adds the specified window to the chain of clipboard viewers.
///
/// ```c
/// HWND SetClipboardViewer(
///   HWND hWndNewViewer
/// );
/// ```
/// {@category user32}
int SetClipboardViewer(int hWndNewViewer) {
  final _SetClipboardViewer = _user32.lookupFunction<
      IntPtr Function(IntPtr hWndNewViewer),
      int Function(int hWndNewViewer)>('SetClipboardViewer');
  return _SetClipboardViewer(hWndNewViewer);
}

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
int SetCursorPos(int X, int Y) {
  final _SetCursorPos = _user32.lookupFunction<Int32 Function(Int32 X, Int32 Y),
      int Function(int X, int Y)>('SetCursorPos');
  return _SetCursorPos(X, Y);
}

/// Sets the text of a control in a dialog box to the string representation
/// of a specified integer value.
///
/// ```c
/// BOOL SetDlgItemInt(
///   HWND hDlg,
///   int  nIDDlgItem,
///   UINT uValue,
///   BOOL bSigned
/// );
/// ```
/// {@category user32}
int SetDlgItemInt(int hDlg, int nIDDlgItem, int uValue, int bSigned) {
  final _SetDlgItemInt = _user32.lookupFunction<
      Int32 Function(
          IntPtr hDlg, Int32 nIDDlgItem, Uint32 uValue, Int32 bSigned),
      int Function(
          int hDlg, int nIDDlgItem, int uValue, int bSigned)>('SetDlgItemInt');
  return _SetDlgItemInt(hDlg, nIDDlgItem, uValue, bSigned);
}

/// Sets the title or text of a control in a dialog box.
///
/// ```c
/// BOOL SetDlgItemTextW(
///   HWND    hDlg,
///   int     nIDDlgItem,
///   LPCWSTR lpString
/// );
/// ```
/// {@category user32}
int SetDlgItemText(int hDlg, int nIDDlgItem, Pointer<Utf16> lpString) {
  final _SetDlgItemText = _user32.lookupFunction<
      Int32 Function(IntPtr hDlg, Int32 nIDDlgItem, Pointer<Utf16> lpString),
      int Function(int hDlg, int nIDDlgItem,
          Pointer<Utf16> lpString)>('SetDlgItemTextW');
  return _SetDlgItemText(hDlg, nIDDlgItem, lpString);
}

/// Sets the double-click time for the mouse. A double-click is a series of
/// two clicks of a mouse button, the second occurring within a specified
/// time after the first. The double-click time is the maximum number of
/// milliseconds that may occur between the first and second clicks of a
/// double-click.
///
/// ```c
/// BOOL SetDoubleClickTime(
///   UINT Arg1
/// );
/// ```
/// {@category user32}
int SetDoubleClickTime(int param0) {
  final _SetDoubleClickTime = _user32.lookupFunction<
      Int32 Function(Uint32 param0),
      int Function(int param0)>('SetDoubleClickTime');
  return _SetDoubleClickTime(param0);
}

/// Sets the keyboard focus to the specified window. The window must be
/// attached to the calling thread's message queue.
///
/// ```c
/// HWND SetFocus(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int SetFocus(int hWnd) {
  final _SetFocus = _user32.lookupFunction<IntPtr Function(IntPtr hWnd),
      int Function(int hWnd)>('SetFocus');
  return _SetFocus(hWnd);
}

/// Brings the thread that created the specified window into the foreground
/// and activates the window. Keyboard input is directed to the window, and
/// various visual cues are changed for the user. The system assigns a
/// slightly higher priority to the thread that created the foreground
/// window than it does to other threads.
///
/// ```c
/// BOOL SetForegroundWindow(
///   HWND hWnd
/// );
/// ```
/// {@category user32}
int SetForegroundWindow(int hWnd) {
  final _SetForegroundWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('SetForegroundWindow');
  return _SetForegroundWindow(hWnd);
}

/// Copies an array of keyboard key states into the calling thread's
/// keyboard input-state table. This is the same table accessed by the
/// GetKeyboardState and GetKeyState functions. Changes made to this table
/// do not affect keyboard input to any other thread.
///
/// ```c
/// BOOL SetKeyboardState(
///   LPBYTE lpKeyState
/// );
/// ```
/// {@category user32}
int SetKeyboardState(Pointer<Uint8> lpKeyState) {
  final _SetKeyboardState = _user32.lookupFunction<
      Int32 Function(Pointer<Uint8> lpKeyState),
      int Function(Pointer<Uint8> lpKeyState)>('SetKeyboardState');
  return _SetKeyboardState(lpKeyState);
}

/// Sets information for a specified menu.
///
/// ```c
/// BOOL SetMenuInfo(
///   HMENU       hmenu,
///   LPCMENUINFO lpmi
/// );
/// ```
/// {@category user32}
int SetMenuInfo(int param0, Pointer<MENUINFO> param1) {
  final _SetMenuInfo = _user32.lookupFunction<
      Int32 Function(IntPtr param0, Pointer<MENUINFO> param1),
      int Function(int param0, Pointer<MENUINFO> param1)>('SetMenuInfo');
  return _SetMenuInfo(param0, param1);
}

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
int SetMenuItemInfo(
    int hmenu, int item, int fByPositon, Pointer<MENUITEMINFO> lpmii) {
  final _SetMenuItemInfo = _user32.lookupFunction<
      Int32 Function(IntPtr hmenu, Uint32 item, Int32 fByPositon,
          Pointer<MENUITEMINFO> lpmii),
      int Function(int hmenu, int item, int fByPositon,
          Pointer<MENUITEMINFO> lpmii)>('SetMenuItemInfoW');
  return _SetMenuItemInfo(hmenu, item, fByPositon, lpmii);
}

/// Changes the parent window of the specified child window.
///
/// ```c
/// HWND SetParent(
///   HWND hWndChild,
///   HWND hWndNewParent
/// );
/// ```
/// {@category user32}
int SetParent(int hWndChild, int hWndNewParent) {
  final _SetParent = _user32.lookupFunction<
      IntPtr Function(IntPtr hWndChild, IntPtr hWndNewParent),
      int Function(int hWndChild, int hWndNewParent)>('SetParent');
  return _SetParent(hWndChild, hWndNewParent);
}

/// Sets the process-default DPI awareness to system-DPI awareness.
///
/// ```c
/// BOOL SetProcessDPIAware();
/// ```
/// {@category user32}
int SetProcessDPIAware() {
  final _SetProcessDPIAware = _user32
      .lookupFunction<Int32 Function(), int Function()>('SetProcessDPIAware');
  return _SetProcessDPIAware();
}

/// The SetRect function sets the coordinates of the specified rectangle.
/// This is equivalent to assigning the left, top, right, and bottom
/// arguments to the appropriate members of the RECT structure.
///
/// ```c
/// BOOL SetRect(
///   LPRECT lprc,
///   int    xLeft,
///   int    yTop,
///   int    xRight,
///   int    yBottom
/// );
/// ```
/// {@category user32}
int SetRect(Pointer<RECT> lprc, int xLeft, int yTop, int xRight, int yBottom) {
  final _SetRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc, Int32 xLeft, Int32 yTop, Int32 xRight,
          Int32 yBottom),
      int Function(Pointer<RECT> lprc, int xLeft, int yTop, int xRight,
          int yBottom)>('SetRect');
  return _SetRect(lprc, xLeft, yTop, xRight, yBottom);
}

/// The SetRectEmpty function creates an empty rectangle in which all
/// coordinates are set to zero.
///
/// ```c
/// BOOL SetRectEmpty(
///   LPRECT lprc
/// );
/// ```
/// {@category user32}
int SetRectEmpty(Pointer<RECT> lprc) {
  final _SetRectEmpty = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprc),
      int Function(Pointer<RECT> lprc)>('SetRectEmpty');
  return _SetRectEmpty(lprc);
}

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
int SetScrollInfo(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi, int redraw) {
  final _SetScrollInfo = _user32.lookupFunction<
      Int32 Function(
          IntPtr hwnd, Uint32 nBar, Pointer<SCROLLINFO> lpsi, Int32 redraw),
      int Function(int hwnd, int nBar, Pointer<SCROLLINFO> lpsi,
          int redraw)>('SetScrollInfo');
  return _SetScrollInfo(hwnd, nBar, lpsi, redraw);
}

/// Sets the colors for the specified display elements. Display elements
/// are the various parts of a window and the display that appear on the
/// system display screen.
///
/// ```c
/// BOOL SetSysColors(
///   int            cElements,
///   const INT      *lpaElements,
///   const COLORREF *lpaRgbValues
/// );
/// ```
/// {@category user32}
int SetSysColors(
    int cElements, Pointer<Int32> lpaElements, Pointer<Uint32> lpaRgbValues) {
  final _SetSysColors = _user32.lookupFunction<
      Int32 Function(Int32 cElements, Pointer<Int32> lpaElements,
          Pointer<Uint32> lpaRgbValues),
      int Function(int cElements, Pointer<Int32> lpaElements,
          Pointer<Uint32> lpaRgbValues)>('SetSysColors');
  return _SetSysColors(cElements, lpaElements, lpaRgbValues);
}

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
int SetTimer(int hWnd, int nIDEvent, int uElapse,
    Pointer<NativeFunction<TimerProc>> lpTimerFunc) {
  final _SetTimer = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, IntPtr nIDEvent, Uint32 uElapse,
          Pointer<NativeFunction<TimerProc>> lpTimerFunc),
      int Function(int hWnd, int nIDEvent, int uElapse,
          Pointer<NativeFunction<TimerProc>> lpTimerFunc)>('SetTimer');
  return _SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc);
}

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
int SetWindowLongPtr(int hWnd, int nIndex, int dwNewLong) {
  final _SetWindowLongPtr = _user32.lookupFunction<
      IntPtr Function(IntPtr hWnd, Uint32 nIndex, IntPtr dwNewLong),
      int Function(int hWnd, int nIndex, int dwNewLong)>('SetWindowLongPtrW');
  return _SetWindowLongPtr(hWnd, nIndex, dwNewLong);
}

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
///   UINT uFlags
/// );
/// ```
/// {@category user32}
int SetWindowPos(
    int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags) {
  final _SetWindowPos = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hWndInsertAfter, Int32 X, Int32 Y,
          Int32 cx, Int32 cy, Uint32 uFlags),
      int Function(int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy,
          int uFlags)>('SetWindowPos');
  return _SetWindowPos(hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags);
}

/// The SetWindowRgn function sets the window region of a window. The
/// window region determines the area within the window where the system
/// permits drawing. The system does not display any portion of a window
/// that lies outside of the window region
///
/// ```c
/// int SetWindowRgn(
///   HWND hWnd,
///   HRGN hRgn,
///   BOOL bRedraw
/// );
/// ```
/// {@category user32}
int SetWindowRgn(int hWnd, int hRgn, int bRedraw) {
  final _SetWindowRgn = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hRgn, Int32 bRedraw),
      int Function(int hWnd, int hRgn, int bRedraw)>('SetWindowRgn');
  return _SetWindowRgn(hWnd, hRgn, bRedraw);
}

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
int SetWindowText(int hWnd, Pointer<Utf16> lpString) {
  final _SetWindowText = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<Utf16> lpString),
      int Function(int hWnd, Pointer<Utf16> lpString)>('SetWindowTextW');
  return _SetWindowText(hWnd, lpString);
}

/// Displays or hides the cursor.
///
/// ```c
/// int ShowCursor(
///   BOOL bShow
/// );
/// ```
/// {@category user32}
int ShowCursor(int bShow) {
  final _ShowCursor = _user32.lookupFunction<Int32 Function(Int32 bShow),
      int Function(int bShow)>('ShowCursor');
  return _ShowCursor(bShow);
}

/// Shows or hides all pop-up windows owned by the specified window.
///
/// ```c
/// BOOL ShowOwnedPopups(
///   HWND hWnd,
///   BOOL fShow
/// );
/// ```
/// {@category user32}
int ShowOwnedPopups(int hWnd, int fShow) {
  final _ShowOwnedPopups = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 fShow),
      int Function(int hWnd, int fShow)>('ShowOwnedPopups');
  return _ShowOwnedPopups(hWnd, fShow);
}

/// Sets the specified window's show state.
///
/// ```c
/// BOOL ShowWindow(
///   HWND hWnd,
///   int  nCmdShow
/// );
/// ```
/// {@category user32}
int ShowWindow(int hWnd, int nCmdShow) {
  final _ShowWindow = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Uint32 nCmdShow),
      int Function(int hWnd, int nCmdShow)>('ShowWindow');
  return _ShowWindow(hWnd, nCmdShow);
}

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
int ShowWindowAsync(int hWnd, int nCmdShow) {
  final _ShowWindowAsync = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 nCmdShow),
      int Function(int hWnd, int nCmdShow)>('ShowWindowAsync');
  return _ShowWindowAsync(hWnd, nCmdShow);
}

/// Triggers a visual signal to indicate that a sound is playing.
///
/// ```c
/// BOOL SoundSentry();
/// ```
/// {@category user32}
int SoundSentry() {
  final _SoundSentry =
      _user32.lookupFunction<Int32 Function(), int Function()>('SoundSentry');
  return _SoundSentry();
}

/// The SubtractRect function determines the coordinates of a rectangle
/// formed by subtracting one rectangle from another.
///
/// ```c
/// BOOL SubtractRect(
///   LPRECT     lprcDst,
///   const RECT *lprcSrc1,
///   const RECT *lprcSrc2
/// );
/// ```
/// {@category user32}
int SubtractRect(
    Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2) {
  final _SubtractRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
          Pointer<RECT> lprcSrc2),
      int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
          Pointer<RECT> lprcSrc2)>('SubtractRect');
  return _SubtractRect(lprcDst, lprcSrc1, lprcSrc2);
}

/// Reverses or restores the meaning of the left and right mouse buttons.
///
/// ```c
/// BOOL SwapMouseButton(
///   BOOL fSwap
/// );
/// ```
/// {@category user32}
int SwapMouseButton(int fSwap) {
  final _SwapMouseButton = _user32.lookupFunction<Int32 Function(Int32 fSwap),
      int Function(int fSwap)>('SwapMouseButton');
  return _SwapMouseButton(fSwap);
}

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
int SystemParametersInfo(
    int uiAction, int uiParam, Pointer pvParam, int fWinIni) {
  final _SystemParametersInfo = _user32.lookupFunction<
      Int32 Function(
          Uint32 uiAction, Uint32 uiParam, Pointer pvParam, Uint32 fWinIni),
      int Function(int uiAction, int uiParam, Pointer pvParam,
          int fWinIni)>('SystemParametersInfoW');
  return _SystemParametersInfo(uiAction, uiParam, pvParam, fWinIni);
}

/// The TabbedTextOut function writes a character string at a specified
/// location, expanding tabs to the values specified in an array of
/// tab-stop positions. Text is written in the currently selected font,
/// background color, and text color.
///
/// ```c
/// LONG TabbedTextOutW(
///   HDC       hdc,
///   int       x,
///   int       y,
///   LPCWSTR   lpString,
///   int       chCount,
///   int       nTabPositions,
///   const INT *lpnTabStopPositions,
///   int       nTabOrigin
/// );
/// ```
/// {@category user32}
int TabbedTextOut(int hdc, int x, int y, Pointer<Utf16> lpString, int chCount,
    int nTabPositions, Pointer<Int32> lpnTabStopPositions, int nTabOrigin) {
  final _TabbedTextOut = _user32.lookupFunction<
      Int32 Function(
          IntPtr hdc,
          Int32 x,
          Int32 y,
          Pointer<Utf16> lpString,
          Int32 chCount,
          Int32 nTabPositions,
          Pointer<Int32> lpnTabStopPositions,
          Int32 nTabOrigin),
      int Function(
          int hdc,
          int x,
          int y,
          Pointer<Utf16> lpString,
          int chCount,
          int nTabPositions,
          Pointer<Int32> lpnTabStopPositions,
          int nTabOrigin)>('TabbedTextOutW');
  return _TabbedTextOut(hdc, x, y, lpString, chCount, nTabPositions,
      lpnTabStopPositions, nTabOrigin);
}

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding character or characters. The function translates the code
/// using the input language and physical keyboard layout identified by the
/// keyboard layout handle.
///
/// ```c
/// int ToAscii(
///   UINT       uVirtKey,
///   UINT       uScanCode,
///   const BYTE *lpKeyState,
///   LPWORD     lpChar,
///   UINT       uFlags
/// );
/// ```
/// {@category user32}
int ToAscii(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
    Pointer<Uint16> lpChar, int uFlags) {
  final _ToAscii = _user32.lookupFunction<
      Int32 Function(Uint32 uVirtKey, Uint32 uScanCode,
          Pointer<Uint8> lpKeyState, Pointer<Uint16> lpChar, Uint32 uFlags),
      int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
          Pointer<Uint16> lpChar, int uFlags)>('ToAscii');
  return _ToAscii(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags);
}

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding character or characters. The function translates the code
/// using the input language and physical keyboard layout identified by the
/// input locale identifier.
///
/// ```c
/// int ToAsciiEx(
///   UINT       uVirtKey,
///   UINT       uScanCode,
///   const BYTE *lpKeyState,
///   LPWORD     lpChar,
///   UINT       uFlags,
///   HKL        dwhkl
/// );
/// ```
/// {@category user32}
int ToAsciiEx(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
    Pointer<Uint16> lpChar, int uFlags, int dwhkl) {
  final _ToAsciiEx = _user32.lookupFunction<
      Int32 Function(
          Uint32 uVirtKey,
          Uint32 uScanCode,
          Pointer<Uint8> lpKeyState,
          Pointer<Uint16> lpChar,
          Uint32 uFlags,
          IntPtr dwhkl),
      int Function(int uVirtKey, int uScanCode, Pointer<Uint8> lpKeyState,
          Pointer<Uint16> lpChar, int uFlags, int dwhkl)>('ToAsciiEx');
  return _ToAsciiEx(uVirtKey, uScanCode, lpKeyState, lpChar, uFlags, dwhkl);
}

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding Unicode character or characters.
///
/// ```c
/// int ToUnicode(
///   UINT       wVirtKey,
///   UINT       wScanCode,
///   const BYTE *lpKeyState,
///   LPWSTR     pwszBuff,
///   int        cchBuff,
///   UINT       wFlags
/// );
/// ```
/// {@category user32}
int ToUnicode(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
    Pointer<Utf16> pwszBuff, int cchBuff, int wFlags) {
  final _ToUnicode = _user32.lookupFunction<
      Int32 Function(
          Uint32 wVirtKey,
          Uint32 wScanCode,
          Pointer<Uint8> lpKeyState,
          Pointer<Utf16> pwszBuff,
          Int32 cchBuff,
          Uint32 wFlags),
      int Function(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
          Pointer<Utf16> pwszBuff, int cchBuff, int wFlags)>('ToUnicode');
  return _ToUnicode(wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags);
}

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding Unicode character or characters.
///
/// ```c
/// int ToUnicodeEx(
///   UINT       wVirtKey,
///   UINT       wScanCode,
///   const BYTE *lpKeyState,
///   LPWSTR     pwszBuff,
///   int        cchBuff,
///   UINT       wFlags,
///   HKL        dwhkl
/// );
/// ```
/// {@category user32}
int ToUnicodeEx(int wVirtKey, int wScanCode, Pointer<Uint8> lpKeyState,
    Pointer<Utf16> pwszBuff, int cchBuff, int wFlags, int dwhkl) {
  final _ToUnicodeEx = _user32.lookupFunction<
      Int32 Function(
          Uint32 wVirtKey,
          Uint32 wScanCode,
          Pointer<Uint8> lpKeyState,
          Pointer<Utf16> pwszBuff,
          Int32 cchBuff,
          Uint32 wFlags,
          IntPtr dwhkl),
      int Function(
          int wVirtKey,
          int wScanCode,
          Pointer<Uint8> lpKeyState,
          Pointer<Utf16> pwszBuff,
          int cchBuff,
          int wFlags,
          int dwhkl)>('ToUnicodeEx');
  return _ToUnicodeEx(
      wVirtKey, wScanCode, lpKeyState, pwszBuff, cchBuff, wFlags, dwhkl);
}

/// Displays a shortcut menu at the specified location and tracks the
/// selection of items on the shortcut menu. The shortcut menu can appear
/// anywhere on the screen.
///
/// ```c
/// BOOL TrackPopupMenuEx(
///   HMENU hMenu,
///   UINT uFlags,
///   int x,
///   int y,
///   HWND hwnd,
///   TPMPARAMS *lptpm
/// );
/// ```
/// {@category user32}
int TrackPopupMenuEx(
    int hMenu, int uFlags, int x, int y, int hwnd, Pointer<TPMPARAMS> lptpm) {
  final _TrackPopupMenuEx = _user32.lookupFunction<
      Int32 Function(IntPtr hMenu, Uint32 uFlags, Int32 x, Int32 y, IntPtr hwnd,
          Pointer<TPMPARAMS> lptpm),
      int Function(int hMenu, int uFlags, int x, int y, int hwnd,
          Pointer<TPMPARAMS> lptpm)>('TrackPopupMenuEx');
  return _TrackPopupMenuEx(hMenu, uFlags, x, y, hwnd, lptpm);
}

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
int TranslateAccelerator(int hWnd, int hAccTable, Pointer<MSG> lpMsg) {
  final _TranslateAccelerator = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hAccTable, Pointer<MSG> lpMsg),
      int Function(int hWnd, int hAccTable,
          Pointer<MSG> lpMsg)>('TranslateAcceleratorW');
  return _TranslateAccelerator(hWnd, hAccTable, lpMsg);
}

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
int TranslateMessage(Pointer<MSG> lpMsg) {
  final _TranslateMessage = _user32.lookupFunction<
      Int32 Function(Pointer<MSG> lpMsg),
      int Function(Pointer<MSG> lpMsg)>('TranslateMessage');
  return _TranslateMessage(lpMsg);
}

/// The UnionRect function creates the union of two rectangles. The union
/// is the smallest rectangle that contains both source rectangles.
///
/// ```c
/// BOOL UnionRect(
///   LPRECT     lprcDst,
///   const RECT *lprcSrc1,
///   const RECT *lprcSrc2
/// );
/// ```
/// {@category user32}
int UnionRect(
    Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1, Pointer<RECT> lprcSrc2) {
  final _UnionRect = _user32.lookupFunction<
      Int32 Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
          Pointer<RECT> lprcSrc2),
      int Function(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc1,
          Pointer<RECT> lprcSrc2)>('UnionRect');
  return _UnionRect(lprcDst, lprcSrc1, lprcSrc2);
}

/// Unloads an input locale identifier (formerly called a keyboard layout).
///
/// ```c
/// BOOL UnloadKeyboardLayout(
///   HKL hkl
/// );
/// ```
/// {@category user32}
int UnloadKeyboardLayout(int hkl) {
  final _UnloadKeyboardLayout =
      _user32.lookupFunction<Int32 Function(IntPtr hkl), int Function(int hkl)>(
          'UnloadKeyboardLayout');
  return _UnloadKeyboardLayout(hkl);
}

/// Unregisters a window class, freeing the memory required for the class.
///
/// ```c
/// BOOL UnregisterClassW(
///   LPCWSTR   lpClassName,
///   HINSTANCE hInstance
/// );
/// ```
/// {@category user32}
int UnregisterClass(Pointer<Utf16> lpClassName, int hInstance) {
  final _UnregisterClass = _user32.lookupFunction<
      Int32 Function(Pointer<Utf16> lpClassName, IntPtr hInstance),
      int Function(
          Pointer<Utf16> lpClassName, int hInstance)>('UnregisterClassW');
  return _UnregisterClass(lpClassName, hInstance);
}

/// Frees a hot key previously registered by the calling thread.
///
/// ```c
/// BOOL UnregisterHotKey(
///   HWND hWnd,
///   int  id
/// );
/// ```
/// {@category user32}
int UnregisterHotKey(int hWnd, int id) {
  final _UnregisterHotKey = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Int32 id),
      int Function(int hWnd, int id)>('UnregisterHotKey');
  return _UnregisterHotKey(hWnd, id);
}

/// Unregisters the power setting notification.
///
/// ```c
/// BOOL UnregisterPowerSettingNotification(
///   HPOWERNOTIFY Handle
/// );
/// ```
/// {@category user32}
int UnregisterPowerSettingNotification(int Handle) {
  final _UnregisterPowerSettingNotification = _user32.lookupFunction<
      Int32 Function(IntPtr Handle),
      int Function(int Handle)>('UnregisterPowerSettingNotification');
  return _UnregisterPowerSettingNotification(Handle);
}

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
int UpdateWindow(int hWnd) {
  final _UpdateWindow = _user32.lookupFunction<Int32 Function(IntPtr hWnd),
      int Function(int hWnd)>('UpdateWindow');
  return _UpdateWindow(hWnd);
}

/// The ValidateRect function validates the client area within a rectangle
/// by removing the rectangle from the update region of the specified
/// window.
///
/// ```c
/// BOOL ValidateRect(
///   HWND       hWnd,
///   const RECT *lpRect
/// );
/// ```
/// {@category user32}
int ValidateRect(int hWnd, Pointer<RECT> lpRect) {
  final _ValidateRect = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<RECT> lpRect),
      int Function(int hWnd, Pointer<RECT> lpRect)>('ValidateRect');
  return _ValidateRect(hWnd, lpRect);
}

/// The ValidateRgn function validates the client area within a region by
/// removing the region from the current update region of the specified
/// window.
///
/// ```c
/// BOOL ValidateRgn(
///   HWND hWnd,
///   HRGN hRgn
/// );
/// ```
/// {@category user32}
int ValidateRgn(int hWnd, int hRgn) {
  final _ValidateRgn = _user32.lookupFunction<
      Int32 Function(IntPtr hWnd, IntPtr hRgn),
      int Function(int hWnd, int hRgn)>('ValidateRgn');
  return _ValidateRgn(hWnd, hRgn);
}

/// Translates a character to the corresponding virtual-key code and shift
/// state for the current keyboard.
///
/// ```c
/// SHORT VkKeyScanW(
///   WCHAR ch
/// );
/// ```
/// {@category user32}
int VkKeyScan(int ch) {
  final _VkKeyScan =
      _user32.lookupFunction<Int16 Function(Uint16 ch), int Function(int ch)>(
          'VkKeyScanW');
  return _VkKeyScan(ch);
}

/// Translates a character to the corresponding virtual-key code and shift
/// state. The function translates the character using the input language
/// and physical keyboard layout identified by the input locale identifier.
///
/// ```c
/// SHORT VkKeyScanExW(
///   WCHAR ch,
///   HKL   dwhkl
/// );
/// ```
/// {@category user32}
int VkKeyScanEx(int ch, int dwhkl) {
  final _VkKeyScanEx = _user32.lookupFunction<
      Int16 Function(Uint16 ch, IntPtr dwhkl),
      int Function(int ch, int dwhkl)>('VkKeyScanExW');
  return _VkKeyScanEx(ch, dwhkl);
}

/// Yields control to other threads when a thread has no other messages in
/// its message queue. The WaitMessage function suspends the thread and
/// does not return until a new message is placed in the thread's message
/// queue.
///
/// ```c
/// BOOL WaitMessage();
/// ```
/// {@category user32}
int WaitMessage() {
  final _WaitMessage =
      _user32.lookupFunction<Int32 Function(), int Function()>('WaitMessage');
  return _WaitMessage();
}

/// The WindowFromDC function returns a handle to the window associated
/// with the specified display device context (DC). Output functions that
/// use the specified device context draw into this window.
///
/// ```c
/// HWND WindowFromDC(
///   HDC hDC
/// );
/// ```
/// {@category user32}
int WindowFromDC(int hDC) {
  final _WindowFromDC = _user32.lookupFunction<IntPtr Function(IntPtr hDC),
      int Function(int hDC)>('WindowFromDC');
  return _WindowFromDC(hDC);
}

/// Retrieves a handle to the window that contains the specified physical
/// point.
///
/// ```c
/// HWND WindowFromPhysicalPoint(
///   POINT Point
/// );
/// ```
/// {@category user32}
int WindowFromPhysicalPoint(POINT Point) {
  final _WindowFromPhysicalPoint = _user32.lookupFunction<
      IntPtr Function(POINT Point),
      int Function(POINT Point)>('WindowFromPhysicalPoint');
  return _WindowFromPhysicalPoint(Point);
}

/// Retrieves a handle to the window that contains the specified point.
///
/// ```c
/// HWND WindowFromPoint(
///   POINT Point
/// );
/// ```
/// {@category user32}
int WindowFromPoint(POINT Point) {
  final _WindowFromPoint = _user32.lookupFunction<IntPtr Function(POINT Point),
      int Function(POINT Point)>('WindowFromPoint');
  return _WindowFromPoint(Point);
}
