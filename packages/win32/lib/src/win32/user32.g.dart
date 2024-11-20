// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../_internal/user32.g.dart';
import '../allocator.dart';
import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Sets the input locale identifier (formerly called the keyboard layout
/// handle) for the calling thread or the current process.
///
/// The input locale identifier specifies a locale as well as the physical
/// layout of the keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-activatekeyboardlayout>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ActivateKeyboardLayout(int hkl, ACTIVATE_KEYBOARD_LAYOUT_FLAGS flags) =>
    ActivateKeyboardLayout_Wrapper(hkl, flags);

/// Places the given window in the system-maintained clipboard format listener
/// list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-addclipboardformatlistener>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AddClipboardFormatListener(int hwnd) =>
    AddClipboardFormatListener_Wrapper(hwnd) != FALSE;

/// Calculates the required size of the window rectangle, based on the desired
/// client-rectangle size.
///
/// The window rectangle can then be passed to the CreateWindow function to
/// create a window whose client area is the desired size.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AdjustWindowRect(Pointer<RECT> lpRect, WINDOW_STYLE dwStyle, bool bMenu) =>
    AdjustWindowRect_Wrapper(lpRect, dwStyle, bMenu ? TRUE : FALSE) != FALSE;

/// Calculates the required size of the window rectangle, based on the desired
/// size of the client rectangle.
///
/// The window rectangle can then be passed to the CreateWindowEx function to
/// create a window whose client area is the desired size.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrectex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AdjustWindowRectEx(
  Pointer<RECT> lpRect,
  WINDOW_STYLE dwStyle,
  bool bMenu,
  WINDOW_EX_STYLE dwExStyle,
) =>
    AdjustWindowRectEx_Wrapper(
      lpRect,
      dwStyle,
      bMenu ? TRUE : FALSE,
      dwExStyle,
    ) !=
    FALSE;

/// Calculates the required size of the window rectangle, based on the desired
/// size of the client rectangle and the provided DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrectexfordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AdjustWindowRectExForDpi(
  Pointer<RECT> lpRect,
  WINDOW_STYLE dwStyle,
  bool bMenu,
  WINDOW_EX_STYLE dwExStyle,
  int dpi,
) =>
    AdjustWindowRectExForDpi_Wrapper(
      lpRect,
      dwStyle,
      bMenu ? TRUE : FALSE,
      dwExStyle,
      dpi,
    ) !=
    FALSE;

/// Enables the specified process to set the foreground window using the
/// SetForegroundWindow function.
///
/// The calling process must already be able to set the foreground window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-allowsetforegroundwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AllowSetForegroundWindow(int dwProcessId) =>
    AllowSetForegroundWindow_Wrapper(dwProcessId) != FALSE;

/// Enables you to produce special effects when showing or hiding windows.
///
/// There are four types of animation: roll, slide, collapse or expand, and
/// alpha-blended fade.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-animatewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AnimateWindow(int hWnd, int dwTime, ANIMATE_WINDOW_FLAGS dwFlags) =>
    AnimateWindow_Wrapper(hWnd, dwTime, dwFlags) != FALSE;

/// Indicates whether an owned, visible, top-level pop-up, or overlapped window
/// exists on the screen.
///
/// The function searches the entire screen, not just the calling application's
/// client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-anypopup>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AnyPopup() => _AnyPopup() != FALSE;

@Native<BOOL Function()>(symbol: 'AnyPopup')
external int _AnyPopup();

/// Appends a new item to the end of the specified menu bar, drop-down menu,
/// submenu, or shortcut menu.
///
/// You can use this function to specify the content, appearance, and behavior
/// of the menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-appendmenuw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AppendMenu(
  int hMenu,
  MENU_ITEM_FLAGS uFlags,
  int uIDNewItem,
  PCWSTR? lpNewItem,
) =>
    AppendMenuW_Wrapper(hMenu, uFlags, uIDNewItem, lpNewItem ?? nullptr) !=
    FALSE;

/// Determines whether two DPI_AWARENESS_CONTEXT values are identical.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-aredpiawarenesscontextsequal>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AreDpiAwarenessContextsEqual(int dpiContextA, int dpiContextB) =>
    _AreDpiAwarenessContextsEqual(dpiContextA, dpiContextB) != FALSE;

@Native<BOOL Function(DPI_AWARENESS_CONTEXT, DPI_AWARENESS_CONTEXT)>(
  symbol: 'AreDpiAwarenessContextsEqual',
)
external int _AreDpiAwarenessContextsEqual(int dpiContextA, int dpiContextB);

/// Arranges all the minimized (iconic) child windows of the specified parent
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-arrangeiconicwindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ArrangeIconicWindows(int hWnd) => ArrangeIconicWindows_Wrapper(hWnd);

/// Attaches or detaches the input processing mechanism of one thread to that of
/// another thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-attachthreadinput>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AttachThreadInput(int idAttach, int idAttachTo, bool fAttach) =>
    _AttachThreadInput(idAttach, idAttachTo, fAttach ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(Uint32, Uint32, BOOL)>(symbol: 'AttachThreadInput')
external int _AttachThreadInput(int idAttach, int idAttachTo, int fAttach);

/// Allocates memory for a multiple-window- position structure and returns the
/// handle to the structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-begindeferwindowpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int BeginDeferWindowPos(int nNumWindows) =>
    BeginDeferWindowPos_Wrapper(nNumWindows);

/// Prepares the specified window for painting and fills a PAINTSTRUCT structure
/// with information about the painting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-beginpaint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int BeginPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _BeginPaint(hWnd, lpPaint);

@Native<HDC Function(HWND, Pointer<PAINTSTRUCT>)>(symbol: 'BeginPaint')
external int _BeginPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

/// Blocks keyboard and mouse input events from reaching applications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-blockinput>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool BlockInput(bool fBlockIt) =>
    BlockInput_Wrapper(fBlockIt ? TRUE : FALSE) != FALSE;

/// Brings the specified window to the top of the Z order.
///
/// If the window is a top-level window, it is activated. If the window is a
/// child window, the top-level parent window associated with the child window
/// is activated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-bringwindowtotop>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool BringWindowToTop(int hWnd) => BringWindowToTop_Wrapper(hWnd) != FALSE;

/// Sends a message to the specified recipients.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-broadcastsystemmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int BroadcastSystemMessage(
  BROADCAST_SYSTEM_MESSAGE_FLAGS flags,
  Pointer<Uint32>? lpInfo,
  int msg,
  int wParam,
  int lParam,
) => BroadcastSystemMessageW_Wrapper(
  flags,
  lpInfo ?? nullptr,
  msg,
  wParam,
  lParam,
);

/// Sends a message to the specified recipients.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-broadcastsystemmessageexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int BroadcastSystemMessageEx(
  BROADCAST_SYSTEM_MESSAGE_FLAGS flags,
  Pointer<Uint32>? lpInfo,
  int msg,
  int wParam,
  int lParam,
  Pointer<BSMINFO>? pbsmInfo,
) => BroadcastSystemMessageExW_Wrapper(
  flags,
  lpInfo ?? nullptr,
  msg,
  wParam,
  lParam,
  pbsmInfo ?? nullptr,
);

/// Calculates an appropriate pop-up window position using the specified anchor
/// point, pop-up window size, flags, and the optional exclude rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-calculatepopupwindowposition>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CalculatePopupWindowPosition(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  int flags,
  Pointer<RECT>? excludeRect,
  Pointer<RECT> popupWindowPosition,
) =>
    CalculatePopupWindowPosition_Wrapper(
      anchorPoint,
      windowSize,
      flags,
      excludeRect ?? nullptr,
      popupWindowPosition,
    ) !=
    FALSE;

/// Passes the specified message and hook code to the hook procedures associated
/// with the WH_SYSMSGFILTER and WH_MSGFILTER hooks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callmsgfilterw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CallMsgFilter(Pointer<MSG> lpMsg, int nCode) =>
    _CallMsgFilter(lpMsg, nCode) != FALSE;

@Native<BOOL Function(Pointer<MSG>, Int32)>(symbol: 'CallMsgFilterW')
external int _CallMsgFilter(Pointer<MSG> lpMsg, int nCode);

/// Passes the hook information to the next hook procedure in the current hook
/// chain.
///
/// A hook procedure can call this function either before or after processing
/// the hook information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callnexthookex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CallNextHookEx(int? hhk, int nCode, int wParam, int lParam) =>
    _CallNextHookEx(hhk ?? NULL, nCode, wParam, lParam);

@Native<LRESULT Function(HHOOK, Int32, WPARAM, LPARAM)>(
  symbol: 'CallNextHookEx',
)
external int _CallNextHookEx(int hhk, int nCode, int wParam, int lParam);

/// Passes message information to the specified window procedure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callwindowprocw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CallWindowProc(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  int hWnd,
  int msg,
  int wParam,
  int lParam,
) => _CallWindowProc(lpPrevWndFunc, hWnd, msg, wParam, lParam);

@Native<
  LRESULT Function(
    Pointer<NativeFunction<WNDPROC>>,
    HWND,
    Uint32,
    WPARAM,
    LPARAM,
  )
>(symbol: 'CallWindowProcW')
external int _CallWindowProc(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  int hWnd,
  int msg,
  int wParam,
  int lParam,
);

/// Cascades the specified child windows of the specified parent window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-cascadewindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CascadeWindows(
  int? hwndParent,
  CASCADE_WINDOWS_HOW wHow,
  Pointer<RECT>? lpRect,
  int cKids,
  Pointer<HWND>? lpKids,
) => CascadeWindows_Wrapper(
  hwndParent ?? NULL,
  wHow,
  lpRect ?? nullptr,
  cKids,
  lpKids ?? nullptr,
);

/// Removes a specified window from the chain of clipboard viewers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changeclipboardchain>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ChangeClipboardChain(int hWndRemove, int hWndNewNext) =>
    _ChangeClipboardChain(hWndRemove, hWndNewNext) != FALSE;

@Native<BOOL Function(HWND, HWND)>(symbol: 'ChangeClipboardChain')
external int _ChangeClipboardChain(int hWndRemove, int hWndNewNext);

/// Changes the settings of the default display device to the specified graphics
/// mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changedisplaysettingsw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DISP_CHANGE ChangeDisplaySettings(
  Pointer<DEVMODE>? lpDevMode,
  CDS_TYPE dwFlags,
) => DISP_CHANGE(_ChangeDisplaySettings(lpDevMode ?? nullptr, dwFlags));

@Native<Int32 Function(Pointer<DEVMODE>, Uint32)>(
  symbol: 'ChangeDisplaySettingsW',
)
external int _ChangeDisplaySettings(Pointer<DEVMODE> lpDevMode, int dwFlags);

/// Changes the settings of the specified display device to the specified
/// graphics mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changedisplaysettingsexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DISP_CHANGE ChangeDisplaySettingsEx(
  PCWSTR? lpszDeviceName,
  Pointer<DEVMODE>? lpDevMode,
  CDS_TYPE dwflags,
  Pointer? lParam,
) => DISP_CHANGE(
  _ChangeDisplaySettingsEx(
    lpszDeviceName ?? nullptr,
    lpDevMode ?? nullptr,
    NULL,
    dwflags,
    lParam ?? nullptr,
  ),
);

@Native<Int32 Function(PCWSTR, Pointer<DEVMODE>, HWND, Uint32, Pointer)>(
  symbol: 'ChangeDisplaySettingsExW',
)
external int _ChangeDisplaySettingsEx(
  PCWSTR lpszDeviceName,
  Pointer<DEVMODE> lpDevMode,
  int hwnd,
  int dwflags,
  Pointer lParam,
);

/// Adds or removes a message from the User Interface Privilege Isolation (UIPI)
/// message filter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changewindowmessagefilter>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ChangeWindowMessageFilter(
  int message,
  CHANGE_WINDOW_MESSAGE_FILTER_FLAGS dwFlag,
) => ChangeWindowMessageFilter_Wrapper(message, dwFlag) != FALSE;

/// Modifies the User Interface Privilege Isolation (UIPI) message filter for a
/// specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changewindowmessagefilterex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ChangeWindowMessageFilterEx(
  int hwnd,
  int message,
  WINDOW_MESSAGE_FILTER_ACTION action,
  Pointer<CHANGEFILTERSTRUCT>? pChangeFilterStruct,
) =>
    ChangeWindowMessageFilterEx_Wrapper(
      hwnd,
      message,
      action,
      pChangeFilterStruct ?? nullptr,
    ) !=
    FALSE;

/// Changes the check state of a button control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-checkdlgbutton>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CheckDlgButton(int hDlg, int nIDButton, DLG_BUTTON_CHECK_STATE uCheck) =>
    CheckDlgButton_Wrapper(hDlg, nIDButton, uCheck) != FALSE;

/// Adds a check mark to (checks) a specified radio button in a group and
/// removes a check mark from (clears) all other radio buttons in the group.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-checkradiobutton>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CheckRadioButton(
  int hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton,
) =>
    CheckRadioButton_Wrapper(
      hDlg,
      nIDFirstButton,
      nIDLastButton,
      nIDCheckButton,
    ) !=
    FALSE;

/// Determines which, if any, of the child windows belonging to a parent window
/// contains the specified point.
///
/// The search is restricted to immediate child windows. Grandchildren, and
/// deeper descendant windows are not searched.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-childwindowfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ChildWindowFromPoint(int hWndParent, POINT point) =>
    _ChildWindowFromPoint(hWndParent, point);

@Native<HWND Function(HWND, POINT)>(symbol: 'ChildWindowFromPoint')
external int _ChildWindowFromPoint(int hWndParent, POINT point);

/// Determines which, if any, of the child windows belonging to the specified
/// parent window contains the specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-childwindowfrompointex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ChildWindowFromPointEx(int hwnd, POINT pt, CWP_FLAGS flags) =>
    _ChildWindowFromPointEx(hwnd, pt, flags);

@Native<HWND Function(HWND, POINT, Uint32)>(symbol: 'ChildWindowFromPointEx')
external int _ChildWindowFromPointEx(int hwnd, POINT pt, int flags);

/// Converts the client-area coordinates of a specified point to screen
/// coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clienttoscreen>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ClientToScreen(int hWnd, Pointer<POINT> lpPoint) =>
    _ClientToScreen(hWnd, lpPoint) != FALSE;

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'ClientToScreen')
external int _ClientToScreen(int hWnd, Pointer<POINT> lpPoint);

/// Confines the cursor to a rectangular area on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clipcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ClipCursor(Pointer<RECT>? lpRect) =>
    ClipCursor_Wrapper(lpRect ?? nullptr) != FALSE;

/// Closes the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closeclipboard>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CloseClipboard() => CloseClipboard_Wrapper() != FALSE;

/// Closes resources associated with a gesture information handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closegestureinfohandle>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CloseGestureInfoHandle(int hGestureInfo) =>
    CloseGestureInfoHandle_Wrapper(hGestureInfo) != FALSE;

/// Closes a touch input handle, frees process memory associated with it, and
/// invalidates the handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closetouchinputhandle>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CloseTouchInputHandle(int hTouchInput) =>
    CloseTouchInputHandle_Wrapper(hTouchInput) != FALSE;

/// Minimizes (but does not destroy) the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CloseWindow(int hWnd) => CloseWindow_Wrapper(hWnd) != FALSE;

/// Copies the specified accelerator table.
///
/// This function is used to obtain the accelerator-table data that corresponds
/// to an accelerator-table handle, or to determine the size of the
/// accelerator-table data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyacceleratortablew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CopyAcceleratorTable(
  int hAccelSrc,
  Pointer<ACCEL>? lpAccelDst,
  int cAccelEntries,
) => _CopyAcceleratorTable(hAccelSrc, lpAccelDst ?? nullptr, cAccelEntries);

@Native<Int32 Function(HACCEL, Pointer<ACCEL>, Int32)>(
  symbol: 'CopyAcceleratorTableW',
)
external int _CopyAcceleratorTable(
  int hAccelSrc,
  Pointer<ACCEL> lpAccelDst,
  int cAccelEntries,
);

/// Copies the specified icon from another module to the current module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyicon>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CopyIcon(int hIcon) => CopyIcon_Wrapper(hIcon);

/// Creates a new image (icon, cursor, or bitmap) and copies the attributes of
/// the specified image to the new one.
///
/// If necessary, the function stretches the bits to fit the desired size of the
/// new image.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyimage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CopyImage(int h, GDI_IMAGE_TYPE type, int cx, int cy, IMAGE_FLAGS flags) =>
    CopyImage_Wrapper(h, type, cx, cy, flags);

/// Copies the coordinates of one rectangle to another.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc) =>
    _CopyRect(lprcDst, lprcSrc) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>)>(symbol: 'CopyRect')
external int _CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc);

/// Retrieves the number of different data formats currently on the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-countclipboardformats>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CountClipboardFormats() => CountClipboardFormats_Wrapper();

/// Creates an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createacceleratortablew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateAcceleratorTable(Pointer<ACCEL> paccel, int cAccel) =>
    CreateAcceleratorTableW_Wrapper(paccel, cAccel);

/// Creates a new shape for the system caret and assigns ownership of the caret
/// to the specified window.
///
/// The caret shape can be a line, a block, or a bitmap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createcaret>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CreateCaret(int hWnd, int? hBitmap, int nWidth, int nHeight) =>
    CreateCaret_Wrapper(hWnd, hBitmap ?? NULL, nWidth, nHeight) != FALSE;

/// Creates a cursor having the specified size, bit patterns, and hot spot.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateCursor(
  int? hInst,
  int xHotSpot,
  int yHotSpot,
  int nWidth,
  int nHeight,
  Pointer pvANDPlane,
  Pointer pvXORPlane,
) => CreateCursor_Wrapper(
  hInst ?? NULL,
  xHotSpot,
  yHotSpot,
  nWidth,
  nHeight,
  pvANDPlane,
  pvXORPlane,
);

/// Creates a new desktop, associates it with the current window station of the
/// calling process, and assigns it to the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdesktopw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateDesktop(
  PCWSTR lpszDesktop,
  DESKTOP_CONTROL_FLAGS dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? lpsa,
) => CreateDesktopW_Wrapper(
  lpszDesktop,
  nullptr,
  nullptr,
  dwFlags,
  dwDesiredAccess,
  lpsa ?? nullptr,
);

/// Creates a new desktop with the specified heap, associates it with the
/// current window station of the calling process, and assigns it to the calling
/// thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdesktopexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateDesktopEx(
  PCWSTR lpszDesktop,
  DESKTOP_CONTROL_FLAGS dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? lpsa,
  int ulHeapSize,
) => CreateDesktopExW_Wrapper(
  lpszDesktop,
  nullptr,
  nullptr,
  dwFlags,
  dwDesiredAccess,
  lpsa ?? nullptr,
  ulHeapSize,
  nullptr,
);

/// Creates a modeless dialog box from a dialog box template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdialogindirectparamw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateDialogIndirectParam(
  int? hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  int? hWndParent,
  Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
  int dwInitParam,
) => CreateDialogIndirectParamW_Wrapper(
  hInstance ?? NULL,
  lpTemplate,
  hWndParent ?? NULL,
  lpDialogFunc ?? nullptr,
  dwInitParam,
);

/// Creates an icon that has the specified size, colors, and bit patterns.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createicon>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateIcon(
  int? hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
) => CreateIcon_Wrapper(
  hInstance ?? NULL,
  nWidth,
  nHeight,
  cPlanes,
  cBitsPixel,
  lpbANDbits,
  lpbXORbits,
);

