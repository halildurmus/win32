// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../_internal/user32.g.dart';
import '../_internal/win32.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

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
Win32Result<HKL> ActivateKeyboardLayout(
  HKL hkl,
  ACTIVATE_KEYBOARD_LAYOUT_FLAGS flags,
) {
  final result_ = ActivateKeyboardLayout_Wrapper(hkl, flags);
  return Win32Result(value: HKL(result_.value.ptr), error: result_.error);
}

/// Places the given window in the system-maintained clipboard format listener
/// list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-addclipboardformatlistener>.
///
/// {@category user32}
Win32Result<bool> AddClipboardFormatListener(HWND hwnd) {
  final result_ = AddClipboardFormatListener_Wrapper(hwnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> AdjustWindowRect(
  Pointer<RECT> lpRect,
  WINDOW_STYLE dwStyle,
  bool bMenu,
) {
  final result_ = AdjustWindowRect_Wrapper(
    lpRect,
    dwStyle,
    bMenu ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> AdjustWindowRectEx(
  Pointer<RECT> lpRect,
  WINDOW_STYLE dwStyle,
  bool bMenu,
  WINDOW_EX_STYLE dwExStyle,
) {
  final result_ = AdjustWindowRectEx_Wrapper(
    lpRect,
    dwStyle,
    bMenu ? TRUE : FALSE,
    dwExStyle,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Calculates the required size of the window rectangle, based on the desired
/// size of the client rectangle and the provided DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-adjustwindowrectexfordpi>.
///
/// {@category user32}
Win32Result<bool> AdjustWindowRectExForDpi(
  Pointer<RECT> lpRect,
  WINDOW_STYLE dwStyle,
  bool bMenu,
  WINDOW_EX_STYLE dwExStyle,
  int dpi,
) {
  final result_ = AdjustWindowRectExForDpi_Wrapper(
    lpRect,
    dwStyle,
    bMenu ? TRUE : FALSE,
    dwExStyle,
    dpi,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables the specified process to set the foreground window using the
/// SetForegroundWindow function.
///
/// The calling process must already be able to set the foreground window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-allowsetforegroundwindow>.
///
/// {@category user32}
Win32Result<bool> AllowSetForegroundWindow(int dwProcessId) {
  final result_ = AllowSetForegroundWindow_Wrapper(dwProcessId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables you to produce special effects when showing or hiding windows.
///
/// There are four types of animation: roll, slide, collapse or expand, and
/// alpha-blended fade.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-animatewindow>.
///
/// {@category user32}
Win32Result<bool> AnimateWindow(
  HWND hWnd,
  int dwTime,
  ANIMATE_WINDOW_FLAGS dwFlags,
) {
  final result_ = AnimateWindow_Wrapper(hWnd, dwTime, dwFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function()>(symbol: 'AnyPopup')
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
Win32Result<bool> AppendMenu(
  HMENU hMenu,
  MENU_ITEM_FLAGS uFlags,
  int uIDNewItem,
  PCWSTR? lpNewItem,
) {
  final result_ = AppendMenuW_Wrapper(
    hMenu,
    uFlags,
    uIDNewItem,
    lpNewItem ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether two DPI_AWARENESS_CONTEXT values are identical.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-aredpiawarenesscontextsequal>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool AreDpiAwarenessContextsEqual(
  DPI_AWARENESS_CONTEXT dpiContextA,
  DPI_AWARENESS_CONTEXT dpiContextB,
) => _AreDpiAwarenessContextsEqual(dpiContextA, dpiContextB) != FALSE;

@Native<Int32 Function(Pointer, Pointer)>(
  symbol: 'AreDpiAwarenessContextsEqual',
)
external int _AreDpiAwarenessContextsEqual(
  Pointer dpiContextA,
  Pointer dpiContextB,
);

/// Arranges all the minimized (iconic) child windows of the specified parent
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-arrangeiconicwindows>.
///
/// {@category user32}
Win32Result<int> ArrangeIconicWindows(HWND hWnd) {
  final result_ = ArrangeIconicWindows_Wrapper(hWnd);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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

@Native<Int32 Function(Uint32, Uint32, Int32)>(symbol: 'AttachThreadInput')
external int _AttachThreadInput(int idAttach, int idAttachTo, int fAttach);

/// Allocates memory for a multiple-window- position structure and returns the
/// handle to the structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-begindeferwindowpos>.
///
/// {@category user32}
Win32Result<HDWP> BeginDeferWindowPos(int nNumWindows) {
  final result_ = BeginDeferWindowPos_Wrapper(nNumWindows);
  return Win32Result(value: HDWP(result_.value.ptr), error: result_.error);
}

/// Prepares the specified window for painting and fills a PAINTSTRUCT structure
/// with information about the painting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-beginpaint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HDC BeginPaint(HWND hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    HDC(_BeginPaint(hWnd, lpPaint));

@Native<Pointer Function(Pointer, Pointer<PAINTSTRUCT>)>(symbol: 'BeginPaint')
external Pointer _BeginPaint(Pointer hWnd, Pointer<PAINTSTRUCT> lpPaint);

/// Blocks keyboard and mouse input events from reaching applications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-blockinput>.
///
/// {@category user32}
Win32Result<bool> BlockInput(bool fBlockIt) {
  final result_ = BlockInput_Wrapper(fBlockIt ? TRUE : FALSE);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> BringWindowToTop(HWND hWnd) {
  final result_ = BringWindowToTop_Wrapper(hWnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sends a message to the specified recipients.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-broadcastsystemmessagew>.
///
/// {@category user32}
Win32Result<int> BroadcastSystemMessage(
  BROADCAST_SYSTEM_MESSAGE_FLAGS flags,
  Pointer<Uint32>? lpInfo,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
) {
  final result_ = BroadcastSystemMessageW_Wrapper(
    flags,
    lpInfo ?? nullptr,
    msg,
    wParam,
    lParam,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Sends a message to the specified recipients.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-broadcastsystemmessageexw>.
///
/// {@category user32}
Win32Result<int> BroadcastSystemMessageEx(
  BROADCAST_SYSTEM_MESSAGE_FLAGS flags,
  Pointer<Uint32>? lpInfo,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
  Pointer<BSMINFO>? pbsmInfo,
) {
  final result_ = BroadcastSystemMessageExW_Wrapper(
    flags,
    lpInfo ?? nullptr,
    msg,
    wParam,
    lParam,
    pbsmInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Calculates an appropriate pop-up window position using the specified anchor
/// point, pop-up window size, flags, and the optional exclude rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-calculatepopupwindowposition>.
///
/// {@category user32}
Win32Result<bool> CalculatePopupWindowPosition(
  Pointer<POINT> anchorPoint,
  Pointer<SIZE> windowSize,
  int flags,
  Pointer<RECT>? excludeRect,
  Pointer<RECT> popupWindowPosition,
) {
  final result_ = CalculatePopupWindowPosition_Wrapper(
    anchorPoint,
    windowSize,
    flags,
    excludeRect ?? nullptr,
    popupWindowPosition,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function(Pointer<MSG>, Int32)>(symbol: 'CallMsgFilterW')
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
LRESULT CallNextHookEx(HHOOK? hhk, int nCode, WPARAM wParam, LPARAM lParam) =>
    LRESULT(_CallNextHookEx(hhk ?? nullptr, nCode, wParam, lParam));

@Native<IntPtr Function(Pointer, Int32, IntPtr, IntPtr)>(
  symbol: 'CallNextHookEx',
)
external int _CallNextHookEx(Pointer hhk, int nCode, int wParam, int lParam);

/// Passes message information to the specified window procedure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-callwindowprocw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
LRESULT CallWindowProc(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  HWND hWnd,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
) => LRESULT(_CallWindowProc(lpPrevWndFunc, hWnd, msg, wParam, lParam));

@Native<
  IntPtr Function(
    Pointer<NativeFunction<WNDPROC>>,
    Pointer,
    Uint32,
    IntPtr,
    IntPtr,
  )
>(symbol: 'CallWindowProcW')
external int _CallWindowProc(
  Pointer<NativeFunction<WNDPROC>> lpPrevWndFunc,
  Pointer hWnd,
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
Win32Result<int> CascadeWindows(
  HWND? hwndParent,
  CASCADE_WINDOWS_HOW wHow,
  Pointer<RECT>? lpRect,
  int cKids,
  Pointer<Pointer>? lpKids,
) {
  final result_ = CascadeWindows_Wrapper(
    hwndParent ?? nullptr,
    wHow,
    lpRect ?? nullptr,
    cKids,
    lpKids ?? nullptr,
  );
  return Win32Result(value: result_.value.u16, error: result_.error);
}

/// Removes a specified window from the chain of clipboard viewers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changeclipboardchain>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ChangeClipboardChain(HWND hWndRemove, HWND hWndNewNext) =>
    _ChangeClipboardChain(hWndRemove, hWndNewNext) != FALSE;

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'ChangeClipboardChain')
external int _ChangeClipboardChain(Pointer hWndRemove, Pointer hWndNewNext);

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
    nullptr,
    dwflags,
    lParam ?? nullptr,
  ),
);

@Native<
  Int32 Function(Pointer<Utf16>, Pointer<DEVMODE>, Pointer, Uint32, Pointer)
>(symbol: 'ChangeDisplaySettingsExW')
external int _ChangeDisplaySettingsEx(
  Pointer<Utf16> lpszDeviceName,
  Pointer<DEVMODE> lpDevMode,
  Pointer hwnd,
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
Win32Result<bool> ChangeWindowMessageFilter(
  int message,
  CHANGE_WINDOW_MESSAGE_FILTER_FLAGS dwFlag,
) {
  final result_ = ChangeWindowMessageFilter_Wrapper(message, dwFlag);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Modifies the User Interface Privilege Isolation (UIPI) message filter for a
/// specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changewindowmessagefilterex>.
///
/// {@category user32}
Win32Result<bool> ChangeWindowMessageFilterEx(
  HWND hwnd,
  int message,
  WINDOW_MESSAGE_FILTER_ACTION action,
  Pointer<CHANGEFILTERSTRUCT>? pChangeFilterStruct,
) {
  final result_ = ChangeWindowMessageFilterEx_Wrapper(
    hwnd,
    message,
    action,
    pChangeFilterStruct ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Changes the check state of a button control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-checkdlgbutton>.
///
/// {@category user32}
Win32Result<bool> CheckDlgButton(
  HWND hDlg,
  int nIDButton,
  DLG_BUTTON_CHECK_STATE uCheck,
) {
  final result_ = CheckDlgButton_Wrapper(hDlg, nIDButton, uCheck);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Adds a check mark to (checks) a specified radio button in a group and
/// removes a check mark from (clears) all other radio buttons in the group.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-checkradiobutton>.
///
/// {@category user32}
Win32Result<bool> CheckRadioButton(
  HWND hDlg,
  int nIDFirstButton,
  int nIDLastButton,
  int nIDCheckButton,
) {
  final result_ = CheckRadioButton_Wrapper(
    hDlg,
    nIDFirstButton,
    nIDLastButton,
    nIDCheckButton,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
HWND ChildWindowFromPoint(HWND hWndParent, POINT point) =>
    HWND(_ChildWindowFromPoint(hWndParent, point));

@Native<Pointer Function(Pointer, POINT)>(symbol: 'ChildWindowFromPoint')
external Pointer _ChildWindowFromPoint(Pointer hWndParent, POINT point);

/// Determines which, if any, of the child windows belonging to the specified
/// parent window contains the specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-childwindowfrompointex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND ChildWindowFromPointEx(HWND hwnd, POINT pt, CWP_FLAGS flags) =>
    HWND(_ChildWindowFromPointEx(hwnd, pt, flags));

@Native<Pointer Function(Pointer, POINT, Uint32)>(
  symbol: 'ChildWindowFromPointEx',
)
external Pointer _ChildWindowFromPointEx(Pointer hwnd, POINT pt, int flags);

/// Converts the client-area coordinates of a specified point to screen
/// coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clienttoscreen>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ClientToScreen(HWND hWnd, Pointer<POINT> lpPoint) =>
    _ClientToScreen(hWnd, lpPoint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<POINT>)>(symbol: 'ClientToScreen')
external int _ClientToScreen(Pointer hWnd, Pointer<POINT> lpPoint);

/// Confines the cursor to a rectangular area on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clipcursor>.
///
/// {@category user32}
Win32Result<bool> ClipCursor(Pointer<RECT>? lpRect) {
  final result_ = ClipCursor_Wrapper(lpRect ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closeclipboard>.
///
/// {@category user32}
Win32Result<bool> CloseClipboard() {
  final result_ = CloseClipboard_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes an open handle to a desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closedesktop>.
///
/// {@category user32}
Win32Result<bool> CloseDesktop(HDESK hDesktop) {
  final result_ = CloseDesktop_Wrapper(hDesktop);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes resources associated with a gesture information handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closegestureinfohandle>.
///
/// {@category user32}
Win32Result<bool> CloseGestureInfoHandle(HGESTUREINFO hGestureInfo) {
  final result_ = CloseGestureInfoHandle_Wrapper(hGestureInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes a touch input handle, frees process memory associated with it, and
/// invalidates the handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closetouchinputhandle>.
///
/// {@category user32}
Win32Result<bool> CloseTouchInputHandle(HTOUCHINPUT hTouchInput) {
  final result_ = CloseTouchInputHandle_Wrapper(hTouchInput);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Minimizes (but does not destroy) the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closewindow>.
///
/// {@category user32}
Win32Result<bool> CloseWindow(HWND hWnd) {
  final result_ = CloseWindow_Wrapper(hWnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes an open window station handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closewindowstation>.
///
/// {@category user32}
Win32Result<bool> CloseWindowStation(HWINSTA hWinSta) {
  final result_ = CloseWindowStation_Wrapper(hWinSta);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  HACCEL hAccelSrc,
  Pointer<ACCEL>? lpAccelDst,
  int cAccelEntries,
) => _CopyAcceleratorTable(hAccelSrc, lpAccelDst ?? nullptr, cAccelEntries);

@Native<Int32 Function(Pointer, Pointer<ACCEL>, Int32)>(
  symbol: 'CopyAcceleratorTableW',
)
external int _CopyAcceleratorTable(
  Pointer hAccelSrc,
  Pointer<ACCEL> lpAccelDst,
  int cAccelEntries,
);

/// Copies the specified icon from another module to the current module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyicon>.
///
/// {@category user32}
Win32Result<HICON> CopyIcon(HICON hIcon) {
  final result_ = CopyIcon_Wrapper(hIcon);
  return Win32Result(value: HICON(result_.value.ptr), error: result_.error);
}

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
Win32Result<HANDLE> CopyImage(
  HANDLE h,
  GDI_IMAGE_TYPE type,
  int cx,
  int cy,
  IMAGE_FLAGS flags,
) {
  final result_ = CopyImage_Wrapper(h, type, cx, cy, flags);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Copies the coordinates of one rectangle to another.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc) =>
    _CopyRect(lprcDst, lprcSrc) != FALSE;

@Native<Int32 Function(Pointer<RECT>, Pointer<RECT>)>(symbol: 'CopyRect')
external int _CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc);

/// Retrieves the number of different data formats currently on the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-countclipboardformats>.
///
/// {@category user32}
Win32Result<int> CountClipboardFormats() {
  final result_ = CountClipboardFormats_Wrapper();
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Creates an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createacceleratortablew>.
///
/// {@category user32}
Win32Result<HACCEL> CreateAcceleratorTable(Pointer<ACCEL> paccel, int cAccel) {
  final result_ = CreateAcceleratorTableW_Wrapper(paccel, cAccel);
  return Win32Result(value: HACCEL(result_.value.ptr), error: result_.error);
}

/// Creates a new shape for the system caret and assigns ownership of the caret
/// to the specified window.
///
/// The caret shape can be a line, a block, or a bitmap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createcaret>.
///
/// {@category user32}
Win32Result<bool> CreateCaret(
  HWND hWnd,
  HBITMAP? hBitmap,
  int nWidth,
  int nHeight,
) {
  final result_ = CreateCaret_Wrapper(
    hWnd,
    hBitmap ?? nullptr,
    nWidth,
    nHeight,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a cursor having the specified size, bit patterns, and hot spot.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createcursor>.
///
/// {@category user32}
Win32Result<HCURSOR> CreateCursor(
  HINSTANCE? hInst,
  int xHotSpot,
  int yHotSpot,
  int nWidth,
  int nHeight,
  Pointer pvANDPlane,
  Pointer pvXORPlane,
) {
  final result_ = CreateCursor_Wrapper(
    hInst ?? nullptr,
    xHotSpot,
    yHotSpot,
    nWidth,
    nHeight,
    pvANDPlane,
    pvXORPlane,
  );
  return Win32Result(value: HCURSOR(result_.value.ptr), error: result_.error);
}

/// Creates a new desktop, associates it with the current window station of the
/// calling process, and assigns it to the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdesktopw>.
///
/// {@category user32}
Win32Result<HDESK> CreateDesktop(
  PCWSTR lpszDesktop,
  DESKTOP_CONTROL_FLAGS dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? lpsa,
) {
  final result_ = CreateDesktopW_Wrapper(
    lpszDesktop,
    nullptr,
    nullptr,
    dwFlags,
    dwDesiredAccess,
    lpsa ?? nullptr,
  );
  return Win32Result(value: HDESK(result_.value.ptr), error: result_.error);
}

/// Creates a new desktop with the specified heap, associates it with the
/// current window station of the calling process, and assigns it to the calling
/// thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdesktopexw>.
///
/// {@category user32}
Win32Result<HDESK> CreateDesktopEx(
  PCWSTR lpszDesktop,
  DESKTOP_CONTROL_FLAGS dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? lpsa,
  int ulHeapSize,
) {
  final result_ = CreateDesktopExW_Wrapper(
    lpszDesktop,
    nullptr,
    nullptr,
    dwFlags,
    dwDesiredAccess,
    lpsa ?? nullptr,
    ulHeapSize,
    nullptr,
  );
  return Win32Result(value: HDESK(result_.value.ptr), error: result_.error);
}

/// Creates a modeless dialog box from a dialog box template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createdialogindirectparamw>.
///
/// {@category user32}
Win32Result<HWND> CreateDialogIndirectParam(
  HINSTANCE? hInstance,
  Pointer<DLGTEMPLATE> lpTemplate,
  HWND? hWndParent,
  Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
  LPARAM dwInitParam,
) {
  final result_ = CreateDialogIndirectParamW_Wrapper(
    hInstance ?? nullptr,
    lpTemplate,
    hWndParent ?? nullptr,
    lpDialogFunc ?? nullptr,
    dwInitParam,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Creates an icon that has the specified size, colors, and bit patterns.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createicon>.
///
/// {@category user32}
Win32Result<HICON> CreateIcon(
  HINSTANCE? hInstance,
  int nWidth,
  int nHeight,
  int cPlanes,
  int cBitsPixel,
  Pointer<Uint8> lpbANDbits,
  Pointer<Uint8> lpbXORbits,
) {
  final result_ = CreateIcon_Wrapper(
    hInstance ?? nullptr,
    nWidth,
    nHeight,
    cPlanes,
    cBitsPixel,
    lpbANDbits,
    lpbXORbits,
  );
  return Win32Result(value: HICON(result_.value.ptr), error: result_.error);
}

/// Creates an icon or cursor from resource bits describing the icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconfromresource>.
///
/// {@category user32}
Win32Result<HICON> CreateIconFromResource(
  Pointer<Uint8> presbits,
  int dwResSize,
  bool fIcon,
  int dwVer,
) {
  final result_ = CreateIconFromResource_Wrapper(
    presbits,
    dwResSize,
    fIcon ? TRUE : FALSE,
    dwVer,
  );
  return Win32Result(value: HICON(result_.value.ptr), error: result_.error);
}

/// Creates an icon or cursor from resource bits describing the icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconfromresourceex>.
///
/// {@category user32}
Win32Result<HICON> CreateIconFromResourceEx(
  Pointer<Uint8> presbits,
  int dwResSize,
  bool fIcon,
  int dwVer,
  int cxDesired,
  int cyDesired,
  IMAGE_FLAGS flags,
) {
  final result_ = CreateIconFromResourceEx_Wrapper(
    presbits,
    dwResSize,
    fIcon ? TRUE : FALSE,
    dwVer,
    cxDesired,
    cyDesired,
    flags,
  );
  return Win32Result(value: HICON(result_.value.ptr), error: result_.error);
}

/// Creates an icon or cursor from an ICONINFO structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconindirect>.
///
/// {@category user32}
Win32Result<HICON> CreateIconIndirect(Pointer<ICONINFO> piconinfo) {
  final result_ = CreateIconIndirect_Wrapper(piconinfo);
  return Win32Result(value: HICON(result_.value.ptr), error: result_.error);
}

/// Creates a multiple-document interface (MDI) child window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createmdiwindoww>.
///
/// {@category user32}
Win32Result<HWND> CreateMDIWindow(
  PCWSTR lpClassName,
  PCWSTR lpWindowName,
  WINDOW_STYLE dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  HWND? hWndParent,
  HINSTANCE? hInstance,
  LPARAM lParam,
) {
  final result_ = CreateMDIWindowW_Wrapper(
    lpClassName,
    lpWindowName,
    dwStyle,
    x,
    y,
    nWidth,
    nHeight,
    hWndParent ?? nullptr,
    hInstance ?? nullptr,
    lParam,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Creates a menu.
///
/// The menu is initially empty, but it can be filled with menu items by using
/// the InsertMenuItem, AppendMenu, and InsertMenu functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createmenu>.
///
/// {@category user32}
Win32Result<HMENU> CreateMenu() {
  final result_ = CreateMenu_Wrapper();
  return Win32Result(value: HMENU(result_.value.ptr), error: result_.error);
}

/// Creates a drop-down menu, submenu, or shortcut menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createpopupmenu>.
///
/// {@category user32}
Win32Result<HMENU> CreatePopupMenu() {
  final result_ = CreatePopupMenu_Wrapper();
  return Win32Result(value: HMENU(result_.value.ptr), error: result_.error);
}

/// Creates an overlapped, pop-up, or child window with an extended window
/// style; otherwise, this function is identical to the CreateWindow function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindowexw>.
///
/// {@category user32}
Win32Result<HWND> CreateWindowEx(
  WINDOW_EX_STYLE dwExStyle,
  PCWSTR? lpClassName,
  PCWSTR? lpWindowName,
  WINDOW_STYLE dwStyle,
  int x,
  int y,
  int nWidth,
  int nHeight,
  HWND? hWndParent,
  HMENU? hMenu,
  HINSTANCE? hInstance,
  Pointer? lpParam,
) {
  final result_ = CreateWindowExW_Wrapper(
    dwExStyle,
    lpClassName ?? nullptr,
    lpWindowName ?? nullptr,
    dwStyle,
    x,
    y,
    nWidth,
    nHeight,
    hWndParent ?? nullptr,
    hMenu ?? nullptr,
    hInstance ?? nullptr,
    lpParam ?? nullptr,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Creates a window station object, associates it with the calling process, and
/// assigns it to the current session.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createwindowstationw>.
///
/// {@category user32}
Win32Result<HWINSTA> CreateWindowStation(
  PCWSTR? lpwinsta,
  int dwFlags,
  int dwDesiredAccess,
  Pointer<SECURITY_ATTRIBUTES>? lpsa,
) {
  final result_ = CreateWindowStationW_Wrapper(
    lpwinsta ?? nullptr,
    dwFlags,
    dwDesiredAccess,
    lpsa ?? nullptr,
  );
  return Win32Result(value: HWINSTA(result_.value.ptr), error: result_.error);
}

/// Updates the specified multiple-window — position structure for the specified
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
///
/// {@category user32}
Win32Result<HDWP> DeferWindowPos(
  HDWP hWinPosInfo,
  HWND hWnd,
  HWND? hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  SET_WINDOW_POS_FLAGS uFlags,
) {
  final result_ = DeferWindowPos_Wrapper(
    hWinPosInfo,
    hWnd,
    hWndInsertAfter ?? nullptr,
    x,
    y,
    cx,
    cy,
    uFlags,
  );
  return Win32Result(value: HDWP(result_.value.ptr), error: result_.error);
}

/// Provides default processing for any window message that the window procedure
/// of a multiple-document interface (MDI) child window does not process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defmdichildprocw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
LRESULT DefMDIChildProc(HWND hWnd, int uMsg, WPARAM wParam, LPARAM lParam) =>
    LRESULT(_DefMDIChildProc(hWnd, uMsg, wParam, lParam));

@Native<IntPtr Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'DefMDIChildProcW',
)
external int _DefMDIChildProc(Pointer hWnd, int uMsg, int wParam, int lParam);

/// Verifies that the size of the RAWINPUTHEADER structure is correct.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-defrawinputproc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
LRESULT DefRawInputProc(
  Pointer<Pointer<RAWINPUT>> paRawInput,
  int nInput,
  int cbSizeHeader,
) => LRESULT(_DefRawInputProc(paRawInput, nInput, cbSizeHeader));

@Native<IntPtr Function(Pointer<Pointer<RAWINPUT>>, Int32, Uint32)>(
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
LRESULT DefWindowProc(HWND hWnd, int msg, WPARAM wParam, LPARAM lParam) =>
    LRESULT(_DefWindowProc(hWnd, msg, wParam, lParam));

@Native<IntPtr Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'DefWindowProcW',
)
external int _DefWindowProc(Pointer hWnd, int msg, int wParam, int lParam);

/// Deletes an item from the specified menu.
///
/// If the menu item opens a menu or submenu, this function destroys the handle
/// to the menu or submenu and frees the memory used by the menu or submenu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deletemenu>.
///
/// {@category user32}
Win32Result<bool> DeleteMenu(
  HMENU hMenu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
) {
  final result_ = DeleteMenu_Wrapper(hMenu, uPosition, uFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Destroys an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyacceleratortable>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyAcceleratorTable(HACCEL hAccel) =>
    _DestroyAcceleratorTable(hAccel) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'DestroyAcceleratorTable')
external int _DestroyAcceleratorTable(Pointer hAccel);

/// Destroys the caret's current shape, frees the caret from the window, and
/// removes the caret from the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycaret>.
///
/// {@category user32}
Win32Result<bool> DestroyCaret() {
  final result_ = DestroyCaret_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Destroys a cursor and frees any memory the cursor occupied.
///
/// Do not use this function to destroy a shared cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycursor>.
///
/// {@category user32}
Win32Result<bool> DestroyCursor(HCURSOR hCursor) {
  final result_ = DestroyCursor_Wrapper(hCursor);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Destroys an icon and frees any memory the icon occupied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyicon>.
///
/// {@category user32}
Win32Result<bool> DestroyIcon(HICON hIcon) {
  final result_ = DestroyIcon_Wrapper(hIcon);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Destroys the specified menu and frees any memory that the menu occupies.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroymenu>.
///
/// {@category user32}
Win32Result<bool> DestroyMenu(HMENU hMenu) {
  final result_ = DestroyMenu_Wrapper(hMenu);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Destroys the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroywindow>.
///
/// {@category user32}
Win32Result<bool> DestroyWindow(HWND hWnd) {
  final result_ = DestroyWindow_Wrapper(hWnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Creates a modal dialog box from a dialog box template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-dialogboxindirectparamw>.
///
/// {@category user32}
Win32Result<int> DialogBoxIndirectParam(
  HINSTANCE? hInstance,
  Pointer<DLGTEMPLATE> hDialogTemplate,
  HWND? hWndParent,
  Pointer<NativeFunction<DLGPROC>>? lpDialogFunc,
  LPARAM dwInitParam,
) {
  final result_ = DialogBoxIndirectParamW_Wrapper(
    hInstance ?? nullptr,
    hDialogTemplate,
    hWndParent ?? nullptr,
    lpDialogFunc ?? nullptr,
    dwInitParam,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

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
LRESULT DispatchMessage(Pointer<MSG> lpMsg) => LRESULT(_DispatchMessage(lpMsg));

@Native<IntPtr Function(Pointer<MSG>)>(symbol: 'DispatchMessageW')
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
bool DragDetect(HWND hwnd, POINT pt) => _DragDetect(hwnd, pt) != FALSE;

@Native<Int32 Function(Pointer, POINT)>(symbol: 'DragDetect')
external int _DragDetect(Pointer hwnd, POINT pt);

/// Animates the caption of a window to indicate the opening of an icon or the
/// minimizing or maximizing of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawanimatedrects>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawAnimatedRects(
  HWND? hwnd,
  int idAni,
  Pointer<RECT> lprcFrom,
  Pointer<RECT> lprcTo,
) => _DrawAnimatedRects(hwnd ?? nullptr, idAni, lprcFrom, lprcTo) != FALSE;

@Native<Int32 Function(Pointer, Int32, Pointer<RECT>, Pointer<RECT>)>(
  symbol: 'DrawAnimatedRects',
)
external int _DrawAnimatedRects(
  Pointer hwnd,
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
  HWND hwnd,
  HDC hdc,
  Pointer<RECT> lprect,
  DRAW_CAPTION_FLAGS flags,
) => _DrawCaption(hwnd, hdc, lprect, flags) != FALSE;

@Native<Int32 Function(Pointer, Pointer, Pointer<RECT>, Uint32)>(
  symbol: 'DrawCaption',
)
external int _DrawCaption(
  Pointer hwnd,
  Pointer hdc,
  Pointer<RECT> lprect,
  int flags,
);

/// Draws one or more edges of rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawedge>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawEdge(
  HDC hdc,
  Pointer<RECT> qrc,
  DRAWEDGE_FLAGS edge,
  DRAW_EDGE_FLAGS grfFlags,
) => _DrawEdge(hdc, qrc, edge, grfFlags) != FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>, Uint32, Uint32)>(
  symbol: 'DrawEdge',
)
external int _DrawEdge(Pointer hdc, Pointer<RECT> qrc, int edge, int grfFlags);

/// Draws a rectangle in the style used to indicate that the rectangle has the
/// focus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawfocusrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawFocusRect(HDC hDC, Pointer<RECT> lprc) =>
    _DrawFocusRect(hDC, lprc) != FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>)>(symbol: 'DrawFocusRect')
external int _DrawFocusRect(Pointer hDC, Pointer<RECT> lprc);

/// Draws a frame control of the specified type and style.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawframecontrol>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawFrameControl(HDC hdc, Pointer<RECT> lprc, int uType, int uState) =>
    _DrawFrameControl(hdc, lprc, uType, uState) != FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>, Uint32, Uint32)>(
  symbol: 'DrawFrameControl',
)
external int _DrawFrameControl(
  Pointer hdc,
  Pointer<RECT> lprc,
  int uType,
  int uState,
);

/// Draws an icon or cursor into the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawicon>.
///
/// {@category user32}
Win32Result<bool> DrawIcon(HDC hDC, int x, int y, HICON hIcon) {
  final result_ = DrawIcon_Wrapper(hDC, x, y, hIcon);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Displays an image and applies a visual effect to indicate a state, such as a
/// disabled or default state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawstatew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawState(
  HDC hdc,
  HBRUSH? hbrFore,
  Pointer<NativeFunction<DRAWSTATEPROC>>? qfnCallBack,
  LPARAM lData,
  WPARAM wData,
  int x,
  int y,
  int cx,
  int cy,
  DRAWSTATE_FLAGS uFlags,
) =>
    _DrawState(
      hdc,
      hbrFore ?? nullptr,
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
  Int32 Function(
    Pointer,
    Pointer,
    Pointer<NativeFunction<DRAWSTATEPROC>>,
    IntPtr,
    IntPtr,
    Int32,
    Int32,
    Int32,
    Int32,
    Uint32,
  )
>(symbol: 'DrawStateW')
external int _DrawState(
  Pointer hdc,
  Pointer hbrFore,
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
  HDC hdc,
  PCWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  DRAW_TEXT_FORMAT format,
) => _DrawText(hdc, lpchText, cchText, lprc, format);

@Native<Int32 Function(Pointer, Pointer<Utf16>, Int32, Pointer<RECT>, Uint32)>(
  symbol: 'DrawTextW',
)
external int _DrawText(
  Pointer hdc,
  Pointer<Utf16> lpchText,
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
  HDC hdc,
  PWSTR lpchText,
  int cchText,
  Pointer<RECT> lprc,
  DRAW_TEXT_FORMAT format,
  Pointer<DRAWTEXTPARAMS>? lpdtp,
) => _DrawTextEx(hdc, lpchText, cchText, lprc, format, lpdtp ?? nullptr);

@Native<
  Int32 Function(
    Pointer,
    Pointer<Utf16>,
    Int32,
    Pointer<RECT>,
    Uint32,
    Pointer<DRAWTEXTPARAMS>,
  )
>(symbol: 'DrawTextExW')
external int _DrawTextEx(
  Pointer hdc,
  Pointer<Utf16> lpchText,
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
Win32Result<bool> EmptyClipboard() {
  final result_ = EmptyClipboard_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables, disables, or grays the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemenuitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableMenuItem(HMENU hMenu, int uIDEnableItem, MENU_ITEM_FLAGS uEnable) =>
    _EnableMenuItem(hMenu, uIDEnableItem, uEnable) != FALSE;

@Native<Int32 Function(Pointer, Uint32, Uint32)>(symbol: 'EnableMenuItem')
external int _EnableMenuItem(Pointer hMenu, int uIDEnableItem, int uEnable);

/// Enables the mouse to act as a pointer input device and send WM_POINTER
/// messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemouseinpointer>.
///
/// {@category user32}
Win32Result<bool> EnableMouseInPointer(bool fEnable) {
  final result_ = EnableMouseInPointer_Wrapper(fEnable ? TRUE : FALSE);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// In high-DPI displays, enables automatic display scaling of the non-client
/// area portions of the specified top-level window.
///
/// Must be called during the initialization of that window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablenonclientdpiscaling>.
///
/// {@category user32}
Win32Result<bool> EnableNonClientDpiScaling(HWND hwnd) {
  final result_ = EnableNonClientDpiScaling_Wrapper(hwnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Enables or disables one or both scroll bar arrows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablescrollbar>.
///
/// {@category user32}
Win32Result<bool> EnableScrollBar(
  HWND hWnd,
  int wSBflags,
  ENABLE_SCROLL_BAR_ARROWS wArrows,
) {
  final result_ = EnableScrollBar_Wrapper(hWnd, wSBflags, wArrows);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
bool EnableWindow(HWND hWnd, bool bEnable) =>
    _EnableWindow(hWnd, bEnable ? TRUE : FALSE) != FALSE;

@Native<Int32 Function(Pointer, Int32)>(symbol: 'EnableWindow')
external int _EnableWindow(Pointer hWnd, int bEnable);

/// Simultaneously updates the position and size of one or more windows in a
/// single screen-refreshing cycle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddeferwindowpos>.
///
/// {@category user32}
Win32Result<bool> EndDeferWindowPos(HDWP hWinPosInfo) {
  final result_ = EndDeferWindowPos_Wrapper(hWinPosInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Destroys a modal dialog box, causing the system to end any processing for
/// the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddialog>.
///
/// {@category user32}
Win32Result<bool> EndDialog(HWND hDlg, int nResult) {
  final result_ = EndDialog_Wrapper(hDlg, nResult);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Ends the calling thread's active menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-endmenu>.
///
/// {@category user32}
Win32Result<bool> EndMenu() {
  final result_ = EndMenu_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
bool EndPaint(HWND hWnd, Pointer<PAINTSTRUCT> lpPaint) =>
    _EndPaint(hWnd, lpPaint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<PAINTSTRUCT>)>(symbol: 'EndPaint')
external int _EndPaint(Pointer hWnd, Pointer<PAINTSTRUCT> lpPaint);

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
  HWND? hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  LPARAM lParam,
) => _EnumChildWindows(hWndParent ?? nullptr, lpEnumFunc, lParam) != FALSE;

@Native<Int32 Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr)>(
  symbol: 'EnumChildWindows',
)
external int _EnumChildWindows(
  Pointer hWndParent,
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  int lParam,
);

/// Enumerates the data formats currently available on the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumclipboardformats>.
///
/// {@category user32}
Win32Result<int> EnumClipboardFormats(int format) {
  final result_ = EnumClipboardFormats_Wrapper(format);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Enumerates all top-level windows associated with the specified desktop.
///
/// It passes the handle to each window, in turn, to an application-defined
/// callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumdesktopwindows>.
///
/// {@category user32}
Win32Result<bool> EnumDesktopWindows(
  HDESK? hDesktop,
  Pointer<NativeFunction<WNDENUMPROC>> lpfn,
  LPARAM lParam,
) {
  final result_ = EnumDesktopWindows_Wrapper(hDesktop ?? nullptr, lpfn, lParam);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<
  Int32 Function(Pointer<Utf16>, Uint32, Pointer<DISPLAY_DEVICE>, Uint32)
>(symbol: 'EnumDisplayDevicesW')
external int _EnumDisplayDevices(
  Pointer<Utf16> lpDevice,
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
  HDC? hdc,
  Pointer<RECT>? lprcClip,
  Pointer<NativeFunction<MONITORENUMPROC>> lpfnEnum,
  LPARAM dwData,
) =>
    _EnumDisplayMonitors(
      hdc ?? nullptr,
      lprcClip ?? nullptr,
      lpfnEnum,
      dwData,
    ) !=
    FALSE;

@Native<
  Int32 Function(
    Pointer,
    Pointer<RECT>,
    Pointer<NativeFunction<MONITORENUMPROC>>,
    IntPtr,
  )
>(symbol: 'EnumDisplayMonitors')
external int _EnumDisplayMonitors(
  Pointer hdc,
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

@Native<Int32 Function(Pointer<Utf16>, Uint32, Pointer<DEVMODE>)>(
  symbol: 'EnumDisplaySettingsW',
)
external int _EnumDisplaySettings(
  Pointer<Utf16> lpszDeviceName,
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

@Native<Int32 Function(Pointer<Utf16>, Uint32, Pointer<DEVMODE>, Uint32)>(
  symbol: 'EnumDisplaySettingsExW',
)
external int _EnumDisplaySettingsEx(
  Pointer<Utf16> lpszDeviceName,
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
  LPARAM lParam,
) => _EnumThreadWindows(dwThreadId, lpfn, lParam) != FALSE;

@Native<Int32 Function(Uint32, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr)>(
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
Win32Result<bool> EnumWindows(
  Pointer<NativeFunction<WNDENUMPROC>> lpEnumFunc,
  LPARAM lParam,
) {
  final result_ = EnumWindows_Wrapper(lpEnumFunc, lParam);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function(Pointer<RECT>, Pointer<RECT>)>(symbol: 'EqualRect')
external int _EqualRect(Pointer<RECT> lprc1, Pointer<RECT> lprc2);

/// Prevents drawing within invalid areas of a window by excluding an updated
/// region in the window from a clipping region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-excludeupdatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ExcludeUpdateRgn(HDC hDC, HWND hWnd) => _ExcludeUpdateRgn(hDC, hWnd);

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'ExcludeUpdateRgn')
external int _ExcludeUpdateRgn(Pointer hDC, Pointer hWnd);

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
int FillRect(HDC hDC, Pointer<RECT> lprc, HBRUSH hbr) =>
    _FillRect(hDC, lprc, hbr);

@Native<Int32 Function(Pointer, Pointer<RECT>, Pointer)>(symbol: 'FillRect')
external int _FillRect(Pointer hDC, Pointer<RECT> lprc, Pointer hbr);

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
Win32Result<HWND> FindWindow(PCWSTR? lpClassName, PCWSTR? lpWindowName) {
  final result_ = FindWindowW_Wrapper(
    lpClassName ?? nullptr,
    lpWindowName ?? nullptr,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

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
Win32Result<HWND> FindWindowEx(
  HWND? hWndParent,
  HWND? hWndChildAfter,
  PCWSTR? lpszClass,
  PCWSTR? lpszWindow,
) {
  final result_ = FindWindowExW_Wrapper(
    hWndParent ?? nullptr,
    hWndChildAfter ?? nullptr,
    lpszClass ?? nullptr,
    lpszWindow ?? nullptr,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Draws a border around the specified rectangle by using the specified brush.
///
/// The width and height of the border are always one logical unit.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-framerect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int FrameRect(HDC hDC, Pointer<RECT> lprc, HBRUSH hbr) =>
    _FrameRect(hDC, lprc, hbr);

@Native<Int32 Function(Pointer, Pointer<RECT>, Pointer)>(symbol: 'FrameRect')
external int _FrameRect(Pointer hDC, Pointer<RECT> lprc, Pointer hbr);

/// Retrieves the window handle to the active window attached to the calling
/// thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getactivewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetActiveWindow() => HWND(_GetActiveWindow());

@Native<Pointer Function()>(symbol: 'GetActiveWindow')
external Pointer _GetActiveWindow();

/// Retrieves status information for the specified window if it is the
/// application-switching (ALT+TAB) window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getalttabinfow>.
///
/// {@category user32}
Win32Result<bool> GetAltTabInfo(
  HWND? hwnd,
  int iItem,
  Pointer<ALTTABINFO> pati,
  PWSTR? pszItemText,
  int cchItemText,
) {
  final result_ = GetAltTabInfoW_Wrapper(
    hwnd ?? nullptr,
    iItem,
    pati,
    pszItemText ?? nullptr,
    cchItemText,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the handle to the ancestor of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getancestor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetAncestor(HWND hwnd, GET_ANCESTOR_FLAGS gaFlags) =>
    HWND(_GetAncestor(hwnd, gaFlags));

@Native<Pointer Function(Pointer, Uint32)>(symbol: 'GetAncestor')
external Pointer _GetAncestor(Pointer hwnd, int gaFlags);

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
DPI_AWARENESS GetAwarenessFromDpiAwarenessContext(
  DPI_AWARENESS_CONTEXT value,
) => DPI_AWARENESS(_GetAwarenessFromDpiAwarenessContext(value));

@Native<Int32 Function(Pointer)>(symbol: 'GetAwarenessFromDpiAwarenessContext')
external int _GetAwarenessFromDpiAwarenessContext(Pointer value);

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
HWND GetCapture() => HWND(_GetCapture());

@Native<Pointer Function()>(symbol: 'GetCapture')
external Pointer _GetCapture();

/// Retrieves the time required to invert the caret's pixels.
///
/// The user can set this value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretblinktime>.
///
/// {@category user32}
Win32Result<int> GetCaretBlinkTime() {
  final result_ = GetCaretBlinkTime_Wrapper();
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Copies the caret's position to the specified POINT structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretpos>.
///
/// {@category user32}
Win32Result<bool> GetCaretPos(Pointer<POINT> lpPoint) {
  final result_ = GetCaretPos_Wrapper(lpPoint);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about a window class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassinfow>.
///
/// {@category user32}
Win32Result<bool> GetClassInfo(
  HINSTANCE? hInstance,
  PCWSTR lpClassName,
  Pointer<WNDCLASS> lpWndClass,
) {
  final result_ = GetClassInfoW_Wrapper(
    hInstance ?? nullptr,
    lpClassName,
    lpWndClass,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about a window class, including a handle to the small
/// icon associated with the window class.
///
/// The GetClassInfo function does not retrieve a handle to the small icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassinfoexw>.
///
/// {@category user32}
Win32Result<bool> GetClassInfoEx(
  HINSTANCE? hInstance,
  PCWSTR lpszClass,
  Pointer<WNDCLASSEX> lpwcx,
) {
  final result_ = GetClassInfoExW_Wrapper(
    hInstance ?? nullptr,
    lpszClass,
    lpwcx,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the specified value from the WNDCLASSEX structure associated with
/// the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclasslongptrw>.
///
/// {@category user32}
Win32Result<int> GetClassLongPtr(HWND hWnd, GET_CLASS_LONG_INDEX nIndex) {
  final result_ = GetClassLongPtrW_Wrapper(hWnd, nIndex);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Retrieves the name of the class to which the specified window belongs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassnamew>.
///
/// {@category user32}
Win32Result<int> GetClassName(HWND hWnd, PWSTR lpClassName, int nMaxCount) {
  final result_ = GetClassNameW_Wrapper(hWnd, lpClassName, nMaxCount);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the coordinates of a window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclientrect>.
///
/// {@category user32}
Win32Result<bool> GetClientRect(HWND hWnd, Pointer<RECT> lpRect) {
  final result_ = GetClientRect_Wrapper(hWnd, lpRect);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves data from the clipboard in a specified format.
///
/// The clipboard must have been opened previously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboarddata>.
///
/// {@category user32}
Win32Result<HANDLE> GetClipboardData(int uFormat) {
  final result_ = GetClipboardData_Wrapper(uFormat);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Retrieves from the clipboard the name of the specified registered format.
///
/// The function copies the name to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardformatnamew>.
///
/// {@category user32}
Win32Result<int> GetClipboardFormatName(
  int format,
  PWSTR lpszFormatName,
  int cchMaxCount,
) {
  final result_ = GetClipboardFormatNameW_Wrapper(
    format,
    lpszFormatName,
    cchMaxCount,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the window handle of the current owner of the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardowner>.
///
/// {@category user32}
Win32Result<HWND> GetClipboardOwner() {
  final result_ = GetClipboardOwner_Wrapper();
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

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
Win32Result<HWND> GetClipboardViewer() {
  final result_ = GetClipboardViewer_Wrapper();
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves the screen coordinates of the rectangular area to which the cursor
/// is confined.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipcursor>.
///
/// {@category user32}
Win32Result<bool> GetClipCursor(Pointer<RECT> lpRect) {
  final result_ = GetClipCursor_Wrapper(lpRect);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle to the current cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HCURSOR GetCursor() => HCURSOR(_GetCursor());

@Native<Pointer Function()>(symbol: 'GetCursor')
external Pointer _GetCursor();

/// Retrieves information about the global cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorinfo>.
///
/// {@category user32}
Win32Result<bool> GetCursorInfo(Pointer<CURSORINFO> pci) {
  final result_ = GetCursorInfo_Wrapper(pci);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the position of the mouse cursor, in screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorpos>.
///
/// {@category user32}
Win32Result<bool> GetCursorPos(Pointer<POINT> lpPoint) {
  final result_ = GetCursorPos_Wrapper(lpPoint);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HDC GetDC(HWND? hWnd) => HDC(_GetDC(hWnd ?? nullptr));

@Native<Pointer Function(Pointer)>(symbol: 'GetDC')
external Pointer _GetDC(Pointer hWnd);

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdcex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HDC GetDCEx(HWND? hWnd, HRGN? hrgnClip, GET_DCX_FLAGS flags) =>
    HDC(_GetDCEx(hWnd ?? nullptr, hrgnClip ?? nullptr, flags));

@Native<Pointer Function(Pointer, Pointer, Uint32)>(symbol: 'GetDCEx')
external Pointer _GetDCEx(Pointer hWnd, Pointer hrgnClip, int flags);

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
HWND GetDesktopWindow() => HWND(_GetDesktopWindow());

@Native<Pointer Function()>(symbol: 'GetDesktopWindow')
external Pointer _GetDesktopWindow();

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
Win32Result<DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS>
GetDialogControlDpiChangeBehavior(HWND hWnd) {
  final result_ = GetDialogControlDpiChangeBehavior_Wrapper(hWnd);
  return Win32Result(
    value: DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS(result_.value.i32),
    error: result_.error,
  );
}

/// Returns the flags that might have been set on a given dialog by an earlier
/// call to SetDialogDpiChangeBehavior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogdpichangebehavior>.
///
/// {@category user32}
Win32Result<DIALOG_DPI_CHANGE_BEHAVIORS> GetDialogDpiChangeBehavior(HWND hDlg) {
  final result_ = GetDialogDpiChangeBehavior_Wrapper(hDlg);
  return Win32Result(
    value: DIALOG_DPI_CHANGE_BEHAVIORS(result_.value.i32),
    error: result_.error,
  );
}

/// Retrieves the screen auto-rotation preferences for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdisplayautorotationpreferences>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation) =>
    _GetDisplayAutoRotationPreferences(pOrientation) != FALSE;

@Native<Int32 Function(Pointer<Int32>)>(
  symbol: 'GetDisplayAutoRotationPreferences',
)
external int _GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation);

/// Retrieves a handle to a control in the specified dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitem>.
///
/// {@category user32}
Win32Result<HWND> GetDlgItem(HWND? hDlg, int nIDDlgItem) {
  final result_ = GetDlgItem_Wrapper(hDlg ?? nullptr, nIDDlgItem);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Translates the text of a specified control in a dialog box into an integer
/// value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitemint>.
///
/// {@category user32}
Win32Result<int> GetDlgItemInt(
  HWND hDlg,
  int nIDDlgItem,
  Pointer<Int32>? lpTranslated,
  bool bSigned,
) {
  final result_ = GetDlgItemInt_Wrapper(
    hDlg,
    nIDDlgItem,
    lpTranslated ?? nullptr,
    bSigned ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the title or text associated with a control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitemtextw>.
///
/// {@category user32}
Win32Result<int> GetDlgItemText(
  HWND hDlg,
  int nIDDlgItem,
  PWSTR lpString,
  int cchMax,
) {
  final result_ = GetDlgItemTextW_Wrapper(hDlg, nIDDlgItem, lpString, cchMax);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

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
int GetDpiForWindow(HWND hwnd) => _GetDpiForWindow(hwnd);

@Native<Uint32 Function(Pointer)>(symbol: 'GetDpiForWindow')
external int _GetDpiForWindow(Pointer hwnd);

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
int GetDpiFromDpiAwarenessContext(DPI_AWARENESS_CONTEXT value) =>
    _GetDpiFromDpiAwarenessContext(value);

@Native<Uint32 Function(Pointer)>(symbol: 'GetDpiFromDpiAwarenessContext')
external int _GetDpiFromDpiAwarenessContext(Pointer value);

/// Retrieves the handle to the window that has the keyboard focus, if the
/// window is attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getfocus>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetFocus() => HWND(_GetFocus());

@Native<Pointer Function()>(symbol: 'GetFocus')
external Pointer _GetFocus();

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
HWND GetForegroundWindow() => HWND(_GetForegroundWindow());

@Native<Pointer Function()>(symbol: 'GetForegroundWindow')
external Pointer _GetForegroundWindow();

/// Retrieves the configuration for which Windows Touch gesture messages are
/// sent from a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureconfig>.
///
/// {@category user32}
Win32Result<bool> GetGestureConfig(
  HWND hwnd,
  int dwFlags,
  Pointer<Uint32> pcIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
) {
  final result_ = GetGestureConfig_Wrapper(
    hwnd,
    NULL,
    dwFlags,
    pcIDs,
    pGestureConfig,
    cbSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves additional information about a gesture from its GESTUREINFO
/// handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureextraargs>.
///
/// {@category user32}
Win32Result<bool> GetGestureExtraArgs(
  HGESTUREINFO hGestureInfo,
  int cbExtraArgs,
  Pointer<Uint8> pExtraArgs,
) {
  final result_ = GetGestureExtraArgs_Wrapper(
    hGestureInfo,
    cbExtraArgs,
    pExtraArgs,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a GESTUREINFO structure given a handle to the gesture information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getgestureinfo>.
///
/// {@category user32}
Win32Result<bool> GetGestureInfo(
  HGESTUREINFO hGestureInfo,
  Pointer<GESTUREINFO> pGestureInfo,
) {
  final result_ = GetGestureInfo_Wrapper(hGestureInfo, pGestureInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the active window or a specified GUI thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getguithreadinfo>.
///
/// {@category user32}
Win32Result<bool> GetGUIThreadInfo(int idThread, Pointer<GUITHREADINFO> pgui) {
  final result_ = GetGUIThreadInfo_Wrapper(idThread, pgui);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the specified icon or cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
///
/// {@category user32}
Win32Result<bool> GetIconInfo(HICON hIcon, Pointer<ICONINFO> piconinfo) {
  final result_ = GetIconInfo_Wrapper(hIcon, piconinfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the specified icon or cursor.
///
/// GetIconInfoEx extends GetIconInfo by using the newer ICONINFOEX structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfoexw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetIconInfoEx(HICON hicon, Pointer<ICONINFOEX> piconinfo) =>
    _GetIconInfoEx(hicon, piconinfo) != FALSE;

@Native<Int32 Function(Pointer, Pointer<ICONINFOEX>)>(symbol: 'GetIconInfoExW')
external int _GetIconInfoEx(Pointer hicon, Pointer<ICONINFOEX> piconinfo);

/// Determines whether there are mouse-button or keyboard messages in the
/// calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getinputstate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetInputState() => _GetInputState() != FALSE;

@Native<Int32 Function()>(symbol: 'GetInputState')
external int _GetInputState();

/// Retrieves the active input locale identifier (formerly called the keyboard
/// layout).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayout>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HKL GetKeyboardLayout(int idThread) => HKL(_GetKeyboardLayout(idThread));

@Native<Pointer Function(Uint32)>(symbol: 'GetKeyboardLayout')
external Pointer _GetKeyboardLayout(int idThread);

/// Retrieves the input locale identifiers (formerly called keyboard layout
/// handles) corresponding to the current set of input locales in the system.
///
/// The function copies the identifiers to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutlist>.
///
/// {@category user32}
Win32Result<int> GetKeyboardLayoutList(int nBuff, Pointer<Pointer>? lpList) {
  final result_ = GetKeyboardLayoutList_Wrapper(nBuff, lpList ?? nullptr);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the name of the active input locale identifier (formerly called
/// the keyboard layout) for the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutnamew>.
///
/// {@category user32}
Win32Result<bool> GetKeyboardLayoutName(PWSTR pwszKLID) {
  final result_ = GetKeyboardLayoutNameW_Wrapper(pwszKLID);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Copies the status of the 256 virtual keys to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardstate>.
///
/// {@category user32}
Win32Result<bool> GetKeyboardState(Pointer<Uint8> lpKeyState) {
  final result_ = GetKeyboardState_Wrapper(lpKeyState);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the current keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardtype>.
///
/// {@category user32}
Win32Result<int> GetKeyboardType(int nTypeFlag) {
  final result_ = GetKeyboardType_Wrapper(nTypeFlag);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves a string that represents the name of a key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeynametextw>.
///
/// {@category user32}
Win32Result<int> GetKeyNameText(int lParam, PWSTR lpString, int cchSize) {
  final result_ = GetKeyNameTextW_Wrapper(lParam, lpString, cchSize);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

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

@Native<Int32 Function(Pointer<LASTINPUTINFO>)>(symbol: 'GetLastInputInfo')
external int _GetLastInputInfo(Pointer<LASTINPUTINFO> plii);

/// Retrieves the opacity and transparency color key of a layered window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getlayeredwindowattributes>.
///
/// {@category user32}
Win32Result<bool> GetLayeredWindowAttributes(
  HWND hwnd,
  Pointer<Uint32>? pcrKey,
  Pointer<Uint8>? pbAlpha,
  Pointer<Uint32>? pdwFlags,
) {
  final result_ = GetLayeredWindowAttributes_Wrapper(
    hwnd,
    pcrKey ?? nullptr,
    pbAlpha ?? nullptr,
    pdwFlags ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle to the menu assigned to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMENU GetMenu(HWND hWnd) => HMENU(_GetMenu(hWnd));

@Native<Pointer Function(Pointer)>(symbol: 'GetMenu')
external Pointer _GetMenu(Pointer hWnd);

/// Retrieves information about the specified menu bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenubarinfo>.
///
/// {@category user32}
Win32Result<bool> GetMenuBarInfo(
  HWND hwnd,
  OBJECT_IDENTIFIER idObject,
  int idItem,
  Pointer<MENUBARINFO> pmbi,
) {
  final result_ = GetMenuBarInfo_Wrapper(hwnd, idObject, idItem, pmbi);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines the default menu item on the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenudefaultitem>.
///
/// {@category user32}
Win32Result<int> GetMenuDefaultItem(
  HMENU hMenu,
  int fByPos,
  GET_MENU_DEFAULT_ITEM_FLAGS gmdiFlags,
) {
  final result_ = GetMenuDefaultItem_Wrapper(hMenu, fByPos, gmdiFlags);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about a specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuinfo>.
///
/// {@category user32}
Win32Result<bool> GetMenuInfo(HMENU param0, Pointer<MENUINFO> param1) {
  final result_ = GetMenuInfo_Wrapper(param0, param1);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines the number of items in the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemcount>.
///
/// {@category user32}
Win32Result<int> GetMenuItemCount(HMENU? hMenu) {
  final result_ = GetMenuItemCount_Wrapper(hMenu ?? nullptr);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the menu item identifier of a menu item located at the specified
/// position in a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemid>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuItemID(HMENU hMenu, int nPos) => _GetMenuItemID(hMenu, nPos);

@Native<Uint32 Function(Pointer, Int32)>(symbol: 'GetMenuItemID')
external int _GetMenuItemID(Pointer hMenu, int nPos);

/// Retrieves information about a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuiteminfow>.
///
/// {@category user32}
Win32Result<bool> GetMenuItemInfo(
  HMENU hmenu,
  int item,
  bool fByPosition,
  Pointer<MENUITEMINFO> lpmii,
) {
  final result_ = GetMenuItemInfoW_Wrapper(
    hmenu,
    item,
    fByPosition ? TRUE : FALSE,
    lpmii,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the bounding rectangle for the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemrect>.
///
/// {@category user32}
Win32Result<bool> GetMenuItemRect(
  HWND? hWnd,
  HMENU hMenu,
  int uItem,
  Pointer<RECT> lprcItem,
) {
  final result_ = GetMenuItemRect_Wrapper(
    hWnd ?? nullptr,
    hMenu,
    uItem,
    lprcItem,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the menu flags associated with the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuState(HMENU hMenu, int uId, MENU_ITEM_FLAGS uFlags) =>
    _GetMenuState(hMenu, uId, uFlags);

@Native<Uint32 Function(Pointer, Uint32, Uint32)>(symbol: 'GetMenuState')
external int _GetMenuState(Pointer hMenu, int uId, int uFlags);

/// Copies the text string of the specified menu item into the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustringw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuString(
  HMENU hMenu,
  int uIDItem,
  PWSTR? lpString,
  int cchMax,
  MENU_ITEM_FLAGS flags,
) => _GetMenuString(hMenu, uIDItem, lpString ?? nullptr, cchMax, flags);

@Native<Int32 Function(Pointer, Uint32, Pointer<Utf16>, Int32, Uint32)>(
  symbol: 'GetMenuStringW',
)
external int _GetMenuString(
  Pointer hMenu,
  int uIDItem,
  Pointer<Utf16> lpString,
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
Win32Result<bool> GetMessage(
  Pointer<MSG> lpMsg,
  HWND? hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
) {
  final result_ = GetMessageW_Wrapper(
    lpMsg,
    hWnd ?? nullptr,
    wMsgFilterMin,
    wMsgFilterMax,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
LPARAM GetMessageExtraInfo() => LPARAM(_GetMessageExtraInfo());

@Native<IntPtr Function()>(symbol: 'GetMessageExtraInfo')
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
bool GetMonitorInfo(HMONITOR hMonitor, Pointer<MONITORINFO> lpmi) =>
    _GetMonitorInfo(hMonitor, lpmi) != FALSE;

@Native<Int32 Function(Pointer, Pointer<MONITORINFO>)>(
  symbol: 'GetMonitorInfoW',
)
external int _GetMonitorInfo(Pointer hMonitor, Pointer<MONITORINFO> lpmi);

/// Retrieves a history of up to 64 previous coordinates of the mouse or pen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmousemovepointsex>.
///
/// {@category user32}
Win32Result<int> GetMouseMovePointsEx(
  int cbSize,
  Pointer<MOUSEMOVEPOINT> lppt,
  Pointer<MOUSEMOVEPOINT> lpptBuf,
  int nBufPoints,
  GET_MOUSE_MOVE_POINTS_EX_RESOLUTION resolution,
) {
  final result_ = GetMouseMovePointsEx_Wrapper(
    cbSize,
    lppt,
    lpptBuf,
    nBufPoints,
    resolution,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves a handle to the first control in a group of controls that precedes
/// (or follows) the specified control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlggroupitem>.
///
/// {@category user32}
Win32Result<HWND> GetNextDlgGroupItem(HWND hDlg, HWND? hCtl, bool bPrevious) {
  final result_ = GetNextDlgGroupItem_Wrapper(
    hDlg,
    hCtl ?? nullptr,
    bPrevious ? TRUE : FALSE,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves a handle to the first control that has the WS_TABSTOP style that
/// precedes (or follows) the specified control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlgtabitem>.
///
/// {@category user32}
Win32Result<HWND> GetNextDlgTabItem(HWND hDlg, HWND? hCtl, bool bPrevious) {
  final result_ = GetNextDlgTabItem_Wrapper(
    hDlg,
    hCtl ?? nullptr,
    bPrevious ? TRUE : FALSE,
  );
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves the handle to the window that currently has the clipboard open.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getopenclipboardwindow>.
///
/// {@category user32}
Win32Result<HWND> GetOpenClipboardWindow() {
  final result_ = GetOpenClipboardWindow_Wrapper();
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves a handle to the specified window's parent or owner.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getparent>.
///
/// {@category user32}
Win32Result<HWND> GetParent(HWND hWnd) {
  final result_ = GetParent_Wrapper(hWnd);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves the position of the cursor in physical coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getphysicalcursorpos>.
///
/// {@category user32}
Win32Result<bool> GetPhysicalCursorPos(Pointer<POINT> lpPoint) {
  final result_ = GetPhysicalCursorPos_Wrapper(lpPoint);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the cursor identifier associated with the specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointercursorid>.
///
/// {@category user32}
Win32Result<bool> GetPointerCursorId(int pointerId, Pointer<Uint32> cursorId) {
  final result_ = GetPointerCursorId_Wrapper(pointerId, cursorId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the entire frame of information for the specified pointers associated
/// with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframeinfo>.
///
/// {@category user32}
Win32Result<bool> GetPointerFrameInfo(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO>? pointerInfo,
) {
  final result_ = GetPointerFrameInfo_Wrapper(
    pointerId,
    pointerCount,
    pointerInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the entire frame of information (including coalesced input frames) for
/// the specified pointers associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframeinfohistory>.
///
/// {@category user32}
Win32Result<bool> GetPointerFrameInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_INFO>? pointerInfo,
) {
  final result_ = GetPointerFrameInfoHistory_Wrapper(
    pointerId,
    entriesCount,
    pointerCount,
    pointerInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the entire frame of pen-based information for the specified pointers
/// (of type PT_PEN) associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframepeninfo>.
///
/// {@category user32}
Win32Result<bool> GetPointerFramePenInfo(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO>? penInfo,
) {
  final result_ = GetPointerFramePenInfo_Wrapper(
    pointerId,
    pointerCount,
    penInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the entire frame of pen-based information (including coalesced input
/// frames) for the specified pointers (of type PT_PEN) associated with the
/// current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframepeninfohistory>.
///
/// {@category user32}
Win32Result<bool> GetPointerFramePenInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_PEN_INFO>? penInfo,
) {
  final result_ = GetPointerFramePenInfoHistory_Wrapper(
    pointerId,
    entriesCount,
    pointerCount,
    penInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the entire frame of touch-based information for the specified pointers
/// (of type PT_TOUCH) associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframetouchinfo>.
///
/// {@category user32}
Win32Result<bool> GetPointerFrameTouchInfo(
  int pointerId,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO>? touchInfo,
) {
  final result_ = GetPointerFrameTouchInfo_Wrapper(
    pointerId,
    pointerCount,
    touchInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the entire frame of touch-based information (including coalesced input
/// frames) for the specified pointers (of type PT_TOUCH) associated with the
/// current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerframetouchinfohistory>.
///
/// {@category user32}
Win32Result<bool> GetPointerFrameTouchInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<Uint32> pointerCount,
  Pointer<POINTER_TOUCH_INFO>? touchInfo,
) {
  final result_ = GetPointerFrameTouchInfoHistory_Wrapper(
    pointerId,
    entriesCount,
    pointerCount,
    touchInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the information for the specified pointer associated with the current
/// message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinfo>.
///
/// {@category user32}
Win32Result<bool> GetPointerInfo(
  int pointerId,
  Pointer<POINTER_INFO> pointerInfo,
) {
  final result_ = GetPointerInfo_Wrapper(pointerId, pointerInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the information associated with the individual inputs, if any, that
/// were coalesced into the current message for the specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinfohistory>.
///
/// {@category user32}
Win32Result<bool> GetPointerInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_INFO>? pointerInfo,
) {
  final result_ = GetPointerInfoHistory_Wrapper(
    pointerId,
    entriesCount,
    pointerInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets one or more transforms for the pointer information coordinates
/// associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerinputtransform>.
///
/// {@category user32}
Win32Result<bool> GetPointerInputTransform(
  int pointerId,
  int historyCount,
  Pointer<INPUT_TRANSFORM> inputTransform,
) {
  final result_ = GetPointerInputTransform_Wrapper(
    pointerId,
    historyCount,
    inputTransform,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the pen-based information for the specified pointer (of type PT_PEN)
/// associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerpeninfo>.
///
/// {@category user32}
Win32Result<bool> GetPointerPenInfo(
  int pointerId,
  Pointer<POINTER_PEN_INFO> penInfo,
) {
  final result_ = GetPointerPenInfo_Wrapper(pointerId, penInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the pen-based information associated with the individual inputs, if
/// any, that were coalesced into the current message for the specified pointer
/// (of type PT_PEN).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointerpeninfohistory>.
///
/// {@category user32}
Win32Result<bool> GetPointerPenInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_PEN_INFO>? penInfo,
) {
  final result_ = GetPointerPenInfoHistory_Wrapper(
    pointerId,
    entriesCount,
    penInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the touch-based information for the specified pointer (of type
/// PT_TOUCH) associated with the current message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertouchinfo>.
///
/// {@category user32}
Win32Result<bool> GetPointerTouchInfo(
  int pointerId,
  Pointer<POINTER_TOUCH_INFO> touchInfo,
) {
  final result_ = GetPointerTouchInfo_Wrapper(pointerId, touchInfo);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Gets the touch-based information associated with the individual inputs, if
/// any, that were coalesced into the current message for the specified pointer
/// (of type PT_TOUCH).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertouchinfohistory>.
///
/// {@category user32}
Win32Result<bool> GetPointerTouchInfoHistory(
  int pointerId,
  Pointer<Uint32> entriesCount,
  Pointer<POINTER_TOUCH_INFO>? touchInfo,
) {
  final result_ = GetPointerTouchInfoHistory_Wrapper(
    pointerId,
    entriesCount,
    touchInfo ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the pointer type for a specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertype>.
///
/// {@category user32}
Win32Result<bool> GetPointerType(int pointerId, Pointer<Int32> pointerType) {
  final result_ = GetPointerType_Wrapper(pointerId, pointerType);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the first available clipboard format in the specified list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpriorityclipboardformat>.
///
/// {@category user32}
Win32Result<int> GetPriorityClipboardFormat(
  Pointer<Uint32> paFormatPriorityList,
  int cFormats,
) {
  final result_ = GetPriorityClipboardFormat_Wrapper(
    paFormatPriorityList,
    cFormats,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves a handle to the current window station for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getprocesswindowstation>.
///
/// {@category user32}
Win32Result<HWINSTA> GetProcessWindowStation() {
  final result_ = GetProcessWindowStation_Wrapper();
  return Win32Result(value: HWINSTA(result_.value.ptr), error: result_.error);
}

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
HANDLE GetProp(HWND hWnd, PCWSTR lpString) => HANDLE(_GetProp(hWnd, lpString));

@Native<Pointer Function(Pointer, Pointer<Utf16>)>(symbol: 'GetPropW')
external Pointer _GetProp(Pointer hWnd, Pointer<Utf16> lpString);

/// Performs a buffered read of the raw input data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputbuffer>.
///
/// {@category user32}
Win32Result<int> GetRawInputBuffer(
  Pointer<RAWINPUT>? pData,
  Pointer<Uint32> pcbSize,
  int cbSizeHeader,
) {
  final result_ = GetRawInputBuffer_Wrapper(
    pData ?? nullptr,
    pcbSize,
    cbSizeHeader,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the raw input from the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdata>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetRawInputData(
  HRAWINPUT hRawInput,
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

@Native<Uint32 Function(Pointer, Uint32, Pointer, Pointer<Uint32>, Uint32)>(
  symbol: 'GetRawInputData',
)
external int _GetRawInputData(
  Pointer hRawInput,
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
Win32Result<int> GetRawInputDeviceInfo(
  HANDLE? hDevice,
  RAW_INPUT_DEVICE_INFO_COMMAND uiCommand,
  Pointer? pData,
  Pointer<Uint32> pcbSize,
) {
  final result_ = GetRawInputDeviceInfoW_Wrapper(
    hDevice ?? nullptr,
    uiCommand,
    pData ?? nullptr,
    pcbSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Enumerates the raw input devices attached to the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getrawinputdevicelist>.
///
/// {@category user32}
Win32Result<int> GetRawInputDeviceList(
  Pointer<RAWINPUTDEVICELIST>? pRawInputDeviceList,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
) {
  final result_ = GetRawInputDeviceList_Wrapper(
    pRawInputDeviceList ?? nullptr,
    puiNumDevices,
    cbSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves the information about the raw input devices for the current
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getregisteredrawinputdevices>.
///
/// {@category user32}
Win32Result<int> GetRegisteredRawInputDevices(
  Pointer<RAWINPUTDEVICE>? pRawInputDevices,
  Pointer<Uint32> puiNumDevices,
  int cbSize,
) {
  final result_ = GetRegisteredRawInputDevices_Wrapper(
    pRawInputDevices ?? nullptr,
    puiNumDevices,
    cbSize,
  );
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Retrieves information about the specified scroll bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getscrollbarinfo>.
///
/// {@category user32}
Win32Result<bool> GetScrollBarInfo(
  HWND hwnd,
  OBJECT_IDENTIFIER idObject,
  Pointer<SCROLLBARINFO> psbi,
) {
  final result_ = GetScrollBarInfo_Wrapper(hwnd, idObject, psbi);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the parameters of a scroll bar, including the minimum and maximum
/// scrolling positions, the page size, and the position of the scroll box
/// (thumb).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getscrollinfo>.
///
/// {@category user32}
Win32Result<bool> GetScrollInfo(
  HWND hwnd,
  SCROLLBAR_CONSTANTS nBar,
  Pointer<SCROLLINFO> lpsi,
) {
  final result_ = GetScrollInfo_Wrapper(hwnd, nBar, lpsi);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle to the Shell's desktop window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getshellwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetShellWindow() => HWND(_GetShellWindow());

@Native<Pointer Function()>(symbol: 'GetShellWindow')
external Pointer _GetShellWindow();

/// Retrieves a handle to the drop-down menu or submenu activated by the
/// specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsubmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMENU GetSubMenu(HMENU hMenu, int nPos) => HMENU(_GetSubMenu(hMenu, nPos));

@Native<Pointer Function(Pointer, Int32)>(symbol: 'GetSubMenu')
external Pointer _GetSubMenu(Pointer hMenu, int nPos);

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
HBRUSH GetSysColorBrush(SYS_COLOR_INDEX nIndex) =>
    HBRUSH(_GetSysColorBrush(nIndex));

@Native<Pointer Function(Int32)>(symbol: 'GetSysColorBrush')
external Pointer _GetSysColorBrush(int nIndex);

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
int GetSystemDpiForProcess(HANDLE hProcess) =>
    _GetSystemDpiForProcess(hProcess);

@Native<Uint32 Function(Pointer)>(symbol: 'GetSystemDpiForProcess')
external int _GetSystemDpiForProcess(Pointer hProcess);

/// Enables the application to access the window menu (also known as the system
/// menu or the control menu) for copying and modifying.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMENU GetSystemMenu(HWND hWnd, bool bRevert) =>
    HMENU(_GetSystemMenu(hWnd, bRevert ? TRUE : FALSE));

@Native<Pointer Function(Pointer, Int32)>(symbol: 'GetSystemMenu')
external Pointer _GetSystemMenu(Pointer hWnd, int bRevert);

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
Win32Result<int> GetSystemMetricsForDpi(SYSTEM_METRICS_INDEX nIndex, int dpi) {
  final result_ = GetSystemMetricsForDpi_Wrapper(nIndex, dpi);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Computes the width and height of a character string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettabbedtextextentw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetTabbedTextExtent(
  HDC hdc,
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

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Int32, Int32, Pointer<Int32>)>(
  symbol: 'GetTabbedTextExtentW',
)
external int _GetTabbedTextExtent(
  Pointer hdc,
  Pointer<Utf16> lpString,
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
Win32Result<HDESK> GetThreadDesktop(int dwThreadId) {
  final result_ = GetThreadDesktop_Wrapper(dwThreadId);
  return Win32Result(value: HDESK(result_.value.ptr), error: result_.error);
}

/// Gets the DPI_AWARENESS_CONTEXT for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS_CONTEXT GetThreadDpiAwarenessContext() =>
    DPI_AWARENESS_CONTEXT(_GetThreadDpiAwarenessContext());

@Native<Pointer Function()>(symbol: 'GetThreadDpiAwarenessContext')
external Pointer _GetThreadDpiAwarenessContext();

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
Win32Result<bool> GetTitleBarInfo(HWND hwnd, Pointer<TITLEBARINFO> pti) {
  final result_ = GetTitleBarInfo_Wrapper(hwnd, pti);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Examines the Z order of the child windows associated with the specified
/// parent window and retrieves a handle to the child window at the top of the Z
/// order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettopwindow>.
///
/// {@category user32}
Win32Result<HWND> GetTopWindow(HWND? hWnd) {
  final result_ = GetTopWindow_Wrapper(hWnd ?? nullptr);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves detailed information about touch inputs associated with a
/// particular touch input handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettouchinputinfo>.
///
/// {@category user32}
Win32Result<bool> GetTouchInputInfo(
  HTOUCHINPUT hTouchInput,
  int cInputs,
  Pointer<TOUCHINPUT> pInputs,
  int cbSize,
) {
  final result_ = GetTouchInputInfo_Wrapper(
    hTouchInput,
    cInputs,
    pInputs,
    cbSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> GetUpdatedClipboardFormats(
  Pointer<Uint32> lpuiFormats,
  int cFormats,
  Pointer<Uint32> pcFormatsOut,
) {
  final result_ = GetUpdatedClipboardFormats_Wrapper(
    lpuiFormats,
    cFormats,
    pcFormatsOut,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the coordinates of the smallest rectangle that completely encloses
/// the update region of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getupdaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetUpdateRect(HWND hWnd, Pointer<RECT>? lpRect, bool bErase) =>
    _GetUpdateRect(hWnd, lpRect ?? nullptr, bErase ? TRUE : FALSE) != FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>, Int32)>(symbol: 'GetUpdateRect')
external int _GetUpdateRect(Pointer hWnd, Pointer<RECT> lpRect, int bErase);

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
GDI_REGION_TYPE GetUpdateRgn(HWND hWnd, HRGN hRgn, bool bErase) =>
    GDI_REGION_TYPE(_GetUpdateRgn(hWnd, hRgn, bErase ? TRUE : FALSE));

@Native<Int32 Function(Pointer, Pointer, Int32)>(symbol: 'GetUpdateRgn')
external int _GetUpdateRgn(Pointer hWnd, Pointer hRgn, int bErase);

/// Retrieves information about the specified window station or desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getuserobjectinformationw>.
///
/// {@category user32}
Win32Result<bool> GetUserObjectInformation(
  HANDLE hObj,
  USER_OBJECT_INFORMATION_INDEX nIndex,
  Pointer? pvInfo,
  int nLength,
  Pointer<Uint32>? lpnLengthNeeded,
) {
  final result_ = GetUserObjectInformationW_Wrapper(
    hObj,
    nIndex,
    pvInfo ?? nullptr,
    nLength,
    lpnLengthNeeded ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle to a window that has the specified relationship (Z-Order
/// or owner) to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindow>.
///
/// {@category user32}
Win32Result<HWND> GetWindow(HWND hWnd, GET_WINDOW_CMD uCmd) {
  final result_ = GetWindow_Wrapper(hWnd, uCmd);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Retrieves the device context (DC) for the entire window, including title
/// bar, menus, and scroll bars.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HDC GetWindowDC(HWND? hWnd) => HDC(_GetWindowDC(hWnd ?? nullptr));

@Native<Pointer Function(Pointer)>(symbol: 'GetWindowDC')
external Pointer _GetWindowDC(Pointer hWnd);

/// Retrieves the current display affinity setting, from any process, for a
/// given window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdisplayaffinity>.
///
/// {@category user32}
Win32Result<bool> GetWindowDisplayAffinity(
  HWND hWnd,
  Pointer<Uint32> pdwAffinity,
) {
  final result_ = GetWindowDisplayAffinity_Wrapper(hWnd, pdwAffinity);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Returns the DPI_AWARENESS_CONTEXT associated with a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS_CONTEXT GetWindowDpiAwarenessContext(HWND hwnd) =>
    DPI_AWARENESS_CONTEXT(_GetWindowDpiAwarenessContext(hwnd));

@Native<Pointer Function(Pointer)>(symbol: 'GetWindowDpiAwarenessContext')
external Pointer _GetWindowDpiAwarenessContext(Pointer hwnd);

/// Returns the DPI_HOSTING_BEHAVIOR of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpihostingbehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_HOSTING_BEHAVIOR GetWindowDpiHostingBehavior(HWND hwnd) =>
    DPI_HOSTING_BEHAVIOR(_GetWindowDpiHostingBehavior(hwnd));

@Native<Int32 Function(Pointer)>(symbol: 'GetWindowDpiHostingBehavior')
external int _GetWindowDpiHostingBehavior(Pointer hwnd);

/// Retrieves information about the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowinfo>.
///
/// {@category user32}
Win32Result<bool> GetWindowInfo(HWND hwnd, Pointer<WINDOWINFO> pwi) {
  final result_ = GetWindowInfo_Wrapper(hwnd, pwi);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves information about the specified window.
///
/// The function also retrieves the value at a specified offset into the extra
/// window memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowlongptrw>.
///
/// {@category user32}
Win32Result<int> GetWindowLongPtr(HWND hWnd, WINDOW_LONG_PTR_INDEX nIndex) {
  final result_ = GetWindowLongPtrW_Wrapper(hWnd, nIndex);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Retrieves the full path and file name of the module associated with the
/// specified window handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowmodulefilenamew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowModuleFileName(HWND hwnd, PWSTR pszFileName, int cchFileNameMax) =>
    _GetWindowModuleFileName(hwnd, pszFileName, cchFileNameMax);

@Native<Uint32 Function(Pointer, Pointer<Utf16>, Uint32)>(
  symbol: 'GetWindowModuleFileNameW',
)
external int _GetWindowModuleFileName(
  Pointer hwnd,
  Pointer<Utf16> pszFileName,
  int cchFileNameMax,
);

/// Retrieves the show state and the restored, minimized, and maximized
/// positions of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowplacement>.
///
/// {@category user32}
Win32Result<bool> GetWindowPlacement(
  HWND hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
) {
  final result_ = GetWindowPlacement_Wrapper(hWnd, lpwndpl);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the dimensions of the bounding rectangle of the specified window.
///
/// The dimensions are given in screen coordinates that are relative to the
/// upper-left corner of the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrect>.
///
/// {@category user32}
Win32Result<bool> GetWindowRect(HWND hWnd, Pointer<RECT> lpRect) {
  final result_ = GetWindowRect_Wrapper(hWnd, lpRect);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Obtains a copy of the window region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetWindowRgn(HWND hWnd, HRGN hRgn) =>
    GDI_REGION_TYPE(_GetWindowRgn(hWnd, hRgn));

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'GetWindowRgn')
external int _GetWindowRgn(Pointer hWnd, Pointer hRgn);

/// Retrieves the dimensions of the tightest bounding rectangle for the window
/// region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgnbox>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetWindowRgnBox(HWND hWnd, Pointer<RECT> lprc) =>
    GDI_REGION_TYPE(_GetWindowRgnBox(hWnd, lprc));

@Native<Int32 Function(Pointer, Pointer<RECT>)>(symbol: 'GetWindowRgnBox')
external int _GetWindowRgnBox(Pointer hWnd, Pointer<RECT> lprc);

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
Win32Result<int> GetWindowText(HWND hWnd, PWSTR lpString, int nMaxCount) {
  final result_ = GetWindowTextW_Wrapper(hWnd, lpString, nMaxCount);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the length, in characters, of the specified window's title bar
/// text (if the window has a title bar).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowtextlengthw>.
///
/// {@category user32}
Win32Result<int> GetWindowTextLength(HWND hWnd) {
  final result_ = GetWindowTextLengthW_Wrapper(hWnd);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Retrieves the identifier of the thread that created the specified window
/// and, optionally, the identifier of the process that created the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowthreadprocessid>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetWindowThreadProcessId(HWND hWnd, Pointer<Uint32>? lpdwProcessId) =>
    _GetWindowThreadProcessId(hWnd, lpdwProcessId ?? nullptr);

@Native<Uint32 Function(Pointer, Pointer<Uint32>)>(
  symbol: 'GetWindowThreadProcessId',
)
external int _GetWindowThreadProcessId(
  Pointer hWnd,
  Pointer<Uint32> lpdwProcessId,
);

/// Draws gray text at the specified location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-graystringw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GrayString(
  HDC hDC,
  HBRUSH? hBrush,
  Pointer<NativeFunction<GRAYSTRINGPROC>>? lpOutputFunc,
  LPARAM lpData,
  int nCount,
  int x,
  int y,
  int nWidth,
  int nHeight,
) =>
    _GrayString(
      hDC,
      hBrush ?? nullptr,
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
  Int32 Function(
    Pointer,
    Pointer,
    Pointer<NativeFunction<GRAYSTRINGPROC>>,
    IntPtr,
    Int32,
    Int32,
    Int32,
    Int32,
    Int32,
  )
>(symbol: 'GrayStringW')
external int _GrayString(
  Pointer hDC,
  Pointer hBrush,
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
Win32Result<bool> HideCaret(HWND? hWnd) {
  final result_ = HideCaret_Wrapper(hWnd ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Adds or removes highlighting from an item in a menu bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-hilitemenuitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool HiliteMenuItem(HWND hWnd, HMENU hMenu, int uIDHiliteItem, int uHilite) =>
    _HiliteMenuItem(hWnd, hMenu, uIDHiliteItem, uHilite) != FALSE;

@Native<Int32 Function(Pointer, Pointer, Uint32, Uint32)>(
  symbol: 'HiliteMenuItem',
)
external int _HiliteMenuItem(
  Pointer hWnd,
  Pointer hMenu,
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

@Native<Int32 Function(Pointer<RECT>, Int32, Int32)>(symbol: 'InflateRect')
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

@Native<Int32 Function()>(symbol: 'InSendMessage')
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
Win32Result<bool> InsertMenu(
  HMENU hMenu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
  int uIDNewItem,
  PCWSTR? lpNewItem,
) {
  final result_ = InsertMenuW_Wrapper(
    hMenu,
    uPosition,
    uFlags,
    uIDNewItem,
    lpNewItem ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Inserts a new menu item at the specified position in a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insertmenuitemw>.
///
/// {@category user32}
Win32Result<bool> InsertMenuItem(
  HMENU hmenu,
  int item,
  bool fByPosition,
  Pointer<MENUITEMINFO> lpmi,
) {
  final result_ = InsertMenuItemW_Wrapper(
    hmenu,
    item,
    fByPosition ? TRUE : FALSE,
    lpmi,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
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
bool InvalidateRect(HWND? hWnd, Pointer<RECT>? lpRect, bool bErase) =>
    _InvalidateRect(
      hWnd ?? nullptr,
      lpRect ?? nullptr,
      bErase ? TRUE : FALSE,
    ) !=
    FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>, Int32)>(symbol: 'InvalidateRect')
external int _InvalidateRect(Pointer hWnd, Pointer<RECT> lpRect, int bErase);

/// Invalidates the client area within the specified region by adding it to the
/// current update region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invalidatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InvalidateRgn(HWND hWnd, HRGN? hRgn, bool bErase) =>
    _InvalidateRgn(hWnd, hRgn ?? nullptr, bErase ? TRUE : FALSE) != FALSE;

@Native<Int32 Function(Pointer, Pointer, Int32)>(symbol: 'InvalidateRgn')
external int _InvalidateRgn(Pointer hWnd, Pointer hRgn, int bErase);

/// Inverts a rectangle in a window by performing a logical NOT operation on the
/// color values for each pixel in the rectangle's interior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invertrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InvertRect(HDC hDC, Pointer<RECT> lprc) => _InvertRect(hDC, lprc) != FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>)>(symbol: 'InvertRect')
external int _InvertRect(Pointer hDC, Pointer<RECT> lprc);

/// Determines whether a window is a child window or descendant window of a
/// specified parent window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ischild>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsChild(HWND hWndParent, HWND hWnd) => _IsChild(hWndParent, hWnd) != FALSE;

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'IsChild')
external int _IsChild(Pointer hWndParent, Pointer hWnd);

/// Determines whether the clipboard contains data in the specified format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isclipboardformatavailable>.
///
/// {@category user32}
Win32Result<bool> IsClipboardFormatAvailable(int format) {
  final result_ = IsClipboardFormatAvailable_Wrapper(format);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether a message is intended for the specified dialog box and,
/// if it is, processes the message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isdialogmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsDialogMessage(HWND hDlg, Pointer<MSG> lpMsg) =>
    _IsDialogMessage(hDlg, lpMsg) != FALSE;

@Native<Int32 Function(Pointer, Pointer<MSG>)>(symbol: 'IsDialogMessageW')
external int _IsDialogMessage(Pointer hDlg, Pointer<MSG> lpMsg);

/// Determines whether a button control is checked or whether a three-state
/// button control is checked, unchecked, or indeterminate.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isdlgbuttonchecked>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int IsDlgButtonChecked(HWND hDlg, int nIDButton) =>
    _IsDlgButtonChecked(hDlg, nIDButton);

@Native<Uint32 Function(Pointer, Int32)>(symbol: 'IsDlgButtonChecked')
external int _IsDlgButtonChecked(Pointer hDlg, int nIDButton);

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

@Native<Int32 Function(Int32)>(symbol: 'IsGUIThread')
external int _IsGUIThread(int bConvert);

/// Determines whether the system considers that a specified application is not
/// responding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ishungappwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsHungAppWindow(HWND hwnd) => _IsHungAppWindow(hwnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsHungAppWindow')
external int _IsHungAppWindow(Pointer hwnd);

/// Determines whether the specified window is minimized (iconic).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isiconic>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsIconic(HWND hWnd) => _IsIconic(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsIconic')
external int _IsIconic(Pointer hWnd);

/// Determines whether the process belongs to a Windows Store app.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isimmersiveprocess>.
///
/// {@category user32}
Win32Result<bool> IsImmersiveProcess(HANDLE hProcess) {
  final result_ = IsImmersiveProcess_Wrapper(hProcess);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Determines whether a handle is a menu handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsMenu(HMENU hMenu) => _IsMenu(hMenu) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsMenu')
external int _IsMenu(Pointer hMenu);

/// Indicates whether EnableMouseInPointer is set for the mouse to act as a
/// pointer input device and send WM_POINTER messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismouseinpointerenabled>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsMouseInPointerEnabled() => _IsMouseInPointerEnabled() != FALSE;

@Native<Int32 Function()>(symbol: 'IsMouseInPointerEnabled')
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

@Native<Int32 Function()>(symbol: 'IsProcessDPIAware')
external int _IsProcessDPIAware();

/// Determines whether the specified rectangle is empty.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isrectempty>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsRectEmpty(Pointer<RECT> lprc) => _IsRectEmpty(lprc) != FALSE;

@Native<Int32 Function(Pointer<RECT>)>(symbol: 'IsRectEmpty')
external int _IsRectEmpty(Pointer<RECT> lprc);

/// Checks whether a specified window is touch-capable and, optionally,
/// retrieves the modifier flags set for the window's touch capability.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-istouchwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsTouchWindow(HWND hwnd, Pointer<Uint32>? pulFlags) =>
    _IsTouchWindow(hwnd, pulFlags ?? nullptr) != FALSE;

@Native<Int32 Function(Pointer, Pointer<Uint32>)>(symbol: 'IsTouchWindow')
external int _IsTouchWindow(Pointer hwnd, Pointer<Uint32> pulFlags);

/// Determines if a specified DPI_AWARENESS_CONTEXT is valid and supported by
/// the current system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isvaliddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsValidDpiAwarenessContext(DPI_AWARENESS_CONTEXT value) =>
    _IsValidDpiAwarenessContext(value) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsValidDpiAwarenessContext')
external int _IsValidDpiAwarenessContext(Pointer value);

/// Determines whether the specified window handle identifies an existing
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindow(HWND? hWnd) => _IsWindow(hWnd ?? nullptr) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsWindow')
external int _IsWindow(Pointer hWnd);

/// Determines whether the specified window is enabled for mouse and keyboard
/// input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowenabled>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowEnabled(HWND hWnd) => _IsWindowEnabled(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsWindowEnabled')
external int _IsWindowEnabled(Pointer hWnd);

/// Determines whether the specified window is a native Unicode window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowunicode>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowUnicode(HWND hWnd) => _IsWindowUnicode(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsWindowUnicode')
external int _IsWindowUnicode(Pointer hWnd);

/// Determines the visibility state of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowvisible>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowVisible(HWND hWnd) => _IsWindowVisible(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsWindowVisible')
external int _IsWindowVisible(Pointer hWnd);

/// Determines whether the last message read from the current thread's queue
/// originated from a WOW64 process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswow64message>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWow64Message() => _IsWow64Message() != FALSE;

@Native<Int32 Function()>(symbol: 'IsWow64Message')
external int _IsWow64Message();

/// Determines whether a window is maximized.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iszoomed>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsZoomed(HWND hWnd) => _IsZoomed(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'IsZoomed')
external int _IsZoomed(Pointer hWnd);

/// Destroys the specified timer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-killtimer>.
///
/// {@category user32}
Win32Result<bool> KillTimer(HWND? hWnd, int uIDEvent) {
  final result_ = KillTimer_Wrapper(hWnd ?? nullptr, uIDEvent);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Loads the specified accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadacceleratorsw>.
///
/// {@category user32}
Win32Result<HACCEL> LoadAccelerators(HINSTANCE? hInstance, PCWSTR lpTableName) {
  final result_ = LoadAcceleratorsW_Wrapper(hInstance ?? nullptr, lpTableName);
  return Win32Result(value: HACCEL(result_.value.ptr), error: result_.error);
}

/// Loads the specified cursor resource from the executable (.EXE) file
/// associated with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorw>.
///
/// {@category user32}
Win32Result<HCURSOR> LoadCursor(HINSTANCE? hInstance, PCWSTR lpCursorName) {
  final result_ = LoadCursorW_Wrapper(hInstance ?? nullptr, lpCursorName);
  return Win32Result(value: HCURSOR(result_.value.ptr), error: result_.error);
}

/// Creates a cursor based on data contained in a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorfromfilew>.
///
/// {@category user32}
Win32Result<HCURSOR> LoadCursorFromFile(PCWSTR lpFileName) {
  final result_ = LoadCursorFromFileW_Wrapper(lpFileName);
  return Win32Result(value: HCURSOR(result_.value.ptr), error: result_.error);
}

/// Loads the specified icon resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadiconw>.
///
/// {@category user32}
Win32Result<HICON> LoadIcon(HINSTANCE? hInstance, PCWSTR lpIconName) {
  final result_ = LoadIconW_Wrapper(hInstance ?? nullptr, lpIconName);
  return Win32Result(value: HICON(result_.value.ptr), error: result_.error);
}

/// Loads an icon, cursor, animated cursor, or bitmap.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadimagew>.
///
/// {@category user32}
Win32Result<HANDLE> LoadImage(
  HINSTANCE? hInst,
  PCWSTR name,
  GDI_IMAGE_TYPE type,
  int cx,
  int cy,
  IMAGE_FLAGS fuLoad,
) {
  final result_ = LoadImageW_Wrapper(
    hInst ?? nullptr,
    name,
    type,
    cx,
    cy,
    fuLoad,
  );
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Loads a new input locale identifier (formerly called the keyboard layout)
/// into the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadkeyboardlayoutw>.
///
/// {@category user32}
Win32Result<HKL> LoadKeyboardLayout(
  PCWSTR pwszKLID,
  ACTIVATE_KEYBOARD_LAYOUT_FLAGS flags,
) {
  final result_ = LoadKeyboardLayoutW_Wrapper(pwszKLID, flags);
  return Win32Result(value: HKL(result_.value.ptr), error: result_.error);
}

/// Loads the specified menu resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuw>.
///
/// {@category user32}
Win32Result<HMENU> LoadMenu(HINSTANCE? hInstance, PCWSTR lpMenuName) {
  final result_ = LoadMenuW_Wrapper(hInstance ?? nullptr, lpMenuName);
  return Win32Result(value: HMENU(result_.value.ptr), error: result_.error);
}

/// Loads the specified menu template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuindirectw>.
///
/// {@category user32}
Win32Result<HMENU> LoadMenuIndirect(Pointer lpMenuTemplate) {
  final result_ = LoadMenuIndirectW_Wrapper(lpMenuTemplate);
  return Win32Result(value: HMENU(result_.value.ptr), error: result_.error);
}

/// Loads a string resource from the executable file associated with a specified
/// module, copies the string into a buffer, and appends a terminating null
/// character.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadstringw>.
///
/// {@category user32}
Win32Result<int> LoadString(
  HINSTANCE? hInstance,
  int uID,
  PWSTR lpBuffer,
  int cchBufferMax,
) {
  final result_ = LoadStringW_Wrapper(
    hInstance ?? nullptr,
    uID,
    lpBuffer,
    cchBufferMax,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// The foreground process can call the LockSetForegroundWindow function to
/// disable calls to the SetForegroundWindow function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-locksetforegroundwindow>.
///
/// {@category user32}
Win32Result<bool> LockSetForegroundWindow(
  FOREGROUND_WINDOW_LOCK_CODE uLockCode,
) {
  final result_ = LockSetForegroundWindow_Wrapper(uLockCode);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Disables or enables drawing in the specified window.
///
/// Only one window can be locked at a time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockwindowupdate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LockWindowUpdate(HWND? hWndLock) =>
    _LockWindowUpdate(hWndLock ?? nullptr) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'LockWindowUpdate')
external int _LockWindowUpdate(Pointer hWndLock);

/// Locks the workstation's display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockworkstation>.
///
/// {@category user32}
Win32Result<bool> LockWorkStation() {
  final result_ = LockWorkStation_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Converts the logical coordinates of a point in a window to physical
/// coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-logicaltophysicalpoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LogicalToPhysicalPoint(HWND hWnd, Pointer<POINT> lpPoint) =>
    _LogicalToPhysicalPoint(hWnd, lpPoint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<POINT>)>(
  symbol: 'LogicalToPhysicalPoint',
)
external int _LogicalToPhysicalPoint(Pointer hWnd, Pointer<POINT> lpPoint);

/// Converts a point in a window from logical coordinates into physical
/// coordinates, regardless of the dots per inch (dpi) awareness of the caller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-logicaltophysicalpointforpermonitordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool LogicalToPhysicalPointForPerMonitorDPI(
  HWND? hWnd,
  Pointer<POINT> lpPoint,
) => _LogicalToPhysicalPointForPerMonitorDPI(hWnd ?? nullptr, lpPoint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<POINT>)>(
  symbol: 'LogicalToPhysicalPointForPerMonitorDPI',
)
external int _LogicalToPhysicalPointForPerMonitorDPI(
  Pointer hWnd,
  Pointer<POINT> lpPoint,
);

/// Searches through icon or cursor data for the icon or cursor that best fits
/// the current display device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lookupiconidfromdirectory>.
///
/// {@category user32}
Win32Result<int> LookupIconIdFromDirectory(
  Pointer<Uint8> presbits,
  bool fIcon,
) {
  final result_ = LookupIconIdFromDirectory_Wrapper(
    presbits,
    fIcon ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Searches through icon or cursor data for the icon or cursor that best fits
/// the current display device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lookupiconidfromdirectoryex>.
///
/// {@category user32}
Win32Result<int> LookupIconIdFromDirectoryEx(
  Pointer<Uint8> presbits,
  bool fIcon,
  int cxDesired,
  int cyDesired,
  IMAGE_FLAGS flags,
) {
  final result_ = LookupIconIdFromDirectoryEx_Wrapper(
    presbits,
    fIcon ? TRUE : FALSE,
    cxDesired,
    cyDesired,
    flags,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Converts the specified dialog box units to screen units (pixels).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapdialogrect>.
///
/// {@category user32}
Win32Result<bool> MapDialogRect(HWND hDlg, Pointer<RECT> lpRect) {
  final result_ = MapDialogRect_Wrapper(hDlg, lpRect);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
int MapVirtualKeyEx(int uCode, MAP_VIRTUAL_KEY_TYPE uMapType, HKL? dwhkl) =>
    _MapVirtualKeyEx(uCode, uMapType, dwhkl ?? nullptr);

@Native<Uint32 Function(Uint32, Uint32, Pointer)>(symbol: 'MapVirtualKeyExW')
external int _MapVirtualKeyEx(int uCode, int uMapType, Pointer dwhkl);

/// Converts (maps) a set of points from a coordinate space relative to one
/// window to a coordinate space relative to another window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapwindowpoints>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MapWindowPoints(
  HWND? hWndFrom,
  HWND? hWndTo,
  Pointer<POINT> lpPoints,
  int cPoints,
) =>
    _MapWindowPoints(hWndFrom ?? nullptr, hWndTo ?? nullptr, lpPoints, cPoints);

@Native<Int32 Function(Pointer, Pointer, Pointer<POINT>, Uint32)>(
  symbol: 'MapWindowPoints',
)
external int _MapWindowPoints(
  Pointer hWndFrom,
  Pointer hWndTo,
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
int MenuItemFromPoint(HWND? hWnd, HMENU hMenu, POINT ptScreen) =>
    _MenuItemFromPoint(hWnd ?? nullptr, hMenu, ptScreen);

@Native<Int32 Function(Pointer, Pointer, POINT)>(symbol: 'MenuItemFromPoint')
external int _MenuItemFromPoint(Pointer hWnd, Pointer hMenu, POINT ptScreen);

/// Plays a waveform sound.
///
/// The waveform sound for each sound type is identified by an entry in the
/// registry.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messagebeep>.
///
/// {@category user32}
Win32Result<bool> MessageBeep(MESSAGEBOX_STYLE uType) {
  final result_ = MessageBeep_Wrapper(uType);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<MESSAGEBOX_RESULT> MessageBox(
  HWND? hWnd,
  PCWSTR? lpText,
  PCWSTR? lpCaption,
  MESSAGEBOX_STYLE uType,
) {
  final result_ = MessageBoxW_Wrapper(
    hWnd ?? nullptr,
    lpText ?? nullptr,
    lpCaption ?? nullptr,
    uType,
  );
  return Win32Result(
    value: MESSAGEBOX_RESULT(result_.value.i32),
    error: result_.error,
  );
}

/// Creates, displays, and operates a message box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-messageboxexw>.
///
/// {@category user32}
Win32Result<MESSAGEBOX_RESULT> MessageBoxEx(
  HWND? hWnd,
  PCWSTR? lpText,
  PCWSTR? lpCaption,
  MESSAGEBOX_STYLE uType,
  int wLanguageId,
) {
  final result_ = MessageBoxExW_Wrapper(
    hWnd ?? nullptr,
    lpText ?? nullptr,
    lpCaption ?? nullptr,
    uType,
    wLanguageId,
  );
  return Win32Result(
    value: MESSAGEBOX_RESULT(result_.value.i32),
    error: result_.error,
  );
}

/// Changes an existing menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-modifymenuw>.
///
/// {@category user32}
Win32Result<bool> ModifyMenu(
  HMENU hMnu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
  int uIDNewItem,
  PCWSTR? lpNewItem,
) {
  final result_ = ModifyMenuW_Wrapper(
    hMnu,
    uPosition,
    uFlags,
    uIDNewItem,
    lpNewItem ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves a handle to the display monitor that contains a specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMONITOR MonitorFromPoint(POINT pt, MONITOR_FROM_FLAGS dwFlags) =>
    HMONITOR(_MonitorFromPoint(pt, dwFlags));

@Native<Pointer Function(POINT, Uint32)>(symbol: 'MonitorFromPoint')
external Pointer _MonitorFromPoint(POINT pt, int dwFlags);

/// Retrieves a handle to the display monitor that has the largest area of
/// intersection with a specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfromrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMONITOR MonitorFromRect(Pointer<RECT> lprc, MONITOR_FROM_FLAGS dwFlags) =>
    HMONITOR(_MonitorFromRect(lprc, dwFlags));

@Native<Pointer Function(Pointer<RECT>, Uint32)>(symbol: 'MonitorFromRect')
external Pointer _MonitorFromRect(Pointer<RECT> lprc, int dwFlags);

/// Retrieves a handle to the display monitor that has the largest area of
/// intersection with the bounding rectangle of a specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfromwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMONITOR MonitorFromWindow(HWND hwnd, MONITOR_FROM_FLAGS dwFlags) =>
    HMONITOR(_MonitorFromWindow(hwnd, dwFlags));

@Native<Pointer Function(Pointer, Uint32)>(symbol: 'MonitorFromWindow')
external Pointer _MonitorFromWindow(Pointer hwnd, int dwFlags);

/// Changes the position and dimensions of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-movewindow>.
///
/// {@category user32}
Win32Result<bool> MoveWindow(
  HWND hWnd,
  int x,
  int y,
  int nWidth,
  int nHeight,
  bool bRepaint,
) {
  final result_ = MoveWindow_Wrapper(
    hWnd,
    x,
    y,
    nWidth,
    nHeight,
    bRepaint ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Waits until one or all of the specified objects are in the signaled state or
/// the time-out interval elapses.
///
/// The objects can include input event objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-msgwaitformultipleobjects>.
///
/// {@category user32}
Win32Result<WAIT_EVENT> MsgWaitForMultipleObjects(
  int nCount,
  Pointer<Pointer>? pHandles,
  bool fWaitAll,
  int dwMilliseconds,
  QUEUE_STATUS_FLAGS dwWakeMask,
) {
  final result_ = MsgWaitForMultipleObjects_Wrapper(
    nCount,
    pHandles ?? nullptr,
    fWaitAll ? TRUE : FALSE,
    dwMilliseconds,
    dwWakeMask,
  );
  return Win32Result(
    value: WAIT_EVENT(result_.value.u32),
    error: result_.error,
  );
}

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
Win32Result<WAIT_EVENT> MsgWaitForMultipleObjectsEx(
  int nCount,
  Pointer<Pointer>? pHandles,
  int dwMilliseconds,
  QUEUE_STATUS_FLAGS dwWakeMask,
  MSG_WAIT_FOR_MULTIPLE_OBJECTS_EX_FLAGS dwFlags,
) {
  final result_ = MsgWaitForMultipleObjectsEx_Wrapper(
    nCount,
    pHandles ?? nullptr,
    dwMilliseconds,
    dwWakeMask,
    dwFlags,
  );
  return Win32Result(
    value: WAIT_EVENT(result_.value.u32),
    error: result_.error,
  );
}

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
void NotifyWinEvent(int event, HWND hwnd, int idObject, int idChild) =>
    _NotifyWinEvent(event, hwnd, idObject, idChild);

@Native<Void Function(Uint32, Pointer, Int32, Int32)>(symbol: 'NotifyWinEvent')
external void _NotifyWinEvent(
  int event,
  Pointer hwnd,
  int idObject,
  int idChild,
);

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

@Native<Int32 Function(Pointer<RECT>, Int32, Int32)>(symbol: 'OffsetRect')
external int _OffsetRect(Pointer<RECT> lprc, int dx, int dy);

/// Opens the clipboard for examination and prevents other applications from
/// modifying the clipboard content.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openclipboard>.
///
/// {@category user32}
Win32Result<bool> OpenClipboard(HWND? hWndNewOwner) {
  final result_ = OpenClipboard_Wrapper(hWndNewOwner ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Opens the specified desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-opendesktopw>.
///
/// {@category user32}
Win32Result<HDESK> OpenDesktop(
  PCWSTR lpszDesktop,
  DESKTOP_CONTROL_FLAGS dwFlags,
  bool fInherit,
  int dwDesiredAccess,
) {
  final result_ = OpenDesktopW_Wrapper(
    lpszDesktop,
    dwFlags,
    fInherit ? TRUE : FALSE,
    dwDesiredAccess,
  );
  return Win32Result(value: HDESK(result_.value.ptr), error: result_.error);
}

/// Restores a minimized (iconic) window to its previous size and position; it
/// then activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openicon>.
///
/// {@category user32}
Win32Result<bool> OpenIcon(HWND hWnd) {
  final result_ = OpenIcon_Wrapper(hWnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Opens the desktop that receives user input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openinputdesktop>.
///
/// {@category user32}
Win32Result<HDESK> OpenInputDesktop(
  DESKTOP_CONTROL_FLAGS dwFlags,
  bool fInherit,
  DESKTOP_ACCESS_FLAGS dwDesiredAccess,
) {
  final result_ = OpenInputDesktop_Wrapper(
    dwFlags,
    fInherit ? TRUE : FALSE,
    dwDesiredAccess,
  );
  return Win32Result(value: HDESK(result_.value.ptr), error: result_.error);
}

/// Opens the specified window station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openwindowstationw>.
///
/// {@category user32}
Win32Result<HWINSTA> OpenWindowStation(
  PCWSTR lpszWinSta,
  bool fInherit,
  int dwDesiredAccess,
) {
  final result_ = OpenWindowStationW_Wrapper(
    lpszWinSta,
    fInherit ? TRUE : FALSE,
    dwDesiredAccess,
  );
  return Win32Result(value: HWINSTA(result_.value.ptr), error: result_.error);
}

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
bool PaintDesktop(HDC hdc) => _PaintDesktop(hdc) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'PaintDesktop')
external int _PaintDesktop(Pointer hdc);

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
  HWND? hWnd,
  int wMsgFilterMin,
  int wMsgFilterMax,
  PEEK_MESSAGE_REMOVE_TYPE wRemoveMsg,
) =>
    _PeekMessage(
      lpMsg,
      hWnd ?? nullptr,
      wMsgFilterMin,
      wMsgFilterMax,
      wRemoveMsg,
    ) !=
    FALSE;

@Native<Int32 Function(Pointer<MSG>, Pointer, Uint32, Uint32, Uint32)>(
  symbol: 'PeekMessageW',
)
external int _PeekMessage(
  Pointer<MSG> lpMsg,
  Pointer hWnd,
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
bool PhysicalToLogicalPoint(HWND hWnd, Pointer<POINT> lpPoint) =>
    _PhysicalToLogicalPoint(hWnd, lpPoint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<POINT>)>(
  symbol: 'PhysicalToLogicalPoint',
)
external int _PhysicalToLogicalPoint(Pointer hWnd, Pointer<POINT> lpPoint);

/// Converts a point in a window from physical coordinates into logical
/// coordinates, regardless of the dots per inch (dpi) awareness of the caller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-physicaltologicalpointforpermonitordpi>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PhysicalToLogicalPointForPerMonitorDPI(
  HWND? hWnd,
  Pointer<POINT> lpPoint,
) => _PhysicalToLogicalPointForPerMonitorDPI(hWnd ?? nullptr, lpPoint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<POINT>)>(
  symbol: 'PhysicalToLogicalPointForPerMonitorDPI',
)
external int _PhysicalToLogicalPointForPerMonitorDPI(
  Pointer hWnd,
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
Win32Result<bool> PostMessage(
  HWND? hWnd,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
) {
  final result_ = PostMessageW_Wrapper(hWnd ?? nullptr, msg, wParam, lParam);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> PostThreadMessage(
  int idThread,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
) {
  final result_ = PostThreadMessageW_Wrapper(idThread, msg, wParam, lParam);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Copies a visual window into the specified device context (DC), typically a
/// printer DC.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-printwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PrintWindow(HWND hwnd, HDC hdcBlt, PRINT_WINDOW_FLAGS nFlags) =>
    _PrintWindow(hwnd, hdcBlt, nFlags) != FALSE;

@Native<Int32 Function(Pointer, Pointer, Uint32)>(symbol: 'PrintWindow')
external int _PrintWindow(Pointer hwnd, Pointer hdcBlt, int nFlags);

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
  Pointer<Pointer>? phicon,
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
    Pointer<Utf16>,
    Int32,
    Int32,
    Int32,
    Pointer<Pointer>,
    Pointer<Uint32>,
    Uint32,
    Uint32,
  )
>(symbol: 'PrivateExtractIconsW')
external int _PrivateExtractIcons(
  Pointer<Utf16> szFileName,
  int nIconIndex,
  int cxIcon,
  int cyIcon,
  Pointer<Pointer> phicon,
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

@Native<Int32 Function(Pointer<RECT>, POINT)>(symbol: 'PtInRect')
external int _PtInRect(Pointer<RECT> lprc, POINT pt);

/// Updates the specified rectangle or region in a window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-redrawwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool RedrawWindow(
  HWND? hWnd,
  Pointer<RECT>? lprcUpdate,
  HRGN? hrgnUpdate,
  REDRAW_WINDOW_FLAGS flags,
) =>
    _RedrawWindow(
      hWnd ?? nullptr,
      lprcUpdate ?? nullptr,
      hrgnUpdate ?? nullptr,
      flags,
    ) !=
    FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>, Pointer, Uint32)>(
  symbol: 'RedrawWindow',
)
external int _RedrawWindow(
  Pointer hWnd,
  Pointer<RECT> lprcUpdate,
  Pointer hrgnUpdate,
  int flags,
);

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassw>.
///
/// {@category user32}
Win32Result<int> RegisterClass(Pointer<WNDCLASS> lpWndClass) {
  final result_ = RegisterClassW_Wrapper(lpWndClass);
  return Win32Result(value: result_.value.u16, error: result_.error);
}

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassexw>.
///
/// {@category user32}
Win32Result<int> RegisterClassEx(Pointer<WNDCLASSEX> param0) {
  final result_ = RegisterClassExW_Wrapper(param0);
  return Win32Result(value: result_.value.u16, error: result_.error);
}

/// Registers a new clipboard format.
///
/// This format can then be used as a valid clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclipboardformatw>.
///
/// {@category user32}
Win32Result<int> RegisterClipboardFormat(PCWSTR lpszFormat) {
  final result_ = RegisterClipboardFormatW_Wrapper(lpszFormat);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Registers the device or type of device for which a window will receive
/// notifications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerdevicenotificationw>.
///
/// {@category user32}
Win32Result<HDEVNOTIFY> RegisterDeviceNotification(
  HANDLE hRecipient,
  Pointer notificationFilter,
  REGISTER_NOTIFICATION_FLAGS flags,
) {
  final result_ = RegisterDeviceNotificationW_Wrapper(
    hRecipient,
    notificationFilter,
    flags,
  );
  return Win32Result(
    value: HDEVNOTIFY(result_.value.ptr),
    error: result_.error,
  );
}

/// Defines a system-wide hot key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerhotkey>.
///
/// {@category user32}
Win32Result<bool> RegisterHotKey(
  HWND? hWnd,
  int id,
  HOT_KEY_MODIFIERS fsModifiers,
  int vk,
) {
  final result_ = RegisterHotKey_Wrapper(hWnd ?? nullptr, id, fsModifiers, vk);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Registers the application to receive power setting notifications for the
/// specific power setting event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerpowersettingnotification>.
///
/// {@category user32}
Win32Result<HPOWERNOTIFY> RegisterPowerSettingNotification(
  HANDLE hRecipient,
  Pointer<GUID> powerSettingGuid,
  REGISTER_NOTIFICATION_FLAGS flags,
) {
  final result_ = RegisterPowerSettingNotification_Wrapper(
    hRecipient,
    powerSettingGuid,
    flags,
  );
  return Win32Result(
    value: HPOWERNOTIFY(result_.value.i64),
    error: result_.error,
  );
}

/// Registers the devices that supply the raw input data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerrawinputdevices>.
///
/// {@category user32}
Win32Result<bool> RegisterRawInputDevices(
  Pointer<RAWINPUTDEVICE> pRawInputDevices,
  int uiNumDevices,
  int cbSize,
) {
  final result_ = RegisterRawInputDevices_Wrapper(
    pRawInputDevices,
    uiNumDevices,
    cbSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Registers a window to process the WM_TOUCHHITTESTING notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchhittestingwindow>.
///
/// {@category user32}
Win32Result<bool> RegisterTouchHitTestingWindow(HWND hwnd, int value) {
  final result_ = RegisterTouchHitTestingWindow_Wrapper(hwnd, value);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Registers a window as being touch-capable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchwindow>.
///
/// {@category user32}
Win32Result<bool> RegisterTouchWindow(
  HWND hwnd,
  REGISTER_TOUCH_WINDOW_FLAGS ulFlags,
) {
  final result_ = RegisterTouchWindow_Wrapper(hwnd, ulFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Defines a new window message that is guaranteed to be unique throughout the
/// system.
///
/// The message value can be used when sending or posting messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerwindowmessagew>.
///
/// {@category user32}
Win32Result<int> RegisterWindowMessage(PCWSTR lpString) {
  final result_ = RegisterWindowMessageW_Wrapper(lpString);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Releases the mouse capture from a window in the current thread and restores
/// normal mouse input processing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-releasecapture>.
///
/// {@category user32}
Win32Result<bool> ReleaseCapture() {
  final result_ = ReleaseCapture_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
int ReleaseDC(HWND? hWnd, HDC hDC) => _ReleaseDC(hWnd ?? nullptr, hDC);

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'ReleaseDC')
external int _ReleaseDC(Pointer hWnd, Pointer hDC);

/// Removes the given window from the system-maintained clipboard format
/// listener list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removeclipboardformatlistener>.
///
/// {@category user32}
Win32Result<bool> RemoveClipboardFormatListener(HWND hwnd) {
  final result_ = RemoveClipboardFormatListener_Wrapper(hwnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Deletes a menu item or detaches a submenu from the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removemenu>.
///
/// {@category user32}
Win32Result<bool> RemoveMenu(
  HMENU hMenu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
) {
  final result_ = RemoveMenu_Wrapper(hMenu, uPosition, uFlags);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Removes an entry from the property list of the specified window.
///
/// The specified character string identifies the entry to be removed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removepropw>.
///
/// {@category user32}
Win32Result<HANDLE> RemoveProp(HWND hWnd, PCWSTR lpString) {
  final result_ = RemovePropW_Wrapper(hWnd, lpString);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

/// Replies to a message sent from another thread by the SendMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-replymessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ReplyMessage(LRESULT lResult) => _ReplyMessage(lResult) != FALSE;

@Native<Int32 Function(IntPtr)>(symbol: 'ReplyMessage')
external int _ReplyMessage(int lResult);

/// Converts the screen coordinates of a specified point on the screen to
/// client-area coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-screentoclient>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ScreenToClient(HWND hWnd, Pointer<POINT> lpPoint) =>
    _ScreenToClient(hWnd, lpPoint) != FALSE;

@Native<Int32 Function(Pointer, Pointer<POINT>)>(symbol: 'ScreenToClient')
external int _ScreenToClient(Pointer hWnd, Pointer<POINT> lpPoint);

/// Scrolls a rectangle of bits horizontally and vertically.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrolldc>.
///
/// {@category user32}
Win32Result<bool> ScrollDC(
  HDC hDC,
  int dx,
  int dy,
  Pointer<RECT>? lprcScroll,
  Pointer<RECT>? lprcClip,
  HRGN? hrgnUpdate,
  Pointer<RECT>? lprcUpdate,
) {
  final result_ = ScrollDC_Wrapper(
    hDC,
    dx,
    dy,
    lprcScroll ?? nullptr,
    lprcClip ?? nullptr,
    hrgnUpdate ?? nullptr,
    lprcUpdate ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Scrolls the contents of the specified window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrollwindow>.
///
/// {@category user32}
Win32Result<bool> ScrollWindow(
  HWND hWnd,
  int xAmount,
  int yAmount,
  Pointer<RECT>? lpRect,
  Pointer<RECT>? lpClipRect,
) {
  final result_ = ScrollWindow_Wrapper(
    hWnd,
    xAmount,
    yAmount,
    lpRect ?? nullptr,
    lpClipRect ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Scrolls the contents of the specified window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-scrollwindowex>.
///
/// {@category user32}
Win32Result<int> ScrollWindowEx(
  HWND hWnd,
  int dx,
  int dy,
  Pointer<RECT>? prcScroll,
  Pointer<RECT>? prcClip,
  HRGN? hrgnUpdate,
  Pointer<RECT>? prcUpdate,
  SCROLL_WINDOW_FLAGS flags,
) {
  final result_ = ScrollWindowEx_Wrapper(
    hWnd,
    dx,
    dy,
    prcScroll ?? nullptr,
    prcClip ?? nullptr,
    hrgnUpdate ?? nullptr,
    prcUpdate ?? nullptr,
    flags,
  );
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Sends a message to the specified control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-senddlgitemmessagew>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
LRESULT SendDlgItemMessage(
  HWND hDlg,
  int nIDDlgItem,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
) => LRESULT(_SendDlgItemMessage(hDlg, nIDDlgItem, msg, wParam, lParam));

@Native<IntPtr Function(Pointer, Int32, Uint32, IntPtr, IntPtr)>(
  symbol: 'SendDlgItemMessageW',
)
external int _SendDlgItemMessage(
  Pointer hDlg,
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
Win32Result<int> SendInput(int cInputs, Pointer<INPUT> pInputs, int cbSize) {
  final result_ = SendInput_Wrapper(cInputs, pInputs, cbSize);
  return Win32Result(value: result_.value.u32, error: result_.error);
}

/// Sends the specified message to a window or windows.
///
/// The SendMessage function calls the window procedure for the specified window
/// and does not return until the window procedure has processed the message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagew>.
///
/// {@category user32}
Win32Result<LRESULT> SendMessage(
  HWND hWnd,
  int msg,
  WPARAM? wParam,
  LPARAM? lParam,
) {
  final result_ = SendMessageW_Wrapper(
    hWnd,
    msg,
    wParam ?? NULL,
    lParam ?? NULL,
  );
  return Win32Result(value: LRESULT(result_.value.i64), error: result_.error);
}

/// Sends the specified message to a window or windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagecallbackw>.
///
/// {@category user32}
Win32Result<bool> SendMessageCallback(
  HWND hWnd,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
  Pointer<NativeFunction<SENDASYNCPROC>> lpResultCallBack,
  int dwData,
) {
  final result_ = SendMessageCallbackW_Wrapper(
    hWnd,
    msg,
    wParam,
    lParam,
    lpResultCallBack,
    dwData,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sends the specified message to one or more windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendmessagetimeoutw>.
///
/// {@category user32}
Win32Result<LRESULT> SendMessageTimeout(
  HWND hWnd,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
  SEND_MESSAGE_TIMEOUT_FLAGS fuFlags,
  int uTimeout,
  Pointer<IntPtr>? lpdwResult,
) {
  final result_ = SendMessageTimeoutW_Wrapper(
    hWnd,
    msg,
    wParam,
    lParam,
    fuFlags,
    uTimeout,
    lpdwResult ?? nullptr,
  );
  return Win32Result(value: LRESULT(result_.value.i64), error: result_.error);
}

/// Sends the specified message to a window or windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendnotifymessagew>.
///
/// {@category user32}
Win32Result<bool> SendNotifyMessage(
  HWND hWnd,
  int msg,
  WPARAM wParam,
  LPARAM lParam,
) {
  final result_ = SendNotifyMessageW_Wrapper(hWnd, msg, wParam, lParam);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Activates a window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setactivewindow>.
///
/// {@category user32}
Win32Result<HWND> SetActiveWindow(HWND hWnd) {
  final result_ = SetActiveWindow_Wrapper(hWnd);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Sets the mouse capture to the specified window belonging to the current
/// thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcapture>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND SetCapture(HWND hWnd) => HWND(_SetCapture(hWnd));

@Native<Pointer Function(Pointer)>(symbol: 'SetCapture')
external Pointer _SetCapture(Pointer hWnd);

/// Sets the caret blink time to the specified number of milliseconds.
///
/// The blink time is the elapsed time, in milliseconds, required to invert the
/// caret's pixels.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcaretblinktime>.
///
/// {@category user32}
Win32Result<bool> SetCaretBlinkTime(int uMSeconds) {
  final result_ = SetCaretBlinkTime_Wrapper(uMSeconds);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetCaretPos(int x, int y) {
  final result_ = SetCaretPos_Wrapper(x, y);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Replaces the specified value at the specified offset in the extra class
/// memory or the WNDCLASSEX structure for the class to which the specified
/// window belongs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclasslongptrw>.
///
/// {@category user32}
Win32Result<int> SetClassLongPtr(
  HWND hWnd,
  GET_CLASS_LONG_INDEX nIndex,
  int dwNewLong,
) {
  final result_ = SetClassLongPtrW_Wrapper(hWnd, nIndex, dwNewLong);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Places data on the clipboard in a specified clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclipboarddata>.
///
/// {@category user32}
Win32Result<HANDLE> SetClipboardData(int uFormat, HANDLE? hMem) {
  final result_ = SetClipboardData_Wrapper(uFormat, hMem ?? nullptr);
  return Win32Result(value: HANDLE(result_.value.ptr), error: result_.error);
}

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
Win32Result<HWND> SetClipboardViewer(HWND hWndNewViewer) {
  final result_ = SetClipboardViewer_Wrapper(hWndNewViewer);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Creates a timer with the specified time-out value and coalescing tolerance
/// delay.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcoalescabletimer>.
///
/// {@category user32}
Win32Result<int> SetCoalescableTimer(
  HWND? hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>>? lpTimerFunc,
  int uToleranceDelay,
) {
  final result_ = SetCoalescableTimer_Wrapper(
    hWnd ?? nullptr,
    nIDEvent,
    uElapse,
    lpTimerFunc ?? nullptr,
    uToleranceDelay,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Sets the cursor shape.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HCURSOR SetCursor(HCURSOR? hCursor) => HCURSOR(_SetCursor(hCursor ?? nullptr));

@Native<Pointer Function(Pointer)>(symbol: 'SetCursor')
external Pointer _SetCursor(Pointer hCursor);

/// Moves the cursor to the specified screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursorpos>.
///
/// {@category user32}
Win32Result<bool> SetCursorPos(int x, int y) {
  final result_ = SetCursorPos_Wrapper(x, y);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Overrides the default per-monitor DPI scaling behavior of a child window in
/// a dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdialogcontroldpichangebehavior>.
///
/// {@category user32}
Win32Result<bool> SetDialogControlDpiChangeBehavior(
  HWND hWnd,
  DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS mask,
  DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS values,
) {
  final result_ = SetDialogControlDpiChangeBehavior_Wrapper(hWnd, mask, values);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Dialogs in Per-Monitor v2 contexts are automatically DPI scaled.
///
/// This method lets you customize their DPI change behavior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdialogdpichangebehavior>.
///
/// {@category user32}
Win32Result<bool> SetDialogDpiChangeBehavior(
  HWND hDlg,
  DIALOG_DPI_CHANGE_BEHAVIORS mask,
  DIALOG_DPI_CHANGE_BEHAVIORS values,
) {
  final result_ = SetDialogDpiChangeBehavior_Wrapper(hDlg, mask, values);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the screen auto-rotation preferences for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdisplayautorotationpreferences>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDisplayAutoRotationPreferences(ORIENTATION_PREFERENCE orientation) =>
    _SetDisplayAutoRotationPreferences(orientation) != FALSE;

@Native<Int32 Function(Int32)>(symbol: 'SetDisplayAutoRotationPreferences')
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
Win32Result<bool> SetDlgItemInt(
  HWND hDlg,
  int nIDDlgItem,
  int uValue,
  bool bSigned,
) {
  final result_ = SetDlgItemInt_Wrapper(
    hDlg,
    nIDDlgItem,
    uValue,
    bSigned ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the title or text of a control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdlgitemtextw>.
///
/// {@category user32}
Win32Result<bool> SetDlgItemText(HWND hDlg, int nIDDlgItem, PCWSTR lpString) {
  final result_ = SetDlgItemTextW_Wrapper(hDlg, nIDDlgItem, lpString);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the double-click time for the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdoubleclicktime>.
///
/// {@category user32}
Win32Result<bool> SetDoubleClickTime(int param0) {
  final result_ = SetDoubleClickTime_Wrapper(param0);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the keyboard focus to the specified window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setfocus>.
///
/// {@category user32}
Win32Result<HWND> SetFocus(HWND? hWnd) {
  final result_ = SetFocus_Wrapper(hWnd ?? nullptr);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Brings the thread that created the specified window into the foreground and
/// activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setforegroundwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetForegroundWindow(HWND hWnd) => _SetForegroundWindow(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'SetForegroundWindow')
external int _SetForegroundWindow(Pointer hWnd);

/// Configures the messages that are sent from a window for Windows Touch
/// gestures.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setgestureconfig>.
///
/// {@category user32}
Win32Result<bool> SetGestureConfig(
  HWND hwnd,
  int cIDs,
  Pointer<GESTURECONFIG> pGestureConfig,
  int cbSize,
) {
  final result_ = SetGestureConfig_Wrapper(
    hwnd,
    NULL,
    cIDs,
    pGestureConfig,
    cbSize,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetKeyboardState(Pointer<Uint8> lpKeyState) {
  final result_ = SetKeyboardState_Wrapper(lpKeyState);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the opacity and transparency color key of a layered window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setlayeredwindowattributes>.
///
/// {@category user32}
Win32Result<bool> SetLayeredWindowAttributes(
  HWND hwnd,
  COLORREF crKey,
  int bAlpha,
  LAYERED_WINDOW_ATTRIBUTES_FLAGS dwFlags,
) {
  final result_ = SetLayeredWindowAttributes_Wrapper(
    hwnd,
    crKey,
    bAlpha,
    dwFlags,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Assigns a new menu to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenu>.
///
/// {@category user32}
Win32Result<bool> SetMenu(HWND hWnd, HMENU? hMenu) {
  final result_ = SetMenu_Wrapper(hWnd, hMenu ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the default menu item for the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenudefaultitem>.
///
/// {@category user32}
Win32Result<bool> SetMenuDefaultItem(HMENU hMenu, int uItem, int fByPos) {
  final result_ = SetMenuDefaultItem_Wrapper(hMenu, uItem, fByPos);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets information for a specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuinfo>.
///
/// {@category user32}
Win32Result<bool> SetMenuInfo(HMENU param0, Pointer<MENUINFO> param1) {
  final result_ = SetMenuInfo_Wrapper(param0, param1);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Associates the specified bitmap with a menu item.
///
/// Whether the menu item is selected or clear, the system displays the
/// appropriate bitmap next to the menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuitembitmaps>.
///
/// {@category user32}
Win32Result<bool> SetMenuItemBitmaps(
  HMENU hMenu,
  int uPosition,
  MENU_ITEM_FLAGS uFlags,
  HBITMAP? hBitmapUnchecked,
  HBITMAP? hBitmapChecked,
) {
  final result_ = SetMenuItemBitmaps_Wrapper(
    hMenu,
    uPosition,
    uFlags,
    hBitmapUnchecked ?? nullptr,
    hBitmapChecked ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Changes information about a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuiteminfow>.
///
/// {@category user32}
Win32Result<bool> SetMenuItemInfo(
  HMENU hmenu,
  int item,
  bool fByPositon,
  Pointer<MENUITEMINFO> lpmii,
) {
  final result_ = SetMenuItemInfoW_Wrapper(
    hmenu,
    item,
    fByPositon ? TRUE : FALSE,
    lpmii,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the extra message information for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmessageextrainfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
LPARAM SetMessageExtraInfo(LPARAM lParam) =>
    LPARAM(_SetMessageExtraInfo(lParam));

@Native<IntPtr Function(IntPtr)>(symbol: 'SetMessageExtraInfo')
external int _SetMessageExtraInfo(int lParam);

/// Changes the parent window of the specified child window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setparent>.
///
/// {@category user32}
Win32Result<HWND> SetParent(HWND hWndChild, HWND? hWndNewParent) {
  final result_ = SetParent_Wrapper(hWndChild, hWndNewParent ?? nullptr);
  return Win32Result(value: HWND(result_.value.ptr), error: result_.error);
}

/// Sets the position of the cursor in physical coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setphysicalcursorpos>.
///
/// {@category user32}
Win32Result<bool> SetPhysicalCursorPos(int x, int y) {
  final result_ = SetPhysicalCursorPos_Wrapper(x, y);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function()>(symbol: 'SetProcessDPIAware')
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
Win32Result<bool> SetProcessDpiAwarenessContext(DPI_AWARENESS_CONTEXT value) {
  final result_ = SetProcessDpiAwarenessContext_Wrapper(value);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Adds a new entry or changes an existing entry in the property list of the
/// specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setpropw>.
///
/// {@category user32}
Win32Result<bool> SetProp(HWND hWnd, PCWSTR lpString, HANDLE? hData) {
  final result_ = SetPropW_Wrapper(hWnd, lpString, hData ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function(Pointer<RECT>, Int32, Int32, Int32, Int32)>(
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

@Native<Int32 Function(Pointer<RECT>)>(symbol: 'SetRectEmpty')
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
  HWND hwnd,
  SCROLLBAR_CONSTANTS nBar,
  Pointer<SCROLLINFO> lpsi,
  bool redraw,
) => _SetScrollInfo(hwnd, nBar, lpsi, redraw ? TRUE : FALSE);

@Native<Int32 Function(Pointer, Int32, Pointer<SCROLLINFO>, Int32)>(
  symbol: 'SetScrollInfo',
)
external int _SetScrollInfo(
  Pointer hwnd,
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
Win32Result<bool> SetSysColors(
  int cElements,
  Pointer<Int32> lpaElements,
  Pointer<Uint32> lpaRgbValues,
) {
  final result_ = SetSysColors_Wrapper(cElements, lpaElements, lpaRgbValues);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetSystemCursor(HCURSOR hcur, SYSTEM_CURSOR_ID id) {
  final result_ = SetSystemCursor_Wrapper(hcur, id);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Set the DPI awareness for the current thread to the provided value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setthreaddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS_CONTEXT SetThreadDpiAwarenessContext(
  DPI_AWARENESS_CONTEXT dpiContext,
) => DPI_AWARENESS_CONTEXT(_SetThreadDpiAwarenessContext(dpiContext));

@Native<Pointer Function(Pointer)>(symbol: 'SetThreadDpiAwarenessContext')
external Pointer _SetThreadDpiAwarenessContext(Pointer dpiContext);

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
Win32Result<int> SetTimer(
  HWND? hWnd,
  int nIDEvent,
  int uElapse,
  Pointer<NativeFunction<TIMERPROC>>? lpTimerFunc,
) {
  final result_ = SetTimer_Wrapper(
    hWnd ?? nullptr,
    nIDEvent,
    uElapse,
    lpTimerFunc ?? nullptr,
  );
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Sets information about the specified window station or desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setuserobjectinformationw>.
///
/// {@category user32}
Win32Result<bool> SetUserObjectInformation(
  HANDLE hObj,
  int nIndex,
  Pointer pvInfo,
  int nLength,
) {
  final result_ = SetUserObjectInformationW_Wrapper(
    hObj,
    nIndex,
    pvInfo,
    nLength,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Stores the display affinity setting in kernel mode on the hWnd associated
/// with the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowdisplayaffinity>.
///
/// {@category user32}
Win32Result<bool> SetWindowDisplayAffinity(
  HWND hWnd,
  WINDOW_DISPLAY_AFFINITY dwAffinity,
) {
  final result_ = SetWindowDisplayAffinity_Wrapper(hWnd, dwAffinity);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Changes an attribute of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowlongptrw>.
///
/// {@category user32}
Win32Result<int> SetWindowLongPtr(
  HWND hWnd,
  WINDOW_LONG_PTR_INDEX nIndex,
  int dwNewLong,
) {
  final result_ = SetWindowLongPtrW_Wrapper(hWnd, nIndex, dwNewLong);
  return Win32Result(value: result_.value.i64, error: result_.error);
}

/// Sets the show state and the restored, minimized, and maximized positions of
/// the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowplacement>.
///
/// {@category user32}
Win32Result<bool> SetWindowPlacement(
  HWND hWnd,
  Pointer<WINDOWPLACEMENT> lpwndpl,
) {
  final result_ = SetWindowPlacement_Wrapper(hWnd, lpwndpl);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
Win32Result<bool> SetWindowPos(
  HWND hWnd,
  HWND? hWndInsertAfter,
  int x,
  int y,
  int cx,
  int cy,
  SET_WINDOW_POS_FLAGS uFlags,
) {
  final result_ = SetWindowPos_Wrapper(
    hWnd,
    hWndInsertAfter ?? nullptr,
    x,
    y,
    cx,
    cy,
    uFlags,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the window region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowrgn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetWindowRgn(HWND hWnd, HRGN? hRgn, bool bRedraw) =>
    _SetWindowRgn(hWnd, hRgn ?? nullptr, bRedraw ? TRUE : FALSE);

@Native<Int32 Function(Pointer, Pointer, Int32)>(symbol: 'SetWindowRgn')
external int _SetWindowRgn(Pointer hWnd, Pointer hRgn, int bRedraw);

/// Installs an application-defined hook procedure into a hook chain.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowshookexw>.
///
/// {@category user32}
Win32Result<HHOOK> SetWindowsHookEx(
  WINDOWS_HOOK_ID idHook,
  Pointer<NativeFunction<HOOKPROC>> lpfn,
  HINSTANCE? hmod,
  int dwThreadId,
) {
  final result_ = SetWindowsHookExW_Wrapper(
    idHook,
    lpfn,
    hmod ?? nullptr,
    dwThreadId,
  );
  return Win32Result(value: HHOOK(result_.value.ptr), error: result_.error);
}

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
Win32Result<bool> SetWindowText(HWND hWnd, PCWSTR? lpString) {
  final result_ = SetWindowTextW_Wrapper(hWnd, lpString ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Makes the caret visible on the screen at the caret's current position.
///
/// When the caret becomes visible, it begins flashing automatically.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcaret>.
///
/// {@category user32}
Win32Result<bool> ShowCaret(HWND? hWnd) {
  final result_ = ShowCaret_Wrapper(hWnd ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Displays or hides the cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ShowCursor(bool bShow) => _ShowCursor(bShow ? TRUE : FALSE);

@Native<Int32 Function(Int32)>(symbol: 'ShowCursor')
external int _ShowCursor(int bShow);

/// Shows or hides all pop-up windows owned by the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showownedpopups>.
///
/// {@category user32}
Win32Result<bool> ShowOwnedPopups(HWND hWnd, bool fShow) {
  final result_ = ShowOwnedPopups_Wrapper(hWnd, fShow ? TRUE : FALSE);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Sets the specified window's show state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowWindow(HWND hWnd, SHOW_WINDOW_CMD nCmdShow) =>
    _ShowWindow(hWnd, nCmdShow) != FALSE;

@Native<Int32 Function(Pointer, Int32)>(symbol: 'ShowWindow')
external int _ShowWindow(Pointer hWnd, int nCmdShow);

/// Sets the show state of a window without waiting for the operation to
/// complete.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindowasync>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowWindowAsync(HWND hWnd, SHOW_WINDOW_CMD nCmdShow) =>
    _ShowWindowAsync(hWnd, nCmdShow) != FALSE;

@Native<Int32 Function(Pointer, Int32)>(symbol: 'ShowWindowAsync')
external int _ShowWindowAsync(Pointer hWnd, int nCmdShow);

/// Determines which pointer input frame generated the most recently retrieved
/// message for the specified pointer and discards any queued (unretrieved)
/// pointer input messages generated from the same pointer input frame.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-skippointerframemessages>.
///
/// {@category user32}
Win32Result<bool> SkipPointerFrameMessages(int pointerId) {
  final result_ = SkipPointerFrameMessages_Wrapper(pointerId);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Triggers a visual signal to indicate that a sound is playing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-soundsentry>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SoundSentry() => _SoundSentry() != FALSE;

@Native<Int32 Function()>(symbol: 'SoundSentry')
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

@Native<Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
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

@Native<Int32 Function(Int32)>(symbol: 'SwapMouseButton')
external int _SwapMouseButton(int fSwap);

/// Makes the specified desktop visible and activates it.
///
/// This enables the desktop to receive input from the user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchdesktop>.
///
/// {@category user32}
Win32Result<bool> SwitchDesktop(HDESK hDesktop) {
  final result_ = SwitchDesktop_Wrapper(hDesktop);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Switches focus to the specified window and brings it to the foreground.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchtothiswindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void SwitchToThisWindow(HWND hwnd, bool fUnknown) =>
    _SwitchToThisWindow(hwnd, fUnknown ? TRUE : FALSE);

@Native<Void Function(Pointer, Int32)>(symbol: 'SwitchToThisWindow')
external void _SwitchToThisWindow(Pointer hwnd, int fUnknown);

/// Retrieves or sets the value of one of the system-wide parameters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-systemparametersinfow>.
///
/// {@category user32}
Win32Result<bool> SystemParametersInfo(
  SYSTEM_PARAMETERS_INFO_ACTION uiAction,
  int uiParam,
  Pointer? pvParam,
  SYSTEM_PARAMETERS_INFO_UPDATE_FLAGS fWinIni,
) {
  final result_ = SystemParametersInfoW_Wrapper(
    uiAction,
    uiParam,
    pvParam ?? nullptr,
    fWinIni,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Retrieves the value of one of the system-wide parameters, taking into
/// account the provided DPI value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-systemparametersinfofordpi>.
///
/// {@category user32}
Win32Result<bool> SystemParametersInfoForDpi(
  int uiAction,
  int uiParam,
  Pointer? pvParam,
  int fWinIni,
  int dpi,
) {
  final result_ = SystemParametersInfoForDpi_Wrapper(
    uiAction,
    uiParam,
    pvParam ?? nullptr,
    fWinIni,
    dpi,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
  HDC hdc,
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
  Int32 Function(
    Pointer,
    Int32,
    Int32,
    Pointer<Utf16>,
    Int32,
    Int32,
    Pointer<Int32>,
    Int32,
  )
>(symbol: 'TabbedTextOutW')
external int _TabbedTextOut(
  Pointer hdc,
  int x,
  int y,
  Pointer<Utf16> lpString,
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
Win32Result<int> TileWindows(
  HWND? hwndParent,
  TILE_WINDOWS_HOW wHow,
  Pointer<RECT>? lpRect,
  int cKids,
  Pointer<Pointer>? lpKids,
) {
  final result_ = TileWindows_Wrapper(
    hwndParent ?? nullptr,
    wHow,
    lpRect ?? nullptr,
    cKids,
    lpKids ?? nullptr,
  );
  return Win32Result(value: result_.value.u16, error: result_.error);
}

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
  HKL? dwhkl,
) => _ToAsciiEx(
  uVirtKey,
  uScanCode,
  lpKeyState ?? nullptr,
  lpChar,
  uFlags,
  dwhkl ?? nullptr,
);

@Native<
  Int32 Function(
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Pointer<Uint16>,
    Uint32,
    Pointer,
  )
>(symbol: 'ToAsciiEx')
external int _ToAsciiEx(
  int uVirtKey,
  int uScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Uint16> lpChar,
  int uFlags,
  Pointer dwhkl,
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

@Native<
  Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Utf16>, Int32, Uint32)
>(symbol: 'ToUnicode')
external int _ToUnicode(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Utf16> pwszBuff,
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
  HKL? dwhkl,
) => _ToUnicodeEx(
  wVirtKey,
  wScanCode,
  lpKeyState,
  pwszBuff,
  cchBuff,
  wFlags,
  dwhkl ?? nullptr,
);

@Native<
  Int32 Function(
    Uint32,
    Uint32,
    Pointer<Uint8>,
    Pointer<Utf16>,
    Int32,
    Uint32,
    Pointer,
  )
>(symbol: 'ToUnicodeEx')
external int _ToUnicodeEx(
  int wVirtKey,
  int wScanCode,
  Pointer<Uint8> lpKeyState,
  Pointer<Utf16> pwszBuff,
  int cchBuff,
  int wFlags,
  Pointer dwhkl,
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
Win32Result<bool> TrackPopupMenu(
  HMENU hMenu,
  TRACK_POPUP_MENU_FLAGS uFlags,
  int x,
  int y,
  HWND hWnd,
  Pointer<RECT>? prcRect,
) {
  final result_ = TrackPopupMenu_Wrapper(
    hMenu,
    uFlags,
    x,
    y,
    NULL,
    hWnd,
    prcRect ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Displays a shortcut menu at the specified location and tracks the selection
/// of items on the shortcut menu.
///
/// The shortcut menu can appear anywhere on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-trackpopupmenuex>.
///
/// {@category user32}
Win32Result<bool> TrackPopupMenuEx(
  HMENU hMenu,
  int uFlags,
  int x,
  int y,
  HWND hwnd,
  Pointer<TPMPARAMS>? lptpm,
) {
  final result_ = TrackPopupMenuEx_Wrapper(
    hMenu,
    uFlags,
    x,
    y,
    hwnd,
    lptpm ?? nullptr,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Processes accelerator keys for menu commands.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translateacceleratorw>.
///
/// {@category user32}
Win32Result<int> TranslateAccelerator(
  HWND hWnd,
  HACCEL hAccTable,
  Pointer<MSG> lpMsg,
) {
  final result_ = TranslateAcceleratorW_Wrapper(hWnd, hAccTable, lpMsg);
  return Win32Result(value: result_.value.i32, error: result_.error);
}

/// Processes accelerator keystrokes for window menu commands of the
/// multiple-document interface (MDI) child windows associated with the
/// specified MDI client window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-translatemdisysaccel>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool TranslateMDISysAccel(HWND hWndClient, Pointer<MSG> lpMsg) =>
    _TranslateMDISysAccel(hWndClient, lpMsg) != FALSE;

@Native<Int32 Function(Pointer, Pointer<MSG>)>(symbol: 'TranslateMDISysAccel')
external int _TranslateMDISysAccel(Pointer hWndClient, Pointer<MSG> lpMsg);

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

@Native<Int32 Function(Pointer<MSG>)>(symbol: 'TranslateMessage')
external int _TranslateMessage(Pointer<MSG> lpMsg);

/// Removes a hook procedure installed in a hook chain by the SetWindowsHookEx
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unhookwindowshookex>.
///
/// {@category user32}
Win32Result<bool> UnhookWindowsHookEx(HHOOK hhk) {
  final result_ = UnhookWindowsHookEx_Wrapper(hhk);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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

@Native<Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)>(
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
Win32Result<bool> UnloadKeyboardLayout(HKL hkl) {
  final result_ = UnloadKeyboardLayout_Wrapper(hkl);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Unregisters a window class, freeing the memory required for the class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterclassw>.
///
/// {@category user32}
Win32Result<bool> UnregisterClass(PCWSTR lpClassName, HINSTANCE? hInstance) {
  final result_ = UnregisterClassW_Wrapper(lpClassName, hInstance ?? nullptr);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Closes the specified device notification handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterdevicenotification>.
///
/// {@category user32}
Win32Result<bool> UnregisterDeviceNotification(HDEVNOTIFY handle) {
  final result_ = UnregisterDeviceNotification_Wrapper(handle);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Frees a hot key previously registered by the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterhotkey>.
///
/// {@category user32}
Win32Result<bool> UnregisterHotKey(HWND? hWnd, int id) {
  final result_ = UnregisterHotKey_Wrapper(hWnd ?? nullptr, id);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Unregisters the power setting notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterpowersettingnotification>.
///
/// {@category user32}
Win32Result<bool> UnregisterPowerSettingNotification(HPOWERNOTIFY handle) {
  final result_ = UnregisterPowerSettingNotification_Wrapper(handle);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Registers a window as no longer being touch-capable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregistertouchwindow>.
///
/// {@category user32}
Win32Result<bool> UnregisterTouchWindow(HWND hwnd) {
  final result_ = UnregisterTouchWindow_Wrapper(hwnd);
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Updates the position, size, shape, content, and translucency of a layered
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633557(v=vs.85)>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UpdateLayeredWindowIndirect(
  HWND hWnd,
  Pointer<UPDATELAYEREDWINDOWINFO> pULWInfo,
) => _UpdateLayeredWindowIndirect(hWnd, pULWInfo) != FALSE;

@Native<Int32 Function(Pointer, Pointer<UPDATELAYEREDWINDOWINFO>)>(
  symbol: 'UpdateLayeredWindowIndirect',
)
external int _UpdateLayeredWindowIndirect(
  Pointer hWnd,
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
bool UpdateWindow(HWND hWnd) => _UpdateWindow(hWnd) != FALSE;

@Native<Int32 Function(Pointer)>(symbol: 'UpdateWindow')
external int _UpdateWindow(Pointer hWnd);

/// Grants or denies access to a handle to a User object to a job that has a
/// user-interface restriction.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-userhandlegrantaccess>.
///
/// {@category user32}
Win32Result<bool> UserHandleGrantAccess(
  HANDLE hUserHandle,
  HANDLE hJob,
  bool bGrant,
) {
  final result_ = UserHandleGrantAccess_Wrapper(
    hUserHandle,
    hJob,
    bGrant ? TRUE : FALSE,
  );
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

/// Validates the client area within a rectangle by removing the rectangle from
/// the update region of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-validaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ValidateRect(HWND? hWnd, Pointer<RECT>? lpRect) =>
    _ValidateRect(hWnd ?? nullptr, lpRect ?? nullptr) != FALSE;

@Native<Int32 Function(Pointer, Pointer<RECT>)>(symbol: 'ValidateRect')
external int _ValidateRect(Pointer hWnd, Pointer<RECT> lpRect);

/// Validates the client area within a region by removing the region from the
/// current update region of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-validatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ValidateRgn(HWND hWnd, HRGN? hRgn) =>
    _ValidateRgn(hWnd, hRgn ?? nullptr) != FALSE;

@Native<Int32 Function(Pointer, Pointer)>(symbol: 'ValidateRgn')
external int _ValidateRgn(Pointer hWnd, Pointer hRgn);

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
int VkKeyScanEx(int ch, HKL dwhkl) => _VkKeyScanEx(ch, dwhkl);

@Native<Int16 Function(Uint16, Pointer)>(symbol: 'VkKeyScanExW')
external int _VkKeyScanEx(int ch, Pointer dwhkl);

/// Waits until the specified process has finished processing its initial input
/// and is waiting for user input with no input pending, or until the time-out
/// interval has elapsed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-waitforinputidle>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int WaitForInputIdle(HANDLE hProcess, int dwMilliseconds) =>
    _WaitForInputIdle(hProcess, dwMilliseconds);

@Native<Uint32 Function(Pointer, Uint32)>(symbol: 'WaitForInputIdle')
external int _WaitForInputIdle(Pointer hProcess, int dwMilliseconds);

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
Win32Result<bool> WaitMessage() {
  final result_ = WaitMessage_Wrapper();
  return Win32Result(value: result_.value.i32 != FALSE, error: result_.error);
}

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
HWND WindowFromDC(HDC hDC) => HWND(_WindowFromDC(hDC));

@Native<Pointer Function(Pointer)>(symbol: 'WindowFromDC')
external Pointer _WindowFromDC(Pointer hDC);

/// Retrieves a handle to the window that contains the specified physical point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfromphysicalpoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND WindowFromPhysicalPoint(POINT point) =>
    HWND(_WindowFromPhysicalPoint(point));

@Native<Pointer Function(POINT)>(symbol: 'WindowFromPhysicalPoint')
external Pointer _WindowFromPhysicalPoint(POINT point);

/// Retrieves a handle to the window that contains the specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND WindowFromPoint(POINT point) => HWND(_WindowFromPoint(point));

@Native<Pointer Function(POINT)>(symbol: 'WindowFromPoint')
external Pointer _WindowFromPoint(POINT point);