/// Creates an icon or cursor from resource bits describing the icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconfromresource>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateIconFromResource(
  Pointer<Uint8> presbits,
  int dwResSize,
  bool fIcon,
  int dwVer,
) => CreateIconFromResource_Wrapper(
  presbits,
  dwResSize,
  fIcon ? TRUE : FALSE,
  dwVer,
);

/// Creates an icon or cursor from resource bits describing the icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconfromresourceex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateIconFromResourceEx(
  Pointer<Uint8> presbits,
  int dwResSize,
  bool fIcon,
  int dwVer,
  int cxDesired,
  int cyDesired,
  IMAGE_FLAGS flags,
) => CreateIconFromResourceEx_Wrapper(
  presbits,
  dwResSize,
  fIcon ? TRUE : FALSE,
  dwVer,
  cxDesired,
  cyDesired,
  flags,
);

/// Creates an icon or cursor from an ICONINFO structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconindirect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateIconIndirect(Pointer<ICONINFO> piconinfo) =>
    CreateIconIndirect_Wrapper(piconinfo);

/// Creates a multiple-document interface (MDI) child window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createmdiwindoww>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateMDIWindow(
  PCWSTR lpClassName,
  PCWSTR lpWindowName,
  WINDOW_STYLE dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int? hWndParent,
  int? hInstance,
  int lParam,
) => CreateMDIWindowW_Wrapper(
  lpClassName,
  lpWindowName,
  dwStyle,
  x,
  y,
  nWidth,
  nHeight,
  hWndParent ?? NULL,
  hInstance ?? NULL,
  lParam,
);

/// Creates a menu.
///
/// The menu is initially empty, but it can be filled with menu items by using
/// the InsertMenuItem, AppendMenu, and InsertMenu functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateMenu() => CreateMenu_Wrapper();

/// Creates a drop-down menu, submenu, or shortcut menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createpopupmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreatePopupMenu() => CreatePopupMenu_Wrapper();

/// Creates an overlapped, pop-up, or child window with an extended window
/// style; otherwise, this function is identical to the CreateWindow function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindowexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateWindowEx(
  WINDOW_EX_STYLE dwExStyle,
  PCWSTR? lpClassName,
  PCWSTR? lpWindowName,
  WINDOW_STYLE dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  int? hWndParent,
  int? hMenu,
  int? hInstance,
  Pointer? lpParam,
) => CreateWindowExW_Wrapper(
  dwExStyle,
  lpClassName ?? nullptr,
  lpWindowName ?? nullptr,
  dwStyle,
  x,
  y,
  nWidth,
  nHeight,
  hWndParent ?? NULL,
  hMenu ?? NULL,
  hInstance ?? NULL,
  lpParam ?? nullptr,
);

/// Creates a window station object, associates it with the calling process, and
/// assigns it to the current session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindowstationw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int CreateWindowStation(
  PCWSTR? lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? lpsa,
) => CreateWindowStationW_Wrapper(
  lpwinsta ?? nullptr,
  dwFlags,
  dwDesiredAccess,
  lpsa ?? nullptr,
);

/// Updates the specified multiple-window — position structure for the specified
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DeferWindowPos(
  int hWinPosInfo,
  int hWnd,
  int? hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  SET_WINDOW_POS_FLAGS uFlags,
) => DeferWindowPos_Wrapper(
  hWinPosInfo,
  hWnd,
  hWndInsertAfter ?? NULL,
  x,
  y,
  cx,
  cy,
  uFlags,
);

/// Provides default processing for any window message that the window procedure
/// of a multiple-document interface (MDI) child window does not process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defmdichildprocw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DefMDIChildProc(int hWnd, int uMsg, int wParam, int lParam) =>
    _DefMDIChildProc(hWnd, uMsg, wParam, lParam);

@Native<LRESULT Function(HWND, Uint32, WPARAM, LPARAM)>(
  symbol: 'DefMDIChildProcW',
)
external int _DefMDIChildProc(int hWnd, int uMsg, int wParam, int lParam);

/// Verifies that the size of the RAWINPUTHEADER structure is correct.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defrawinputproc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DefRawInputProc(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  int nInput,
  int cbSizeHeader,
) => _DefRawInputProc(paRawInput, nInput, cbSizeHeader);

@Native<LRESULT Function(Pointer<Pointer<RAWINPUT>>, Int32, Uint32)>(
  symbol: 'DefRawInputProc',
)
external int _DefRawInputProc(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  int nInput,
  int cbSizeHeader,
);

/// Calls the default window procedure to provide default processing for any
/// window messages that an application does not process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defwindowprocw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DefWindowProc(int hWnd, int msg, int wParam, int lParam) =>
    _DefWindowProc(hWnd, msg, wParam, lParam);

@Native<LRESULT Function(HWND, Uint32, WPARAM, LPARAM)>(
  symbol: 'DefWindowProcW',
)
external int _DefWindowProc(int hWnd, int msg, int wParam, int lParam);

/// Deletes an item from the specified menu.
///
/// If the menu item opens a menu or submenu, this function destroys the handle
/// to the menu or submenu and frees the memory used by the menu or submenu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deletemenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DeleteMenu(int hMenu, int uPosition, MENU_ITEM_FLAGS uFlags) =>
    DeleteMenu_Wrapper(hMenu, uPosition, uFlags) != FALSE;

/// Destroys an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyacceleratortable>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyAcceleratorTable(int hAccel) =>
    _DestroyAcceleratorTable(hAccel) != FALSE;

@Native<BOOL Function(HACCEL)>(symbol: 'DestroyAcceleratorTable')
external int _DestroyAcceleratorTable(int hAccel);

/// Destroys the caret's current shape, frees the caret from the window, and
/// removes the caret from the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycaret>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyCaret() => DestroyCaret_Wrapper() != FALSE;

/// Destroys a cursor and frees any memory the cursor occupied.
///
/// Do not use this function to destroy a shared cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyCursor(int hCursor) => DestroyCursor_Wrapper(hCursor) != FALSE;

/// Destroys an icon and frees any memory the icon occupied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyicon>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyIcon(int hIcon) => DestroyIcon_Wrapper(hIcon) != FALSE;

/// Destroys the specified menu and frees any memory that the menu occupies.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroymenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyMenu(int hMenu) => DestroyMenu_Wrapper(hMenu) != FALSE;

/// Destroys the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroywindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyWindow(int hWnd) => DestroyWindow_Wrapper(hWnd) != FALSE;

/// Creates a modal dialog box from a dialog box template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dialogboxindirectparamw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DialogBoxIndirectParam(
  int? hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  int? hWndParent,
  Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
  int dwInitParam,
) => DialogBoxIndirectParamW_Wrapper(
  hInstance ?? NULL,
  hDialogTemplate,
  hWndParent ?? NULL,
  lpDialogFunc ?? nullptr,
  dwInitParam,
);

/// Disables the window ghosting feature for the calling GUI process.
///
/// Window ghosting is a Windows Manager feature that lets the user minimize,
/// move, or close the main window of an application that is not responding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-disableprocesswindowsghosting>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void DisableProcessWindowsGhosting() => _DisableProcessWindowsGhosting();

@Native<Void Function()>(symbol: 'DisableProcessWindowsGhosting')
external void _DisableProcessWindowsGhosting();

/// Dispatches a message to a window procedure.
///
/// It is typically used to dispatch a message retrieved by the GetMessage
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dispatchmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DispatchMessage(Pointer<MSG> lpMsg) => _DispatchMessage(lpMsg);

@Native<LRESULT Function(Pointer<MSG>)>(symbol: 'DispatchMessageW')
external int _DispatchMessage(Pointer<MSG> lpMsg);

/// Captures the mouse and tracks its movement until the user releases the left
/// button, presses the ESC key, or moves the mouse outside the drag rectangle
/// around the specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dragdetect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DragDetect(int hwnd, POINT pt) => _DragDetect(hwnd, pt) != FALSE;

@Native<BOOL Function(HWND, POINT)>(symbol: 'DragDetect')
external int _DragDetect(int hwnd, POINT pt);

/// Animates the caption of a window to indicate the opening of an icon or the
/// minimizing or maximizing of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawanimatedrects>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawAnimatedRects(
  int? hwnd,
  int idAni,
  Pointer<RECT> lprcFrom,
  Pointer<RECT> lprcTo,
) => _DrawAnimatedRects(hwnd ?? NULL, idAni, lprcFrom, lprcTo) != FALSE;

@Native<BOOL Function(HWND, Int32, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'DrawAnimatedRects',
)
external int _DrawAnimatedRects(
  int hwnd,
  int idAni,
  Pointer<RECT> lprcFrom,
  Pointer<RECT> lprcTo,
);

/// Draws a window caption.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawcaption>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawCaption(
  int hwnd,
  int hdc,
  Pointer<RECT> lprect,
  DRAW_CAPTION_FLAGS flags,
) => _DrawCaption(hwnd, hdc, lprect, flags) != FALSE;

@Native<BOOL Function(HWND, HDC, Pointer<RECT>, Uint32)>(symbol: 'DrawCaption')
external int _DrawCaption(int hwnd, int hdc, Pointer<RECT> lprect, int flags);

/// Draws one or more edges of rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawedge>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawEdge(
  int hdc,
  Pointer<RECT> qrc,
  DRAWEDGE_FLAGS edge,
  DRAW_EDGE_FLAGS grfFlags,
) => _DrawEdge(hdc, qrc, edge, grfFlags) != FALSE;

@Native<BOOL Function(HDC, Pointer<RECT>, Uint32, Uint32)>(symbol: 'DrawEdge')
external int _DrawEdge(int hdc, Pointer<RECT> qrc, int edge, int grfFlags);

/// Draws a rectangle in the style used to indicate that the rectangle has the
/// focus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawfocusrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawFocusRect(int hDC, Pointer<RECT> lprc) =>
    _DrawFocusRect(hDC, lprc) != FALSE;

@Native<BOOL Function(HDC, Pointer<RECT>)>(symbol: 'DrawFocusRect')
external int _DrawFocusRect(int hDC, Pointer<RECT> lprc);

/// Draws a frame control of the specified type and style.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawframecontrol>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawFrameControl(
  int param0,
  Pointer<RECT> param1,
  DFC_TYPE param2,
  DFCS_STATE param3,
) => _DrawFrameControl(param0, param1, param2, param3) != FALSE;

@Native<BOOL Function(HDC, Pointer<RECT>, Uint32, Uint32)>(
  symbol: 'DrawFrameControl',
)
external int _DrawFrameControl(
  int param0,
  Pointer<RECT> param1,
  int param2,
  int param3,
);

/// Draws an icon or cursor into the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawicon>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawIcon(int hDC, int x, int y, int hIcon) =>
    DrawIcon_Wrapper(hDC, x, y, hIcon) != FALSE;

/// Displays an image and applies a visual effect to indicate a state, such as a
/// disabled or default state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawstatew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawState(
  int hdc,
  int? hbrFore,
  Pointer<NativeFunction<DRAWSTATEPROC>>? qfnCallBack,
  int lData,
  int wData,
  int x,
  int y,
  int cx,
  int cy,
  DRAWSTATE_FLAGS uFlags,
) =>
    _DrawState(
      hdc,
      hbrFore ?? NULL,
      qfnCallBack ?? nullptr,
      lData,
      wData,
      x,
      y,
      cx,
      cy,
      uFlags,
    ) !=
    FALSE;

@Native<
  BOOL Function(
    HDC,
    HBRUSH,
    Pointer<NativeFunction<DRAWSTATEPROC>>,
    LPARAM,
    WPARAM,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>(symbol: 'DrawStateW')
external int _DrawState(
  int hdc,
  int hbrFore,
  Pointer<NativeFunction<DRAWSTATEPROC>> qfnCallBack,
  int lData,
  int wData,
  int x,
  int y,
  int cx,
  int cy,
  int uFlags,
);

/// Draws formatted text in the specified rectangle.
///
/// It formats the text according to the specified method (expanding tabs,
/// justifying characters, breaking lines, and so forth).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawtextw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DrawText(
  int hdc,
  PCWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  DRAW_TEXT_FORMAT format,
) => _DrawText(hdc, lpchText, cchText, lprc, format);

@Native<Int32 Function(HDC, PCWSTR, Int32, Pointer<RECT>, Uint32)>(
  symbol: 'DrawTextW',
)
external int _DrawText(
  int hdc,
  PCWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  int format,
);

/// Draws formatted text in the specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawtextexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int DrawTextEx(
  int hdc,
  PWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  DRAW_TEXT_FORMAT format,
  Pointer<DRAWTEXTPARAMS>? lpdtp,
) => _DrawTextEx(hdc, lpchText, cchText, lprc, format, lpdtp ?? nullptr);

@Native<
  Int32 Function(
    HDC,
    PWSTR,
    Int32,
    Pointer<RECT>,
    Uint32,
    Pointer<DRAWTEXTPARAMS>,
  )
>(symbol: 'DrawTextExW')
external int _DrawTextEx(
  int hdc,
  PWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  int format,
  Pointer<DRAWTEXTPARAMS> lpdtp,
);

/// Empties the clipboard and frees handles to data in the clipboard.
///
/// The function then assigns ownership of the clipboard to the window that
/// currently has the clipboard open.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-emptyclipboard>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EmptyClipboard() => EmptyClipboard_Wrapper() != FALSE;

/// Enables, disables, or grays the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemenuitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableMenuItem(int hMenu, int uIDEnableItem, MENU_ITEM_FLAGS uEnable) =>
    _EnableMenuItem(hMenu, uIDEnableItem, uEnable) != FALSE;

@Native<BOOL Function(HMENU, Uint32, Uint32)>(symbol: 'EnableMenuItem')
external int _EnableMenuItem(int hMenu, int uIDEnableItem, int uEnable);

/// Enables the mouse to act as a pointer input device and send WM_POINTER
/// messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemouseinpointer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableMouseInPointer(bool fEnable) =>
    EnableMouseInPointer_Wrapper(fEnable ? TRUE : FALSE) != FALSE;

/// In high-DPI displays, enables automatic display scaling of the non-client
/// area portions of the specified top-level window.
///
/// Must be called during the initialization of that window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablenonclientdpiscaling>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableNonClientDpiScaling(int hwnd) =>
    EnableNonClientDpiScaling_Wrapper(hwnd) != FALSE;

/// Enables or disables one or both scroll bar arrows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablescrollbar>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableScrollBar(
  int hWnd,
  int wSBflags,
  ENABLE_SCROLL_BAR_ARROWS wArrows,
) => EnableScrollBar_Wrapper(hWnd, wSBflags, wArrows) != FALSE;

/// Enables or disables mouse and keyboard input to the specified window or
/// control.
///
/// When input is disabled, the window does not receive input such as mouse
/// clicks and key presses. When input is enabled, the window receives all
/// input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableWindow(int hWnd, bool bEnable) =>
    _EnableWindow(hWnd, bEnable ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(HWND, BOOL)>(symbol: 'EnableWindow')
external int _EnableWindow(int hWnd, int bEnable);

/// Simultaneously updates the position and size of one or more windows in a
/// single screen-refreshing cycle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddeferwindowpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EndDeferWindowPos(int hWinPosInfo) =>
    EndDeferWindowPos_Wrapper(hWinPosInfo) != FALSE;

/// Destroys a modal dialog box, causing the system to end any processing for
/// the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddialog>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EndDialog(int hDlg, int nResult) =>
    EndDialog_Wrapper(hDlg, nResult) != FALSE;

/// Ends the calling thread's active menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-endmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EndMenu() => EndMenu_Wrapper() != FALSE;

/// Marks the end of painting in the specified window.
///
/// This function is required for each call to the BeginPaint function, but only
/// after painting is complete.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-endpaint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EndPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _EndPaint(hWnd, lpPaint) != FALSE;

@Native<BOOL Function(HWND, Pointer<PAINTSTRUCT>)>(symbol: 'EndPaint')
external int _EndPaint(int hWnd, Pointer<PAINTSTRUCT> lpPaint);

/// Enumerates the child windows that belong to the specified parent window by
/// passing the handle to each child window, in turn, to an application-defined
/// callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumchildwindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumChildWindows(
  int? hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
) => _EnumChildWindows(hWndParent ?? NULL, lpEnumFunc, lParam) != FALSE;

@Native<BOOL Function(HWND, Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)>(
  symbol: 'EnumChildWindows',
)
external int _EnumChildWindows(
  int hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
);

/// Enumerates the data formats currently available on the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumclipboardformats>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int EnumClipboardFormats(int format) => EnumClipboardFormats_Wrapper(format);

/// Enumerates all top-level windows associated with the specified desktop.
///
/// It passes the handle to each window, in turn, to an application-defined
/// callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdesktopwindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumDesktopWindows(
  int? hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
) => EnumDesktopWindows_Wrapper(hDesktop ?? NULL, lpfn, lParam) != FALSE;

/// Lets you obtain information about the display devices in the current
/// session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaydevicesw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumDisplayDevices(
  PCWSTR? lpDevice,
  int iDevNum,
  Pointer<DISPLAY_DEVICE> lpDisplayDevice,
  int dwFlags,
) =>
    _EnumDisplayDevices(
      lpDevice ?? nullptr,
      iDevNum,
      lpDisplayDevice,
      dwFlags,
    ) !=
    FALSE;

@Native<BOOL Function(PCWSTR, Uint32, Pointer<DISPLAY_DEVICE>, Uint32)>(
  symbol: 'EnumDisplayDevicesW',
)
external int _EnumDisplayDevices(
  PCWSTR lpDevice,
  int iDevNum,
  Pointer<DISPLAY_DEVICE> lpDisplayDevice,
  int dwFlags,
);

/// Enumerates display monitors (including invisible pseudo-monitors associated
/// with the mirroring drivers) that intersect a region formed by the
/// intersection of a specified clipping rectangle and the visible region of a
/// device context.
///
/// EnumDisplayMonitors calls an application-defined MonitorEnumProc callback
/// function once for each monitor that is enumerated. Note that
/// GetSystemMetrics (SM_CMONITORS) counts only the display monitors.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaymonitors>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumDisplayMonitors(
  int? hdc,
  Pointer<RECT>? lprcClip,
  Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum,
  int dwData,
) =>
    _EnumDisplayMonitors(hdc ?? NULL, lprcClip ?? nullptr, lpfnEnum, dwData) !=
    FALSE;

@Native<
  BOOL Function(
    HDC,
    Pointer<RECT>,
    Pointer<NativeFunction<MONITORENUMPROC>>,
    LPARAM,
  )
>(symbol: 'EnumDisplayMonitors')
external int _EnumDisplayMonitors(
  int hdc,
  Pointer<RECT> lprcClip,
  Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum,
  int dwData,
);

/// Retrieves information about one of the graphics modes for a display device.
///
/// To retrieve information for all the graphics modes of a display device, make
/// a series of calls to this function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaysettingsw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumDisplaySettings(
  PCWSTR? lpszDeviceName,
  ENUM_DISPLAY_SETTINGS_MODE iModeNum,
  Pointer<DEVMODE> lpDevMode,
) =>
    _EnumDisplaySettings(lpszDeviceName ?? nullptr, iModeNum, lpDevMode) !=
    FALSE;

@Native<BOOL Function(PCWSTR, Uint32, Pointer<DEVMODE>)>(
  symbol: 'EnumDisplaySettingsW',
)
external int _EnumDisplaySettings(
  PCWSTR lpszDeviceName,
  int iModeNum,
  Pointer<DEVMODE> lpDevMode,
);

/// Retrieves information about one of the graphics modes for a display device.
///
/// To retrieve information for all the graphics modes for a display device,
/// make a series of calls to this function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdisplaysettingsexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumDisplaySettingsEx(
  PCWSTR? lpszDeviceName,
  ENUM_DISPLAY_SETTINGS_MODE iModeNum,
  Pointer<DEVMODE> lpDevMode,
  ENUM_DISPLAY_SETTINGS_FLAGS dwFlags,
) =>
    _EnumDisplaySettingsEx(
      lpszDeviceName ?? nullptr,
      iModeNum,
      lpDevMode,
      dwFlags,
    ) !=
    FALSE;

@Native<BOOL Function(PCWSTR, Uint32, Pointer<DEVMODE>, Uint32)>(
  symbol: 'EnumDisplaySettingsExW',
)
external int _EnumDisplaySettingsEx(
  PCWSTR lpszDeviceName,
  int iModeNum,
  Pointer<DEVMODE> lpDevMode,
  int dwFlags,
);

/// Enumerates all nonchild windows associated with a thread by passing the
/// handle to each window, in turn, to an application-defined callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumthreadwindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumThreadWindows(
  int dwThreadId,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
) => _EnumThreadWindows(dwThreadId, lpfn, lParam) != FALSE;

@Native<BOOL Function(Uint32, Pointer<NativeFunction<WNDENUMPROC>>, LPARAM)>(
  symbol: 'EnumThreadWindows',
)
external int _EnumThreadWindows(
  int dwThreadId,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  int lParam,
);

/// Enumerates all top-level windows on the screen by passing the handle to each
/// window, in turn, to an application-defined callback function.
///
/// EnumWindows continues until the last top-level window is enumerated or the
/// callback function returns FALSE.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumwindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnumWindows(Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc, int lParam) =>
    EnumWindows_Wrapper(lpEnumFunc, lParam) != FALSE;

/// Determines whether the two specified rectangles are equal by comparing the
/// coordinates of their upper-left and lower-right corners.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-equalrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2) =>
    _EqualRect(lprc1, lprc2) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>)>(symbol: 'EqualRect')
external int _EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2);

/// Prevents drawing within invalid areas of a window by excluding an updated
/// region in the window from a clipping region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-excludeupdatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ExcludeUpdateRgn(int hDC, int hWnd) => _ExcludeUpdateRgn(hDC, hWnd);

@Native<Int32 Function(HDC, HWND)>(symbol: 'ExcludeUpdateRgn')
external int _ExcludeUpdateRgn(int hDC, int hWnd);

/// Fills a rectangle by using the specified brush.
///
/// This function includes the left and top borders, but excludes the right and
/// bottom borders of the rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-fillrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int FillRect(int hDC, Pointer<RECT> lprc, int hbr) => _FillRect(hDC, lprc, hbr);

@Native<Int32 Function(HDC, Pointer<RECT>, HBRUSH)>(symbol: 'FillRect')
external int _FillRect(int hDC, Pointer<RECT> lprc, int hbr);

/// Retrieves a handle to the top-level window whose class name and window name
/// match the specified strings.
///
/// This function does not search child windows. This function does not perform
/// a case-sensitive search.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-findwindoww>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int FindWindow(PCWSTR? lpClassName, PCWSTR? lpWindowName) =>
    FindWindowW_Wrapper(lpClassName ?? nullptr, lpWindowName ?? nullptr);

/// Retrieves a handle to a window whose class name and window name match the
/// specified strings.
///
/// The function searches child windows, beginning with the one following the
/// specified child window. This function does not perform a case-sensitive
/// search.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-findwindowexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int FindWindowEx(
  int? hWndParent,
  int? hWndChildAfter,
  PCWSTR? lpszClass,
  PCWSTR? lpszWindow,
) => FindWindowExW_Wrapper(
  hWndParent ?? NULL,
  hWndChildAfter ?? NULL,
  lpszClass ?? nullptr,
  lpszWindow ?? nullptr,
);

/// Draws a border around the specified rectangle by using the specified brush.
///
/// The width and height of the border are always one logical unit.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-framerect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int FrameRect(int hDC, Pointer<RECT> lprc, int hbr) =>
    _FrameRect(hDC, lprc, hbr);

@Native<Int32 Function(HDC, Pointer<RECT>, HBRUSH)>(symbol: 'FrameRect')
external int _FrameRect(int hDC, Pointer<RECT> lprc, int hbr);

/// Retrieves the window handle to the active window attached to the calling
/// thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getactivewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetActiveWindow() => _GetActiveWindow();

@Native<HWND Function()>(symbol: 'GetActiveWindow')
external int _GetActiveWindow();

/// Retrieves status information for the specified window if it is the
/// application-switching (ALT+TAB) window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getalttabinfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetAltTabInfo(
  int? hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  PWSTR? pszItemText,
  int cchItemText,
) =>
    GetAltTabInfoW_Wrapper(
      hwnd ?? NULL,
      iItem,
      pati,
      pszItemText ?? nullptr,
      cchItemText,
    ) !=
    FALSE;

/// Retrieves the handle to the ancestor of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getancestor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetAncestor(int hwnd, GET_ANCESTOR_FLAGS gaFlags) =>
    _GetAncestor(hwnd, gaFlags);

@Native<HWND Function(HWND, Uint32)>(symbol: 'GetAncestor')
external int _GetAncestor(int hwnd, int gaFlags);

/// Determines whether a key is up or down at the time the function is called,
/// and whether the key was pressed after a previous call to GetAsyncKeyState.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getasynckeystate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetAsyncKeyState(int vKey) => _GetAsyncKeyState(vKey);

@Native<Int16 Function(Int32)>(symbol: 'GetAsyncKeyState')
external int _GetAsyncKeyState(int vKey);

/// Retrieves the DPI_AWARENESS value from a DPI_AWARENESS_CONTEXT.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getawarenessfromdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS GetAwarenessFromDpiAwarenessContext(int value) =>
    DPI_AWARENESS(_GetAwarenessFromDpiAwarenessContext(value));

@Native<Int32 Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'GetAwarenessFromDpiAwarenessContext',
)
external int _GetAwarenessFromDpiAwarenessContext(int value);

/// Retrieves a handle to the window (if any) that has captured the mouse.
///
/// Only one window at a time can capture the mouse; this window receives mouse
/// input whether or not the cursor is within its borders.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcapture>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetCapture() => _GetCapture();

@Native<HWND Function()>(symbol: 'GetCapture')
external int _GetCapture();

/// Retrieves the time required to invert the caret's pixels.
///
/// The user can set this value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretblinktime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetCaretBlinkTime() => GetCaretBlinkTime_Wrapper();

/// Copies the caret's position to the specified POINT structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetCaretPos(Pointer<POINT> lpPoint) =>
    GetCaretPos_Wrapper(lpPoint) != FALSE;

/// Retrieves information about a window class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassinfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetClassInfo(
  int? hInstance,
  PCWSTR lpClassName,
  Pointer<WNDCLASS> lpWndClass,
) => GetClassInfoW_Wrapper(hInstance ?? NULL, lpClassName, lpWndClass) != FALSE;

/// Retrieves information about a window class, including a handle to the small
/// icon associated with the window class.
///
/// The GetClassInfo function does not retrieve a handle to the small icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassinfoexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetClassInfoEx(
  int? hInstance,
  PCWSTR lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
) => GetClassInfoExW_Wrapper(hInstance ?? NULL, lpszClass, lpwcx) != FALSE;

/// Retrieves the specified value from the WNDCLASSEX structure associated with
/// the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclasslongptrw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClassLongPtr(int hWnd, GET_CLASS_LONG_INDEX nIndex) =>
    GetClassLongPtrW_Wrapper(hWnd, nIndex);

/// Retrieves the name of the class to which the specified window belongs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassnamew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClassName(int hWnd, PWSTR lpClassName, int nMaxCount) =>
    GetClassNameW_Wrapper(hWnd, lpClassName, nMaxCount);

/// Retrieves the coordinates of a window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclientrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetClientRect(int hWnd, Pointer<RECT> lpRect) =>
    GetClientRect_Wrapper(hWnd, lpRect) != FALSE;

/// Retrieves data from the clipboard in a specified format.
///
/// The clipboard must have been opened previously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboarddata>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClipboardData(int uFormat) => GetClipboardData_Wrapper(uFormat);

/// Retrieves from the clipboard the name of the specified registered format.
///
/// The function copies the name to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardformatnamew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClipboardFormatName(int format, PWSTR lpszFormatName, int cchMaxCount) =>
    GetClipboardFormatNameW_Wrapper(format, lpszFormatName, cchMaxCount);

/// Retrieves the window handle of the current owner of the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardowner>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClipboardOwner() => GetClipboardOwner_Wrapper();

/// Retrieves the clipboard sequence number for the current window station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardsequencenumber>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClipboardSequenceNumber() => _GetClipboardSequenceNumber();

@Native<Uint32 Function()>(symbol: 'GetClipboardSequenceNumber')
external int _GetClipboardSequenceNumber();

/// Retrieves the handle to the first window in the clipboard viewer chain.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardviewer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClipboardViewer() => GetClipboardViewer_Wrapper();

/// Retrieves the screen coordinates of the rectangular area to which the cursor
/// is confined.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetClipCursor(Pointer<RECT> lpRect) =>
    GetClipCursor_Wrapper(lpRect) != FALSE;

/// Retrieves a handle to the current cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetCursor() => _GetCursor();

@Native<HCURSOR Function()>(symbol: 'GetCursor')
external int _GetCursor();

/// Retrieves information about the global cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetCursorInfo(Pointer<CURSORINFO> pci) =>
    GetCursorInfo_Wrapper(pci) != FALSE;

/// Retrieves the position of the mouse cursor, in screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetCursorPos(Pointer<POINT> lpPoint) =>
    GetCursorPos_Wrapper(lpPoint) != FALSE;

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDC(int? hWnd) => _GetDC(hWnd ?? NULL);

@Native<HDC Function(HWND)>(symbol: 'GetDC')
external int _GetDC(int hWnd);

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdcex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDCEx(int? hWnd, int? hrgnClip, GET_DCX_FLAGS flags) =>
    _GetDCEx(hWnd ?? NULL, hrgnClip ?? NULL, flags);

@Native<HDC Function(HWND, HRGN, Uint32)>(symbol: 'GetDCEx')
external int _GetDCEx(int hWnd, int hrgnClip, int flags);

/// Retrieves a handle to the desktop window.
///
/// The desktop window covers the entire screen. The desktop window is the area
/// on top of which other windows are painted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdesktopwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDesktopWindow() => _GetDesktopWindow();

@Native<HWND Function()>(symbol: 'GetDesktopWindow')
external int _GetDesktopWindow();

/// Retrieves the system's dialog base units, which are the average width and
/// height of characters in the system font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogbaseunits>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDialogBaseUnits() => _GetDialogBaseUnits();

@Native<Int32 Function()>(symbol: 'GetDialogBaseUnits')
external int _GetDialogBaseUnits();

/// Retrieves and per-monitor DPI scaling behavior overrides of a child window
/// in a dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogcontroldpichangebehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS GetDialogControlDpiChangeBehavior(
  int hWnd,
) => DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(
  GetDialogControlDpiChangeBehavior_Wrapper(hWnd),
);

/// Returns the flags that might have been set on a given dialog by an earlier
/// call to SetDialogDpiChangeBehavior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogdpichangebehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DIALOG_DPI_CHANGE_BEHAVIORS GetDialogDpiChangeBehavior(int hDlg) =>
    DIALOG_DPI_CHANGE_BEHAVIORS(GetDialogDpiChangeBehavior_Wrapper(hDlg));

/// Retrieves the screen auto-rotation preferences for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdisplayautorotationpreferences>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation) =>
    _GetDisplayAutoRotationPreferences(pOrientation) != FALSE;

@Native<BOOL Function(Pointer<Int32>)>(
  symbol: 'GetDisplayAutoRotationPreferences',
)
external int _GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation);

/// Retrieves a handle to a control in the specified dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDlgItem(int? hDlg, int nIDDlgItem) =>
    GetDlgItem_Wrapper(hDlg ?? NULL, nIDDlgItem);

/// Translates the text of a specified control in a dialog box into an integer
/// value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitemint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDlgItemInt(
  int hDlg,
  int nIDDlgItem,
  Pointer<BOOL>? lpTranslated,
  bool bSigned,
) => GetDlgItemInt_Wrapper(
  hDlg,
  nIDDlgItem,
  lpTranslated ?? nullptr,
  bSigned ? TRUE : FALSE,
);

/// Retrieves the title or text associated with a control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitemtextw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDlgItemText(int hDlg, int nIDDlgItem, PWSTR lpString, int cchMax) =>
    GetDlgItemTextW_Wrapper(hDlg, nIDDlgItem, lpString, cchMax);

/// Retrieves the current double-click time for the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdoubleclicktime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDoubleClickTime() => _GetDoubleClickTime();

@Native<Uint32 Function()>(symbol: 'GetDoubleClickTime')
external int _GetDoubleClickTime();

/// Returns the system DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpiforsystem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDpiForSystem() => _GetDpiForSystem();

@Native<Uint32 Function()>(symbol: 'GetDpiForSystem')
external int _GetDpiForSystem();

/// Returns the dots per inch (dpi) value for the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpiforwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDpiForWindow(int hwnd) => _GetDpiForWindow(hwnd);

@Native<Uint32 Function(HWND)>(symbol: 'GetDpiForWindow')
external int _GetDpiForWindow(int hwnd);

/// Retrieves the DPI from a given DPI_AWARENESS_CONTEXT handle.
///
/// This enables you to determine the DPI of a thread without needed to examine
/// a window created within that thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpifromdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDpiFromDpiAwarenessContext(int value) =>
    _GetDpiFromDpiAwarenessContext(value);

@Native<Uint32 Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'GetDpiFromDpiAwarenessContext',
)
external int _GetDpiFromDpiAwarenessContext(int value);

/// Retrieves the handle to the window that has the keyboard focus, if the
/// window is attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getfocus>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetFocus() => _GetFocus();

@Native<HWND Function()>(symbol: 'GetFocus')
external int _GetFocus();

/// Retrieves a handle to the foreground window (the window with which the user
/// is currently working).
///
/// The system assigns a slightly higher priority to the thread that creates the
/// foreground window than it does to other threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getforegroundwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetForegroundWindow() => _GetForegroundWindow();

@Native<HWND Function()>(symbol: 'GetForegroundWindow')
external int _GetForegroundWindow();

/// Retrieves the configuration for which Windows Touch gesture messages are
/// sent from a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureconfig>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetGestureConfig(
  int hwnd,
  int dwFlags,
  Pointer<Uint32> pcIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
) =>
    GetGestureConfig_Wrapper(
      hwnd,
      NULL,
      dwFlags,
      pcIDs,
      pGestureConfig,
      cbSize,
    ) !=
    FALSE;

/// Retrieves additional information about a gesture from its GESTUREINFO
/// handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureextraargs>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetGestureExtraArgs(
  int hGestureInfo,
  int cbExtraArgs,
  Pointer<Uint8> pExtraArgs,
) =>
    GetGestureExtraArgs_Wrapper(hGestureInfo, cbExtraArgs, pExtraArgs) != FALSE;

/// Retrieves a GESTUREINFO structure given a handle to the gesture information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetGestureInfo(int hGestureInfo, Pointer<GESTUREINFO> pGestureInfo) =>
    GetGestureInfo_Wrapper(hGestureInfo, pGestureInfo) != FALSE;

/// Retrieves information about the active window or a specified GUI thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getguithreadinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetGUIThreadInfo(int idThread, Pointer<GUITHREADINFO> pgui) =>
    GetGUIThreadInfo_Wrapper(idThread, pgui) != FALSE;

/// Retrieves information about the specified icon or cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetIconInfo(int hIcon, Pointer<ICONINFO> piconinfo) =>
    GetIconInfo_Wrapper(hIcon, piconinfo) != FALSE;

/// Retrieves information about the specified icon or cursor.
///
/// GetIconInfoEx extends GetIconInfo by using the newer ICONINFOEX structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfoexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetIconInfoEx(int hicon, Pointer<ICONINFOEX> piconinfo) =>
    _GetIconInfoEx(hicon, piconinfo) != FALSE;

@Native<BOOL Function(HICON, Pointer<ICONINFOEX>)>(symbol: 'GetIconInfoExW')
external int _GetIconInfoEx(int hicon, Pointer<ICONINFOEX> piconinfo);

/// Determines whether there are mouse-button or keyboard messages in the
/// calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getinputstate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetInputState() => _GetInputState() != FALSE;

@Native<BOOL Function()>(symbol: 'GetInputState')
external int _GetInputState();

/// Retrieves the active input locale identifier (formerly called the keyboard
/// layout).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayout>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetKeyboardLayout(int idThread) => _GetKeyboardLayout(idThread);

@Native<HKL Function(Uint32)>(symbol: 'GetKeyboardLayout')
external int _GetKeyboardLayout(int idThread);

/// Retrieves the input locale identifiers (formerly called keyboard layout
/// handles) corresponding to the current set of input locales in the system.
///
/// The function copies the identifiers to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutlist>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetKeyboardLayoutList(int nBuff, Pointer<HKL>? lpList) =>
    GetKeyboardLayoutList_Wrapper(nBuff, lpList ?? nullptr);

/// Retrieves the name of the active input locale identifier (formerly called
/// the keyboard layout) for the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutnamew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetKeyboardLayoutName(PWSTR pwszKLID) =>
    GetKeyboardLayoutNameW_Wrapper(pwszKLID) != FALSE;

/// Copies the status of the 256 virtual keys to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardstate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetKeyboardState(Pointer<Uint8> lpKeyState) =>
    GetKeyboardState_Wrapper(lpKeyState) != FALSE;

/// Retrieves information about the current keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardtype>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetKeyboardType(int nTypeFlag) => GetKeyboardType_Wrapper(nTypeFlag);

/// Retrieves a string that represents the name of a key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeynametextw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetKeyNameText(int lParam, PWSTR lpString, int cchSize) =>
    GetKeyNameTextW_Wrapper(lParam, lpString, cchSize);

/// Retrieves the status of the specified virtual key.
///
/// The status specifies whether the key is up, down, or toggled (on,
/// off—alternating each time the key is pressed).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeystate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetKeyState(int nVirtKey) => _GetKeyState(nVirtKey);

@Native<Int16 Function(Int32)>(symbol: 'GetKeyState')
external int _GetKeyState(int nVirtKey);

/// Retrieves the time of the last input event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getlastinputinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetLastInputInfo(Pointer<LASTINPUTINFO> plii) =>
    _GetLastInputInfo(plii) != FALSE;

@Native<BOOL Function(Pointer<LASTINPUTINFO>)>(symbol: 'GetLastInputInfo')
external int _GetLastInputInfo(Pointer<LASTINPUTINFO> plii);

/// Retrieves the opacity and transparency color key of a layered window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getlayeredwindowattributes>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetLayeredWindowAttributes(
  int hwnd,
  Pointer<COLORREF>? pcrKey,
  Pointer<Uint8>? pbAlpha,
  Pointer<Uint32>? pdwFlags,
) =>
    GetLayeredWindowAttributes_Wrapper(
      hwnd,
      pcrKey ?? nullptr,
      pbAlpha ?? nullptr,
      pdwFlags ?? nullptr,
    ) !=
    FALSE;

/// Retrieves a handle to the menu assigned to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenu(int hWnd) => _GetMenu(hWnd);

@Native<HMENU Function(HWND)>(symbol: 'GetMenu')
external int _GetMenu(int hWnd);

/// Retrieves information about the specified menu bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenubarinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMenuBarInfo(
  int hwnd,
  OBJECT_IDENTIFIER idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
) => GetMenuBarInfo_Wrapper(hwnd, idObject, idItem, pmbi) != FALSE;

/// Determines the default menu item on the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenudefaultitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuDefaultItem(
  int hMenu,
  int fByPos,
  GET_MENU_DEFAULT_ITEM_FLAGS gmdiFlags,
) => GetMenuDefaultItem_Wrapper(hMenu, fByPos, gmdiFlags);

/// Retrieves information about a specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMenuInfo(int param0, Pointer<MENUINFO> param1) =>
    GetMenuInfo_Wrapper(param0, param1) != FALSE;

/// Determines the number of items in the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemcount>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuItemCount(int? hMenu) => GetMenuItemCount_Wrapper(hMenu ?? NULL);

/// Retrieves the menu item identifier of a menu item located at the specified
/// position in a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemid>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuItemID(int hMenu, int nPos) => _GetMenuItemID(hMenu, nPos);

@Native<Uint32 Function(HMENU, Int32)>(symbol: 'GetMenuItemID')
external int _GetMenuItemID(int hMenu, int nPos);

/// Retrieves information about a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuiteminfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMenuItemInfo(
  int hmenu,
  int item,
  bool fByPosition,
  Pointer<MENUITEMINFO> lpmii,
) =>
    GetMenuItemInfoW_Wrapper(hmenu, item, fByPosition ? TRUE : FALSE, lpmii) !=
    FALSE;

/// Retrieves the bounding rectangle for the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMenuItemRect(int? hWnd, int hMenu, int uItem, Pointer<RECT> lprcItem) =>
    GetMenuItemRect_Wrapper(hWnd ?? NULL, hMenu, uItem, lprcItem) != FALSE;

/// Retrieves the menu flags associated with the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuState(int hMenu, int uId, MENU_ITEM_FLAGS uFlags) =>
    _GetMenuState(hMenu, uId, uFlags);

@Native<Uint32 Function(HMENU, Uint32, Uint32)>(symbol: 'GetMenuState')
external int _GetMenuState(int hMenu, int uId, int uFlags);

/// Copies the text string of the specified menu item into the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustringw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuString(
  int hMenu,
  int uIDItem,
  PWSTR? lpString,
  int cchMax,
  MENU_ITEM_FLAGS flags,
) => _GetMenuString(hMenu, uIDItem, lpString ?? nullptr, cchMax, flags);

@Native<Int32 Function(HMENU, Uint32, PWSTR, Int32, Uint32)>(
  symbol: 'GetMenuStringW',
)
external int _GetMenuString(
  int hMenu,
  int uIDItem,
  PWSTR lpString,
  int cchMax,
  int flags,
);

/// Retrieves a message from the calling thread's message queue.
///
/// The function dispatches incoming sent messages until a posted message is
/// available for retrieval.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMessage(
  Pointer<MSG> lpMsg,
  int? hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
) =>
    GetMessageW_Wrapper(lpMsg, hWnd ?? NULL, wMsgFilterMin, wMsgFilterMax) !=
    FALSE;

/// Retrieves the extra message information for the current thread.
///
/// Extra message information is an application- or driver-defined value
/// associated with the current thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessageextrainfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMessageExtraInfo() => _GetMessageExtraInfo();

@Native<LPARAM Function()>(symbol: 'GetMessageExtraInfo')
external int _GetMessageExtraInfo();

/// Retrieves the cursor position for the last message retrieved by the
/// GetMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagepos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMessagePos() => _GetMessagePos();

@Native<Uint32 Function()>(symbol: 'GetMessagePos')
external int _GetMessagePos();

/// Retrieves the message time for the last message retrieved by the GetMessage
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagetime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMessageTime() => _GetMessageTime();

@Native<Int32 Function()>(symbol: 'GetMessageTime')
external int _GetMessageTime();

/// Retrieves information about a display monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmonitorinfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMonitorInfo(int hMonitor, Pointer<MONITORINFO> lpmi) =>
    _GetMonitorInfo(hMonitor, lpmi) != FALSE;

@Native<BOOL Function(HMONITOR, Pointer<MONITORINFO>)>(
  symbol: 'GetMonitorInfoW',
)
external int _GetMonitorInfo(int hMonitor, Pointer<MONITORINFO> lpmi);

/// Retrieves a history of up to 64 previous coordinates of the mouse or pen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmousemovepointsex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMouseMovePointsEx(
  int cbSize,
  Pointer<MOUSEMOVEPOINT> lppt,
  Pointer<MOUSEMOVEPOINT> lpptBuf,
  int nBufPoints,
  GET_MOUSE_MOVE_POINTS_EX_RESOLUTION resolution,
) =>
    GetMouseMovePointsEx_Wrapper(cbSize, lppt, lpptBuf, nBufPoints, resolution);

/// Retrieves a handle to the first control in a group of controls that precedes
/// (or follows) the specified control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlggroupitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetNextDlgGroupItem(int hDlg, int? hCtl, bool bPrevious) =>
    GetNextDlgGroupItem_Wrapper(hDlg, hCtl ?? NULL, bPrevious ? TRUE : FALSE);

/// Retrieves a handle to the first control that has the WS_TABSTOP style that
/// precedes (or follows) the specified control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlgtabitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetNextDlgTabItem(int hDlg, int? hCtl, bool bPrevious) =>
    GetNextDlgTabItem_Wrapper(hDlg, hCtl ?? NULL, bPrevious ? TRUE : FALSE);

/// Retrieves the handle to the window that currently has the clipboard open.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getopenclipboardwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetOpenClipboardWindow() => GetOpenClipboardWindow_Wrapper();

/// Retrieves a handle to the specified window's parent or owner.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getparent>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetParent(int hWnd) => GetParent_Wrapper(hWnd);

/// Retrieves the position of the cursor in physical coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getphysicalcursorpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPhysicalCursorPos(Pointer<POINT> lpPoint) =>
    GetPhysicalCursorPos_Wrapper(lpPoint) != FALSE;

/// Retrieves the cursor identifier associated with the specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointercursorid>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerCursorId(int pointerId, Pointer<Uint32> cursorId) =>
    GetPointerCursorId_Wrapper(pointerId, cursorId) != FALSE;

/// Gets the entire frame of information for the specified pointers associated
/// with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframeinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerFrameInfo(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO>? pointerInfo,
) =>
    GetPointerFrameInfo_Wrapper(
      pointerId,
      pointerCount,
      pointerInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the entire frame of information (including coalesced input frames) for
/// the specified pointers associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframeinfohistory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerFrameInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO>? pointerInfo,
) =>
    GetPointerFrameInfoHistory_Wrapper(
      pointerId,
      entriesCount,
      pointerCount,
      pointerInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the entire frame of pen-based information for the specified pointers
/// (of type PT_PEN) associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframepeninfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerFramePenInfo(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO>? penInfo,
) =>
    GetPointerFramePenInfo_Wrapper(
      pointerId,
      pointerCount,
      penInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the entire frame of pen-based information (including coalesced input
/// frames) for the specified pointers (of type PT_PEN) associated with the
/// current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframepeninfohistory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerFramePenInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO>? penInfo,
) =>
    GetPointerFramePenInfoHistory_Wrapper(
      pointerId,
      entriesCount,
      pointerCount,
      penInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the entire frame of touch-based information for the specified pointers
/// (of type PT_TOUCH) associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframetouchinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerFrameTouchInfo(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO>? touchInfo,
) =>
    GetPointerFrameTouchInfo_Wrapper(
      pointerId,
      pointerCount,
      touchInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the entire frame of touch-based information (including coalesced input
/// frames) for the specified pointers (of type PT_TOUCH) associated with the
/// current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframetouchinfohistory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerFrameTouchInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO>? touchInfo,
) =>
    GetPointerFrameTouchInfoHistory_Wrapper(
      pointerId,
      entriesCount,
      pointerCount,
      touchInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the information for the specified pointer associated with the current
/// message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerInfo(int pointerId, Pointer<POINTER_INFO> pointerInfo) =>
    GetPointerInfo_Wrapper(pointerId, pointerInfo) != FALSE;

/// Gets the information associated with the individual inputs, if any, that
/// were coalesced into the current message for the specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinfohistory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_INFO>? pointerInfo,
) =>
    GetPointerInfoHistory_Wrapper(
      pointerId,
      entriesCount,
      pointerInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets one or more transforms for the pointer information coordinates
/// associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinputtransform>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerInputTransform(
  int pointerId,
  int historyCount,
  Pointer<INPUT_TRANSFORM> inputTransform,
) =>
    GetPointerInputTransform_Wrapper(pointerId, historyCount, inputTransform) !=
    FALSE;

/// Gets the pen-based information for the specified pointer (of type PT_PEN)
/// associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerpeninfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerPenInfo(int pointerId, Pointer<POINTER_PEN_INFO> penInfo) =>
    GetPointerPenInfo_Wrapper(pointerId, penInfo) != FALSE;

/// Gets the pen-based information associated with the individual inputs, if
/// any, that were coalesced into the current message for the specified pointer
/// (of type PT_PEN).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerpeninfohistory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerPenInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_PEN_INFO>? penInfo,
) =>
    GetPointerPenInfoHistory_Wrapper(
      pointerId,
      entriesCount,
      penInfo ?? nullptr,
    ) !=
    FALSE;

/// Gets the touch-based information for the specified pointer (of type
/// PT_TOUCH) associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertouchinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerTouchInfo(
  int pointerId,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
) => GetPointerTouchInfo_Wrapper(pointerId, touchInfo) != FALSE;

/// Gets the touch-based information associated with the individual inputs, if
/// any, that were coalesced into the current message for the specified pointer
/// (of type PT_TOUCH).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertouchinfohistory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerTouchInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_TOUCH_INFO>? touchInfo,
) =>
    GetPointerTouchInfoHistory_Wrapper(
      pointerId,
      entriesCount,
      touchInfo ?? nullptr,
    ) !=
    FALSE;

/// Retrieves the pointer type for a specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertype>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetPointerType(int pointerId, Pointer<Int32> pointerType) =>
    GetPointerType_Wrapper(pointerId, pointerType) != FALSE;

/// Retrieves the first available clipboard format in the specified list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpriorityclipboardformat>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetPriorityClipboardFormat(
  Pointer<Uint32> paFormatPriorityList,
  int cFormats,
) => GetPriorityClipboardFormat_Wrapper(paFormatPriorityList, cFormats);

/// Retrieves a handle to the current window station for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getprocesswindowstation>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetProcessWindowStation() => GetProcessWindowStation_Wrapper();

/// Retrieves a data handle from the property list of the specified window.
///
/// The character string identifies the handle to be retrieved. The string and
/// handle must have been added to the property list by a previous call to the
/// SetProp function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpropw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetProp(int hWnd, PCWSTR lpString) => _GetProp(hWnd, lpString);

@Native<HANDLE Function(HWND, PCWSTR)>(symbol: 'GetPropW')
external int _GetProp(int hWnd, PCWSTR lpString);

/// Performs a buffered read of the raw input data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputbuffer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetRawInputBuffer(
  Pointer<RAWINPUT>? pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
) => GetRawInputBuffer_Wrapper(pData ?? nullptr, pcbSize, cbSizeHeader);

/// Retrieves the raw input from the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdata>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetRawInputData(
  int hRawInput,
  RAW_INPUT_DATA_COMMAND_FLAGS uiCommand,
  Pointer? pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
) => _GetRawInputData(
  hRawInput,
  uiCommand,
  pData ?? nullptr,
  pcbSize,
  cbSizeHeader,
);

@Native<Uint32 Function(HRAWINPUT, Uint32, Pointer, Pointer<Uint32>, Uint32)>(
  symbol: 'GetRawInputData',
)
external int _GetRawInputData(
  int hRawInput,
  int uiCommand,
  Pointer pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
);

/// Retrieves information about the raw input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdeviceinfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetRawInputDeviceInfo(
  int? hDevice,
  RAW_INPUT_DEVICE_INFO_COMMAND uiCommand,
  Pointer? pData,
  Pointer<Uint32> pcbSize,
) => GetRawInputDeviceInfoW_Wrapper(
  hDevice ?? NULL,
  uiCommand,
  pData ?? nullptr,
  pcbSize,
);

/// Enumerates the raw input devices attached to the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdevicelist>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetRawInputDeviceList(
  Pointer<RAWINPUTDEVICELIST>? pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
) => GetRawInputDeviceList_Wrapper(
  pRawInputDeviceList ?? nullptr,
  puiNumDevices,
  cbSize,
);

/// Retrieves the information about the raw input devices for the current
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getregisteredrawinputdevices>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetRegisteredRawInputDevices(
  Pointer<RAWINPUTDEVICE>? pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
) => GetRegisteredRawInputDevices_Wrapper(
  pRawInputDevices ?? nullptr,
  puiNumDevices,
  cbSize,
);

/// Retrieves information about the specified scroll bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getscrollbarinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetScrollBarInfo(
  int hwnd,
  OBJECT_IDENTIFIER idObject,
  Pointer<SCROLLBARINFO> psbi,
) => GetScrollBarInfo_Wrapper(hwnd, idObject, psbi) != FALSE;

/// Retrieves the parameters of a scroll bar, including the minimum and maximum
/// scrolling positions, the page size, and the position of the scroll box
/// (thumb).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getscrollinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetScrollInfo(
  int hwnd,
  SCROLLBAR_CONSTANTS nBar,
  Pointer<SCROLLINFO> lpsi,
) => GetScrollInfo_Wrapper(hwnd, nBar, lpsi) != FALSE;

/// Retrieves a handle to the Shell's desktop window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getshellwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetShellWindow() => _GetShellWindow();

@Native<HWND Function()>(symbol: 'GetShellWindow')
external int _GetShellWindow();

/// Retrieves a handle to the drop-down menu or submenu activated by the
/// specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsubmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSubMenu(int hMenu, int nPos) => _GetSubMenu(hMenu, nPos);

@Native<HMENU Function(HMENU, Int32)>(symbol: 'GetSubMenu')
external int _GetSubMenu(int hMenu, int nPos);

/// Retrieves the current color of the specified display element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsyscolor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSysColor(SYS_COLOR_INDEX nIndex) => _GetSysColor(nIndex);

@Native<Uint32 Function(Int32)>(symbol: 'GetSysColor')
external int _GetSysColor(int nIndex);

/// Retrieves a handle identifying a logical brush that corresponds to the
/// specified color index.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsyscolorbrush>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSysColorBrush(SYS_COLOR_INDEX nIndex) => _GetSysColorBrush(nIndex);

@Native<HBRUSH Function(Int32)>(symbol: 'GetSysColorBrush')
external int _GetSysColorBrush(int nIndex);

/// Retrieves the system DPI associated with a given process.
///
/// This is useful for avoiding compatibility issues that arise from sharing
/// DPI-sensitive information between multiple system-aware processes with
/// different system DPI values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemdpiforprocess>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSystemDpiForProcess(int hProcess) => _GetSystemDpiForProcess(hProcess);

@Native<Uint32 Function(HANDLE)>(symbol: 'GetSystemDpiForProcess')
external int _GetSystemDpiForProcess(int hProcess);

/// Enables the application to access the window menu (also known as the system
/// menu or the control menu) for copying and modifying.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSystemMenu(int hWnd, bool bRevert) =>
    _GetSystemMenu(hWnd, bRevert ? TRUE : FALSE);

@Native<HMENU Function(HWND, BOOL)>(symbol: 'GetSystemMenu')
external int _GetSystemMenu(int hWnd, int bRevert);

/// Retrieves the specified system metric or system configuration setting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmetrics>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSystemMetrics(SYSTEM_METRICS_INDEX nIndex) => _GetSystemMetrics(nIndex);

@Native<Int32 Function(Int32)>(symbol: 'GetSystemMetrics')
external int _GetSystemMetrics(int nIndex);

/// Retrieves the specified system metric or system configuration setting taking
/// into account a provided DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmetricsfordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSystemMetricsForDpi(SYSTEM_METRICS_INDEX nIndex, int dpi) =>
    GetSystemMetricsForDpi_Wrapper(nIndex, dpi);

/// Computes the width and height of a character string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettabbedtextextentw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetTabbedTextExtent(
  int hdc,
  PCWSTR lpString,
  int chCount,
  int nTabPositions,
  Pointer<Int32>? lpnTabStopPositions,
) => _GetTabbedTextExtent(
  hdc,
  lpString,
  chCount,
  nTabPositions,
  lpnTabStopPositions ?? nullptr,
);

@Native<Uint32 Function(HDC, PCWSTR, Int32, Int32, Pointer<Int32>)>(
  symbol: 'GetTabbedTextExtentW',
)
external int _GetTabbedTextExtent(
  int hdc,
  PCWSTR lpString,
  int chCount,
  int nTabPositions,
  Pointer<Int32> lpnTabStopPositions,
);

/// Retrieves a handle to the desktop assigned to the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddesktop>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetThreadDesktop(int dwThreadId) => GetThreadDesktop_Wrapper(dwThreadId);

/// Gets the DPI_AWARENESS_CONTEXT for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetThreadDpiAwarenessContext() => _GetThreadDpiAwarenessContext();

@Native<DPI_AWARENESS_CONTEXT Function()>(
  symbol: 'GetThreadDpiAwarenessContext',
)
external int _GetThreadDpiAwarenessContext();

/// Retrieves the DPI_HOSTING_BEHAVIOR from the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpihostingbehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_HOSTING_BEHAVIOR GetThreadDpiHostingBehavior() =>
    DPI_HOSTING_BEHAVIOR(_GetThreadDpiHostingBehavior());

@Native<Int32 Function()>(symbol: 'GetThreadDpiHostingBehavior')
external int _GetThreadDpiHostingBehavior();

/// Retrieves information about the specified title bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettitlebarinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetTitleBarInfo(int hwnd, Pointer<TITLEBARINFO> pti) =>
    GetTitleBarInfo_Wrapper(hwnd, pti) != FALSE;

/// Examines the Z order of the child windows associated with the specified
/// parent window and retrieves a handle to the child window at the top of the Z
/// order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettopwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetTopWindow(int? hWnd) => GetTopWindow_Wrapper(hWnd ?? NULL);

/// Retrieves detailed information about touch inputs associated with a
/// particular touch input handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettouchinputinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetTouchInputInfo(
  int hTouchInput,
  int cInputs,
  Pointer<TOUCHINPUT> pInputs,
  int cbSize,
) => GetTouchInputInfo_Wrapper(hTouchInput, cInputs, pInputs, cbSize) != FALSE;

/// Gets pointer data before it has gone through touch prediction processing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getunpredictedmessagepos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetUnpredictedMessagePos() => _GetUnpredictedMessagePos();

@Native<Uint32 Function()>(symbol: 'GetUnpredictedMessagePos')
external int _GetUnpredictedMessagePos();

/// Retrieves the currently supported clipboard formats.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdatedclipboardformats>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetUpdatedClipboardFormats(
  Pointer<Uint32> lpuiFormats,
  int cFormats,
  Pointer<Uint32> pcFormatsOut,
) =>
    GetUpdatedClipboardFormats_Wrapper(lpuiFormats, cFormats, pcFormatsOut) !=
    FALSE;

/// Retrieves the coordinates of the smallest rectangle that completely encloses
/// the update region of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetUpdateRect(int hWnd, Pointer<RECT>? lpRect, bool bErase) =>
    _GetUpdateRect(hWnd, lpRect ?? nullptr, bErase ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(HWND, Pointer<RECT>, BOOL)>(symbol: 'GetUpdateRect')
external int _GetUpdateRect(int hWnd, Pointer<RECT> lpRect, int bErase);

/// Retrieves the update region of a window by copying it into the specified
/// region.
///
/// The coordinates of the update region are relative to the upper-left corner
/// of the window (that is, they are client coordinates).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetUpdateRgn(int hWnd, int hRgn, bool bErase) =>
    GDI_REGION_TYPE(_GetUpdateRgn(hWnd, hRgn, bErase ? TRUE : FALSE));

@Native<Int32 Function(HWND, HRGN, BOOL)>(symbol: 'GetUpdateRgn')
external int _GetUpdateRgn(int hWnd, int hRgn, int bErase);

/// Retrieves information about the specified window station or desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getuserobjectinformationw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetUserObjectInformation(
  int hObj,
  USER_OBJECT_INFORMATION_INDEX nIndex,
  Pointer? pvInfo,
  int nLength,
  Pointer<Uint32>? lpnLengthNeeded,
) =>
    GetUserObjectInformationW_Wrapper(
      hObj,
      nIndex,
      pvInfo ?? nullptr,
      nLength,
      lpnLengthNeeded ?? nullptr,
    ) !=
    FALSE;

/// Retrieves a handle to a window that has the specified relationship (Z-Order
/// or owner) to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindow(int hWnd, GET_WINDOW_CMD uCmd) => GetWindow_Wrapper(hWnd, uCmd);

/// Retrieves the device context (DC) for the entire window, including title
/// bar, menus, and scroll bars.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowDC(int? hWnd) => _GetWindowDC(hWnd ?? NULL);

@Native<HDC Function(HWND)>(symbol: 'GetWindowDC')
external int _GetWindowDC(int hWnd);

/// Retrieves the current display affinity setting, from any process, for a
/// given window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdisplayaffinity>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetWindowDisplayAffinity(int hWnd, Pointer<Uint32> pdwAffinity) =>
    GetWindowDisplayAffinity_Wrapper(hWnd, pdwAffinity) != FALSE;

/// Returns the DPI_AWARENESS_CONTEXT associated with a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowDpiAwarenessContext(int hwnd) =>
    _GetWindowDpiAwarenessContext(hwnd);

@Native<DPI_AWARENESS_CONTEXT Function(HWND)>(
  symbol: 'GetWindowDpiAwarenessContext',
)
external int _GetWindowDpiAwarenessContext(int hwnd);

/// Returns the DPI_HOSTING_BEHAVIOR of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpihostingbehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_HOSTING_BEHAVIOR GetWindowDpiHostingBehavior(int hwnd) =>
    DPI_HOSTING_BEHAVIOR(_GetWindowDpiHostingBehavior(hwnd));

@Native<Int32 Function(HWND)>(symbol: 'GetWindowDpiHostingBehavior')
external int _GetWindowDpiHostingBehavior(int hwnd);

/// Retrieves information about the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetWindowInfo(int hwnd, Pointer<WINDOWINFO> pwi) =>
    GetWindowInfo_Wrapper(hwnd, pwi) != FALSE;

/// Retrieves information about the specified window.
///
/// The function also retrieves the value at a specified offset into the extra
/// window memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowlongptrw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowLongPtr(int hWnd, WINDOW_LONG_PTR_INDEX nIndex) =>
    GetWindowLongPtrW_Wrapper(hWnd, nIndex);

/// Retrieves the full path and file name of the module associated with the
/// specified window handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowmodulefilenamew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowModuleFileName(int hwnd, PWSTR pszFileName, int cchFileNameMax) =>
    _GetWindowModuleFileName(hwnd, pszFileName, cchFileNameMax);

@Native<Uint32 Function(HWND, PWSTR, Uint32)>(
  symbol: 'GetWindowModuleFileNameW',
)
external int _GetWindowModuleFileName(
  int hwnd,
  PWSTR pszFileName,
  int cchFileNameMax,
);

/// Retrieves the show state and the restored, minimized, and maximized
/// positions of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowplacement>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetWindowPlacement(int hWnd, Pointer<WINDOWPLACEMENT> lpwndpl) =>
    GetWindowPlacement_Wrapper(hWnd, lpwndpl) != FALSE;

/// Retrieves the dimensions of the bounding rectangle of the specified window.
///
/// The dimensions are given in screen coordinates that are relative to the
/// upper-left corner of the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetWindowRect(int hWnd, Pointer<RECT> lpRect) =>
    GetWindowRect_Wrapper(hWnd, lpRect) != FALSE;

/// Obtains a copy of the window region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetWindowRgn(int hWnd, int hRgn) =>
    GDI_REGION_TYPE(_GetWindowRgn(hWnd, hRgn));

@Native<Int32 Function(HWND, HRGN)>(symbol: 'GetWindowRgn')
external int _GetWindowRgn(int hWnd, int hRgn);

/// Retrieves the dimensions of the tightest bounding rectangle for the window
/// region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgnbox>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetWindowRgnBox(int hWnd, Pointer<RECT> lprc) =>
    GDI_REGION_TYPE(_GetWindowRgnBox(hWnd, lprc));

@Native<Int32 Function(HWND, Pointer<RECT>)>(symbol: 'GetWindowRgnBox')
external int _GetWindowRgnBox(int hWnd, Pointer<RECT> lprc);

/// Copies the text of the specified window's title bar (if it has one) into a
/// buffer.
///
/// If the specified window is a control, the text of the control is copied.
/// However, GetWindowText cannot retrieve the text of a control in another
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowtextw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowText(int hWnd, PWSTR lpString, int nMaxCount) =>
    GetWindowTextW_Wrapper(hWnd, lpString, nMaxCount);

/// Retrieves the length, in characters, of the specified window's title bar
/// text (if the window has a title bar).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowtextlengthw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowTextLength(int hWnd) => GetWindowTextLengthW_Wrapper(hWnd);

/// Retrieves the identifier of the thread that created the specified window
/// and, optionally, the identifier of the process that created the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowthreadprocessid>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowThreadProcessId(int hWnd, Pointer<Uint32>? lpdwProcessId) =>
    _GetWindowThreadProcessId(hWnd, lpdwProcessId ?? nullptr);

@Native<Uint32 Function(HWND, Pointer<Uint32>)>(
  symbol: 'GetWindowThreadProcessId',
)
external int _GetWindowThreadProcessId(int hWnd, Pointer<Uint32> lpdwProcessId);

/// Draws gray text at the specified location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-graystringw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GrayString(
  int hDC,
  int? hBrush,
  Pointer<NativeFunction<GRAYSTRINGPROC>>? lpOutputFunc,
  int lpData,
  int nCount,
  int x,
  int y,
  int nWidth,
  int nHeight,
) =>
    _GrayString(
      hDC,
      hBrush ?? NULL,
      lpOutputFunc ?? nullptr,
      lpData,
      nCount,
      x,
      y,
      nWidth,
      nHeight,
    ) !=
    FALSE;

@Native<
  BOOL Function(
    HDC,
    HBRUSH,
    Pointer<NativeFunction<GRAYSTRINGPROC>>,
    LPARAM,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'GrayStringW')
external int _GrayString(
  int hDC,
  int hBrush,
  Pointer<NativeFunction<GRAYSTRINGPROC>> lpOutputFunc,
  int lpData,
  int nCount,
  int x,
  int y,
  int nWidth,
  int nHeight,
);

/// Removes the caret from the screen.
///
/// Hiding a caret does not destroy its current shape or invalidate the
/// insertion point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-hidecaret>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool HideCaret(int? hWnd) => HideCaret_Wrapper(hWnd ?? NULL) != FALSE;

/// Adds or removes highlighting from an item in a menu bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-hilitemenuitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool HiliteMenuItem(int hWnd, int hMenu, int uIDHiliteItem, int uHilite) =>
    _HiliteMenuItem(hWnd, hMenu, uIDHiliteItem, uHilite) != FALSE;

@Native<BOOL Function(HWND, HMENU, Uint32, Uint32)>(symbol: 'HiliteMenuItem')
external int _HiliteMenuItem(
  int hWnd,
  int hMenu,
  int uIDHiliteItem,
  int uHilite,
);

/// Increases or decreases the width and height of the specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-inflaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InflateRect(Pointer<RECT> lprc, int dx, int dy) =>
    _InflateRect(lprc, dx, dy) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Int32, Int32)>(symbol: 'InflateRect')
external int _InflateRect(Pointer<RECT> lprc, int dx, int dy);

/// Determines whether the current window procedure is processing a message that
/// was sent from another thread (in the same process or a different process) by
/// a call to the SendMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insendmessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InSendMessage() => _InSendMessage() != FALSE;

@Native<BOOL Function()>(symbol: 'InSendMessage')
external int _InSendMessage();

/// Determines whether the current window procedure is processing a message that
/// was sent from another thread (in the same process or a different process).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insendmessageex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int InSendMessageEx() => _InSendMessageEx(nullptr);

@Native<Uint32 Function(Pointer)>(symbol: 'InSendMessageEx')
external int _InSendMessageEx(Pointer lpReserved);

/// Inserts a new menu item into a menu, moving other items down the menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insertmenuw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InsertMenu(
  int hMenu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
  int uIDNewItem,
  PCWSTR? lpNewItem,
) =>
    InsertMenuW_Wrapper(
      hMenu,
      uPosition,
      uFlags,
      uIDNewItem,
      lpNewItem ?? nullptr,
    ) !=
    FALSE;

/// Inserts a new menu item at the specified position in a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insertmenuitemw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InsertMenuItem(
  int hmenu,
  int item,
  bool fByPosition,
  Pointer<MENUITEMINFO> lpmi,
) =>
    InsertMenuItemW_Wrapper(hmenu, item, fByPosition ? TRUE : FALSE, lpmi) !=
    FALSE;

/// Calculates the intersection of two source rectangles and places the
/// coordinates of the intersection rectangle into the destination rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-intersectrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IntersectRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
) => _IntersectRect(lprcDst, lprcSrc1, lprcSrc2) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'IntersectRect',
)
external int _IntersectRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
);

/// Adds a rectangle to the specified window's update region.
///
/// The update region represents the portion of the window's client area that
/// must be redrawn.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invalidaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InvalidateRect(int? hWnd, Pointer<RECT>? lpRect, bool bErase) =>
    _InvalidateRect(hWnd ?? NULL, lpRect ?? nullptr, bErase ? TRUE : FALSE) !=
    FALSE;

@Native<BOOL Function(HWND, Pointer<RECT>, BOOL)>(symbol: 'InvalidateRect')
external int _InvalidateRect(int hWnd, Pointer<RECT> lpRect, int bErase);

/// Invalidates the client area within the specified region by adding it to the
/// current update region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invalidatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InvalidateRgn(int hWnd, int? hRgn, bool bErase) =>
    _InvalidateRgn(hWnd, hRgn ?? NULL, bErase ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(HWND, HRGN, BOOL)>(symbol: 'InvalidateRgn')
external int _InvalidateRgn(int hWnd, int hRgn, int bErase);

/// Inverts a rectangle in a window by performing a logical NOT operation on the
/// color values for each pixel in the rectangle's interior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invertrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InvertRect(int hDC, Pointer<RECT> lprc) => _InvertRect(hDC, lprc) != FALSE;

@Native<BOOL Function(HDC, Pointer<RECT>)>(symbol: 'InvertRect')
external int _InvertRect(int hDC, Pointer<RECT> lprc);

/// Determines whether a window is a child window or descendant window of a
/// specified parent window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ischild>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsChild(int hWndParent, int hWnd) => _IsChild(hWndParent, hWnd) != FALSE;

@Native<BOOL Function(HWND, HWND)>(symbol: 'IsChild')
external int _IsChild(int hWndParent, int hWnd);

/// Determines whether the clipboard contains data in the specified format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isclipboardformatavailable>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsClipboardFormatAvailable(int format) =>
    IsClipboardFormatAvailable_Wrapper(format) != FALSE;

/// Determines whether a message is intended for the specified dialog box and,
/// if it is, processes the message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isdialogmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsDialogMessage(int hDlg, Pointer<MSG> lpMsg) =>
    _IsDialogMessage(hDlg, lpMsg) != FALSE;

@Native<BOOL Function(HWND, Pointer<MSG>)>(symbol: 'IsDialogMessageW')
external int _IsDialogMessage(int hDlg, Pointer<MSG> lpMsg);

/// Determines whether a button control is checked or whether a three-state
/// button control is checked, unchecked, or indeterminate.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isdlgbuttonchecked>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int IsDlgButtonChecked(int hDlg, int nIDButton) =>
    _IsDlgButtonChecked(hDlg, nIDButton);

@Native<Uint32 Function(HWND, Int32)>(symbol: 'IsDlgButtonChecked')
external int _IsDlgButtonChecked(int hDlg, int nIDButton);

/// Determines whether the calling thread is already a GUI thread.
///
/// It can also optionally convert the thread to a GUI thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isguithread>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsGUIThread(bool bConvert) =>
    _IsGUIThread(bConvert ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(BOOL)>(symbol: 'IsGUIThread')
external int _IsGUIThread(int bConvert);

/// Determines whether the system considers that a specified application is not
/// responding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ishungappwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsHungAppWindow(int hwnd) => _IsHungAppWindow(hwnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsHungAppWindow')
external int _IsHungAppWindow(int hwnd);

/// Determines whether the specified window is minimized (iconic).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isiconic>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsIconic(int hWnd) => _IsIconic(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsIconic')
external int _IsIconic(int hWnd);

/// Determines whether the process belongs to a Windows Store app.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isimmersiveprocess>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsImmersiveProcess(int hProcess) =>
    IsImmersiveProcess_Wrapper(hProcess) != FALSE;

/// Determines whether a handle is a menu handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsMenu(int hMenu) => _IsMenu(hMenu) != FALSE;

@Native<BOOL Function(HMENU)>(symbol: 'IsMenu')
external int _IsMenu(int hMenu);

/// Indicates whether EnableMouseInPointer is set for the mouse to act as a
/// pointer input device and send WM_POINTER messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismouseinpointerenabled>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsMouseInPointerEnabled() => _IsMouseInPointerEnabled() != FALSE;

@Native<BOOL Function()>(symbol: 'IsMouseInPointerEnabled')
external int _IsMouseInPointerEnabled();

/// Determines whether the current process is dots per inch (dpi) aware such
/// that it adjusts the sizes of UI elements to compensate for the dpi setting.
///
/// **Note:** This function may be altered or unavailable in the newer versions
/// of Windows. Use GetProcessDPIAwareness instead.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isprocessdpiaware>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsProcessDPIAware() => _IsProcessDPIAware() != FALSE;

@Native<BOOL Function()>(symbol: 'IsProcessDPIAware')
external int _IsProcessDPIAware();

/// Determines whether the specified rectangle is empty.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isrectempty>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsRectEmpty(Pointer<RECT> lprc) => _IsRectEmpty(lprc) != FALSE;

@Native<BOOL Function(Pointer<RECT>)>(symbol: 'IsRectEmpty')
external int _IsRectEmpty(Pointer<RECT> lprc);

/// Checks whether a specified window is touch-capable and, optionally,
/// retrieves the modifier flags set for the window's touch capability.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-istouchwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsTouchWindow(int hwnd, Pointer<Uint32>? pulFlags) =>
    _IsTouchWindow(hwnd, pulFlags ?? nullptr) != FALSE;

@Native<BOOL Function(HWND, Pointer<Uint32>)>(symbol: 'IsTouchWindow')
external int _IsTouchWindow(int hwnd, Pointer<Uint32> pulFlags);

/// Determines if a specified DPI_AWARENESS_CONTEXT is valid and supported by
/// the current system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isvaliddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsValidDpiAwarenessContext(int value) =>
    _IsValidDpiAwarenessContext(value) != FALSE;

@Native<BOOL Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'IsValidDpiAwarenessContext',
)
external int _IsValidDpiAwarenessContext(int value);

/// Determines whether the specified window handle identifies an existing
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindow(int? hWnd) => _IsWindow(hWnd ?? NULL) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsWindow')
external int _IsWindow(int hWnd);

/// Determines whether the specified window is enabled for mouse and keyboard
/// input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowenabled>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowEnabled(int hWnd) => _IsWindowEnabled(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsWindowEnabled')
external int _IsWindowEnabled(int hWnd);

/// Determines whether the specified window is a native Unicode window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowunicode>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowUnicode(int hWnd) => _IsWindowUnicode(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsWindowUnicode')
external int _IsWindowUnicode(int hWnd);

/// Determines the visibility state of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowvisible>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowVisible(int hWnd) => _IsWindowVisible(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsWindowVisible')
external int _IsWindowVisible(int hWnd);

/// Determines whether the last message read from the current thread's queue
/// originated from a WOW64 process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswow64message>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWow64Message() => _IsWow64Message() != FALSE;

@Native<BOOL Function()>(symbol: 'IsWow64Message')
external int _IsWow64Message();

/// Determines whether a window is maximized.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iszoomed>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsZoomed(int hWnd) => _IsZoomed(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'IsZoomed')
external int _IsZoomed(int hWnd);

/// Destroys the specified timer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-killtimer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool KillTimer(int? hWnd, int uIDEvent) =>
    KillTimer_Wrapper(hWnd ?? NULL, uIDEvent) != FALSE;

/// Loads the specified accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadacceleratorsw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadAccelerators(int? hInstance, PCWSTR lpTableName) =>
    LoadAcceleratorsW_Wrapper(hInstance ?? NULL, lpTableName);

/// Loads the specified cursor resource from the executable (.EXE) file
/// associated with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadCursor(int? hInstance, PCWSTR lpCursorName) =>
    LoadCursorW_Wrapper(hInstance ?? NULL, lpCursorName);

/// Creates a cursor based on data contained in a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorfromfilew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadCursorFromFile(PCWSTR lpFileName) =>
    LoadCursorFromFileW_Wrapper(lpFileName);

/// Loads the specified icon resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadiconw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadIcon(int? hInstance, PCWSTR lpIconName) =>
    LoadIconW_Wrapper(hInstance ?? NULL, lpIconName);

/// Loads an icon, cursor, animated cursor, or bitmap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadimagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadImage(
  int? hInst,
  PCWSTR name,
  GDI_IMAGE_TYPE type,
  int cx,
  int cy,
  IMAGE_FLAGS fuLoad,
) => LoadImageW_Wrapper(hInst ?? NULL, name, type, cx, cy, fuLoad);

/// Loads a new input locale identifier (formerly called the keyboard layout)
/// into the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadkeyboardlayoutw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadKeyboardLayout(PCWSTR pwszKLID, ACTIVATE_KEYBOARD_LAYOUT_FLAGS flags) =>
    LoadKeyboardLayoutW_Wrapper(pwszKLID, flags);

/// Loads the specified menu resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadMenu(int? hInstance, PCWSTR lpMenuName) =>
    LoadMenuW_Wrapper(hInstance ?? NULL, lpMenuName);

/// Loads the specified menu template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuindirectw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadMenuIndirect(Pointer lpMenuTemplate) =>
    LoadMenuIndirectW_Wrapper(lpMenuTemplate);

/// Loads a string resource from the executable file associated with a specified
/// module, copies the string into a buffer, and appends a terminating null
/// character.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadstringw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LoadString(int? hInstance, int uID, PWSTR lpBuffer, int cchBufferMax) =>
    LoadStringW_Wrapper(hInstance ?? NULL, uID, lpBuffer, cchBufferMax);

/// The foreground process can call the LockSetForegroundWindow function to
/// disable calls to the SetForegroundWindow function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-locksetforegroundwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LockSetForegroundWindow(FOREGROUND_WINDOW_LOCK_CODE uLockCode) =>
    LockSetForegroundWindow_Wrapper(uLockCode) != FALSE;

/// Disables or enables drawing in the specified window.
///
/// Only one window can be locked at a time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockwindowupdate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LockWindowUpdate(int? hWndLock) =>
    _LockWindowUpdate(hWndLock ?? NULL) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'LockWindowUpdate')
external int _LockWindowUpdate(int hWndLock);

/// Locks the workstation's display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockworkstation>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LockWorkStation() => LockWorkStation_Wrapper() != FALSE;

/// Converts the logical coordinates of a point in a window to physical
/// coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-logicaltophysicalpoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LogicalToPhysicalPoint(int hWnd, Pointer<POINT> lpPoint) =>
    _LogicalToPhysicalPoint(hWnd, lpPoint) != FALSE;

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'LogicalToPhysicalPoint')
external int _LogicalToPhysicalPoint(int hWnd, Pointer<POINT> lpPoint);

/// Converts a point in a window from logical coordinates into physical
/// coordinates, regardless of the dots per inch (dpi) awareness of the caller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-logicaltophysicalpointforpermonitordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LogicalToPhysicalPointForPerMonitorDPI(
  int? hWnd,
  Pointer<POINT> lpPoint,
) => _LogicalToPhysicalPointForPerMonitorDPI(hWnd ?? NULL, lpPoint) != FALSE;

@Native<BOOL Function(HWND, Pointer<POINT>)>(
  symbol: 'LogicalToPhysicalPointForPerMonitorDPI',
)
external int _LogicalToPhysicalPointForPerMonitorDPI(
  int hWnd,
  Pointer<POINT> lpPoint,
);

/// Searches through icon or cursor data for the icon or cursor that best fits
/// the current display device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lookupiconidfromdirectory>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LookupIconIdFromDirectory(Pointer<Uint8> presbits, bool fIcon) =>
    LookupIconIdFromDirectory_Wrapper(presbits, fIcon ? TRUE : FALSE);

/// Searches through icon or cursor data for the icon or cursor that best fits
/// the current display device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lookupiconidfromdirectoryex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int LookupIconIdFromDirectoryEx(
  Pointer<Uint8> presbits,
  bool fIcon,
  int cxDesired,
  int cyDesired,
  IMAGE_FLAGS flags,
) => LookupIconIdFromDirectoryEx_Wrapper(
  presbits,
  fIcon ? TRUE : FALSE,
  cxDesired,
  cyDesired,
  flags,
);

/// Converts the specified dialog box units to screen units (pixels).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapdialogrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool MapDialogRect(int hDlg, Pointer<RECT> lpRect) =>
    MapDialogRect_Wrapper(hDlg, lpRect) != FALSE;

/// Translates (maps) a virtual-key code into a scan code or character value, or
/// translates a scan code into a virtual-key code.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapvirtualkeyw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MapVirtualKey(int uCode, MAP_VIRTUAL_KEY_TYPE uMapType) =>
    _MapVirtualKey(uCode, uMapType);

@Native<Uint32 Function(Uint32, Uint32)>(symbol: 'MapVirtualKeyW')
external int _MapVirtualKey(int uCode, int uMapType);

/// Translates (maps) a virtual-key code into a scan code or character value, or
/// translates a scan code into a virtual-key code.
///
/// The function translates the codes using the input language and an input
/// locale identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapvirtualkeyexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MapVirtualKeyEx(int uCode, MAP_VIRTUAL_KEY_TYPE uMapType, int? dwhkl) =>
    _MapVirtualKeyEx(uCode, uMapType, dwhkl ?? NULL);

@Native<Uint32 Function(Uint32, Uint32, HKL)>(symbol: 'MapVirtualKeyExW')
external int _MapVirtualKeyEx(int uCode, int uMapType, int dwhkl);

/// Converts (maps) a set of points from a coordinate space relative to one
/// window to a coordinate space relative to another window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapwindowpoints>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MapWindowPoints(
  int? hWndFrom,
  int? hWndTo,
  Pointer<POINT> lpPoints,
  int cPoints,
) => _MapWindowPoints(hWndFrom ?? NULL, hWndTo ?? NULL, lpPoints, cPoints);

@Native<Int32 Function(HWND, HWND, Pointer<POINT>, Uint32)>(
  symbol: 'MapWindowPoints',
)
external int _MapWindowPoints(
  int hWndFrom,
  int hWndTo,
  Pointer<POINT> lpPoints,
  int cPoints,
);

/// Determines which menu item, if any, is at the specified location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-menuitemfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MenuItemFromPoint(int? hWnd, int hMenu, POINT ptScreen) =>
    _MenuItemFromPoint(hWnd ?? NULL, hMenu, ptScreen);

@Native<Int32 Function(HWND, HMENU, POINT)>(symbol: 'MenuItemFromPoint')
external int _MenuItemFromPoint(int hWnd, int hMenu, POINT ptScreen);

/// Displays a modal dialog box that contains a system icon, a set of buttons,
/// and a brief application-specific message, such as status or error
/// information.
///
/// The message box returns an integer value that indicates which button the
/// user clicked.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
MESSAGEBOX_RESULT MessageBox(
  int? hWnd,
  PCWSTR? lpText,
  PCWSTR? lpCaption,
  MESSAGEBOX_STYLE uType,
) => MESSAGEBOX_RESULT(
  MessageBoxW_Wrapper(
    hWnd ?? NULL,
    lpText ?? nullptr,
    lpCaption ?? nullptr,
    uType,
  ),
);

/// Creates, displays, and operates a message box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
MESSAGEBOX_RESULT MessageBoxEx(
  int? hWnd,
  PCWSTR? lpText,
  PCWSTR? lpCaption,
  MESSAGEBOX_STYLE uType,
  int wLanguageId,
) => MESSAGEBOX_RESULT(
  MessageBoxExW_Wrapper(
    hWnd ?? NULL,
    lpText ?? nullptr,
    lpCaption ?? nullptr,
    uType,
    wLanguageId,
  ),
);

/// Changes an existing menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-modifymenuw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ModifyMenu(
  int hMnu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
  int uIDNewItem,
  PCWSTR? lpNewItem,
) =>
    ModifyMenuW_Wrapper(
      hMnu,
      uPosition,
      uFlags,
      uIDNewItem,
      lpNewItem ?? nullptr,
    ) !=
    FALSE;

/// Retrieves a handle to the display monitor that contains a specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MonitorFromPoint(POINT pt, MONITOR_FROM_FLAGS dwFlags) =>
    _MonitorFromPoint(pt, dwFlags);

@Native<HMONITOR Function(POINT, Uint32)>(symbol: 'MonitorFromPoint')
external int _MonitorFromPoint(POINT pt, int dwFlags);

/// Retrieves a handle to the display monitor that has the largest area of
/// intersection with a specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfromrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MonitorFromRect(Pointer<RECT> lprc, MONITOR_FROM_FLAGS dwFlags) =>
    _MonitorFromRect(lprc, dwFlags);

@Native<HMONITOR Function(Pointer<RECT>, Uint32)>(symbol: 'MonitorFromRect')
external int _MonitorFromRect(Pointer<RECT> lprc, int dwFlags);

/// Retrieves a handle to the display monitor that has the largest area of
/// intersection with the bounding rectangle of a specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfromwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MonitorFromWindow(int hwnd, MONITOR_FROM_FLAGS dwFlags) =>
    _MonitorFromWindow(hwnd, dwFlags);

@Native<HMONITOR Function(HWND, Uint32)>(symbol: 'MonitorFromWindow')
external int _MonitorFromWindow(int hwnd, int dwFlags);

/// Changes the position and dimensions of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-movewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool MoveWindow(
  int hWnd,
  int x,
  int y,
  int nWidth,
  int nHeight,
  bool bRepaint,
) =>
    MoveWindow_Wrapper(hWnd, x, y, nWidth, nHeight, bRepaint ? TRUE : FALSE) !=
    FALSE;

/// Waits until one or all of the specified objects are in the signaled state or
/// the time-out interval elapses.
///
/// The objects can include input event objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-msgwaitformultipleobjects>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
WAIT_EVENT MsgWaitForMultipleObjects(
  int nCount,
  Pointer<HANDLE>? pHandles,
  bool fWaitAll,
  int dwMilliseconds,
  QUEUE_STATUS_FLAGS dwWakeMask,
) => WAIT_EVENT(
  MsgWaitForMultipleObjects_Wrapper(
    nCount,
    pHandles ?? nullptr,
    fWaitAll ? TRUE : FALSE,
    dwMilliseconds,
    dwWakeMask,
  ),
);

/// Waits until one or all of the specified objects are in the signaled state,
/// an I/O completion routine or asynchronous procedure call (APC) is queued to
/// the thread, or the time-out interval elapses.
///
/// The array of objects can include input event objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-msgwaitformultipleobjectsex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
WAIT_EVENT MsgWaitForMultipleObjectsEx(
  int nCount,
  Pointer<HANDLE>? pHandles,
  int dwMilliseconds,
  QUEUE_STATUS_FLAGS dwWakeMask,
  MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS dwFlags,
) => WAIT_EVENT(
  MsgWaitForMultipleObjectsEx_Wrapper(
    nCount,
    pHandles ?? nullptr,
    dwMilliseconds,
    dwWakeMask,
    dwFlags,
  ),
);

/// Signals the system that a predefined event occurred.
///
/// If any client applications have registered a hook function for the event,
/// the system calls the client's hook function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-notifywinevent>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void NotifyWinEvent(int event, int hwnd, int idObject, int idChild) =>
    _NotifyWinEvent(event, hwnd, idObject, idChild);

@Native<Void Function(Uint32, HWND, Int32, Int32)>(symbol: 'NotifyWinEvent')
external void _NotifyWinEvent(int event, int hwnd, int idObject, int idChild);

/// Maps OEMASCII codes 0 through 0x0FF into the OEM scan codes and shift
/// states.
///
/// The function provides information that allows a program to send OEM text to
/// another program by simulating keyboard input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-oemkeyscan>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int OemKeyScan(int wOemChar) => _OemKeyScan(wOemChar);

@Native<Uint32 Function(Uint16)>(symbol: 'OemKeyScan')
external int _OemKeyScan(int wOemChar);

/// Moves the specified rectangle by the specified offsets.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-offsetrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool OffsetRect(Pointer<RECT> lprc, int dx, int dy) =>
    _OffsetRect(lprc, dx, dy) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Int32, Int32)>(symbol: 'OffsetRect')
external int _OffsetRect(Pointer<RECT> lprc, int dx, int dy);

/// Opens the clipboard for examination and prevents other applications from
/// modifying the clipboard content.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openclipboard>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool OpenClipboard(int? hWndNewOwner) =>
    OpenClipboard_Wrapper(hWndNewOwner ?? NULL) != FALSE;

/// Opens the specified desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-opendesktopw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int OpenDesktop(
  PCWSTR lpszDesktop,
  DESKTOP_CONTROL_FLAGS dwFlags,
  bool fInherit,
  int dwDesiredAccess,
) => OpenDesktopW_Wrapper(
  lpszDesktop,
  dwFlags,
  fInherit ? TRUE : FALSE,
  dwDesiredAccess,
);

/// Restores a minimized (iconic) window to its previous size and position; it
/// then activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openicon>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool OpenIcon(int hWnd) => OpenIcon_Wrapper(hWnd) != FALSE;

/// Opens the desktop that receives user input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openinputdesktop>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int OpenInputDesktop(
  DESKTOP_CONTROL_FLAGS dwFlags,
  bool fInherit,
  DESKTOP_ACCESS_FLAGS dwDesiredAccess,
) =>
    OpenInputDesktop_Wrapper(dwFlags, fInherit ? TRUE : FALSE, dwDesiredAccess);

/// Opens the specified window station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openwindowstationw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int OpenWindowStation(PCWSTR lpszWinSta, bool fInherit, int dwDesiredAccess) =>
    OpenWindowStationW_Wrapper(
      lpszWinSta,
      fInherit ? TRUE : FALSE,
      dwDesiredAccess,
    );

/// Fills the clipping region in the specified device context with the desktop
/// pattern or wallpaper.
///
/// The function is provided primarily for shell desktops.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-paintdesktop>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PaintDesktop(int hdc) => _PaintDesktop(hdc) != FALSE;

@Native<BOOL Function(HDC)>(symbol: 'PaintDesktop')
external int _PaintDesktop(int hdc);

/// Dispatches incoming nonqueued messages, checks the thread message queue for
/// a posted message, and retrieves the message (if any exist).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-peekmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PeekMessage(
  Pointer<MSG> lpMsg,
  int? hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
  PEEK_MESSAGE_REMOVE_TYPE wRemoveMsg,
) =>
    _PeekMessage(
      lpMsg,
      hWnd ?? NULL,
      wMsgFilterMin,
      wMsgFilterMax,
      wRemoveMsg,
    ) !=
    FALSE;

@Native<BOOL Function(Pointer<MSG>, HWND, Uint32, Uint32, Uint32)>(
  symbol: 'PeekMessageW',
)
external int _PeekMessage(
  Pointer<MSG> lpMsg,
  int hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
  int wRemoveMsg,
);

/// Converts the physical coordinates of a point in a window to logical
/// coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-physicaltologicalpoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PhysicalToLogicalPoint(int hWnd, Pointer<POINT> lpPoint) =>
    _PhysicalToLogicalPoint(hWnd, lpPoint) != FALSE;

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'PhysicalToLogicalPoint')
external int _PhysicalToLogicalPoint(int hWnd, Pointer<POINT> lpPoint);

/// Converts a point in a window from physical coordinates into logical
/// coordinates, regardless of the dots per inch (dpi) awareness of the caller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-physicaltologicalpointforpermonitordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PhysicalToLogicalPointForPerMonitorDPI(
  int? hWnd,
  Pointer<POINT> lpPoint,
) => _PhysicalToLogicalPointForPerMonitorDPI(hWnd ?? NULL, lpPoint) != FALSE;

@Native<BOOL Function(HWND, Pointer<POINT>)>(
  symbol: 'PhysicalToLogicalPointForPerMonitorDPI',
)
external int _PhysicalToLogicalPointForPerMonitorDPI(
  int hWnd,
  Pointer<POINT> lpPoint,
);

/// Places (posts) a message in the message queue associated with the thread
/// that created the specified window and returns without waiting for the thread
/// to process the message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-postmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PostMessage(int? hWnd, int msg, int wParam, int lParam) =>
    PostMessageW_Wrapper(hWnd ?? NULL, msg, wParam, lParam) != FALSE;

/// Indicates to the system that a thread has made a request to terminate
/// (quit).
///
/// It is typically used in response to a WM_DESTROY message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-postquitmessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void PostQuitMessage(int nExitCode) => _PostQuitMessage(nExitCode);

@Native<Void Function(Int32)>(symbol: 'PostQuitMessage')
external void _PostQuitMessage(int nExitCode);

/// Posts a message to the message queue of the specified thread.
///
/// It returns without waiting for the thread to process the message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-postthreadmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PostThreadMessage(int idThread, int msg, int wParam, int lParam) =>
    PostThreadMessageW_Wrapper(idThread, msg, wParam, lParam) != FALSE;

/// Copies a visual window into the specified device context (DC), typically a
/// printer DC.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-printwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PrintWindow(int hwnd, int hdcBlt, PRINT_WINDOW_FLAGS nFlags) =>
    _PrintWindow(hwnd, hdcBlt, nFlags) != FALSE;

@Native<BOOL Function(HWND, HDC, Uint32)>(symbol: 'PrintWindow')
external int _PrintWindow(int hwnd, int hdcBlt, int nFlags);

/// Creates an array of handles to icons that are extracted from a specified
/// file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-privateextracticonsw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int PrivateExtractIcons(
  PCWSTR szFileName,
  int nIconIndex,
  int cxIcon,
  int cyIcon,
  Pointer<HICON>? phicon,
  Pointer<Uint32>? piconid,
  int nIcons,
  int flags,
) => _PrivateExtractIcons(
  szFileName,
  nIconIndex,
  cxIcon,
  cyIcon,
  phicon ?? nullptr,
  piconid ?? nullptr,
  nIcons,
  flags,
);

@Native<
  Uint32 Function(
    PCWSTR,
    Int32,
    Int32,
    Int32,
    Pointer<HICON>,
    Pointer<Uint32>,
    Uint32,
    Uint32,
  )
>(symbol: 'PrivateExtractIconsW')
external int _PrivateExtractIcons(
  PCWSTR szFileName,
  int nIconIndex,
  int cxIcon,
  int cyIcon,
  Pointer<HICON> phicon,
  Pointer<Uint32> piconid,
  int nIcons,
  int flags,
);

/// Determines whether the specified point lies within the specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ptinrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PtInRect(Pointer<RECT> lprc, POINT pt) => _PtInRect(lprc, pt) != FALSE;

@Native<BOOL Function(Pointer<RECT>, POINT)>(symbol: 'PtInRect')
external int _PtInRect(Pointer<RECT> lprc, POINT pt);

/// Updates the specified rectangle or region in a window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-redrawwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RedrawWindow(
  int? hWnd,
  Pointer<RECT>? lprcUpdate,
  int? hrgnUpdate,
  REDRAW_WINDOW_FLAGS flags,
) =>
    _RedrawWindow(
      hWnd ?? NULL,
      lprcUpdate ?? nullptr,
      hrgnUpdate ?? NULL,
      flags,
    ) !=
    FALSE;

@Native<BOOL Function(HWND, Pointer<RECT>, HRGN, Uint32)>(
  symbol: 'RedrawWindow',
)
external int _RedrawWindow(
  int hWnd,
  Pointer<RECT> lprcUpdate,
  int hrgnUpdate,
  int flags,
);

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RegisterClass(Pointer<WNDCLASS> lpWndClass) =>
    RegisterClassW_Wrapper(lpWndClass);

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RegisterClassEx(Pointer<WNDCLASSEX> param0) =>
    RegisterClassExW_Wrapper(param0);

/// Registers a new clipboard format.
///
/// This format can then be used as a valid clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclipboardformatw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RegisterClipboardFormat(PCWSTR lpszFormat) =>
    RegisterClipboardFormatW_Wrapper(lpszFormat);

/// Registers the device or type of device for which a window will receive
/// notifications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerdevicenotificationw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RegisterDeviceNotification(
  int hRecipient,
  Pointer notificationFilter,
  REGISTER_NOTIFICATION_FLAGS flags,
) => RegisterDeviceNotificationW_Wrapper(hRecipient, notificationFilter, flags);

/// Defines a system-wide hot key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerhotkey>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RegisterHotKey(int? hWnd, int id, HOT_KEY_MODIFIERS fsModifiers, int vk) =>
    RegisterHotKey_Wrapper(hWnd ?? NULL, id, fsModifiers, vk) != FALSE;

/// Registers the application to receive power setting notifications for the
/// specific power setting event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerpowersettingnotification>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RegisterPowerSettingNotification(
  int hRecipient,
  Pointer<GUID> powerSettingGuid,
  REGISTER_NOTIFICATION_FLAGS flags,
) => RegisterPowerSettingNotification_Wrapper(
  hRecipient,
  powerSettingGuid,
  flags,
);

/// Registers the devices that supply the raw input data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerrawinputdevices>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RegisterRawInputDevices(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  int uiNumDevices,
  int cbSize,
) =>
    RegisterRawInputDevices_Wrapper(pRawInputDevices, uiNumDevices, cbSize) !=
    FALSE;

/// Registers a window to process the WM_TOUCHHITTESTING notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchhittestingwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RegisterTouchHitTestingWindow(int hwnd, int value) =>
    RegisterTouchHitTestingWindow_Wrapper(hwnd, value) != FALSE;

/// Registers a window as being touch-capable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RegisterTouchWindow(int hwnd, REGISTER_TOUCH_WINDOW_FLAGS ulFlags) =>
    RegisterTouchWindow_Wrapper(hwnd, ulFlags) != FALSE;

/// Defines a new window message that is guaranteed to be unique throughout the
/// system.
///
/// The message value can be used when sending or posting messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerwindowmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RegisterWindowMessage(PCWSTR lpString) =>
    RegisterWindowMessageW_Wrapper(lpString);

/// Releases the mouse capture from a window in the current thread and restores
/// normal mouse input processing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-releasecapture>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ReleaseCapture() => ReleaseCapture_Wrapper() != FALSE;

/// Releases a device context (DC), freeing it for use by other applications.
///
/// The effect of the ReleaseDC function depends on the type of DC. It frees
/// only common and window DCs. It has no effect on class or private DCs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-releasedc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ReleaseDC(int? hWnd, int hDC) => _ReleaseDC(hWnd ?? NULL, hDC);

@Native<Int32 Function(HWND, HDC)>(symbol: 'ReleaseDC')
external int _ReleaseDC(int hWnd, int hDC);

/// Removes the given window from the system-maintained clipboard format
/// listener list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removeclipboardformatlistener>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RemoveClipboardFormatListener(int hwnd) =>
    RemoveClipboardFormatListener_Wrapper(hwnd) != FALSE;

/// Deletes a menu item or detaches a submenu from the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removemenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RemoveMenu(int hMenu, int uPosition, MENU_ITEM_FLAGS uFlags) =>
    RemoveMenu_Wrapper(hMenu, uPosition, uFlags) != FALSE;

/// Removes an entry from the property list of the specified window.
///
/// The specified character string identifies the entry to be removed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removepropw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int RemoveProp(int hWnd, PCWSTR lpString) =>
    RemovePropW_Wrapper(hWnd, lpString);

/// Replies to a message sent from another thread by the SendMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-replymessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ReplyMessage(int lResult) => _ReplyMessage(lResult) != FALSE;

@Native<BOOL Function(LRESULT)>(symbol: 'ReplyMessage')
external int _ReplyMessage(int lResult);

/// Converts the screen coordinates of a specified point on the screen to
/// client-area coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-screentoclient>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ScreenToClient(int hWnd, Pointer<POINT> lpPoint) =>
    _ScreenToClient(hWnd, lpPoint) != FALSE;

@Native<BOOL Function(HWND, Pointer<POINT>)>(symbol: 'ScreenToClient')
external int _ScreenToClient(int hWnd, Pointer<POINT> lpPoint);

/// Scrolls a rectangle of bits horizontally and vertically.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrolldc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ScrollDC(
  int hDC,
  int dx,
  int dy,
  Pointer<RECT>? lprcScroll,
  Pointer<RECT>? lprcClip,
  int? hrgnUpdate,
  Pointer<RECT>? lprcUpdate,
) =>
    ScrollDC_Wrapper(
      hDC,
      dx,
      dy,
      lprcScroll ?? nullptr,
      lprcClip ?? nullptr,
      hrgnUpdate ?? NULL,
      lprcUpdate ?? nullptr,
    ) !=
    FALSE;

/// Scrolls the contents of the specified window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrollwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ScrollWindow(
  int hWnd,
  int xAmount,
  int yAmount,
  Pointer<RECT>? lpRect,
  Pointer<RECT>? lpClipRect,
) =>
    ScrollWindow_Wrapper(
      hWnd,
      xAmount,
      yAmount,
      lpRect ?? nullptr,
      lpClipRect ?? nullptr,
    ) !=
    FALSE;

/// Scrolls the contents of the specified window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrollwindowex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ScrollWindowEx(
  int hWnd,
  int dx,
  int dy,
  Pointer<RECT>? prcScroll,
  Pointer<RECT>? prcClip,
  int? hrgnUpdate,
  Pointer<RECT>? prcUpdate,
  SCROLL_WINDOW_FLAGS flags,
) => ScrollWindowEx_Wrapper(
  hWnd,
  dx,
  dy,
  prcScroll ?? nullptr,
  prcClip ?? nullptr,
  hrgnUpdate ?? NULL,
  prcUpdate ?? nullptr,
  flags,
);

/// Sends a message to the specified control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-senddlgitemmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SendDlgItemMessage(
  int hDlg,
  int nIDDlgItem,
  int msg,
  int wParam,
  int lParam,
) => _SendDlgItemMessage(hDlg, nIDDlgItem, msg, wParam, lParam);

@Native<LRESULT Function(HWND, Int32, Uint32, WPARAM, LPARAM)>(
  symbol: 'SendDlgItemMessageW',
)
external int _SendDlgItemMessage(
  int hDlg,
  int nIDDlgItem,
  int msg,
  int wParam,
  int lParam,
);

/// Synthesizes keystrokes, mouse motions, and button clicks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendinput>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SendInput(int cInputs, Pointer<INPUT> pInputs, int cbSize) =>
    SendInput_Wrapper(cInputs, pInputs, cbSize);

/// Sends the specified message to a window or windows.
///
/// The SendMessage function calls the window procedure for the specified window
/// and does not return until the window procedure has processed the message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SendMessage(int hWnd, int msg, int? wParam, int? lParam) =>
    SendMessageW_Wrapper(hWnd, msg, wParam ?? NULL, lParam ?? NULL);

/// Sends the specified message to a window or windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagecallbackw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SendMessageCallback(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
) =>
    SendMessageCallbackW_Wrapper(
      hWnd,
      msg,
      wParam,
      lParam,
      lpResultCallBack,
      dwData,
    ) !=
    FALSE;

/// Sends the specified message to one or more windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagetimeoutw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SendMessageTimeout(
  int hWnd,
  int msg,
  int wParam,
  int lParam,
  SEND_MESSAGE_TIMEOUT_FLAGS fuFlags,
  int uTimeout,
  Pointer<IntPtr>? lpdwResult,
) => SendMessageTimeoutW_Wrapper(
  hWnd,
  msg,
  wParam,
  lParam,
  fuFlags,
  uTimeout,
  lpdwResult ?? nullptr,
);

/// Sends the specified message to a window or windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendnotifymessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SendNotifyMessage(int hWnd, int msg, int wParam, int lParam) =>
    SendNotifyMessageW_Wrapper(hWnd, msg, wParam, lParam) != FALSE;

/// Activates a window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setactivewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetActiveWindow(int hWnd) => SetActiveWindow_Wrapper(hWnd);

/// Sets the mouse capture to the specified window belonging to the current
/// thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcapture>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetCapture(int hWnd) => _SetCapture(hWnd);

@Native<HWND Function(HWND)>(symbol: 'SetCapture')
external int _SetCapture(int hWnd);

/// Sets the caret blink time to the specified number of milliseconds.
///
/// The blink time is the elapsed time, in milliseconds, required to invert the
/// caret's pixels.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcaretblinktime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetCaretBlinkTime(int uMSeconds) =>
    SetCaretBlinkTime_Wrapper(uMSeconds) != FALSE;

/// Moves the caret to the specified coordinates.
///
/// If the window that owns the caret was created with the CS_OWNDC class style,
/// then the specified coordinates are subject to the mapping mode of the device
/// context associated with that window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcaretpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetCaretPos(int x, int y) => SetCaretPos_Wrapper(x, y) != FALSE;

/// Replaces the specified value at the specified offset in the extra class
/// memory or the WNDCLASSEX structure for the class to which the specified
/// window belongs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclasslongptrw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetClassLongPtr(int hWnd, GET_CLASS_LONG_INDEX nIndex, int dwNewLong) =>
    SetClassLongPtrW_Wrapper(hWnd, nIndex, dwNewLong);

/// Places data on the clipboard in a specified clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclipboarddata>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetClipboardData(int uFormat, int? hMem) =>
    SetClipboardData_Wrapper(uFormat, hMem ?? NULL);

/// Adds the specified window to the chain of clipboard viewers.
///
/// Clipboard viewer windows receive a WM_DRAWCLIPBOARD message whenever the
/// content of the clipboard changes. This function is used for backward
/// compatibility with earlier versions of Windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclipboardviewer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetClipboardViewer(int hWndNewViewer) =>
    SetClipboardViewer_Wrapper(hWndNewViewer);

/// Creates a timer with the specified time-out value and coalescing tolerance
/// delay.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcoalescabletimer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetCoalescableTimer(
  int? hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>>? lpTimerFunc,
  int uToleranceDelay,
) => SetCoalescableTimer_Wrapper(
  hWnd ?? NULL,
  nIDEvent,
  uElapse,
  lpTimerFunc ?? nullptr,
  uToleranceDelay,
);

/// Sets the cursor shape.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetCursor(int? hCursor) => _SetCursor(hCursor ?? NULL);

@Native<HCURSOR Function(HCURSOR)>(symbol: 'SetCursor')
external int _SetCursor(int hCursor);

/// Moves the cursor to the specified screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursorpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetCursorPos(int x, int y) => SetCursorPos_Wrapper(x, y) != FALSE;

/// Overrides the default per-monitor DPI scaling behavior of a child window in
/// a dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdialogcontroldpichangebehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDialogControlDpiChangeBehavior(
  int hWnd,
  DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS mask,
  DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS values,
) => SetDialogControlDpiChangeBehavior_Wrapper(hWnd, mask, values) != FALSE;

/// Dialogs in Per-Monitor v2 contexts are automatically DPI scaled.
///
/// This method lets you customize their DPI change behavior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdialogdpichangebehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDialogDpiChangeBehavior(
  int hDlg,
  DIALOG_DPI_CHANGE_BEHAVIORS mask,
  DIALOG_DPI_CHANGE_BEHAVIORS values,
) => SetDialogDpiChangeBehavior_Wrapper(hDlg, mask, values) != FALSE;

/// Sets the screen auto-rotation preferences for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdisplayautorotationpreferences>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDisplayAutoRotationPreferences(ORIENTATION_PREFERENCE orientation) =>
    _SetDisplayAutoRotationPreferences(orientation) != FALSE;

@Native<BOOL Function(Int32)>(symbol: 'SetDisplayAutoRotationPreferences')
external int _SetDisplayAutoRotationPreferences(int orientation);

/// Modifies the display topology, source, and target modes by exclusively
/// enabling the specified paths in the current session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdisplayconfig>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetDisplayConfig(
  int numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO>? pathArray,
  int numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO>? modeInfoArray,
  SET_DISPLAY_CONFIG_FLAGS flags,
) => _SetDisplayConfig(
  numPathArrayElements,
  pathArray ?? nullptr,
  numModeInfoArrayElements,
  modeInfoArray ?? nullptr,
  flags,
);

@Native<
  Int32 Function(
    Uint32,
    Pointer<DISPLAYCONFIG_PATH_INFO>,
    Uint32,
    Pointer<DISPLAYCONFIG_MODE_INFO>,
    Uint32,
  )
>(symbol: 'SetDisplayConfig')
external int _SetDisplayConfig(
  int numPathArrayElements,
  Pointer<DISPLAYCONFIG_PATH_INFO> pathArray,
  int numModeInfoArrayElements,
  Pointer<DISPLAYCONFIG_MODE_INFO> modeInfoArray,
  int flags,
);

/// Sets the text of a control in a dialog box to the string representation of a
/// specified integer value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdlgitemint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDlgItemInt(int hDlg, int nIDDlgItem, int uValue, bool bSigned) =>
    SetDlgItemInt_Wrapper(hDlg, nIDDlgItem, uValue, bSigned ? TRUE : FALSE) !=
    FALSE;

/// Sets the title or text of a control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdlgitemtextw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDlgItemText(int hDlg, int nIDDlgItem, PCWSTR lpString) =>
    SetDlgItemTextW_Wrapper(hDlg, nIDDlgItem, lpString) != FALSE;

/// Sets the double-click time for the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdoubleclicktime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDoubleClickTime(int param0) =>
    SetDoubleClickTime_Wrapper(param0) != FALSE;

/// Sets the keyboard focus to the specified window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setfocus>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetFocus(int? hWnd) => SetFocus_Wrapper(hWnd ?? NULL);

/// Brings the thread that created the specified window into the foreground and
/// activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setforegroundwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetForegroundWindow(int hWnd) => _SetForegroundWindow(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'SetForegroundWindow')
external int _SetForegroundWindow(int hWnd);

/// Configures the messages that are sent from a window for Windows Touch
/// gestures.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setgestureconfig>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetGestureConfig(
  int hwnd,
  int cIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
) =>
    SetGestureConfig_Wrapper(hwnd, NULL, cIDs, pGestureConfig, cbSize) != FALSE;

/// Copies an array of keyboard key states into the calling thread's keyboard
/// input-state table.
///
/// This is the same table accessed by the GetKeyboardState and GetKeyState
/// functions. Changes made to this table do not affect keyboard input to any
/// other thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setkeyboardstate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetKeyboardState(Pointer<Uint8> lpKeyState) =>
    SetKeyboardState_Wrapper(lpKeyState) != FALSE;

/// Sets the opacity and transparency color key of a layered window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setlayeredwindowattributes>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetLayeredWindowAttributes(
  int hwnd,
  int crKey,
  int bAlpha,
  LAYERED_WINDOW_ATTRIBUTES_FLAGS dwFlags,
) => SetLayeredWindowAttributes_Wrapper(hwnd, crKey, bAlpha, dwFlags) != FALSE;

/// Assigns a new menu to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetMenu(int hWnd, int? hMenu) =>
    SetMenu_Wrapper(hWnd, hMenu ?? NULL) != FALSE;

/// Sets the default menu item for the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenudefaultitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetMenuDefaultItem(int hMenu, int uItem, int fByPos) =>
    SetMenuDefaultItem_Wrapper(hMenu, uItem, fByPos) != FALSE;

/// Sets information for a specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetMenuInfo(int param0, Pointer<MENUINFO> param1) =>
    SetMenuInfo_Wrapper(param0, param1) != FALSE;

/// Associates the specified bitmap with a menu item.
///
/// Whether the menu item is selected or clear, the system displays the
/// appropriate bitmap next to the menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuitembitmaps>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetMenuItemBitmaps(
  int hMenu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
  int? hBitmapUnchecked,
  int? hBitmapChecked,
) =>
    SetMenuItemBitmaps_Wrapper(
      hMenu,
      uPosition,
      uFlags,
      hBitmapUnchecked ?? NULL,
      hBitmapChecked ?? NULL,
    ) !=
    FALSE;

/// Changes information about a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuiteminfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetMenuItemInfo(
  int hmenu,
  int item,
  bool fByPositon,
  Pointer<MENUITEMINFO> lpmii,
) =>
    SetMenuItemInfoW_Wrapper(hmenu, item, fByPositon ? TRUE : FALSE, lpmii) !=
    FALSE;

/// Sets the extra message information for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmessageextrainfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetMessageExtraInfo(int lParam) => _SetMessageExtraInfo(lParam);

@Native<LPARAM Function(LPARAM)>(symbol: 'SetMessageExtraInfo')
external int _SetMessageExtraInfo(int lParam);

/// Changes the parent window of the specified child window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setparent>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetParent(int hWndChild, int? hWndNewParent) =>
    SetParent_Wrapper(hWndChild, hWndNewParent ?? NULL);

/// Sets the position of the cursor in physical coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setphysicalcursorpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetPhysicalCursorPos(int x, int y) =>
    SetPhysicalCursorPos_Wrapper(x, y) != FALSE;

/// Sets the process-default DPI awareness to system-DPI awareness.
///
/// **Note:** This function may be altered or unavailable in the newer versions
/// of Windows. Use SetProcessDpiAwareness instead.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiaware>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetProcessDPIAware() => _SetProcessDPIAware() != FALSE;

@Native<BOOL Function()>(symbol: 'SetProcessDPIAware')
external int _SetProcessDPIAware();

/// Sets the current process to a specified dots per inch (dpi) awareness
/// context.
///
/// The DPI awareness contexts are from the DPI_AWARENESS_CONTEXT value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setprocessdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetProcessDpiAwarenessContext(int value) =>
    SetProcessDpiAwarenessContext_Wrapper(value) != FALSE;

/// Adds a new entry or changes an existing entry in the property list of the
/// specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setpropw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetProp(int hWnd, PCWSTR lpString, int? hData) =>
    SetPropW_Wrapper(hWnd, lpString, hData ?? NULL) != FALSE;

/// Sets the coordinates of the specified rectangle.
///
/// This is equivalent to assigning the left, top, right, and bottom arguments
/// to the appropriate members of the RECT structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetRect(
  Pointer<RECT> lprc,
  int xLeft,
  int yTop,
  int xRight,
  int yBottom,
) => _SetRect(lprc, xLeft, yTop, xRight, yBottom) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Int32, Int32, Int32, Int32)>(
  symbol: 'SetRect',
)
external int _SetRect(
  Pointer<RECT> lprc,
  int xLeft,
  int yTop,
  int xRight,
  int yBottom,
);

/// Creates an empty rectangle in which all coordinates are set to zero.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setrectempty>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetRectEmpty(Pointer<RECT> lprc) => _SetRectEmpty(lprc) != FALSE;

@Native<BOOL Function(Pointer<RECT>)>(symbol: 'SetRectEmpty')
external int _SetRectEmpty(Pointer<RECT> lprc);

/// Sets the parameters of a scroll bar, including the minimum and maximum
/// scrolling positions, the page size, and the position of the scroll box
/// (thumb).
///
/// The function also redraws the scroll bar, if requested.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setscrollinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetScrollInfo(
  int hwnd,
  SCROLLBAR_CONSTANTS nBar,
  Pointer<SCROLLINFO> lpsi,
  bool redraw,
) => _SetScrollInfo(hwnd, nBar, lpsi, redraw ? TRUE : FALSE);

@Native<Int32 Function(HWND, Int32, Pointer<SCROLLINFO>, BOOL)>(
  symbol: 'SetScrollInfo',
)
external int _SetScrollInfo(
  int hwnd,
  int nBar,
  Pointer<SCROLLINFO> lpsi,
  int redraw,
);

/// Sets the colors for the specified display elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setsyscolors>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetSysColors(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<COLORREF> lpaRgbValues,
) => SetSysColors_Wrapper(cElements, lpaElements, lpaRgbValues) != FALSE;

/// Enables an application to customize the system cursors.
///
/// It replaces the contents of the system cursor specified by the id parameter
/// with the contents of the cursor specified by the hcur parameter and then
/// destroys hcur.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setsystemcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetSystemCursor(int hcur, SYSTEM_CURSOR_ID id) =>
    SetSystemCursor_Wrapper(hcur, id) != FALSE;

/// Set the DPI awareness for the current thread to the provided value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setthreaddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetThreadDpiAwarenessContext(int dpiContext) =>
    _SetThreadDpiAwarenessContext(dpiContext);

@Native<DPI_AWARENESS_CONTEXT Function(DPI_AWARENESS_CONTEXT)>(
  symbol: 'SetThreadDpiAwarenessContext',
)
external int _SetThreadDpiAwarenessContext(int dpiContext);

/// Sets the thread's DPI_HOSTING_BEHAVIOR.
///
/// This behavior allows windows created in the thread to host child windows
/// with a different DPI_AWARENESS_CONTEXT.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setthreaddpihostingbehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_HOSTING_BEHAVIOR SetThreadDpiHostingBehavior(DPI_HOSTING_BEHAVIOR value) =>
    DPI_HOSTING_BEHAVIOR(_SetThreadDpiHostingBehavior(value));

@Native<Int32 Function(Int32)>(symbol: 'SetThreadDpiHostingBehavior')
external int _SetThreadDpiHostingBehavior(int value);

/// Creates a timer with the specified time-out value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-settimer>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetTimer(
  int? hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>>? lpTimerFunc,
) => SetTimer_Wrapper(hWnd ?? NULL, nIDEvent, uElapse, lpTimerFunc ?? nullptr);

/// Sets information about the specified window station or desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setuserobjectinformationw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetUserObjectInformation(
  int hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
) => SetUserObjectInformationW_Wrapper(hObj, nIndex, pvInfo, nLength) != FALSE;

/// Stores the display affinity setting in kernel mode on the hWnd associated
/// with the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowdisplayaffinity>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetWindowDisplayAffinity(int hWnd, WINDOW_DISPLAY_AFFINITY dwAffinity) =>
    SetWindowDisplayAffinity_Wrapper(hWnd, dwAffinity) != FALSE;

/// Changes an attribute of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowlongptrw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetWindowLongPtr(int hWnd, WINDOW_LONG_PTR_INDEX nIndex, int dwNewLong) =>
    SetWindowLongPtrW_Wrapper(hWnd, nIndex, dwNewLong);

/// Sets the show state and the restored, minimized, and maximized positions of
/// the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowplacement>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetWindowPlacement(int hWnd, Pointer<WINDOWPLACEMENT> lpwndpl) =>
    SetWindowPlacement_Wrapper(hWnd, lpwndpl) != FALSE;

/// Changes the size, position, and Z order of a child, pop-up, or top-level
/// window.
///
/// These windows are ordered according to their appearance on the screen. The
/// topmost window receives the highest rank and is the first window in the Z
/// order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowpos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetWindowPos(
  int hWnd,
  int? hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  SET_WINDOW_POS_FLAGS uFlags,
) =>
    SetWindowPos_Wrapper(hWnd, hWndInsertAfter ?? NULL, x, y, cx, cy, uFlags) !=
    FALSE;

/// Sets the window region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowrgn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetWindowRgn(int hWnd, int? hRgn, bool bRedraw) =>
    _SetWindowRgn(hWnd, hRgn ?? NULL, bRedraw ? TRUE : FALSE);

@Native<Int32 Function(HWND, HRGN, BOOL)>(symbol: 'SetWindowRgn')
external int _SetWindowRgn(int hWnd, int hRgn, int bRedraw);

/// Installs an application-defined hook procedure into a hook chain.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowshookexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetWindowsHookEx(
  WINDOWS_HOOK_ID idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  int? hmod,
  int dwThreadId,
) => SetWindowsHookExW_Wrapper(idHook, lpfn, hmod ?? NULL, dwThreadId);

/// Changes the text of the specified window's title bar (if it has one).
///
/// If the specified window is a control, the text of the control is changed.
/// However, SetWindowText cannot change the text of a control in another
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowtextw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetWindowText(int hWnd, PCWSTR? lpString) =>
    SetWindowTextW_Wrapper(hWnd, lpString ?? nullptr) != FALSE;

/// Makes the caret visible on the screen at the caret's current position.
///
/// When the caret becomes visible, it begins flashing automatically.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcaret>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowCaret(int? hWnd) => ShowCaret_Wrapper(hWnd ?? NULL) != FALSE;

/// Displays or hides the cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ShowCursor(bool bShow) => _ShowCursor(bShow ? TRUE : FALSE);

@Native<Int32 Function(BOOL)>(symbol: 'ShowCursor')
external int _ShowCursor(int bShow);

/// Shows or hides all pop-up windows owned by the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showownedpopups>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowOwnedPopups(int hWnd, bool fShow) =>
    ShowOwnedPopups_Wrapper(hWnd, fShow ? TRUE : FALSE) != FALSE;

/// Sets the specified window's show state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowWindow(int hWnd, SHOW_WINDOW_CMD nCmdShow) =>
    _ShowWindow(hWnd, nCmdShow) != FALSE;

@Native<BOOL Function(HWND, Int32)>(symbol: 'ShowWindow')
external int _ShowWindow(int hWnd, int nCmdShow);

/// Sets the show state of a window without waiting for the operation to
/// complete.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindowasync>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowWindowAsync(int hWnd, SHOW_WINDOW_CMD nCmdShow) =>
    _ShowWindowAsync(hWnd, nCmdShow) != FALSE;

@Native<BOOL Function(HWND, Int32)>(symbol: 'ShowWindowAsync')
external int _ShowWindowAsync(int hWnd, int nCmdShow);

/// Determines which pointer input frame generated the most recently retrieved
/// message for the specified pointer and discards any queued (unretrieved)
/// pointer input messages generated from the same pointer input frame.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-skippointerframemessages>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SkipPointerFrameMessages(int pointerId) =>
    SkipPointerFrameMessages_Wrapper(pointerId) != FALSE;

/// Triggers a visual signal to indicate that a sound is playing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-soundsentry>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SoundSentry() => _SoundSentry() != FALSE;

@Native<BOOL Function()>(symbol: 'SoundSentry')
external int _SoundSentry();

/// Determines the coordinates of a rectangle formed by subtracting one
/// rectangle from another.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-subtractrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SubtractRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
) => _SubtractRect(lprcDst, lprcSrc1, lprcSrc2) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'SubtractRect',
)
external int _SubtractRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
);

/// Reverses or restores the meaning of the left and right mouse buttons.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-swapmousebutton>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SwapMouseButton(bool fSwap) =>
    _SwapMouseButton(fSwap ? TRUE : FALSE) != FALSE;

@Native<BOOL Function(BOOL)>(symbol: 'SwapMouseButton')
external int _SwapMouseButton(int fSwap);

/// Makes the specified desktop visible and activates it.
///
/// This enables the desktop to receive input from the user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchdesktop>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SwitchDesktop(int hDesktop) => SwitchDesktop_Wrapper(hDesktop) != FALSE;

/// Switches focus to the specified window and brings it to the foreground.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchtothiswindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void SwitchToThisWindow(int hwnd, bool fUnknown) =>
    _SwitchToThisWindow(hwnd, fUnknown ? TRUE : FALSE);

@Native<Void Function(HWND, BOOL)>(symbol: 'SwitchToThisWindow')
external void _SwitchToThisWindow(int hwnd, int fUnknown);

/// Retrieves or sets the value of one of the system-wide parameters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-systemparametersinfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SystemParametersInfo(
  SYSTEM_PARAMETERS_INFO_ACTION uiAction,
  int uiParam,
  Pointer? pvParam,
  SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS fWinIni,
) =>
    SystemParametersInfoW_Wrapper(
      uiAction,
      uiParam,
      pvParam ?? nullptr,
      fWinIni,
    ) !=
    FALSE;

/// Retrieves the value of one of the system-wide parameters, taking into
/// account the provided DPI value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-systemparametersinfofordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SystemParametersInfoForDpi(
  int uiAction,
  int uiParam,
  Pointer? pvParam,
  int fWinIni,
  int dpi,
) =>
    SystemParametersInfoForDpi_Wrapper(
      uiAction,
      uiParam,
      pvParam ?? nullptr,
      fWinIni,
      dpi,
    ) !=
    FALSE;

/// Writes a character string at a specified location, expanding tabs to the
/// values specified in an array of tab-stop positions.
///
/// Text is written in the currently selected font, background color, and text
/// color.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tabbedtextoutw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int TabbedTextOut(
  int hdc,
  int x,
  int y,
  PCWSTR lpString,
  int chCount,
  int nTabPositions,
  Pointer<Int32>? lpnTabStopPositions,
  int nTabOrigin,
) => _TabbedTextOut(
  hdc,
  x,
  y,
  lpString,
  chCount,
  nTabPositions,
  lpnTabStopPositions ?? nullptr,
  nTabOrigin,
);

@Native<
  Int32 Function(HDC, Int32, Int32, PCWSTR, Int32, Int32, Pointer<Int32>, Int32)
>(symbol: 'TabbedTextOutW')
external int _TabbedTextOut(
  int hdc,
  int x,
  int y,
  PCWSTR lpString,
  int chCount,
  int nTabPositions,
  Pointer<Int32> lpnTabStopPositions,
  int nTabOrigin,
);

/// Tiles the specified child windows of the specified parent window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tilewindows>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int TileWindows(
  int? hwndParent,
  TILE_WINDOWS_HOW wHow,
  Pointer<RECT>? lpRect,
  int cKids,
  Pointer<HWND>? lpKids,
) => TileWindows_Wrapper(
  hwndParent ?? NULL,
  wHow,
  lpRect ?? nullptr,
  cKids,
  lpKids ?? nullptr,
);

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding character or characters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-toascii>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ToAscii(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8>? lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
) => _ToAscii(uVirtKey, uScanCode, lpKeyState ?? nullptr, lpChar, uFlags);

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Uint16>, Uint32)
>(symbol: 'ToAscii')
external int _ToAscii(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
);

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding character or characters.
///
/// The function translates the code using the input language and physical
/// keyboard layout identified by the input locale identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-toasciiex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ToAsciiEx(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8>? lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
  int? dwhkl,
) => _ToAsciiEx(
  uVirtKey,
  uScanCode,
  lpKeyState ?? nullptr,
  lpChar,
  uFlags,
  dwhkl ?? NULL,
);

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Uint16>, Uint32, HKL)
>(symbol: 'ToAsciiEx')
external int _ToAsciiEx(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
  int dwhkl,
);

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding Unicode character or characters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tounicode>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ToUnicode(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8>? lpKeyState,
  PWSTR pwszBuff,
  int cchBuff,
  int wFlags,
) => _ToUnicode(
  wVirtKey,
  wScanCode,
  lpKeyState ?? nullptr,
  pwszBuff,
  cchBuff,
  wFlags,
);

@Native<Int32 Function(Uint32, Uint32, Pointer<Uint8>, PWSTR, Int32, Uint32)>(
  symbol: 'ToUnicode',
)
external int _ToUnicode(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  PWSTR pwszBuff,
  int cchBuff,
  int wFlags,
);

/// Translates the specified virtual-key code and keyboard state to the
/// corresponding Unicode character or characters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-tounicodeex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ToUnicodeEx(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  PWSTR pwszBuff,
  int cchBuff,
  int wFlags,
  int? dwhkl,
) => _ToUnicodeEx(
  wVirtKey,
  wScanCode,
  lpKeyState,
  pwszBuff,
  cchBuff,
  wFlags,
  dwhkl ?? NULL,
);

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, PWSTR, Int32, Uint32, HKL)
>(symbol: 'ToUnicodeEx')
external int _ToUnicodeEx(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  PWSTR pwszBuff,
  int cchBuff,
  int wFlags,
  int dwhkl,
);

/// Displays a shortcut menu at the specified location and tracks the selection
/// of items on the menu.
///
/// The shortcut menu can appear anywhere on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-trackpopupmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool TrackPopupMenu(
  int hMenu,
  TRACK_POPUP_MENU_FLAGS uFlags,
  int x,
  int y,
  int hWnd,
  Pointer<RECT>? prcRect,
) =>
    TrackPopupMenu_Wrapper(
      hMenu,
      uFlags,
      x,
      y,
      NULL,
      hWnd,
      prcRect ?? nullptr,
    ) !=
    FALSE;

/// Displays a shortcut menu at the specified location and tracks the selection
/// of items on the shortcut menu.
///
/// The shortcut menu can appear anywhere on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-trackpopupmenuex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool TrackPopupMenuEx(
  int hMenu,
  int uFlags,
  int x,
  int y,
  int hwnd,
  Pointer<TPMPARAMS>? lptpm,
) =>
    TrackPopupMenuEx_Wrapper(hMenu, uFlags, x, y, hwnd, lptpm ?? nullptr) !=
    FALSE;

/// Processes accelerator keys for menu commands.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translateacceleratorw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int TranslateAccelerator(int hWnd, int hAccTable, Pointer<MSG> lpMsg) =>
    TranslateAcceleratorW_Wrapper(hWnd, hAccTable, lpMsg);

/// Processes accelerator keystrokes for window menu commands of the
/// multiple-document interface (MDI) child windows associated with the
/// specified MDI client window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translatemdisysaccel>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool TranslateMDISysAccel(int hWndClient, Pointer<MSG> lpMsg) =>
    _TranslateMDISysAccel(hWndClient, lpMsg) != FALSE;

@Native<BOOL Function(HWND, Pointer<MSG>)>(symbol: 'TranslateMDISysAccel')
external int _TranslateMDISysAccel(int hWndClient, Pointer<MSG> lpMsg);

/// Translates virtual-key messages into character messages.
///
/// The character messages are posted to the calling thread's message queue, to
/// be read the next time the thread calls the GetMessage or PeekMessage
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translatemessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool TranslateMessage(Pointer<MSG> lpMsg) => _TranslateMessage(lpMsg) != FALSE;

@Native<BOOL Function(Pointer<MSG>)>(symbol: 'TranslateMessage')
external int _TranslateMessage(Pointer<MSG> lpMsg);

/// Removes a hook procedure installed in a hook chain by the SetWindowsHookEx
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unhookwindowshookex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnhookWindowsHookEx(int hhk) => UnhookWindowsHookEx_Wrapper(hhk) != FALSE;

/// Creates the union of two rectangles.
///
/// The union is the smallest rectangle that contains both source rectangles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unionrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnionRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
) => _UnionRect(lprcDst, lprcSrc1, lprcSrc2) != FALSE;

@Native<BOOL Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'UnionRect',
)
external int _UnionRect(
  Pointer<RECT> lprcDst,
  Pointer<RECT> lprcSrc1,
  Pointer<RECT> lprcSrc2,
);

/// Unloads an input locale identifier (formerly called a keyboard layout).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unloadkeyboardlayout>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnloadKeyboardLayout(int hkl) =>
    UnloadKeyboardLayout_Wrapper(hkl) != FALSE;

/// Unregisters a window class, freeing the memory required for the class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterclassw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnregisterClass(PCWSTR lpClassName, int? hInstance) =>
    UnregisterClassW_Wrapper(lpClassName, hInstance ?? NULL) != FALSE;

/// Closes the specified device notification handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterdevicenotification>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnregisterDeviceNotification(int handle) =>
    UnregisterDeviceNotification_Wrapper(handle) != FALSE;

/// Frees a hot key previously registered by the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterhotkey>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnregisterHotKey(int? hWnd, int id) =>
    UnregisterHotKey_Wrapper(hWnd ?? NULL, id) != FALSE;

/// Unregisters the power setting notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterpowersettingnotification>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnregisterPowerSettingNotification(int handle) =>
    UnregisterPowerSettingNotification_Wrapper(handle) != FALSE;

/// Registers a window as no longer being touch-capable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregistertouchwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UnregisterTouchWindow(int hwnd) =>
    UnregisterTouchWindow_Wrapper(hwnd) != FALSE;

/// Updates the position, size, shape, content, and translucency of a layered
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633557(v=vs.85)>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UpdateLayeredWindowIndirect(
  int hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
) => _UpdateLayeredWindowIndirect(hWnd, pULWInfo) != FALSE;

@Native<BOOL Function(HWND, Pointer<UPDATELAYEREDWINDOWINFO>)>(
  symbol: 'UpdateLayeredWindowIndirect',
)
external int _UpdateLayeredWindowIndirect(
  int hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
);

/// Updates the client area of the specified window by sending a WM_PAINT
/// message to the window if the window's update region is not empty.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-updatewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UpdateWindow(int hWnd) => _UpdateWindow(hWnd) != FALSE;

@Native<BOOL Function(HWND)>(symbol: 'UpdateWindow')
external int _UpdateWindow(int hWnd);

/// Grants or denies access to a handle to a User object to a job that has a
/// user-interface restriction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-userhandlegrantaccess>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UserHandleGrantAccess(int hUserHandle, int hJob, bool bGrant) =>
    UserHandleGrantAccess_Wrapper(hUserHandle, hJob, bGrant ? TRUE : FALSE) !=
    FALSE;

/// Validates the client area within a rectangle by removing the rectangle from
/// the update region of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-validaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ValidateRect(int? hWnd, Pointer<RECT>? lpRect) =>
    _ValidateRect(hWnd ?? NULL, lpRect ?? nullptr) != FALSE;

@Native<BOOL Function(HWND, Pointer<RECT>)>(symbol: 'ValidateRect')
external int _ValidateRect(int hWnd, Pointer<RECT> lpRect);

/// Validates the client area within a region by removing the region from the
/// current update region of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-validatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ValidateRgn(int hWnd, int? hRgn) =>
    _ValidateRgn(hWnd, hRgn ?? NULL) != FALSE;

@Native<BOOL Function(HWND, HRGN)>(symbol: 'ValidateRgn')
external int _ValidateRgn(int hWnd, int hRgn);

/// Translates a character to the corresponding virtual-key code and shift state
/// for the current keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-vkkeyscanw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int VkKeyScan(int ch) => _VkKeyScan(ch);

@Native<Int16 Function(Uint16)>(symbol: 'VkKeyScanW')
external int _VkKeyScan(int ch);

/// Translates a character to the corresponding virtual-key code and shift
/// state.
///
/// The function translates the character using the input language and physical
/// keyboard layout identified by the input locale identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-vkkeyscanexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int VkKeyScanEx(int ch, int dwhkl) => _VkKeyScanEx(ch, dwhkl);

@Native<Int16 Function(Uint16, HKL)>(symbol: 'VkKeyScanExW')
external int _VkKeyScanEx(int ch, int dwhkl);

/// Waits until the specified process has finished processing its initial input
/// and is waiting for user input with no input pending, or until the time-out
/// interval has elapsed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-waitforinputidle>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int WaitForInputIdle(int hProcess, int dwMilliseconds) =>
    _WaitForInputIdle(hProcess, dwMilliseconds);

@Native<Uint32 Function(HANDLE, Uint32)>(symbol: 'WaitForInputIdle')
external int _WaitForInputIdle(int hProcess, int dwMilliseconds);

/// Yields control to other threads when a thread has no other messages in its
/// message queue.
///
/// The WaitMessage function suspends the thread and does not return until a new
/// message is placed in the thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-waitmessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool WaitMessage() => WaitMessage_Wrapper() != FALSE;

/// Returns a handle to the window associated with the specified display device
/// context (DC).
///
/// Output functions that use the specified device context draw into this
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfromdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int WindowFromDC(int hDC) => _WindowFromDC(hDC);

@Native<HWND Function(HDC)>(symbol: 'WindowFromDC')
external int _WindowFromDC(int hDC);

/// Retrieves a handle to the window that contains the specified physical point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfromphysicalpoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int WindowFromPhysicalPoint(POINT point) => _WindowFromPhysicalPoint(point);

@Native<HWND Function(POINT)>(symbol: 'WindowFromPhysicalPoint')
external int _WindowFromPhysicalPoint(POINT point);

/// Retrieves a handle to the window that contains the specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int WindowFromPoint(POINT point) => _WindowFromPoint(point);

@Native<HWND Function(POINT)>(symbol: 'WindowFromPoint')
external int _WindowFromPoint(POINT point);
