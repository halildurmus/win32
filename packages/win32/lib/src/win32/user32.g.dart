// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../callbacks.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
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

final _user32 = DynamicLibrary.open('user32.dll');

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
  resolveGetLastError();
  final result_ = _ActivateKeyboardLayout(hkl, flags);
  return .new(value: .new(result_), error: GetLastError());
}

final _ActivateKeyboardLayout = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('ActivateKeyboardLayout');

/// Places the given window in the system-maintained clipboard format listener
/// list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-addclipboardformatlistener>.
///
/// {@category user32}
Win32Result<bool> AddClipboardFormatListener(HWND hwnd) {
  resolveGetLastError();
  final result_ = _AddClipboardFormatListener(hwnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AddClipboardFormatListener = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'AddClipboardFormatListener',
    );

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
  resolveGetLastError();
  final result_ = _AdjustWindowRect(lpRect, dwStyle, bMenu ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AdjustWindowRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Uint32, Int32),
      int Function(Pointer<RECT>, int, int)
    >('AdjustWindowRect');

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
  resolveGetLastError();
  final result_ = _AdjustWindowRectEx(
    lpRect,
    dwStyle,
    bMenu ? TRUE : FALSE,
    dwExStyle,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AdjustWindowRectEx = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Uint32, Int32, Uint32),
      int Function(Pointer<RECT>, int, int, int)
    >('AdjustWindowRectEx');

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
  resolveGetLastError();
  final result_ = _AdjustWindowRectExForDpi(
    lpRect,
    dwStyle,
    bMenu ? TRUE : FALSE,
    dwExStyle,
    dpi,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AdjustWindowRectExForDpi = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Uint32, Int32, Uint32, Uint32),
      int Function(Pointer<RECT>, int, int, int, int)
    >('AdjustWindowRectExForDpi');

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
  resolveGetLastError();
  final result_ = _AllowSetForegroundWindow(dwProcessId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AllowSetForegroundWindow = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'AllowSetForegroundWindow',
    );

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
  resolveGetLastError();
  final result_ = _AnimateWindow(hWnd, dwTime, dwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AnimateWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('AnimateWindow');

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

final _AnyPopup = _user32.lookupFunction<Int32 Function(), int Function()>(
  'AnyPopup',
);

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
  resolveGetLastError();
  final result_ = _AppendMenu(hMenu, uFlags, uIDNewItem, lpNewItem ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _AppendMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, Pointer<Utf16>),
      int Function(Pointer, int, int, Pointer<Utf16>)
    >('AppendMenuW');

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

final _AreDpiAwarenessContextsEqual = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('AreDpiAwarenessContextsEqual');

/// Arranges all the minimized (iconic) child windows of the specified parent
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-arrangeiconicwindows>.
///
/// {@category user32}
Win32Result<int> ArrangeIconicWindows(HWND hWnd) {
  resolveGetLastError();
  final result_ = _ArrangeIconicWindows(hWnd);
  return .new(value: result_, error: GetLastError());
}

final _ArrangeIconicWindows = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'ArrangeIconicWindows',
    );

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

final _AttachThreadInput = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Int32),
      int Function(int, int, int)
    >('AttachThreadInput');

/// Allocates memory for a multiple-window- position structure and returns the
/// handle to the structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-begindeferwindowpos>.
///
/// {@category user32}
Win32Result<HDWP> BeginDeferWindowPos(int nNumWindows) {
  resolveGetLastError();
  final result_ = _BeginDeferWindowPos(nNumWindows);
  return .new(value: .new(result_), error: GetLastError());
}

final _BeginDeferWindowPos = _user32
    .lookupFunction<Pointer Function(Int32), Pointer Function(int)>(
      'BeginDeferWindowPos',
    );

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

final _BeginPaint = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<PAINTSTRUCT>),
      Pointer Function(Pointer, Pointer<PAINTSTRUCT>)
    >('BeginPaint');

/// Blocks keyboard and mouse input events from reaching applications.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-blockinput>.
///
/// {@category user32}
Win32Result<bool> BlockInput(bool fBlockIt) {
  resolveGetLastError();
  final result_ = _BlockInput(fBlockIt ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BlockInput = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>('BlockInput');

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
  resolveGetLastError();
  final result_ = _BringWindowToTop(hWnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _BringWindowToTop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'BringWindowToTop',
    );

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
  resolveGetLastError();
  final result_ = _BroadcastSystemMessage(
    flags,
    lpInfo ?? nullptr,
    msg,
    wParam,
    lParam,
  );
  return .new(value: result_, error: GetLastError());
}

final _BroadcastSystemMessage = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Uint32, IntPtr, IntPtr),
      int Function(int, Pointer<Uint32>, int, int, int)
    >('BroadcastSystemMessageW');

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
  resolveGetLastError();
  final result_ = _BroadcastSystemMessageEx(
    flags,
    lpInfo ?? nullptr,
    msg,
    wParam,
    lParam,
    pbsmInfo ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _BroadcastSystemMessageEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Uint32,
        IntPtr,
        IntPtr,
        Pointer<BSMINFO>,
      ),
      int Function(int, Pointer<Uint32>, int, int, int, Pointer<BSMINFO>)
    >('BroadcastSystemMessageExW');

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
  resolveGetLastError();
  final result_ = _CalculatePopupWindowPosition(
    anchorPoint,
    windowSize,
    flags,
    excludeRect ?? nullptr,
    popupWindowPosition,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CalculatePopupWindowPosition = _user32
    .lookupFunction<
      Int32 Function(
        Pointer<POINT>,
        Pointer<SIZE>,
        Uint32,
        Pointer<RECT>,
        Pointer<RECT>,
      ),
      int Function(
        Pointer<POINT>,
        Pointer<SIZE>,
        int,
        Pointer<RECT>,
        Pointer<RECT>,
      )
    >('CalculatePopupWindowPosition');

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

final _CallMsgFilter = _user32
    .lookupFunction<
      Int32 Function(Pointer<MSG>, Int32),
      int Function(Pointer<MSG>, int)
    >('CallMsgFilterW');

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

final _CallNextHookEx = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('CallNextHookEx');

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

final _CallWindowProc = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer<NativeFunction<WNDPROC>>,
        Pointer,
        Uint32,
        IntPtr,
        IntPtr,
      ),
      int Function(Pointer<NativeFunction<WNDPROC>>, Pointer, int, int, int)
    >('CallWindowProcW');

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
  resolveGetLastError();
  final result_ = _CascadeWindows(
    hwndParent ?? nullptr,
    wHow,
    lpRect ?? nullptr,
    cKids,
    lpKids ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _CascadeWindows = _user32
    .lookupFunction<
      Uint16 Function(Pointer, Uint32, Pointer<RECT>, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<RECT>, int, Pointer<Pointer>)
    >('CascadeWindows');

/// Removes a specified window from the chain of clipboard viewers.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-changeclipboardchain>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ChangeClipboardChain(HWND hWndRemove, HWND hWndNewNext) =>
    _ChangeClipboardChain(hWndRemove, hWndNewNext) != FALSE;

final _ChangeClipboardChain = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ChangeClipboardChain');

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
) => .new(_ChangeDisplaySettings(lpDevMode ?? nullptr, dwFlags));

final _ChangeDisplaySettings = _user32
    .lookupFunction<
      Int32 Function(Pointer<DEVMODE>, Uint32),
      int Function(Pointer<DEVMODE>, int)
    >('ChangeDisplaySettingsW');

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
) => .new(
  _ChangeDisplaySettingsEx(
    lpszDeviceName ?? nullptr,
    lpDevMode ?? nullptr,
    nullptr,
    dwflags,
    lParam ?? nullptr,
  ),
);

final _ChangeDisplaySettingsEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Pointer,
        Uint32,
        Pointer,
      ),
      int Function(Pointer<Utf16>, Pointer<DEVMODE>, Pointer, int, Pointer)
    >('ChangeDisplaySettingsExW');

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
  resolveGetLastError();
  final result_ = _ChangeWindowMessageFilter(message, dwFlag);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ChangeWindowMessageFilter = _user32
    .lookupFunction<Int32 Function(Uint32, Uint32), int Function(int, int)>(
      'ChangeWindowMessageFilter',
    );

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
  resolveGetLastError();
  final result_ = _ChangeWindowMessageFilterEx(
    hwnd,
    message,
    action,
    pChangeFilterStruct ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ChangeWindowMessageFilterEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<CHANGEFILTERSTRUCT>),
      int Function(Pointer, int, int, Pointer<CHANGEFILTERSTRUCT>)
    >('ChangeWindowMessageFilterEx');

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
  resolveGetLastError();
  final result_ = _CheckDlgButton(hDlg, nIDButton, uCheck);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CheckDlgButton = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32),
      int Function(Pointer, int, int)
    >('CheckDlgButton');

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
  resolveGetLastError();
  final result_ = _CheckRadioButton(
    hDlg,
    nIDFirstButton,
    nIDLastButton,
    nIDCheckButton,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CheckRadioButton = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32),
      int Function(Pointer, int, int, int)
    >('CheckRadioButton');

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

final _ChildWindowFromPoint = _user32
    .lookupFunction<
      Pointer Function(Pointer, POINT),
      Pointer Function(Pointer, POINT)
    >('ChildWindowFromPoint');

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

final _ChildWindowFromPointEx = _user32
    .lookupFunction<
      Pointer Function(Pointer, POINT, Uint32),
      Pointer Function(Pointer, POINT, int)
    >('ChildWindowFromPointEx');

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

final _ClientToScreen = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('ClientToScreen');

/// Confines the cursor to a rectangular area on the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-clipcursor>.
///
/// {@category user32}
Win32Result<bool> ClipCursor(Pointer<RECT>? lpRect) {
  resolveGetLastError();
  final result_ = _ClipCursor(lpRect ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ClipCursor = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'ClipCursor',
    );

/// Closes the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closeclipboard>.
///
/// {@category user32}
Win32Result<bool> CloseClipboard() {
  resolveGetLastError();
  final result_ = _CloseClipboard();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseClipboard = _user32
    .lookupFunction<Int32 Function(), int Function()>('CloseClipboard');

/// Closes an open handle to a desktop object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closedesktop>.
///
/// {@category user32}
Win32Result<bool> CloseDesktop(HDESK hDesktop) {
  resolveGetLastError();
  final result_ = _CloseDesktop(hDesktop);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseDesktop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseDesktop',
    );

/// Closes resources associated with a gesture information handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closegestureinfohandle>.
///
/// {@category user32}
Win32Result<bool> CloseGestureInfoHandle(HGESTUREINFO hGestureInfo) {
  resolveGetLastError();
  final result_ = _CloseGestureInfoHandle(hGestureInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseGestureInfoHandle = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseGestureInfoHandle',
    );

/// Closes a touch input handle, frees process memory associated with it, and
/// invalidates the handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closetouchinputhandle>.
///
/// {@category user32}
Win32Result<bool> CloseTouchInputHandle(HTOUCHINPUT hTouchInput) {
  resolveGetLastError();
  final result_ = _CloseTouchInputHandle(hTouchInput);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseTouchInputHandle = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseTouchInputHandle',
    );

/// Minimizes (but does not destroy) the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closewindow>.
///
/// {@category user32}
Win32Result<bool> CloseWindow(HWND hWnd) {
  resolveGetLastError();
  final result_ = _CloseWindow(hWnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseWindow',
    );

/// Closes an open window station handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-closewindowstation>.
///
/// {@category user32}
Win32Result<bool> CloseWindowStation(HWINSTA hWinSta) {
  resolveGetLastError();
  final result_ = _CloseWindowStation(hWinSta);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CloseWindowStation = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'CloseWindowStation',
    );

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

final _CopyAcceleratorTable = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<ACCEL>, Int32),
      int Function(Pointer, Pointer<ACCEL>, int)
    >('CopyAcceleratorTableW');

/// Copies the specified icon from another module to the current module.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyicon>.
///
/// {@category user32}
Win32Result<HICON> CopyIcon(HICON hIcon) {
  resolveGetLastError();
  final result_ = _CopyIcon(hIcon);
  return .new(value: .new(result_), error: GetLastError());
}

final _CopyIcon = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'CopyIcon',
    );

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
  resolveGetLastError();
  final result_ = _CopyImage(h, type, cx, cy, flags);
  return .new(value: .new(result_), error: GetLastError());
}

final _CopyImage = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32, Int32, Int32, Uint32),
      Pointer Function(Pointer, int, int, int, int)
    >('CopyImage');

/// Copies the coordinates of one rectangle to another.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-copyrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool CopyRect(Pointer<RECT> lprcDst, Pointer<RECT> lprcSrc) =>
    _CopyRect(lprcDst, lprcSrc) != FALSE;

final _CopyRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>)
    >('CopyRect');

/// Retrieves the number of different data formats currently on the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-countclipboardformats>.
///
/// {@category user32}
Win32Result<int> CountClipboardFormats() {
  resolveGetLastError();
  final result_ = _CountClipboardFormats();
  return .new(value: result_, error: GetLastError());
}

final _CountClipboardFormats = _user32
    .lookupFunction<Int32 Function(), int Function()>('CountClipboardFormats');

/// Creates an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createacceleratortablew>.
///
/// {@category user32}
Win32Result<HACCEL> CreateAcceleratorTable(Pointer<ACCEL> paccel, int cAccel) {
  resolveGetLastError();
  final result_ = _CreateAcceleratorTable(paccel, cAccel);
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateAcceleratorTable = _user32
    .lookupFunction<
      Pointer Function(Pointer<ACCEL>, Int32),
      Pointer Function(Pointer<ACCEL>, int)
    >('CreateAcceleratorTableW');

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
  resolveGetLastError();
  final result_ = _CreateCaret(hWnd, hBitmap ?? nullptr, nWidth, nHeight);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _CreateCaret = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32, Int32),
      int Function(Pointer, Pointer, int, int)
    >('CreateCaret');

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
  resolveGetLastError();
  final result_ = _CreateCursor(
    hInst ?? nullptr,
    xHotSpot,
    yHotSpot,
    nWidth,
    nHeight,
    pvANDPlane,
    pvXORPlane,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateCursor = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32, Int32, Int32, Int32, Pointer, Pointer),
      Pointer Function(Pointer, int, int, int, int, Pointer, Pointer)
    >('CreateCursor');

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
  resolveGetLastError();
  final result_ = _CreateDesktop(
    lpszDesktop,
    nullptr,
    nullptr,
    dwFlags,
    dwDesiredAccess,
    lpsa ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateDesktop = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
      )
    >('CreateDesktopW');

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
  resolveGetLastError();
  final result_ = _CreateDesktopEx(
    lpszDesktop,
    nullptr,
    nullptr,
    dwFlags,
    dwDesiredAccess,
    lpsa ?? nullptr,
    ulHeapSize,
    nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateDesktopEx = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
        Uint32,
        Pointer,
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<DEVMODE>,
        int,
        int,
        Pointer<SECURITY_ATTRIBUTES>,
        int,
        Pointer,
      )
    >('CreateDesktopExW');

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
  resolveGetLastError();
  final result_ = _CreateDialogIndirectParam(
    hInstance ?? nullptr,
    lpTemplate,
    hWndParent ?? nullptr,
    lpDialogFunc ?? nullptr,
    dwInitParam,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateDialogIndirectParam = _user32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        IntPtr,
      ),
      Pointer Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        int,
      )
    >('CreateDialogIndirectParamW');

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
  resolveGetLastError();
  final result_ = _CreateIcon(
    hInstance ?? nullptr,
    nWidth,
    nHeight,
    cPlanes,
    cBitsPixel,
    lpbANDbits,
    lpbXORbits,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateIcon = _user32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Int32,
        Int32,
        Uint8,
        Uint8,
        Pointer<Uint8>,
        Pointer<Uint8>,
      ),
      Pointer Function(
        Pointer,
        int,
        int,
        int,
        int,
        Pointer<Uint8>,
        Pointer<Uint8>,
      )
    >('CreateIcon');

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
  resolveGetLastError();
  final result_ = _CreateIconFromResource(
    presbits,
    dwResSize,
    fIcon ? TRUE : FALSE,
    dwVer,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateIconFromResource = _user32
    .lookupFunction<
      Pointer Function(Pointer<Uint8>, Uint32, Int32, Uint32),
      Pointer Function(Pointer<Uint8>, int, int, int)
    >('CreateIconFromResource');

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
  resolveGetLastError();
  final result_ = _CreateIconFromResourceEx(
    presbits,
    dwResSize,
    fIcon ? TRUE : FALSE,
    dwVer,
    cxDesired,
    cyDesired,
    flags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateIconFromResourceEx = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Uint8>,
        Uint32,
        Int32,
        Uint32,
        Int32,
        Int32,
        Uint32,
      ),
      Pointer Function(Pointer<Uint8>, int, int, int, int, int, int)
    >('CreateIconFromResourceEx');

/// Creates an icon or cursor from an ICONINFO structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createiconindirect>.
///
/// {@category user32}
Win32Result<HICON> CreateIconIndirect(Pointer<ICONINFO> piconinfo) {
  resolveGetLastError();
  final result_ = _CreateIconIndirect(piconinfo);
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateIconIndirect = _user32
    .lookupFunction<
      Pointer Function(Pointer<ICONINFO>),
      Pointer Function(Pointer<ICONINFO>)
    >('CreateIconIndirect');

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
  resolveGetLastError();
  final result_ = _CreateMDIWindow(
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
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateMDIWindow = _user32
    .lookupFunction<
      Pointer Function(
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
      ),
      Pointer Function(
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        int,
        int,
        int,
        Pointer,
        Pointer,
        int,
      )
    >('CreateMDIWindowW');

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
  resolveGetLastError();
  final result_ = _CreateMenu();
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateMenu = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('CreateMenu');

/// Creates a drop-down menu, submenu, or shortcut menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-createpopupmenu>.
///
/// {@category user32}
Win32Result<HMENU> CreatePopupMenu() {
  resolveGetLastError();
  final result_ = _CreatePopupMenu();
  return .new(value: .new(result_), error: GetLastError());
}

final _CreatePopupMenu = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('CreatePopupMenu');

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
  resolveGetLastError();
  final result_ = _CreateWindowEx(
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
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateWindowEx = _user32
    .lookupFunction<
      Pointer Function(
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
      ),
      Pointer Function(
        int,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
        int,
        int,
        int,
        int,
        Pointer,
        Pointer,
        Pointer,
        Pointer,
      )
    >('CreateWindowExW');

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
  resolveGetLastError();
  final result_ = _CreateWindowStation(
    lpwinsta ?? nullptr,
    dwFlags,
    dwDesiredAccess,
    lpsa ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _CreateWindowStation = _user32
    .lookupFunction<
      Pointer Function(
        Pointer<Utf16>,
        Uint32,
        Uint32,
        Pointer<SECURITY_ATTRIBUTES>,
      ),
      Pointer Function(Pointer<Utf16>, int, int, Pointer<SECURITY_ATTRIBUTES>)
    >('CreateWindowStationW');

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
  resolveGetLastError();
  final result_ = _DeferWindowPos(
    hWinPosInfo,
    hWnd,
    hWndInsertAfter ?? nullptr,
    x,
    y,
    cx,
    cy,
    uFlags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _DeferWindowPos = _user32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer,
        Pointer,
        Int32,
        Int32,
        Int32,
        Int32,
        Uint32,
      ),
      Pointer Function(Pointer, Pointer, Pointer, int, int, int, int, int)
    >('DeferWindowPos');

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

final _DefMDIChildProc = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('DefMDIChildProcW');

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

final _DefRawInputProc = _user32
    .lookupFunction<
      IntPtr Function(Pointer<Pointer<RAWINPUT>>, Int32, Uint32),
      int Function(Pointer<Pointer<RAWINPUT>>, int, int)
    >('DefRawInputProc');

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

final _DefWindowProc = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('DefWindowProcW');

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
  resolveGetLastError();
  final result_ = _DeleteMenu(hMenu, uPosition, uFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DeleteMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('DeleteMenu');

/// Destroys an accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyacceleratortable>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DestroyAcceleratorTable(HACCEL hAccel) =>
    _DestroyAcceleratorTable(hAccel) != FALSE;

final _DestroyAcceleratorTable = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyAcceleratorTable',
    );

/// Destroys the caret's current shape, frees the caret from the window, and
/// removes the caret from the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycaret>.
///
/// {@category user32}
Win32Result<bool> DestroyCaret() {
  resolveGetLastError();
  final result_ = _DestroyCaret();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyCaret = _user32.lookupFunction<Int32 Function(), int Function()>(
  'DestroyCaret',
);

/// Destroys a cursor and frees any memory the cursor occupied.
///
/// Do not use this function to destroy a shared cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroycursor>.
///
/// {@category user32}
Win32Result<bool> DestroyCursor(HCURSOR hCursor) {
  resolveGetLastError();
  final result_ = _DestroyCursor(hCursor);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyCursor = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyCursor',
    );

/// Destroys an icon and frees any memory the icon occupied.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroyicon>.
///
/// {@category user32}
Win32Result<bool> DestroyIcon(HICON hIcon) {
  resolveGetLastError();
  final result_ = _DestroyIcon(hIcon);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyIcon = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyIcon',
    );

/// Destroys the specified menu and frees any memory that the menu occupies.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroymenu>.
///
/// {@category user32}
Win32Result<bool> DestroyMenu(HMENU hMenu) {
  resolveGetLastError();
  final result_ = _DestroyMenu(hMenu);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyMenu = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyMenu',
    );

/// Destroys the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-destroywindow>.
///
/// {@category user32}
Win32Result<bool> DestroyWindow(HWND hWnd) {
  resolveGetLastError();
  final result_ = _DestroyWindow(hWnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DestroyWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'DestroyWindow',
    );

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
  resolveGetLastError();
  final result_ = _DialogBoxIndirectParam(
    hInstance ?? nullptr,
    hDialogTemplate,
    hWndParent ?? nullptr,
    lpDialogFunc ?? nullptr,
    dwInitParam,
  );
  return .new(value: result_, error: GetLastError());
}

final _DialogBoxIndirectParam = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        Pointer<DLGTEMPLATE>,
        Pointer,
        Pointer<NativeFunction<DLGPROC>>,
        int,
      )
    >('DialogBoxIndirectParamW');

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

final _DisableProcessWindowsGhosting = _user32
    .lookupFunction<Void Function(), void Function()>(
      'DisableProcessWindowsGhosting',
    );

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

final _DispatchMessage = _user32
    .lookupFunction<IntPtr Function(Pointer<MSG>), int Function(Pointer<MSG>)>(
      'DispatchMessageW',
    );

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

final _DragDetect = _user32
    .lookupFunction<
      Int32 Function(Pointer, POINT),
      int Function(Pointer, POINT)
    >('DragDetect');

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

final _DrawAnimatedRects = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer, int, Pointer<RECT>, Pointer<RECT>)
    >('DrawAnimatedRects');

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

final _DrawCaption = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<RECT>, Uint32),
      int Function(Pointer, Pointer, Pointer<RECT>, int)
    >('DrawCaption');

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

final _DrawEdge = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Uint32, Uint32),
      int Function(Pointer, Pointer<RECT>, int, int)
    >('DrawEdge');

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

final _DrawFocusRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('DrawFocusRect');

/// Draws a frame control of the specified type and style.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawframecontrol>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool DrawFrameControl(HDC hdc, Pointer<RECT> lprc, int uType, int uState) =>
    _DrawFrameControl(hdc, lprc, uType, uState) != FALSE;

final _DrawFrameControl = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Uint32, Uint32),
      int Function(Pointer, Pointer<RECT>, int, int)
    >('DrawFrameControl');

/// Draws an icon or cursor into the specified device context.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-drawicon>.
///
/// {@category user32}
Win32Result<bool> DrawIcon(HDC hDC, int x, int y, HICON hIcon) {
  resolveGetLastError();
  final result_ = _DrawIcon(hDC, x, y, hIcon);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _DrawIcon = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer),
      int Function(Pointer, int, int, Pointer)
    >('DrawIcon');

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

final _DrawState = _user32
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<NativeFunction<DRAWSTATEPROC>>,
        int,
        int,
        int,
        int,
        int,
        int,
        int,
      )
    >('DrawStateW');

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

final _DrawText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32, Pointer<RECT>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int, Pointer<RECT>, int)
    >('DrawTextW');

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

final _DrawTextEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<Utf16>,
        Int32,
        Pointer<RECT>,
        Uint32,
        Pointer<DRAWTEXTPARAMS>,
      ),
      int Function(
        Pointer,
        Pointer<Utf16>,
        int,
        Pointer<RECT>,
        int,
        Pointer<DRAWTEXTPARAMS>,
      )
    >('DrawTextExW');

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
  resolveGetLastError();
  final result_ = _EmptyClipboard();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EmptyClipboard = _user32
    .lookupFunction<Int32 Function(), int Function()>('EmptyClipboard');

/// Enables, disables, or grays the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemenuitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool EnableMenuItem(HMENU hMenu, int uIDEnableItem, MENU_ITEM_FLAGS uEnable) =>
    _EnableMenuItem(hMenu, uIDEnableItem, uEnable) != FALSE;

final _EnableMenuItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('EnableMenuItem');

/// Enables the mouse to act as a pointer input device and send WM_POINTER
/// messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enablemouseinpointer>.
///
/// {@category user32}
Win32Result<bool> EnableMouseInPointer(bool fEnable) {
  resolveGetLastError();
  final result_ = _EnableMouseInPointer(fEnable ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnableMouseInPointer = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'EnableMouseInPointer',
    );

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
  resolveGetLastError();
  final result_ = _EnableNonClientDpiScaling(hwnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnableNonClientDpiScaling = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EnableNonClientDpiScaling',
    );

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
  resolveGetLastError();
  final result_ = _EnableScrollBar(hWnd, wSBflags, wArrows);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnableScrollBar = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('EnableScrollBar');

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

final _EnableWindow = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'EnableWindow',
    );

/// Simultaneously updates the position and size of one or more windows in a
/// single screen-refreshing cycle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddeferwindowpos>.
///
/// {@category user32}
Win32Result<bool> EndDeferWindowPos(HDWP hWinPosInfo) {
  resolveGetLastError();
  final result_ = _EndDeferWindowPos(hWinPosInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EndDeferWindowPos = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'EndDeferWindowPos',
    );

/// Destroys a modal dialog box, causing the system to end any processing for
/// the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enddialog>.
///
/// {@category user32}
Win32Result<bool> EndDialog(HWND hDlg, int nResult) {
  resolveGetLastError();
  final result_ = _EndDialog(hDlg, nResult);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EndDialog = _user32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('EndDialog');

/// Ends the calling thread's active menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-endmenu>.
///
/// {@category user32}
Win32Result<bool> EndMenu() {
  resolveGetLastError();
  final result_ = _EndMenu();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EndMenu = _user32.lookupFunction<Int32 Function(), int Function()>(
  'EndMenu',
);

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

final _EndPaint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<PAINTSTRUCT>),
      int Function(Pointer, Pointer<PAINTSTRUCT>)
    >('EndPaint');

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

final _EnumChildWindows = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumChildWindows');

/// Enumerates the data formats currently available on the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-enumclipboardformats>.
///
/// {@category user32}
Win32Result<int> EnumClipboardFormats(int format) {
  resolveGetLastError();
  final result_ = _EnumClipboardFormats(format);
  return .new(value: result_, error: GetLastError());
}

final _EnumClipboardFormats = _user32
    .lookupFunction<Uint32 Function(Uint32), int Function(int)>(
      'EnumClipboardFormats',
    );

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
  resolveGetLastError();
  final result_ = _EnumDesktopWindows(hDesktop ?? nullptr, lpfn, lParam);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumDesktopWindows = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(Pointer, Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumDesktopWindows');

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

final _EnumDisplayDevices = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<DISPLAY_DEVICE>, Uint32),
      int Function(Pointer<Utf16>, int, Pointer<DISPLAY_DEVICE>, int)
    >('EnumDisplayDevicesW');

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

final _EnumDisplayMonitors = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Pointer<RECT>,
        Pointer<NativeFunction<MONITORENUMPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        Pointer<RECT>,
        Pointer<NativeFunction<MONITORENUMPROC>>,
        int,
      )
    >('EnumDisplayMonitors');

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

final _EnumDisplaySettings = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<DEVMODE>),
      int Function(Pointer<Utf16>, int, Pointer<DEVMODE>)
    >('EnumDisplaySettingsW');

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

final _EnumDisplaySettingsEx = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<DEVMODE>, Uint32),
      int Function(Pointer<Utf16>, int, Pointer<DEVMODE>, int)
    >('EnumDisplaySettingsExW');

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

final _EnumThreadWindows = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(int, Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumThreadWindows');

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
  resolveGetLastError();
  final result_ = _EnumWindows(lpEnumFunc, lParam);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _EnumWindows = _user32
    .lookupFunction<
      Int32 Function(Pointer<NativeFunction<WNDENUMPROC>>, IntPtr),
      int Function(Pointer<NativeFunction<WNDENUMPROC>>, int)
    >('EnumWindows');

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

final _EqualRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>)
    >('EqualRect');

/// Prevents drawing within invalid areas of a window by excluding an updated
/// region in the window from a clipping region.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-excludeupdatergn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ExcludeUpdateRgn(HDC hDC, HWND hWnd) => _ExcludeUpdateRgn(hDC, hWnd);

final _ExcludeUpdateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ExcludeUpdateRgn');

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

final _FillRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Pointer),
      int Function(Pointer, Pointer<RECT>, Pointer)
    >('FillRect');

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
  resolveGetLastError();
  final result_ = _FindWindow(lpClassName ?? nullptr, lpWindowName ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _FindWindow = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>)
    >('FindWindowW');

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
  resolveGetLastError();
  final result_ = _FindWindowEx(
    hWndParent ?? nullptr,
    hWndChildAfter ?? nullptr,
    lpszClass ?? nullptr,
    lpszWindow ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _FindWindowEx = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer, Pointer<Utf16>, Pointer<Utf16>)
    >('FindWindowExW');

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

final _FrameRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Pointer),
      int Function(Pointer, Pointer<RECT>, Pointer)
    >('FrameRect');

/// Retrieves the window handle to the active window attached to the calling
/// thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getactivewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetActiveWindow() => HWND(_GetActiveWindow());

final _GetActiveWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetActiveWindow');

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
  resolveGetLastError();
  final result_ = _GetAltTabInfo(
    hwnd ?? nullptr,
    iItem,
    pati,
    pszItemText ?? nullptr,
    cchItemText,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetAltTabInfo = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Pointer<ALTTABINFO>,
        Pointer<Utf16>,
        Uint32,
      ),
      int Function(Pointer, int, Pointer<ALTTABINFO>, Pointer<Utf16>, int)
    >('GetAltTabInfoW');

/// Retrieves the handle to the ancestor of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getancestor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetAncestor(HWND hwnd, GET_ANCESTOR_FLAGS gaFlags) =>
    HWND(_GetAncestor(hwnd, gaFlags));

final _GetAncestor = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('GetAncestor');

/// Determines whether a key is up or down at the time the function is called,
/// and whether the key was pressed after a previous call to GetAsyncKeyState.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getasynckeystate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetAsyncKeyState(int vKey) => _GetAsyncKeyState(vKey);

final _GetAsyncKeyState = _user32
    .lookupFunction<Int16 Function(Int32), int Function(int)>(
      'GetAsyncKeyState',
    );

/// Retrieves the DPI_AWARENESS value from a DPI_AWARENESS_CONTEXT.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getawarenessfromdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS GetAwarenessFromDpiAwarenessContext(
  DPI_AWARENESS_CONTEXT value,
) => .new(_GetAwarenessFromDpiAwarenessContext(value));

final _GetAwarenessFromDpiAwarenessContext = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetAwarenessFromDpiAwarenessContext',
    );

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

final _GetCapture = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetCapture');

/// Retrieves the time required to invert the caret's pixels.
///
/// The user can set this value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretblinktime>.
///
/// {@category user32}
Win32Result<int> GetCaretBlinkTime() {
  resolveGetLastError();
  final result_ = _GetCaretBlinkTime();
  return .new(value: result_, error: GetLastError());
}

final _GetCaretBlinkTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetCaretBlinkTime');

/// Copies the caret's position to the specified POINT structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcaretpos>.
///
/// {@category user32}
Win32Result<bool> GetCaretPos(Pointer<POINT> lpPoint) {
  resolveGetLastError();
  final result_ = _GetCaretPos(lpPoint);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCaretPos = _user32
    .lookupFunction<
      Int32 Function(Pointer<POINT>),
      int Function(Pointer<POINT>)
    >('GetCaretPos');

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
  resolveGetLastError();
  final result_ = _GetClassInfo(hInstance ?? nullptr, lpClassName, lpWndClass);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetClassInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASS>),
      int Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASS>)
    >('GetClassInfoW');

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
  resolveGetLastError();
  final result_ = _GetClassInfoEx(hInstance ?? nullptr, lpszClass, lpwcx);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetClassInfoEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASSEX>),
      int Function(Pointer, Pointer<Utf16>, Pointer<WNDCLASSEX>)
    >('GetClassInfoExW');

/// Retrieves the specified value from the WNDCLASSEX structure associated with
/// the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclasslongptrw>.
///
/// {@category user32}
Win32Result<int> GetClassLongPtr(HWND hWnd, GET_CLASS_LONG_INDEX nIndex) {
  resolveGetLastError();
  final result_ = _GetClassLongPtr(hWnd, nIndex);
  return .new(value: result_, error: GetLastError());
}

final _GetClassLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32),
      int Function(Pointer, int)
    >('GetClassLongPtrW');

/// Retrieves the name of the class to which the specified window belongs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclassnamew>.
///
/// {@category user32}
Win32Result<int> GetClassName(HWND hWnd, PWSTR lpClassName, int nMaxCount) {
  resolveGetLastError();
  final result_ = _GetClassName(hWnd, lpClassName, nMaxCount);
  return .new(value: result_, error: GetLastError());
}

final _GetClassName = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetClassNameW');

/// Retrieves the coordinates of a window's client area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclientrect>.
///
/// {@category user32}
Win32Result<bool> GetClientRect(HWND hWnd, Pointer<RECT> lpRect) {
  resolveGetLastError();
  final result_ = _GetClientRect(hWnd, lpRect);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetClientRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('GetClientRect');

/// Retrieves data from the clipboard in a specified format.
///
/// The clipboard must have been opened previously.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboarddata>.
///
/// {@category user32}
Win32Result<HANDLE> GetClipboardData(int uFormat) {
  resolveGetLastError();
  final result_ = _GetClipboardData(uFormat);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetClipboardData = _user32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetClipboardData',
    );

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
  resolveGetLastError();
  final result_ = _GetClipboardFormatName(format, lpszFormatName, cchMaxCount);
  return .new(value: result_, error: GetLastError());
}

final _GetClipboardFormatName = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Utf16>, Int32),
      int Function(int, Pointer<Utf16>, int)
    >('GetClipboardFormatNameW');

/// Retrieves the window handle of the current owner of the clipboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardowner>.
///
/// {@category user32}
Win32Result<HWND> GetClipboardOwner() {
  resolveGetLastError();
  final result_ = _GetClipboardOwner();
  return .new(value: .new(result_), error: GetLastError());
}

final _GetClipboardOwner = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetClipboardOwner',
    );

/// Retrieves the clipboard sequence number for the current window station.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardsequencenumber>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetClipboardSequenceNumber() => _GetClipboardSequenceNumber();

final _GetClipboardSequenceNumber = _user32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetClipboardSequenceNumber',
    );

/// Retrieves the handle to the first window in the clipboard viewer chain.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipboardviewer>.
///
/// {@category user32}
Win32Result<HWND> GetClipboardViewer() {
  resolveGetLastError();
  final result_ = _GetClipboardViewer();
  return .new(value: .new(result_), error: GetLastError());
}

final _GetClipboardViewer = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetClipboardViewer',
    );

/// Retrieves the screen coordinates of the rectangular area to which the cursor
/// is confined.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getclipcursor>.
///
/// {@category user32}
Win32Result<bool> GetClipCursor(Pointer<RECT> lpRect) {
  resolveGetLastError();
  final result_ = _GetClipCursor(lpRect);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetClipCursor = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'GetClipCursor',
    );

/// Retrieves a handle to the current cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HCURSOR GetCursor() => HCURSOR(_GetCursor());

final _GetCursor = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetCursor');

/// Retrieves information about the global cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorinfo>.
///
/// {@category user32}
Win32Result<bool> GetCursorInfo(Pointer<CURSORINFO> pci) {
  resolveGetLastError();
  final result_ = _GetCursorInfo(pci);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCursorInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer<CURSORINFO>),
      int Function(Pointer<CURSORINFO>)
    >('GetCursorInfo');

/// Retrieves the position of the mouse cursor, in screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getcursorpos>.
///
/// {@category user32}
Win32Result<bool> GetCursorPos(Pointer<POINT> lpPoint) {
  resolveGetLastError();
  final result_ = _GetCursorPos(lpPoint);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetCursorPos = _user32
    .lookupFunction<
      Int32 Function(Pointer<POINT>),
      int Function(Pointer<POINT>)
    >('GetCursorPos');

/// Retrieves a handle to a device context (DC) for the client area of a
/// specified window or for the entire screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HDC GetDC(HWND? hWnd) => HDC(_GetDC(hWnd ?? nullptr));

final _GetDC = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetDC',
    );

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

final _GetDCEx = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Uint32),
      Pointer Function(Pointer, Pointer, int)
    >('GetDCEx');

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

final _GetDesktopWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetDesktopWindow');

/// Retrieves the system's dialog base units, which are the average width and
/// height of characters in the system font.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogbaseunits>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDialogBaseUnits() => _GetDialogBaseUnits();

final _GetDialogBaseUnits = _user32
    .lookupFunction<Int32 Function(), int Function()>('GetDialogBaseUnits');

/// Retrieves and per-monitor DPI scaling behavior overrides of a child window
/// in a dialog.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogcontroldpichangebehavior>.
///
/// {@category user32}
Win32Result<DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS>
GetDialogControlDpiChangeBehavior(HWND hWnd) {
  resolveGetLastError();
  final result_ = _GetDialogControlDpiChangeBehavior(hWnd);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetDialogControlDpiChangeBehavior = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetDialogControlDpiChangeBehavior',
    );

/// Returns the flags that might have been set on a given dialog by an earlier
/// call to SetDialogDpiChangeBehavior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdialogdpichangebehavior>.
///
/// {@category user32}
Win32Result<DIALOG_DPI_CHANGE_BEHAVIORS> GetDialogDpiChangeBehavior(HWND hDlg) {
  resolveGetLastError();
  final result_ = _GetDialogDpiChangeBehavior(hDlg);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetDialogDpiChangeBehavior = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetDialogDpiChangeBehavior',
    );

/// Retrieves the screen auto-rotation preferences for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdisplayautorotationpreferences>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetDisplayAutoRotationPreferences(Pointer<Int32> pOrientation) =>
    _GetDisplayAutoRotationPreferences(pOrientation) != FALSE;

final _GetDisplayAutoRotationPreferences = _user32
    .lookupFunction<
      Int32 Function(Pointer<Int32>),
      int Function(Pointer<Int32>)
    >('GetDisplayAutoRotationPreferences');

/// Retrieves a handle to a control in the specified dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdlgitem>.
///
/// {@category user32}
Win32Result<HWND> GetDlgItem(HWND? hDlg, int nIDDlgItem) {
  resolveGetLastError();
  final result_ = _GetDlgItem(hDlg ?? nullptr, nIDDlgItem);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetDlgItem = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32),
      Pointer Function(Pointer, int)
    >('GetDlgItem');

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
  resolveGetLastError();
  final result_ = _GetDlgItemInt(
    hDlg,
    nIDDlgItem,
    lpTranslated ?? nullptr,
    bSigned ? TRUE : FALSE,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetDlgItemInt = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Int32>, Int32),
      int Function(Pointer, int, Pointer<Int32>, int)
    >('GetDlgItemInt');

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
  resolveGetLastError();
  final result_ = _GetDlgItemText(hDlg, nIDDlgItem, lpString, cchMax);
  return .new(value: result_, error: GetLastError());
}

final _GetDlgItemText = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32, Pointer<Utf16>, Int32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('GetDlgItemTextW');

/// Retrieves the current double-click time for the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdoubleclicktime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDoubleClickTime() => _GetDoubleClickTime();

final _GetDoubleClickTime = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDoubleClickTime');

/// Returns the system DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpiforsystem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDpiForSystem() => _GetDpiForSystem();

final _GetDpiForSystem = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDpiForSystem');

/// Returns the dots per inch (dpi) value for the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getdpiforwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetDpiForWindow(HWND hwnd) => _GetDpiForWindow(hwnd);

final _GetDpiForWindow = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetDpiForWindow',
    );

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

final _GetDpiFromDpiAwarenessContext = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetDpiFromDpiAwarenessContext',
    );

/// Retrieves the handle to the window that has the keyboard focus, if the
/// window is attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getfocus>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetFocus() => HWND(_GetFocus());

final _GetFocus = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetFocus');

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

final _GetForegroundWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetForegroundWindow',
    );

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
  resolveGetLastError();
  final result_ = _GetGestureConfig(
    hwnd,
    NULL,
    dwFlags,
    pcIDs,
    pGestureConfig,
    cbSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetGestureConfig = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Uint32,
        Pointer<Uint32>,
        Pointer<GESTURECONFIG>,
        Uint32,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<Uint32>,
        Pointer<GESTURECONFIG>,
        int,
      )
    >('GetGestureConfig');

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
  resolveGetLastError();
  final result_ = _GetGestureExtraArgs(hGestureInfo, cbExtraArgs, pExtraArgs);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetGestureExtraArgs = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Uint8>),
      int Function(Pointer, int, Pointer<Uint8>)
    >('GetGestureExtraArgs');

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
  resolveGetLastError();
  final result_ = _GetGestureInfo(hGestureInfo, pGestureInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetGestureInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<GESTUREINFO>),
      int Function(Pointer, Pointer<GESTUREINFO>)
    >('GetGestureInfo');

/// Retrieves information about the active window or a specified GUI thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getguithreadinfo>.
///
/// {@category user32}
Win32Result<bool> GetGUIThreadInfo(int idThread, Pointer<GUITHREADINFO> pgui) {
  resolveGetLastError();
  final result_ = _GetGUIThreadInfo(idThread, pgui);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetGUIThreadInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<GUITHREADINFO>),
      int Function(int, Pointer<GUITHREADINFO>)
    >('GetGUIThreadInfo');

/// Retrieves information about the specified icon or cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
///
/// {@category user32}
Win32Result<bool> GetIconInfo(HICON hIcon, Pointer<ICONINFO> piconinfo) {
  resolveGetLastError();
  final result_ = _GetIconInfo(hIcon, piconinfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetIconInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<ICONINFO>),
      int Function(Pointer, Pointer<ICONINFO>)
    >('GetIconInfo');

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

final _GetIconInfoEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<ICONINFOEX>),
      int Function(Pointer, Pointer<ICONINFOEX>)
    >('GetIconInfoExW');

/// Determines whether there are mouse-button or keyboard messages in the
/// calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getinputstate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetInputState() => _GetInputState() != FALSE;

final _GetInputState = _user32.lookupFunction<Int32 Function(), int Function()>(
  'GetInputState',
);

/// Retrieves the active input locale identifier (formerly called the keyboard
/// layout).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayout>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HKL GetKeyboardLayout(int idThread) => HKL(_GetKeyboardLayout(idThread));

final _GetKeyboardLayout = _user32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetKeyboardLayout',
    );

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
  resolveGetLastError();
  final result_ = _GetKeyboardLayoutList(nBuff, lpList ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetKeyboardLayoutList = _user32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Pointer>),
      int Function(int, Pointer<Pointer>)
    >('GetKeyboardLayoutList');

/// Retrieves the name of the active input locale identifier (formerly called
/// the keyboard layout) for the system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardlayoutnamew>.
///
/// {@category user32}
Win32Result<bool> GetKeyboardLayoutName(PWSTR pwszKLID) {
  resolveGetLastError();
  final result_ = _GetKeyboardLayoutName(pwszKLID);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetKeyboardLayoutName = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('GetKeyboardLayoutNameW');

/// Copies the status of the 256 virtual keys to the specified buffer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardstate>.
///
/// {@category user32}
Win32Result<bool> GetKeyboardState(Pointer<Uint8> lpKeyState) {
  resolveGetLastError();
  final result_ = _GetKeyboardState(lpKeyState);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetKeyboardState = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>),
      int Function(Pointer<Uint8>)
    >('GetKeyboardState');

/// Retrieves information about the current keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeyboardtype>.
///
/// {@category user32}
Win32Result<int> GetKeyboardType(int nTypeFlag) {
  resolveGetLastError();
  final result_ = _GetKeyboardType(nTypeFlag);
  return .new(value: result_, error: GetLastError());
}

final _GetKeyboardType = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'GetKeyboardType',
    );

/// Retrieves a string that represents the name of a key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getkeynametextw>.
///
/// {@category user32}
Win32Result<int> GetKeyNameText(int lParam, PWSTR lpString, int cchSize) {
  resolveGetLastError();
  final result_ = _GetKeyNameText(lParam, lpString, cchSize);
  return .new(value: result_, error: GetLastError());
}

final _GetKeyNameText = _user32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Utf16>, Int32),
      int Function(int, Pointer<Utf16>, int)
    >('GetKeyNameTextW');

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

final _GetKeyState = _user32
    .lookupFunction<Int16 Function(Int32), int Function(int)>('GetKeyState');

/// Retrieves the time of the last input event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getlastinputinfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetLastInputInfo(Pointer<LASTINPUTINFO> plii) =>
    _GetLastInputInfo(plii) != FALSE;

final _GetLastInputInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer<LASTINPUTINFO>),
      int Function(Pointer<LASTINPUTINFO>)
    >('GetLastInputInfo');

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
  resolveGetLastError();
  final result_ = _GetLayeredWindowAttributes(
    hwnd,
    pcrKey ?? nullptr,
    pbAlpha ?? nullptr,
    pdwFlags ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetLayeredWindowAttributes = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>, Pointer<Uint8>, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>, Pointer<Uint8>, Pointer<Uint32>)
    >('GetLayeredWindowAttributes');

/// Retrieves a handle to the menu assigned to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMENU GetMenu(HWND hWnd) => HMENU(_GetMenu(hWnd));

final _GetMenu = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetMenu',
    );

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
  resolveGetLastError();
  final result_ = _GetMenuBarInfo(hwnd, idObject, idItem, pmbi);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetMenuBarInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<MENUBARINFO>),
      int Function(Pointer, int, int, Pointer<MENUBARINFO>)
    >('GetMenuBarInfo');

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
  resolveGetLastError();
  final result_ = _GetMenuDefaultItem(hMenu, fByPos, gmdiFlags);
  return .new(value: result_, error: GetLastError());
}

final _GetMenuDefaultItem = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('GetMenuDefaultItem');

/// Retrieves information about a specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuinfo>.
///
/// {@category user32}
Win32Result<bool> GetMenuInfo(HMENU param0, Pointer<MENUINFO> param1) {
  resolveGetLastError();
  final result_ = _GetMenuInfo(param0, param1);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetMenuInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MENUINFO>),
      int Function(Pointer, Pointer<MENUINFO>)
    >('GetMenuInfo');

/// Determines the number of items in the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemcount>.
///
/// {@category user32}
Win32Result<int> GetMenuItemCount(HMENU? hMenu) {
  resolveGetLastError();
  final result_ = _GetMenuItemCount(hMenu ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _GetMenuItemCount = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetMenuItemCount',
    );

/// Retrieves the menu item identifier of a menu item located at the specified
/// position in a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenuitemid>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuItemID(HMENU hMenu, int nPos) => _GetMenuItemID(hMenu, nPos);

final _GetMenuItemID = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32),
      int Function(Pointer, int)
    >('GetMenuItemID');

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
  resolveGetLastError();
  final result_ = _GetMenuItemInfo(
    hmenu,
    item,
    fByPosition ? TRUE : FALSE,
    lpmii,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetMenuItemInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>),
      int Function(Pointer, int, int, Pointer<MENUITEMINFO>)
    >('GetMenuItemInfoW');

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
  resolveGetLastError();
  final result_ = _GetMenuItemRect(hWnd ?? nullptr, hMenu, uItem, lprcItem);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetMenuItemRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Pointer<RECT>),
      int Function(Pointer, Pointer, int, Pointer<RECT>)
    >('GetMenuItemRect');

/// Retrieves the menu flags associated with the specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmenustate>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMenuState(HMENU hMenu, int uId, MENU_ITEM_FLAGS uFlags) =>
    _GetMenuState(hMenu, uId, uFlags);

final _GetMenuState = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('GetMenuState');

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

final _GetMenuString = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Utf16>, Int32, Uint32),
      int Function(Pointer, int, Pointer<Utf16>, int, int)
    >('GetMenuStringW');

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
  resolveGetLastError();
  final result_ = _GetMessage(
    lpMsg,
    hWnd ?? nullptr,
    wMsgFilterMin,
    wMsgFilterMax,
  );
  return Win32Result(value: result_ != FALSE, error: GetLastError());
}

final _GetMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer<MSG>, Pointer, Uint32, Uint32),
      int Function(Pointer<MSG>, Pointer, int, int)
    >('GetMessageW');

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

final _GetMessageExtraInfo = _user32
    .lookupFunction<IntPtr Function(), int Function()>('GetMessageExtraInfo');

/// Retrieves the cursor position for the last message retrieved by the
/// GetMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagepos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMessagePos() => _GetMessagePos();

final _GetMessagePos = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetMessagePos');

/// Retrieves the message time for the last message retrieved by the GetMessage
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmessagetime>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetMessageTime() => _GetMessageTime();

final _GetMessageTime = _user32
    .lookupFunction<Int32 Function(), int Function()>('GetMessageTime');

/// Retrieves information about a display monitor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getmonitorinfow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool GetMonitorInfo(HMONITOR hMonitor, Pointer<MONITORINFO> lpmi) =>
    _GetMonitorInfo(hMonitor, lpmi) != FALSE;

final _GetMonitorInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MONITORINFO>),
      int Function(Pointer, Pointer<MONITORINFO>)
    >('GetMonitorInfoW');

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
  resolveGetLastError();
  final result_ = _GetMouseMovePointsEx(
    cbSize,
    lppt,
    lpptBuf,
    nBufPoints,
    resolution,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetMouseMovePointsEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<MOUSEMOVEPOINT>,
        Pointer<MOUSEMOVEPOINT>,
        Int32,
        Uint32,
      ),
      int Function(
        int,
        Pointer<MOUSEMOVEPOINT>,
        Pointer<MOUSEMOVEPOINT>,
        int,
        int,
      )
    >('GetMouseMovePointsEx');

/// Retrieves a handle to the first control in a group of controls that precedes
/// (or follows) the specified control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlggroupitem>.
///
/// {@category user32}
Win32Result<HWND> GetNextDlgGroupItem(HWND hDlg, HWND? hCtl, bool bPrevious) {
  resolveGetLastError();
  final result_ = _GetNextDlgGroupItem(
    hDlg,
    hCtl ?? nullptr,
    bPrevious ? TRUE : FALSE,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _GetNextDlgGroupItem = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Int32),
      Pointer Function(Pointer, Pointer, int)
    >('GetNextDlgGroupItem');

/// Retrieves a handle to the first control that has the WS_TABSTOP style that
/// precedes (or follows) the specified control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getnextdlgtabitem>.
///
/// {@category user32}
Win32Result<HWND> GetNextDlgTabItem(HWND hDlg, HWND? hCtl, bool bPrevious) {
  resolveGetLastError();
  final result_ = _GetNextDlgTabItem(
    hDlg,
    hCtl ?? nullptr,
    bPrevious ? TRUE : FALSE,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _GetNextDlgTabItem = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Int32),
      Pointer Function(Pointer, Pointer, int)
    >('GetNextDlgTabItem');

/// Retrieves the handle to the window that currently has the clipboard open.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getopenclipboardwindow>.
///
/// {@category user32}
Win32Result<HWND> GetOpenClipboardWindow() {
  resolveGetLastError();
  final result_ = _GetOpenClipboardWindow();
  return .new(value: .new(result_), error: GetLastError());
}

final _GetOpenClipboardWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetOpenClipboardWindow',
    );

/// Retrieves a handle to the specified window's parent or owner.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getparent>.
///
/// {@category user32}
Win32Result<HWND> GetParent(HWND hWnd) {
  resolveGetLastError();
  final result_ = _GetParent(hWnd);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetParent = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetParent',
    );

/// Retrieves the position of the cursor in physical coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getphysicalcursorpos>.
///
/// {@category user32}
Win32Result<bool> GetPhysicalCursorPos(Pointer<POINT> lpPoint) {
  resolveGetLastError();
  final result_ = _GetPhysicalCursorPos(lpPoint);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPhysicalCursorPos = _user32
    .lookupFunction<
      Int32 Function(Pointer<POINT>),
      int Function(Pointer<POINT>)
    >('GetPhysicalCursorPos');

/// Retrieves the cursor identifier associated with the specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointercursorid>.
///
/// {@category user32}
Win32Result<bool> GetPointerCursorId(int pointerId, Pointer<Uint32> cursorId) {
  resolveGetLastError();
  final result_ = _GetPointerCursorId(pointerId, cursorId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerCursorId = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>),
      int Function(int, Pointer<Uint32>)
    >('GetPointerCursorId');

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
  resolveGetLastError();
  final result_ = _GetPointerFrameInfo(
    pointerId,
    pointerCount,
    pointerInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerFrameInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_INFO>)
    >('GetPointerFrameInfo');

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
  resolveGetLastError();
  final result_ = _GetPointerFrameInfoHistory(
    pointerId,
    entriesCount,
    pointerCount,
    pointerInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerFrameInfoHistory = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_INFO>,
      ),
      int Function(int, Pointer<Uint32>, Pointer<Uint32>, Pointer<POINTER_INFO>)
    >('GetPointerFrameInfoHistory');

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
  resolveGetLastError();
  final result_ = _GetPointerFramePenInfo(
    pointerId,
    pointerCount,
    penInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerFramePenInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)
    >('GetPointerFramePenInfo');

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
  resolveGetLastError();
  final result_ = _GetPointerFramePenInfoHistory(
    pointerId,
    entriesCount,
    pointerCount,
    penInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerFramePenInfoHistory = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_PEN_INFO>,
      ),
      int Function(
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_PEN_INFO>,
      )
    >('GetPointerFramePenInfoHistory');

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
  resolveGetLastError();
  final result_ = _GetPointerFrameTouchInfo(
    pointerId,
    pointerCount,
    touchInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerFrameTouchInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>)
    >('GetPointerFrameTouchInfo');

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
  resolveGetLastError();
  final result_ = _GetPointerFrameTouchInfoHistory(
    pointerId,
    entriesCount,
    pointerCount,
    touchInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerFrameTouchInfoHistory = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_TOUCH_INFO>,
      ),
      int Function(
        int,
        Pointer<Uint32>,
        Pointer<Uint32>,
        Pointer<POINTER_TOUCH_INFO>,
      )
    >('GetPointerFrameTouchInfoHistory');

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
  resolveGetLastError();
  final result_ = _GetPointerInfo(pointerId, pointerInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<POINTER_INFO>),
      int Function(int, Pointer<POINTER_INFO>)
    >('GetPointerInfo');

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
  resolveGetLastError();
  final result_ = _GetPointerInfoHistory(
    pointerId,
    entriesCount,
    pointerInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerInfoHistory = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_INFO>)
    >('GetPointerInfoHistory');

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
  resolveGetLastError();
  final result_ = _GetPointerInputTransform(
    pointerId,
    historyCount,
    inputTransform,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerInputTransform = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer<INPUT_TRANSFORM>),
      int Function(int, int, Pointer<INPUT_TRANSFORM>)
    >('GetPointerInputTransform');

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
  resolveGetLastError();
  final result_ = _GetPointerPenInfo(pointerId, penInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerPenInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<POINTER_PEN_INFO>),
      int Function(int, Pointer<POINTER_PEN_INFO>)
    >('GetPointerPenInfo');

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
  resolveGetLastError();
  final result_ = _GetPointerPenInfoHistory(
    pointerId,
    entriesCount,
    penInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerPenInfoHistory = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_PEN_INFO>)
    >('GetPointerPenInfoHistory');

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
  resolveGetLastError();
  final result_ = _GetPointerTouchInfo(pointerId, touchInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerTouchInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<POINTER_TOUCH_INFO>),
      int Function(int, Pointer<POINTER_TOUCH_INFO>)
    >('GetPointerTouchInfo');

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
  resolveGetLastError();
  final result_ = _GetPointerTouchInfoHistory(
    pointerId,
    entriesCount,
    touchInfo ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerTouchInfoHistory = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>),
      int Function(int, Pointer<Uint32>, Pointer<POINTER_TOUCH_INFO>)
    >('GetPointerTouchInfoHistory');

/// Retrieves the pointer type for a specified pointer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getpointertype>.
///
/// {@category user32}
Win32Result<bool> GetPointerType(int pointerId, Pointer<Int32> pointerType) {
  resolveGetLastError();
  final result_ = _GetPointerType(pointerId, pointerType);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetPointerType = _user32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Int32>),
      int Function(int, Pointer<Int32>)
    >('GetPointerType');

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
  resolveGetLastError();
  final result_ = _GetPriorityClipboardFormat(paFormatPriorityList, cFormats);
  return .new(value: result_, error: GetLastError());
}

final _GetPriorityClipboardFormat = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Int32),
      int Function(Pointer<Uint32>, int)
    >('GetPriorityClipboardFormat');

/// Retrieves a handle to the current window station for the calling process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getprocesswindowstation>.
///
/// {@category user32}
Win32Result<HWINSTA> GetProcessWindowStation() {
  resolveGetLastError();
  final result_ = _GetProcessWindowStation();
  return .new(value: .new(result_), error: GetLastError());
}

final _GetProcessWindowStation = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetProcessWindowStation',
    );

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

final _GetProp = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('GetPropW');

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
  resolveGetLastError();
  final result_ = _GetRawInputBuffer(pData ?? nullptr, pcbSize, cbSizeHeader);
  return .new(value: result_, error: GetLastError());
}

final _GetRawInputBuffer = _user32
    .lookupFunction<
      Uint32 Function(Pointer<RAWINPUT>, Pointer<Uint32>, Uint32),
      int Function(Pointer<RAWINPUT>, Pointer<Uint32>, int)
    >('GetRawInputBuffer');

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

final _GetRawInputData = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer, Pointer<Uint32>, Uint32),
      int Function(Pointer, int, Pointer, Pointer<Uint32>, int)
    >('GetRawInputData');

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
  resolveGetLastError();
  final result_ = _GetRawInputDeviceInfo(
    hDevice ?? nullptr,
    uiCommand,
    pData ?? nullptr,
    pcbSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetRawInputDeviceInfo = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, Pointer<Uint32>)
    >('GetRawInputDeviceInfoW');

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
  resolveGetLastError();
  final result_ = _GetRawInputDeviceList(
    pRawInputDeviceList ?? nullptr,
    puiNumDevices,
    cbSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetRawInputDeviceList = _user32
    .lookupFunction<
      Uint32 Function(Pointer<RAWINPUTDEVICELIST>, Pointer<Uint32>, Uint32),
      int Function(Pointer<RAWINPUTDEVICELIST>, Pointer<Uint32>, int)
    >('GetRawInputDeviceList');

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
  resolveGetLastError();
  final result_ = _GetRegisteredRawInputDevices(
    pRawInputDevices ?? nullptr,
    puiNumDevices,
    cbSize,
  );
  return .new(value: result_, error: GetLastError());
}

final _GetRegisteredRawInputDevices = _user32
    .lookupFunction<
      Uint32 Function(Pointer<RAWINPUTDEVICE>, Pointer<Uint32>, Uint32),
      int Function(Pointer<RAWINPUTDEVICE>, Pointer<Uint32>, int)
    >('GetRegisteredRawInputDevices');

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
  resolveGetLastError();
  final result_ = _GetScrollBarInfo(hwnd, idObject, psbi);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetScrollBarInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SCROLLBARINFO>),
      int Function(Pointer, int, Pointer<SCROLLBARINFO>)
    >('GetScrollBarInfo');

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
  resolveGetLastError();
  final result_ = _GetScrollInfo(hwnd, nBar, lpsi);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetScrollInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SCROLLINFO>),
      int Function(Pointer, int, Pointer<SCROLLINFO>)
    >('GetScrollInfo');

/// Retrieves a handle to the Shell's desktop window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getshellwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND GetShellWindow() => HWND(_GetShellWindow());

final _GetShellWindow = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>('GetShellWindow');

/// Retrieves a handle to the drop-down menu or submenu activated by the
/// specified menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsubmenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMENU GetSubMenu(HMENU hMenu, int nPos) => HMENU(_GetSubMenu(hMenu, nPos));

final _GetSubMenu = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32),
      Pointer Function(Pointer, int)
    >('GetSubMenu');

/// Retrieves the current color of the specified display element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsyscolor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSysColor(SYS_COLOR_INDEX nIndex) => _GetSysColor(nIndex);

final _GetSysColor = _user32
    .lookupFunction<Uint32 Function(Int32), int Function(int)>('GetSysColor');

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

final _GetSysColorBrush = _user32
    .lookupFunction<Pointer Function(Int32), Pointer Function(int)>(
      'GetSysColorBrush',
    );

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

final _GetSystemDpiForProcess = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'GetSystemDpiForProcess',
    );

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

final _GetSystemMenu = _user32
    .lookupFunction<
      Pointer Function(Pointer, Int32),
      Pointer Function(Pointer, int)
    >('GetSystemMenu');

/// Retrieves the specified system metric or system configuration setting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmetrics>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetSystemMetrics(SYSTEM_METRICS_INDEX nIndex) => _GetSystemMetrics(nIndex);

final _GetSystemMetrics = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'GetSystemMetrics',
    );

/// Retrieves the specified system metric or system configuration setting taking
/// into account a provided DPI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getsystemmetricsfordpi>.
///
/// {@category user32}
Win32Result<int> GetSystemMetricsForDpi(SYSTEM_METRICS_INDEX nIndex, int dpi) {
  resolveGetLastError();
  final result_ = _GetSystemMetricsForDpi(nIndex, dpi);
  return .new(value: result_, error: GetLastError());
}

final _GetSystemMetricsForDpi = _user32
    .lookupFunction<Int32 Function(Int32, Uint32), int Function(int, int)>(
      'GetSystemMetricsForDpi',
    );

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

final _GetTabbedTextExtent = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Int32, Int32, Pointer<Int32>),
      int Function(Pointer, Pointer<Utf16>, int, int, Pointer<Int32>)
    >('GetTabbedTextExtentW');

/// Retrieves a handle to the desktop assigned to the specified thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddesktop>.
///
/// {@category user32}
Win32Result<HDESK> GetThreadDesktop(int dwThreadId) {
  resolveGetLastError();
  final result_ = _GetThreadDesktop(dwThreadId);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetThreadDesktop = _user32
    .lookupFunction<Pointer Function(Uint32), Pointer Function(int)>(
      'GetThreadDesktop',
    );

/// Gets the DPI_AWARENESS_CONTEXT for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS_CONTEXT GetThreadDpiAwarenessContext() =>
    DPI_AWARENESS_CONTEXT(_GetThreadDpiAwarenessContext());

final _GetThreadDpiAwarenessContext = _user32
    .lookupFunction<Pointer Function(), Pointer Function()>(
      'GetThreadDpiAwarenessContext',
    );

/// Retrieves the DPI_HOSTING_BEHAVIOR from the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getthreaddpihostingbehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_HOSTING_BEHAVIOR GetThreadDpiHostingBehavior() =>
    .new(_GetThreadDpiHostingBehavior());

final _GetThreadDpiHostingBehavior = _user32
    .lookupFunction<Int32 Function(), int Function()>(
      'GetThreadDpiHostingBehavior',
    );

/// Retrieves information about the specified title bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettitlebarinfo>.
///
/// {@category user32}
Win32Result<bool> GetTitleBarInfo(HWND hwnd, Pointer<TITLEBARINFO> pti) {
  resolveGetLastError();
  final result_ = _GetTitleBarInfo(hwnd, pti);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetTitleBarInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<TITLEBARINFO>),
      int Function(Pointer, Pointer<TITLEBARINFO>)
    >('GetTitleBarInfo');

/// Examines the Z order of the child windows associated with the specified
/// parent window and retrieves a handle to the child window at the top of the Z
/// order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-gettopwindow>.
///
/// {@category user32}
Win32Result<HWND> GetTopWindow(HWND? hWnd) {
  resolveGetLastError();
  final result_ = _GetTopWindow(hWnd ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetTopWindow = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetTopWindow',
    );

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
  resolveGetLastError();
  final result_ = _GetTouchInputInfo(hTouchInput, cInputs, pInputs, cbSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetTouchInputInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<TOUCHINPUT>, Int32),
      int Function(Pointer, int, Pointer<TOUCHINPUT>, int)
    >('GetTouchInputInfo');

/// Gets pointer data before it has gone through touch prediction processing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getunpredictedmessagepos>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int GetUnpredictedMessagePos() => _GetUnpredictedMessagePos();

final _GetUnpredictedMessagePos = _user32
    .lookupFunction<Uint32 Function(), int Function()>(
      'GetUnpredictedMessagePos',
    );

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
  resolveGetLastError();
  final result_ = _GetUpdatedClipboardFormats(
    lpuiFormats,
    cFormats,
    pcFormatsOut,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetUpdatedClipboardFormats = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint32>, Uint32, Pointer<Uint32>),
      int Function(Pointer<Uint32>, int, Pointer<Uint32>)
    >('GetUpdatedClipboardFormats');

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

final _GetUpdateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Int32),
      int Function(Pointer, Pointer<RECT>, int)
    >('GetUpdateRect');

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
    .new(_GetUpdateRgn(hWnd, hRgn, bErase ? TRUE : FALSE));

final _GetUpdateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('GetUpdateRgn');

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
  resolveGetLastError();
  final result_ = _GetUserObjectInformation(
    hObj,
    nIndex,
    pvInfo ?? nullptr,
    nLength,
    lpnLengthNeeded ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetUserObjectInformation = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Uint32>),
      int Function(Pointer, int, Pointer, int, Pointer<Uint32>)
    >('GetUserObjectInformationW');

/// Retrieves a handle to a window that has the specified relationship (Z-Order
/// or owner) to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindow>.
///
/// {@category user32}
Win32Result<HWND> GetWindow(HWND hWnd, GET_WINDOW_CMD uCmd) {
  resolveGetLastError();
  final result_ = _GetWindow(hWnd, uCmd);
  return .new(value: .new(result_), error: GetLastError());
}

final _GetWindow = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('GetWindow');

/// Retrieves the device context (DC) for the entire window, including title
/// bar, menus, and scroll bars.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdc>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HDC GetWindowDC(HWND? hWnd) => HDC(_GetWindowDC(hWnd ?? nullptr));

final _GetWindowDC = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetWindowDC',
    );

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
  resolveGetLastError();
  final result_ = _GetWindowDisplayAffinity(hWnd, pdwAffinity);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetWindowDisplayAffinity = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetWindowDisplayAffinity');

/// Returns the DPI_AWARENESS_CONTEXT associated with a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpiawarenesscontext>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_AWARENESS_CONTEXT GetWindowDpiAwarenessContext(HWND hwnd) =>
    DPI_AWARENESS_CONTEXT(_GetWindowDpiAwarenessContext(hwnd));

final _GetWindowDpiAwarenessContext = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'GetWindowDpiAwarenessContext',
    );

/// Returns the DPI_HOSTING_BEHAVIOR of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowdpihostingbehavior>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
DPI_HOSTING_BEHAVIOR GetWindowDpiHostingBehavior(HWND hwnd) =>
    .new(_GetWindowDpiHostingBehavior(hwnd));

final _GetWindowDpiHostingBehavior = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetWindowDpiHostingBehavior',
    );

/// Retrieves information about the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowinfo>.
///
/// {@category user32}
Win32Result<bool> GetWindowInfo(HWND hwnd, Pointer<WINDOWINFO> pwi) {
  resolveGetLastError();
  final result_ = _GetWindowInfo(hwnd, pwi);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetWindowInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WINDOWINFO>),
      int Function(Pointer, Pointer<WINDOWINFO>)
    >('GetWindowInfo');

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
  resolveGetLastError();
  final result_ = _GetWindowLongPtr(hWnd, nIndex);
  return .new(value: result_, error: GetLastError());
}

final _GetWindowLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32),
      int Function(Pointer, int)
    >('GetWindowLongPtrW');

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

final _GetWindowModuleFileName = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetWindowModuleFileNameW');

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
  resolveGetLastError();
  final result_ = _GetWindowPlacement(hWnd, lpwndpl);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetWindowPlacement = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WINDOWPLACEMENT>),
      int Function(Pointer, Pointer<WINDOWPLACEMENT>)
    >('GetWindowPlacement');

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
  resolveGetLastError();
  final result_ = _GetWindowRect(hWnd, lpRect);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _GetWindowRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('GetWindowRect');

/// Obtains a copy of the window region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetWindowRgn(HWND hWnd, HRGN hRgn) =>
    .new(_GetWindowRgn(hWnd, hRgn));

final _GetWindowRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('GetWindowRgn');

/// Retrieves the dimensions of the tightest bounding rectangle for the window
/// region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowrgnbox>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
GDI_REGION_TYPE GetWindowRgnBox(HWND hWnd, Pointer<RECT> lprc) =>
    .new(_GetWindowRgnBox(hWnd, lprc));

final _GetWindowRgnBox = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('GetWindowRgnBox');

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
  resolveGetLastError();
  final result_ = _GetWindowText(hWnd, lpString, nMaxCount);
  return .new(value: result_, error: GetLastError());
}

final _GetWindowText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Int32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('GetWindowTextW');

/// Retrieves the length, in characters, of the specified window's title bar
/// text (if the window has a title bar).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-getwindowtextlengthw>.
///
/// {@category user32}
Win32Result<int> GetWindowTextLength(HWND hWnd) {
  resolveGetLastError();
  final result_ = _GetWindowTextLength(hWnd);
  return .new(value: result_, error: GetLastError());
}

final _GetWindowTextLength = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'GetWindowTextLengthW',
    );

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

final _GetWindowThreadProcessId = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('GetWindowThreadProcessId');

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

final _GrayString = _user32
    .lookupFunction<
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
      ),
      int Function(
        Pointer,
        Pointer,
        Pointer<NativeFunction<GRAYSTRINGPROC>>,
        int,
        int,
        int,
        int,
        int,
        int,
      )
    >('GrayStringW');

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
  resolveGetLastError();
  final result_ = _HideCaret(hWnd ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _HideCaret = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'HideCaret',
    );

/// Adds or removes highlighting from an item in a menu bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-hilitemenuitem>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool HiliteMenuItem(HWND hWnd, HMENU hMenu, int uIDHiliteItem, int uHilite) =>
    _HiliteMenuItem(hWnd, hMenu, uIDHiliteItem, uHilite) != FALSE;

final _HiliteMenuItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32, Uint32),
      int Function(Pointer, Pointer, int, int)
    >('HiliteMenuItem');

/// Increases or decreases the width and height of the specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-inflaterect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InflateRect(Pointer<RECT> lprc, int dx, int dy) =>
    _InflateRect(lprc, dx, dy) != FALSE;

final _InflateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Int32, Int32),
      int Function(Pointer<RECT>, int, int)
    >('InflateRect');

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

final _InSendMessage = _user32.lookupFunction<Int32 Function(), int Function()>(
  'InSendMessage',
);

/// Determines whether the current window procedure is processing a message that
/// was sent from another thread (in the same process or a different process).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-insendmessageex>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int InSendMessageEx() => _InSendMessageEx(nullptr);

final _InSendMessageEx = _user32
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'InSendMessageEx',
    );

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
  resolveGetLastError();
  final result_ = _InsertMenu(
    hMenu,
    uPosition,
    uFlags,
    uIDNewItem,
    lpNewItem ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _InsertMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, IntPtr, Pointer<Utf16>),
      int Function(Pointer, int, int, int, Pointer<Utf16>)
    >('InsertMenuW');

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
  resolveGetLastError();
  final result_ = _InsertMenuItem(
    hmenu,
    item,
    fByPosition ? TRUE : FALSE,
    lpmi,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _InsertMenuItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>),
      int Function(Pointer, int, int, Pointer<MENUITEMINFO>)
    >('InsertMenuItemW');

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

final _IntersectRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)
    >('IntersectRect');

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

final _InvalidateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Int32),
      int Function(Pointer, Pointer<RECT>, int)
    >('InvalidateRect');

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

final _InvalidateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('InvalidateRgn');

/// Inverts a rectangle in a window by performing a logical NOT operation on the
/// color values for each pixel in the rectangle's interior.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-invertrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool InvertRect(HDC hDC, Pointer<RECT> lprc) => _InvertRect(hDC, lprc) != FALSE;

final _InvertRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('InvertRect');

/// Determines whether a window is a child window or descendant window of a
/// specified parent window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ischild>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsChild(HWND hWndParent, HWND hWnd) => _IsChild(hWndParent, hWnd) != FALSE;

final _IsChild = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('IsChild');

/// Determines whether the clipboard contains data in the specified format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isclipboardformatavailable>.
///
/// {@category user32}
Win32Result<bool> IsClipboardFormatAvailable(int format) {
  resolveGetLastError();
  final result_ = _IsClipboardFormatAvailable(format);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _IsClipboardFormatAvailable = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'IsClipboardFormatAvailable',
    );

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

final _IsDialogMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MSG>),
      int Function(Pointer, Pointer<MSG>)
    >('IsDialogMessageW');

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

final _IsDlgButtonChecked = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Int32),
      int Function(Pointer, int)
    >('IsDlgButtonChecked');

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

final _IsGUIThread = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>('IsGUIThread');

/// Determines whether the system considers that a specified application is not
/// responding.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ishungappwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsHungAppWindow(HWND hwnd) => _IsHungAppWindow(hwnd) != FALSE;

final _IsHungAppWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsHungAppWindow',
    );

/// Determines whether the specified window is minimized (iconic).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isiconic>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsIconic(HWND hWnd) => _IsIconic(hWnd) != FALSE;

final _IsIconic = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsIconic');

/// Determines whether the process belongs to a Windows Store app.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isimmersiveprocess>.
///
/// {@category user32}
Win32Result<bool> IsImmersiveProcess(HANDLE hProcess) {
  resolveGetLastError();
  final result_ = _IsImmersiveProcess(hProcess);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _IsImmersiveProcess = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsImmersiveProcess',
    );

/// Determines whether a handle is a menu handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismenu>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsMenu(HMENU hMenu) => _IsMenu(hMenu) != FALSE;

final _IsMenu = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsMenu');

/// Indicates whether EnableMouseInPointer is set for the mouse to act as a
/// pointer input device and send WM_POINTER messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ismouseinpointerenabled>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsMouseInPointerEnabled() => _IsMouseInPointerEnabled() != FALSE;

final _IsMouseInPointerEnabled = _user32
    .lookupFunction<Int32 Function(), int Function()>(
      'IsMouseInPointerEnabled',
    );

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

final _IsProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('IsProcessDPIAware');

/// Determines whether the specified rectangle is empty.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-isrectempty>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsRectEmpty(Pointer<RECT> lprc) => _IsRectEmpty(lprc) != FALSE;

final _IsRectEmpty = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'IsRectEmpty',
    );

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

final _IsTouchWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Uint32>),
      int Function(Pointer, Pointer<Uint32>)
    >('IsTouchWindow');

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

final _IsValidDpiAwarenessContext = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsValidDpiAwarenessContext',
    );

/// Determines whether the specified window handle identifies an existing
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindow(HWND? hWnd) => _IsWindow(hWnd ?? nullptr) != FALSE;

final _IsWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsWindow');

/// Determines whether the specified window is enabled for mouse and keyboard
/// input.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowenabled>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowEnabled(HWND hWnd) => _IsWindowEnabled(hWnd) != FALSE;

final _IsWindowEnabled = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsWindowEnabled',
    );

/// Determines whether the specified window is a native Unicode window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowunicode>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowUnicode(HWND hWnd) => _IsWindowUnicode(hWnd) != FALSE;

final _IsWindowUnicode = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsWindowUnicode',
    );

/// Determines the visibility state of the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswindowvisible>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWindowVisible(HWND hWnd) => _IsWindowVisible(hWnd) != FALSE;

final _IsWindowVisible = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'IsWindowVisible',
    );

/// Determines whether the last message read from the current thread's queue
/// originated from a WOW64 process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iswow64message>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsWow64Message() => _IsWow64Message() != FALSE;

final _IsWow64Message = _user32
    .lookupFunction<Int32 Function(), int Function()>('IsWow64Message');

/// Determines whether a window is maximized.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-iszoomed>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool IsZoomed(HWND hWnd) => _IsZoomed(hWnd) != FALSE;

final _IsZoomed = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('IsZoomed');

/// Destroys the specified timer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-killtimer>.
///
/// {@category user32}
Win32Result<bool> KillTimer(HWND? hWnd, int uIDEvent) {
  resolveGetLastError();
  final result_ = _KillTimer(hWnd ?? nullptr, uIDEvent);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _KillTimer = _user32
    .lookupFunction<
      Int32 Function(Pointer, IntPtr),
      int Function(Pointer, int)
    >('KillTimer');

/// Loads the specified accelerator table.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadacceleratorsw>.
///
/// {@category user32}
Win32Result<HACCEL> LoadAccelerators(HINSTANCE? hInstance, PCWSTR lpTableName) {
  resolveGetLastError();
  final result_ = _LoadAccelerators(hInstance ?? nullptr, lpTableName);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadAccelerators = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadAcceleratorsW');

/// Loads the specified cursor resource from the executable (.EXE) file
/// associated with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorw>.
///
/// {@category user32}
Win32Result<HCURSOR> LoadCursor(HINSTANCE? hInstance, PCWSTR lpCursorName) {
  resolveGetLastError();
  final result_ = _LoadCursor(hInstance ?? nullptr, lpCursorName);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadCursor = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadCursorW');

/// Creates a cursor based on data contained in a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadcursorfromfilew>.
///
/// {@category user32}
Win32Result<HCURSOR> LoadCursorFromFile(PCWSTR lpFileName) {
  resolveGetLastError();
  final result_ = _LoadCursorFromFile(lpFileName);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadCursorFromFile = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>)
    >('LoadCursorFromFileW');

/// Loads the specified icon resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadiconw>.
///
/// {@category user32}
Win32Result<HICON> LoadIcon(HINSTANCE? hInstance, PCWSTR lpIconName) {
  resolveGetLastError();
  final result_ = _LoadIcon(hInstance ?? nullptr, lpIconName);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadIcon = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadIconW');

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
  resolveGetLastError();
  final result_ = _LoadImage(hInst ?? nullptr, name, type, cx, cy, fuLoad);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadImage = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Uint32, Int32, Int32, Uint32),
      Pointer Function(Pointer, Pointer<Utf16>, int, int, int, int)
    >('LoadImageW');

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
  resolveGetLastError();
  final result_ = _LoadKeyboardLayout(pwszKLID, flags);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadKeyboardLayout = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32),
      Pointer Function(Pointer<Utf16>, int)
    >('LoadKeyboardLayoutW');

/// Loads the specified menu resource from the executable (.exe) file associated
/// with an application instance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuw>.
///
/// {@category user32}
Win32Result<HMENU> LoadMenu(HINSTANCE? hInstance, PCWSTR lpMenuName) {
  resolveGetLastError();
  final result_ = _LoadMenu(hInstance ?? nullptr, lpMenuName);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadMenu = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('LoadMenuW');

/// Loads the specified menu template in memory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadmenuindirectw>.
///
/// {@category user32}
Win32Result<HMENU> LoadMenuIndirect(Pointer lpMenuTemplate) {
  resolveGetLastError();
  final result_ = _LoadMenuIndirect(lpMenuTemplate);
  return .new(value: .new(result_), error: GetLastError());
}

final _LoadMenuIndirect = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'LoadMenuIndirectW',
    );

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
  resolveGetLastError();
  final result_ = _LoadString(
    hInstance ?? nullptr,
    uID,
    lpBuffer,
    cchBufferMax,
  );
  return .new(value: result_, error: GetLastError());
}

final _LoadString = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Utf16>, Int32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('LoadStringW');

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
  resolveGetLastError();
  final result_ = _LockSetForegroundWindow(uLockCode);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _LockSetForegroundWindow = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'LockSetForegroundWindow',
    );

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

final _LockWindowUpdate = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'LockWindowUpdate',
    );

/// Locks the workstation's display.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-lockworkstation>.
///
/// {@category user32}
Win32Result<bool> LockWorkStation() {
  resolveGetLastError();
  final result_ = _LockWorkStation();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _LockWorkStation = _user32
    .lookupFunction<Int32 Function(), int Function()>('LockWorkStation');

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

final _LogicalToPhysicalPoint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('LogicalToPhysicalPoint');

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

final _LogicalToPhysicalPointForPerMonitorDPI = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('LogicalToPhysicalPointForPerMonitorDPI');

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
  resolveGetLastError();
  final result_ = _LookupIconIdFromDirectory(presbits, fIcon ? TRUE : FALSE);
  return .new(value: result_, error: GetLastError());
}

final _LookupIconIdFromDirectory = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>, Int32),
      int Function(Pointer<Uint8>, int)
    >('LookupIconIdFromDirectory');

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
  resolveGetLastError();
  final result_ = _LookupIconIdFromDirectoryEx(
    presbits,
    fIcon ? TRUE : FALSE,
    cxDesired,
    cyDesired,
    flags,
  );
  return .new(value: result_, error: GetLastError());
}

final _LookupIconIdFromDirectoryEx = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>, Int32, Int32, Int32, Uint32),
      int Function(Pointer<Uint8>, int, int, int, int)
    >('LookupIconIdFromDirectoryEx');

/// Converts the specified dialog box units to screen units (pixels).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-mapdialogrect>.
///
/// {@category user32}
Win32Result<bool> MapDialogRect(HWND hDlg, Pointer<RECT> lpRect) {
  resolveGetLastError();
  final result_ = _MapDialogRect(hDlg, lpRect);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _MapDialogRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('MapDialogRect');

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

final _MapVirtualKey = _user32
    .lookupFunction<Uint32 Function(Uint32, Uint32), int Function(int, int)>(
      'MapVirtualKeyW',
    );

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

final _MapVirtualKeyEx = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Uint32, Pointer),
      int Function(int, int, Pointer)
    >('MapVirtualKeyExW');

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

final _MapWindowPoints = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<POINT>, Uint32),
      int Function(Pointer, Pointer, Pointer<POINT>, int)
    >('MapWindowPoints');

/// Determines which menu item, if any, is at the specified location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-menuitemfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int MenuItemFromPoint(HWND? hWnd, HMENU hMenu, POINT ptScreen) =>
    _MenuItemFromPoint(hWnd ?? nullptr, hMenu, ptScreen);

final _MenuItemFromPoint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, POINT),
      int Function(Pointer, Pointer, POINT)
    >('MenuItemFromPoint');

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
  resolveGetLastError();
  final result_ = _MessageBeep(uType);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _MessageBeep = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>('MessageBeep');

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
  resolveGetLastError();
  final result_ = _MessageBox(
    hWnd ?? nullptr,
    lpText ?? nullptr,
    lpCaption ?? nullptr,
    uType,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _MessageBox = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int)
    >('MessageBoxW');

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
  resolveGetLastError();
  final result_ = _MessageBoxEx(
    hWnd ?? nullptr,
    lpText ?? nullptr,
    lpCaption ?? nullptr,
    uType,
    wLanguageId,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _MessageBoxEx = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Uint32, Uint16),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, int, int)
    >('MessageBoxExW');

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
  resolveGetLastError();
  final result_ = _ModifyMenu(
    hMnu,
    uPosition,
    uFlags,
    uIDNewItem,
    lpNewItem ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ModifyMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, IntPtr, Pointer<Utf16>),
      int Function(Pointer, int, int, int, Pointer<Utf16>)
    >('ModifyMenuW');

/// Retrieves a handle to the display monitor that contains a specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-monitorfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HMONITOR MonitorFromPoint(POINT pt, MONITOR_FROM_FLAGS dwFlags) =>
    HMONITOR(_MonitorFromPoint(pt, dwFlags));

final _MonitorFromPoint = _user32
    .lookupFunction<
      Pointer Function(POINT, Uint32),
      Pointer Function(POINT, int)
    >('MonitorFromPoint');

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

final _MonitorFromRect = _user32
    .lookupFunction<
      Pointer Function(Pointer<RECT>, Uint32),
      Pointer Function(Pointer<RECT>, int)
    >('MonitorFromRect');

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

final _MonitorFromWindow = _user32
    .lookupFunction<
      Pointer Function(Pointer, Uint32),
      Pointer Function(Pointer, int)
    >('MonitorFromWindow');

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
  resolveGetLastError();
  final result_ = _MoveWindow(
    hWnd,
    x,
    y,
    nWidth,
    nHeight,
    bRepaint ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _MoveWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Int32, Int32, Int32),
      int Function(Pointer, int, int, int, int, int)
    >('MoveWindow');

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
  resolveGetLastError();
  final result_ = _MsgWaitForMultipleObjects(
    nCount,
    pHandles ?? nullptr,
    fWaitAll ? TRUE : FALSE,
    dwMilliseconds,
    dwWakeMask,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _MsgWaitForMultipleObjects = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>, Int32, Uint32, Uint32),
      int Function(int, Pointer<Pointer>, int, int, int)
    >('MsgWaitForMultipleObjects');

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
  resolveGetLastError();
  final result_ = _MsgWaitForMultipleObjectsEx(
    nCount,
    pHandles ?? nullptr,
    dwMilliseconds,
    dwWakeMask,
    dwFlags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _MsgWaitForMultipleObjectsEx = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<Pointer>, Uint32, Uint32, Uint32),
      int Function(int, Pointer<Pointer>, int, int, int)
    >('MsgWaitForMultipleObjectsEx');

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

final _NotifyWinEvent = _user32
    .lookupFunction<
      Void Function(Uint32, Pointer, Int32, Int32),
      void Function(int, Pointer, int, int)
    >('NotifyWinEvent');

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

final _OemKeyScan = _user32
    .lookupFunction<Uint32 Function(Uint16), int Function(int)>('OemKeyScan');

/// Moves the specified rectangle by the specified offsets.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-offsetrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool OffsetRect(Pointer<RECT> lprc, int dx, int dy) =>
    _OffsetRect(lprc, dx, dy) != FALSE;

final _OffsetRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Int32, Int32),
      int Function(Pointer<RECT>, int, int)
    >('OffsetRect');

/// Opens the clipboard for examination and prevents other applications from
/// modifying the clipboard content.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openclipboard>.
///
/// {@category user32}
Win32Result<bool> OpenClipboard(HWND? hWndNewOwner) {
  resolveGetLastError();
  final result_ = _OpenClipboard(hWndNewOwner ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _OpenClipboard = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'OpenClipboard',
    );

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
  resolveGetLastError();
  final result_ = _OpenDesktop(
    lpszDesktop,
    dwFlags,
    fInherit ? TRUE : FALSE,
    dwDesiredAccess,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenDesktop = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Uint32, Int32, Uint32),
      Pointer Function(Pointer<Utf16>, int, int, int)
    >('OpenDesktopW');

/// Restores a minimized (iconic) window to its previous size and position; it
/// then activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-openicon>.
///
/// {@category user32}
Win32Result<bool> OpenIcon(HWND hWnd) {
  resolveGetLastError();
  final result_ = _OpenIcon(hWnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _OpenIcon = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>('OpenIcon');

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
  resolveGetLastError();
  final result_ = _OpenInputDesktop(
    dwFlags,
    fInherit ? TRUE : FALSE,
    dwDesiredAccess,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenInputDesktop = _user32
    .lookupFunction<
      Pointer Function(Uint32, Int32, Uint32),
      Pointer Function(int, int, int)
    >('OpenInputDesktop');

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
  resolveGetLastError();
  final result_ = _OpenWindowStation(
    lpszWinSta,
    fInherit ? TRUE : FALSE,
    dwDesiredAccess,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _OpenWindowStation = _user32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Int32, Uint32),
      Pointer Function(Pointer<Utf16>, int, int)
    >('OpenWindowStationW');

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

final _PaintDesktop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'PaintDesktop',
    );

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

final _PeekMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer<MSG>, Pointer, Uint32, Uint32, Uint32),
      int Function(Pointer<MSG>, Pointer, int, int, int)
    >('PeekMessageW');

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

final _PhysicalToLogicalPoint = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('PhysicalToLogicalPoint');

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

final _PhysicalToLogicalPointForPerMonitorDPI = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('PhysicalToLogicalPointForPerMonitorDPI');

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
  resolveGetLastError();
  final result_ = _PostMessage(hWnd ?? nullptr, msg, wParam, lParam);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _PostMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('PostMessageW');

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

final _PostQuitMessage = _user32
    .lookupFunction<Void Function(Int32), void Function(int)>(
      'PostQuitMessage',
    );

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
  resolveGetLastError();
  final result_ = _PostThreadMessage(idThread, msg, wParam, lParam);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _PostThreadMessage = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, IntPtr, IntPtr),
      int Function(int, int, int, int)
    >('PostThreadMessageW');

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

final _PrintWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Uint32),
      int Function(Pointer, Pointer, int)
    >('PrintWindow');

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

final _PrivateExtractIcons = _user32
    .lookupFunction<
      Uint32 Function(
        Pointer<Utf16>,
        Int32,
        Int32,
        Int32,
        Pointer<Pointer>,
        Pointer<Uint32>,
        Uint32,
        Uint32,
      ),
      int Function(
        Pointer<Utf16>,
        int,
        int,
        int,
        Pointer<Pointer>,
        Pointer<Uint32>,
        int,
        int,
      )
    >('PrivateExtractIconsW');

/// Determines whether the specified point lies within the specified rectangle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-ptinrect>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool PtInRect(Pointer<RECT> lprc, POINT pt) => _PtInRect(lprc, pt) != FALSE;

final _PtInRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, POINT),
      int Function(Pointer<RECT>, POINT)
    >('PtInRect');

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

final _RedrawWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>, Pointer, Uint32),
      int Function(Pointer, Pointer<RECT>, Pointer, int)
    >('RedrawWindow');

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassw>.
///
/// {@category user32}
Win32Result<int> RegisterClass(Pointer<WNDCLASS> lpWndClass) {
  resolveGetLastError();
  final result_ = _RegisterClass(lpWndClass);
  return .new(value: result_, error: GetLastError());
}

final _RegisterClass = _user32
    .lookupFunction<
      Uint16 Function(Pointer<WNDCLASS>),
      int Function(Pointer<WNDCLASS>)
    >('RegisterClassW');

/// Registers a window class for subsequent use in calls to the CreateWindow or
/// CreateWindowEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclassexw>.
///
/// {@category user32}
Win32Result<int> RegisterClassEx(Pointer<WNDCLASSEX> param0) {
  resolveGetLastError();
  final result_ = _RegisterClassEx(param0);
  return .new(value: result_, error: GetLastError());
}

final _RegisterClassEx = _user32
    .lookupFunction<
      Uint16 Function(Pointer<WNDCLASSEX>),
      int Function(Pointer<WNDCLASSEX>)
    >('RegisterClassExW');

/// Registers a new clipboard format.
///
/// This format can then be used as a valid clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registerclipboardformatw>.
///
/// {@category user32}
Win32Result<int> RegisterClipboardFormat(PCWSTR lpszFormat) {
  resolveGetLastError();
  final result_ = _RegisterClipboardFormat(lpszFormat);
  return .new(value: result_, error: GetLastError());
}

final _RegisterClipboardFormat = _user32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('RegisterClipboardFormatW');

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
  resolveGetLastError();
  final result_ = _RegisterDeviceNotification(
    hRecipient,
    notificationFilter,
    flags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _RegisterDeviceNotification = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer, Uint32),
      Pointer Function(Pointer, Pointer, int)
    >('RegisterDeviceNotificationW');

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
  resolveGetLastError();
  final result_ = _RegisterHotKey(hWnd ?? nullptr, id, fsModifiers, vk);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RegisterHotKey = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32, Uint32),
      int Function(Pointer, int, int, int)
    >('RegisterHotKey');

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
  resolveGetLastError();
  final result_ = _RegisterPowerSettingNotification(
    hRecipient,
    powerSettingGuid,
    flags,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _RegisterPowerSettingNotification = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Pointer<GUID>, Uint32),
      int Function(Pointer, Pointer<GUID>, int)
    >('RegisterPowerSettingNotification');

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
  resolveGetLastError();
  final result_ = _RegisterRawInputDevices(
    pRawInputDevices,
    uiNumDevices,
    cbSize,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RegisterRawInputDevices = _user32
    .lookupFunction<
      Int32 Function(Pointer<RAWINPUTDEVICE>, Uint32, Uint32),
      int Function(Pointer<RAWINPUTDEVICE>, int, int)
    >('RegisterRawInputDevices');

/// Registers a window to process the WM_TOUCHHITTESTING notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-registertouchhittestingwindow>.
///
/// {@category user32}
Win32Result<bool> RegisterTouchHitTestingWindow(HWND hwnd, int value) {
  resolveGetLastError();
  final result_ = _RegisterTouchHitTestingWindow(hwnd, value);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RegisterTouchHitTestingWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('RegisterTouchHitTestingWindow');

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
  resolveGetLastError();
  final result_ = _RegisterTouchWindow(hwnd, ulFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RegisterTouchWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('RegisterTouchWindow');

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
  resolveGetLastError();
  final result_ = _RegisterWindowMessage(lpString);
  return .new(value: result_, error: GetLastError());
}

final _RegisterWindowMessage = _user32
    .lookupFunction<
      Uint32 Function(Pointer<Utf16>),
      int Function(Pointer<Utf16>)
    >('RegisterWindowMessageW');

/// Releases the mouse capture from a window in the current thread and restores
/// normal mouse input processing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-releasecapture>.
///
/// {@category user32}
Win32Result<bool> ReleaseCapture() {
  resolveGetLastError();
  final result_ = _ReleaseCapture();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ReleaseCapture = _user32
    .lookupFunction<Int32 Function(), int Function()>('ReleaseCapture');

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

final _ReleaseDC = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ReleaseDC');

/// Removes the given window from the system-maintained clipboard format
/// listener list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removeclipboardformatlistener>.
///
/// {@category user32}
Win32Result<bool> RemoveClipboardFormatListener(HWND hwnd) {
  resolveGetLastError();
  final result_ = _RemoveClipboardFormatListener(hwnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RemoveClipboardFormatListener = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'RemoveClipboardFormatListener',
    );

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
  resolveGetLastError();
  final result_ = _RemoveMenu(hMenu, uPosition, uFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _RemoveMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('RemoveMenu');

/// Removes an entry from the property list of the specified window.
///
/// The specified character string identifies the entry to be removed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-removepropw>.
///
/// {@category user32}
Win32Result<HANDLE> RemoveProp(HWND hWnd, PCWSTR lpString) {
  resolveGetLastError();
  final result_ = _RemoveProp(hWnd, lpString);
  return .new(value: .new(result_), error: GetLastError());
}

final _RemoveProp = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>),
      Pointer Function(Pointer, Pointer<Utf16>)
    >('RemovePropW');

/// Replies to a message sent from another thread by the SendMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-replymessage>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ReplyMessage(LRESULT lResult) => _ReplyMessage(lResult) != FALSE;

final _ReplyMessage = _user32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>('ReplyMessage');

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

final _ScreenToClient = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<POINT>),
      int Function(Pointer, Pointer<POINT>)
    >('ScreenToClient');

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
  resolveGetLastError();
  final result_ = _ScrollDC(
    hDC,
    dx,
    dy,
    lprcScroll ?? nullptr,
    lprcClip ?? nullptr,
    hrgnUpdate ?? nullptr,
    lprcUpdate ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ScrollDC = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
      )
    >('ScrollDC');

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
  resolveGetLastError();
  final result_ = _ScrollWindow(
    hWnd,
    xAmount,
    yAmount,
    lpRect ?? nullptr,
    lpClipRect ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ScrollWindow = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer, int, int, Pointer<RECT>, Pointer<RECT>)
    >('ScrollWindow');

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
  resolveGetLastError();
  final result_ = _ScrollWindowEx(
    hWnd,
    dx,
    dy,
    prcScroll ?? nullptr,
    prcClip ?? nullptr,
    hrgnUpdate ?? nullptr,
    prcUpdate ?? nullptr,
    flags,
  );
  return .new(value: result_, error: GetLastError());
}

final _ScrollWindowEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
        Uint32,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<RECT>,
        Pointer<RECT>,
        Pointer,
        Pointer<RECT>,
        int,
      )
    >('ScrollWindowEx');

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

final _SendDlgItemMessage = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int, int)
    >('SendDlgItemMessageW');

/// Synthesizes keystrokes, mouse motions, and button clicks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-sendinput>.
///
/// {@category user32}
Win32Result<int> SendInput(int cInputs, Pointer<INPUT> pInputs, int cbSize) {
  resolveGetLastError();
  final result_ = _SendInput(cInputs, pInputs, cbSize);
  return .new(value: result_, error: GetLastError());
}

final _SendInput = _user32
    .lookupFunction<
      Uint32 Function(Uint32, Pointer<INPUT>, Int32),
      int Function(int, Pointer<INPUT>, int)
    >('SendInput');

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
  resolveGetLastError();
  final result_ = _SendMessage(hWnd, msg, wParam ?? NULL, lParam ?? NULL);
  return .new(value: .new(result_), error: GetLastError());
}

final _SendMessage = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('SendMessageW');

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
  resolveGetLastError();
  final result_ = _SendMessageCallback(
    hWnd,
    msg,
    wParam,
    lParam,
    lpResultCallBack,
    dwData,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SendMessageCallback = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        IntPtr,
        IntPtr,
        Pointer<NativeFunction<SENDASYNCPROC>>,
        IntPtr,
      ),
      int Function(
        Pointer,
        int,
        int,
        int,
        Pointer<NativeFunction<SENDASYNCPROC>>,
        int,
      )
    >('SendMessageCallbackW');

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
  resolveGetLastError();
  final result_ = _SendMessageTimeout(
    hWnd,
    msg,
    wParam,
    lParam,
    fuFlags,
    uTimeout,
    lpdwResult ?? nullptr,
  );
  return .new(value: .new(result_), error: GetLastError());
}

final _SendMessageTimeout = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        Uint32,
        IntPtr,
        IntPtr,
        Uint32,
        Uint32,
        Pointer<IntPtr>,
      ),
      int Function(Pointer, int, int, int, int, int, Pointer<IntPtr>)
    >('SendMessageTimeoutW');

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
  resolveGetLastError();
  final result_ = _SendNotifyMessage(hWnd, msg, wParam, lParam);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SendNotifyMessage = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, IntPtr, IntPtr),
      int Function(Pointer, int, int, int)
    >('SendNotifyMessageW');

/// Activates a window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setactivewindow>.
///
/// {@category user32}
Win32Result<HWND> SetActiveWindow(HWND hWnd) {
  resolveGetLastError();
  final result_ = _SetActiveWindow(hWnd);
  return .new(value: .new(result_), error: GetLastError());
}

final _SetActiveWindow = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetActiveWindow',
    );

/// Sets the mouse capture to the specified window belonging to the current
/// thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcapture>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND SetCapture(HWND hWnd) => HWND(_SetCapture(hWnd));

final _SetCapture = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetCapture',
    );

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
  resolveGetLastError();
  final result_ = _SetCaretBlinkTime(uMSeconds);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCaretBlinkTime = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SetCaretBlinkTime',
    );

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
  resolveGetLastError();
  final result_ = _SetCaretPos(x, y);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCaretPos = _user32
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SetCaretPos',
    );

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
  resolveGetLastError();
  final result_ = _SetClassLongPtr(hWnd, nIndex, dwNewLong);
  return .new(value: result_, error: GetLastError());
}

final _SetClassLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, IntPtr),
      int Function(Pointer, int, int)
    >('SetClassLongPtrW');

/// Places data on the clipboard in a specified clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setclipboarddata>.
///
/// {@category user32}
Win32Result<HANDLE> SetClipboardData(int uFormat, HANDLE? hMem) {
  resolveGetLastError();
  final result_ = _SetClipboardData(uFormat, hMem ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _SetClipboardData = _user32
    .lookupFunction<
      Pointer Function(Uint32, Pointer),
      Pointer Function(int, Pointer)
    >('SetClipboardData');

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
  resolveGetLastError();
  final result_ = _SetClipboardViewer(hWndNewViewer);
  return .new(value: .new(result_), error: GetLastError());
}

final _SetClipboardViewer = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetClipboardViewer',
    );

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
  resolveGetLastError();
  final result_ = _SetCoalescableTimer(
    hWnd ?? nullptr,
    nIDEvent,
    uElapse,
    lpTimerFunc ?? nullptr,
    uToleranceDelay,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetCoalescableTimer = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        IntPtr,
        Uint32,
        Pointer<NativeFunction<TIMERPROC>>,
        Uint32,
      ),
      int Function(Pointer, int, int, Pointer<NativeFunction<TIMERPROC>>, int)
    >('SetCoalescableTimer');

/// Sets the cursor shape.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HCURSOR SetCursor(HCURSOR? hCursor) => HCURSOR(_SetCursor(hCursor ?? nullptr));

final _SetCursor = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetCursor',
    );

/// Moves the cursor to the specified screen coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setcursorpos>.
///
/// {@category user32}
Win32Result<bool> SetCursorPos(int x, int y) {
  resolveGetLastError();
  final result_ = _SetCursorPos(x, y);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetCursorPos = _user32
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SetCursorPos',
    );

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
  resolveGetLastError();
  final result_ = _SetDialogControlDpiChangeBehavior(hWnd, mask, values);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDialogControlDpiChangeBehavior = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('SetDialogControlDpiChangeBehavior');

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
  resolveGetLastError();
  final result_ = _SetDialogDpiChangeBehavior(hDlg, mask, values);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDialogDpiChangeBehavior = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Int32),
      int Function(Pointer, int, int)
    >('SetDialogDpiChangeBehavior');

/// Sets the screen auto-rotation preferences for the current process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdisplayautorotationpreferences>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetDisplayAutoRotationPreferences(ORIENTATION_PREFERENCE orientation) =>
    _SetDisplayAutoRotationPreferences(orientation) != FALSE;

final _SetDisplayAutoRotationPreferences = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SetDisplayAutoRotationPreferences',
    );

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

final _SetDisplayConfig = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Pointer<DISPLAYCONFIG_PATH_INFO>,
        Uint32,
        Pointer<DISPLAYCONFIG_MODE_INFO>,
        Uint32,
      ),
      int Function(
        int,
        Pointer<DISPLAYCONFIG_PATH_INFO>,
        int,
        Pointer<DISPLAYCONFIG_MODE_INFO>,
        int,
      )
    >('SetDisplayConfig');

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
  resolveGetLastError();
  final result_ = _SetDlgItemInt(
    hDlg,
    nIDDlgItem,
    uValue,
    bSigned ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDlgItemInt = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Uint32, Int32),
      int Function(Pointer, int, int, int)
    >('SetDlgItemInt');

/// Sets the title or text of a control in a dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdlgitemtextw>.
///
/// {@category user32}
Win32Result<bool> SetDlgItemText(HWND hDlg, int nIDDlgItem, PCWSTR lpString) {
  resolveGetLastError();
  final result_ = _SetDlgItemText(hDlg, nIDDlgItem, lpString);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDlgItemText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<Utf16>),
      int Function(Pointer, int, Pointer<Utf16>)
    >('SetDlgItemTextW');

/// Sets the double-click time for the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setdoubleclicktime>.
///
/// {@category user32}
Win32Result<bool> SetDoubleClickTime(int param0) {
  resolveGetLastError();
  final result_ = _SetDoubleClickTime(param0);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetDoubleClickTime = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SetDoubleClickTime',
    );

/// Sets the keyboard focus to the specified window.
///
/// The window must be attached to the calling thread's message queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setfocus>.
///
/// {@category user32}
Win32Result<HWND> SetFocus(HWND? hWnd) {
  resolveGetLastError();
  final result_ = _SetFocus(hWnd ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _SetFocus = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetFocus',
    );

/// Brings the thread that created the specified window into the foreground and
/// activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setforegroundwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetForegroundWindow(HWND hWnd) => _SetForegroundWindow(hWnd) != FALSE;

final _SetForegroundWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetForegroundWindow',
    );

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
  resolveGetLastError();
  final result_ = _SetGestureConfig(hwnd, NULL, cIDs, pGestureConfig, cbSize);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetGestureConfig = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<GESTURECONFIG>, Uint32),
      int Function(Pointer, int, int, Pointer<GESTURECONFIG>, int)
    >('SetGestureConfig');

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
  resolveGetLastError();
  final result_ = _SetKeyboardState(lpKeyState);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetKeyboardState = _user32
    .lookupFunction<
      Int32 Function(Pointer<Uint8>),
      int Function(Pointer<Uint8>)
    >('SetKeyboardState');

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
  resolveGetLastError();
  final result_ = _SetLayeredWindowAttributes(hwnd, crKey, bAlpha, dwFlags);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetLayeredWindowAttributes = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint8, Uint32),
      int Function(Pointer, int, int, int)
    >('SetLayeredWindowAttributes');

/// Assigns a new menu to the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenu>.
///
/// {@category user32}
Win32Result<bool> SetMenu(HWND hWnd, HMENU? hMenu) {
  resolveGetLastError();
  final result_ = _SetMenu(hWnd, hMenu ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetMenu = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('SetMenu');

/// Sets the default menu item for the specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenudefaultitem>.
///
/// {@category user32}
Win32Result<bool> SetMenuDefaultItem(HMENU hMenu, int uItem, int fByPos) {
  resolveGetLastError();
  final result_ = _SetMenuDefaultItem(hMenu, uItem, fByPos);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetMenuDefaultItem = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32),
      int Function(Pointer, int, int)
    >('SetMenuDefaultItem');

/// Sets information for a specified menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmenuinfo>.
///
/// {@category user32}
Win32Result<bool> SetMenuInfo(HMENU param0, Pointer<MENUINFO> param1) {
  resolveGetLastError();
  final result_ = _SetMenuInfo(param0, param1);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetMenuInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MENUINFO>),
      int Function(Pointer, Pointer<MENUINFO>)
    >('SetMenuInfo');

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
  resolveGetLastError();
  final result_ = _SetMenuItemBitmaps(
    hMenu,
    uPosition,
    uFlags,
    hBitmapUnchecked ?? nullptr,
    hBitmapChecked ?? nullptr,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetMenuItemBitmaps = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer, Pointer),
      int Function(Pointer, int, int, Pointer, Pointer)
    >('SetMenuItemBitmaps');

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
  resolveGetLastError();
  final result_ = _SetMenuItemInfo(
    hmenu,
    item,
    fByPositon ? TRUE : FALSE,
    lpmii,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetMenuItemInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Int32, Pointer<MENUITEMINFO>),
      int Function(Pointer, int, int, Pointer<MENUITEMINFO>)
    >('SetMenuItemInfoW');

/// Sets the extra message information for the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setmessageextrainfo>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
LPARAM SetMessageExtraInfo(LPARAM lParam) =>
    LPARAM(_SetMessageExtraInfo(lParam));

final _SetMessageExtraInfo = _user32
    .lookupFunction<IntPtr Function(IntPtr), int Function(int)>(
      'SetMessageExtraInfo',
    );

/// Changes the parent window of the specified child window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setparent>.
///
/// {@category user32}
Win32Result<HWND> SetParent(HWND hWndChild, HWND? hWndNewParent) {
  resolveGetLastError();
  final result_ = _SetParent(hWndChild, hWndNewParent ?? nullptr);
  return .new(value: .new(result_), error: GetLastError());
}

final _SetParent = _user32
    .lookupFunction<
      Pointer Function(Pointer, Pointer),
      Pointer Function(Pointer, Pointer)
    >('SetParent');

/// Sets the position of the cursor in physical coordinates.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setphysicalcursorpos>.
///
/// {@category user32}
Win32Result<bool> SetPhysicalCursorPos(int x, int y) {
  resolveGetLastError();
  final result_ = _SetPhysicalCursorPos(x, y);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetPhysicalCursorPos = _user32
    .lookupFunction<Int32 Function(Int32, Int32), int Function(int, int)>(
      'SetPhysicalCursorPos',
    );

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

final _SetProcessDPIAware = _user32
    .lookupFunction<Int32 Function(), int Function()>('SetProcessDPIAware');

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
  resolveGetLastError();
  final result_ = _SetProcessDpiAwarenessContext(value);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetProcessDpiAwarenessContext = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SetProcessDpiAwarenessContext',
    );

/// Adds a new entry or changes an existing entry in the property list of the
/// specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setpropw>.
///
/// {@category user32}
Win32Result<bool> SetProp(HWND hWnd, PCWSTR lpString, HANDLE? hData) {
  resolveGetLastError();
  final result_ = _SetProp(hWnd, lpString, hData ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetProp = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<Utf16>, Pointer)
    >('SetPropW');

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

final _SetRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Int32, Int32, Int32, Int32),
      int Function(Pointer<RECT>, int, int, int, int)
    >('SetRect');

/// Creates an empty rectangle in which all coordinates are set to zero.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setrectempty>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SetRectEmpty(Pointer<RECT> lprc) => _SetRectEmpty(lprc) != FALSE;

final _SetRectEmpty = _user32
    .lookupFunction<Int32 Function(Pointer<RECT>), int Function(Pointer<RECT>)>(
      'SetRectEmpty',
    );

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

final _SetScrollInfo = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer<SCROLLINFO>, Int32),
      int Function(Pointer, int, Pointer<SCROLLINFO>, int)
    >('SetScrollInfo');

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
  resolveGetLastError();
  final result_ = _SetSysColors(cElements, lpaElements, lpaRgbValues);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetSysColors = _user32
    .lookupFunction<
      Int32 Function(Int32, Pointer<Int32>, Pointer<Uint32>),
      int Function(int, Pointer<Int32>, Pointer<Uint32>)
    >('SetSysColors');

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
  resolveGetLastError();
  final result_ = _SetSystemCursor(hcur, id);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetSystemCursor = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetSystemCursor');

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

final _SetThreadDpiAwarenessContext = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'SetThreadDpiAwarenessContext',
    );

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
    .new(_SetThreadDpiHostingBehavior(value));

final _SetThreadDpiHostingBehavior = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SetThreadDpiHostingBehavior',
    );

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
  resolveGetLastError();
  final result_ = _SetTimer(
    hWnd ?? nullptr,
    nIDEvent,
    uElapse,
    lpTimerFunc ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _SetTimer = _user32
    .lookupFunction<
      IntPtr Function(
        Pointer,
        IntPtr,
        Uint32,
        Pointer<NativeFunction<TIMERPROC>>,
      ),
      int Function(Pointer, int, int, Pointer<NativeFunction<TIMERPROC>>)
    >('SetTimer');

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
  resolveGetLastError();
  final result_ = _SetUserObjectInformation(hObj, nIndex, pvInfo, nLength);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetUserObjectInformation = _user32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32),
      int Function(Pointer, int, Pointer, int)
    >('SetUserObjectInformationW');

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
  resolveGetLastError();
  final result_ = _SetWindowDisplayAffinity(hWnd, dwAffinity);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetWindowDisplayAffinity = _user32
    .lookupFunction<
      Int32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('SetWindowDisplayAffinity');

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
  resolveGetLastError();
  final result_ = _SetWindowLongPtr(hWnd, nIndex, dwNewLong);
  return .new(value: result_, error: GetLastError());
}

final _SetWindowLongPtr = _user32
    .lookupFunction<
      IntPtr Function(Pointer, Int32, IntPtr),
      int Function(Pointer, int, int)
    >('SetWindowLongPtrW');

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
  resolveGetLastError();
  final result_ = _SetWindowPlacement(hWnd, lpwndpl);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetWindowPlacement = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<WINDOWPLACEMENT>),
      int Function(Pointer, Pointer<WINDOWPLACEMENT>)
    >('SetWindowPlacement');

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
  resolveGetLastError();
  final result_ = _SetWindowPos(
    hWnd,
    hWndInsertAfter ?? nullptr,
    x,
    y,
    cx,
    cy,
    uFlags,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetWindowPos = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32, Int32, Int32, Int32, Uint32),
      int Function(Pointer, Pointer, int, int, int, int, int)
    >('SetWindowPos');

/// Sets the window region of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-setwindowrgn>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int SetWindowRgn(HWND hWnd, HRGN? hRgn, bool bRedraw) =>
    _SetWindowRgn(hWnd, hRgn ?? nullptr, bRedraw ? TRUE : FALSE);

final _SetWindowRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('SetWindowRgn');

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
  resolveGetLastError();
  final result_ = _SetWindowsHookEx(idHook, lpfn, hmod ?? nullptr, dwThreadId);
  return .new(value: .new(result_), error: GetLastError());
}

final _SetWindowsHookEx = _user32
    .lookupFunction<
      Pointer Function(
        Int32,
        Pointer<NativeFunction<HOOKPROC>>,
        Pointer,
        Uint32,
      ),
      Pointer Function(int, Pointer<NativeFunction<HOOKPROC>>, Pointer, int)
    >('SetWindowsHookExW');

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
  resolveGetLastError();
  final result_ = _SetWindowText(hWnd, lpString ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SetWindowText = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>),
      int Function(Pointer, Pointer<Utf16>)
    >('SetWindowTextW');

/// Makes the caret visible on the screen at the caret's current position.
///
/// When the caret becomes visible, it begins flashing automatically.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcaret>.
///
/// {@category user32}
Win32Result<bool> ShowCaret(HWND? hWnd) {
  resolveGetLastError();
  final result_ = _ShowCaret(hWnd ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ShowCaret = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'ShowCaret',
    );

/// Displays or hides the cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showcursor>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int ShowCursor(bool bShow) => _ShowCursor(bShow ? TRUE : FALSE);

final _ShowCursor = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>('ShowCursor');

/// Shows or hides all pop-up windows owned by the specified window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showownedpopups>.
///
/// {@category user32}
Win32Result<bool> ShowOwnedPopups(HWND hWnd, bool fShow) {
  resolveGetLastError();
  final result_ = _ShowOwnedPopups(hWnd, fShow ? TRUE : FALSE);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ShowOwnedPopups = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'ShowOwnedPopups',
    );

/// Sets the specified window's show state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-showwindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool ShowWindow(HWND hWnd, SHOW_WINDOW_CMD nCmdShow) =>
    _ShowWindow(hWnd, nCmdShow) != FALSE;

final _ShowWindow = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'ShowWindow',
    );

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

final _ShowWindowAsync = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'ShowWindowAsync',
    );

/// Determines which pointer input frame generated the most recently retrieved
/// message for the specified pointer and discards any queued (unretrieved)
/// pointer input messages generated from the same pointer input frame.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-skippointerframemessages>.
///
/// {@category user32}
Win32Result<bool> SkipPointerFrameMessages(int pointerId) {
  resolveGetLastError();
  final result_ = _SkipPointerFrameMessages(pointerId);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SkipPointerFrameMessages = _user32
    .lookupFunction<Int32 Function(Uint32), int Function(int)>(
      'SkipPointerFrameMessages',
    );

/// Triggers a visual signal to indicate that a sound is playing.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-soundsentry>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SoundSentry() => _SoundSentry() != FALSE;

final _SoundSentry = _user32.lookupFunction<Int32 Function(), int Function()>(
  'SoundSentry',
);

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

final _SubtractRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)
    >('SubtractRect');

/// Reverses or restores the meaning of the left and right mouse buttons.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-swapmousebutton>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool SwapMouseButton(bool fSwap) =>
    _SwapMouseButton(fSwap ? TRUE : FALSE) != FALSE;

final _SwapMouseButton = _user32
    .lookupFunction<Int32 Function(Int32), int Function(int)>(
      'SwapMouseButton',
    );

/// Makes the specified desktop visible and activates it.
///
/// This enables the desktop to receive input from the user.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchdesktop>.
///
/// {@category user32}
Win32Result<bool> SwitchDesktop(HDESK hDesktop) {
  resolveGetLastError();
  final result_ = _SwitchDesktop(hDesktop);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SwitchDesktop = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'SwitchDesktop',
    );

/// Switches focus to the specified window and brings it to the foreground.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-switchtothiswindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
void SwitchToThisWindow(HWND hwnd, bool fUnknown) =>
    _SwitchToThisWindow(hwnd, fUnknown ? TRUE : FALSE);

final _SwitchToThisWindow = _user32
    .lookupFunction<Void Function(Pointer, Int32), void Function(Pointer, int)>(
      'SwitchToThisWindow',
    );

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
  resolveGetLastError();
  final result_ = _SystemParametersInfo(
    uiAction,
    uiParam,
    pvParam ?? nullptr,
    fWinIni,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SystemParametersInfo = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer, Uint32),
      int Function(int, int, Pointer, int)
    >('SystemParametersInfoW');

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
  resolveGetLastError();
  final result_ = _SystemParametersInfoForDpi(
    uiAction,
    uiParam,
    pvParam ?? nullptr,
    fWinIni,
    dpi,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _SystemParametersInfoForDpi = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer, Uint32, Uint32),
      int Function(int, int, Pointer, int, int)
    >('SystemParametersInfoForDpi');

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

final _TabbedTextOut = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Int32,
        Int32,
        Pointer<Utf16>,
        Int32,
        Int32,
        Pointer<Int32>,
        Int32,
      ),
      int Function(
        Pointer,
        int,
        int,
        Pointer<Utf16>,
        int,
        int,
        Pointer<Int32>,
        int,
      )
    >('TabbedTextOutW');

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
  resolveGetLastError();
  final result_ = _TileWindows(
    hwndParent ?? nullptr,
    wHow,
    lpRect ?? nullptr,
    cKids,
    lpKids ?? nullptr,
  );
  return .new(value: result_, error: GetLastError());
}

final _TileWindows = _user32
    .lookupFunction<
      Uint16 Function(Pointer, Uint32, Pointer<RECT>, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<RECT>, int, Pointer<Pointer>)
    >('TileWindows');

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

final _ToAscii = _user32
    .lookupFunction<
      Int32 Function(Uint32, Uint32, Pointer<Uint8>, Pointer<Uint16>, Uint32),
      int Function(int, int, Pointer<Uint8>, Pointer<Uint16>, int)
    >('ToAscii');

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

final _ToAsciiEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer<Uint16>,
        Uint32,
        Pointer,
      ),
      int Function(int, int, Pointer<Uint8>, Pointer<Uint16>, int, Pointer)
    >('ToAsciiEx');

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

final _ToUnicode = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer<Utf16>,
        Int32,
        Uint32,
      ),
      int Function(int, int, Pointer<Uint8>, Pointer<Utf16>, int, int)
    >('ToUnicode');

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

final _ToUnicodeEx = _user32
    .lookupFunction<
      Int32 Function(
        Uint32,
        Uint32,
        Pointer<Uint8>,
        Pointer<Utf16>,
        Int32,
        Uint32,
        Pointer,
      ),
      int Function(int, int, Pointer<Uint8>, Pointer<Utf16>, int, int, Pointer)
    >('ToUnicodeEx');

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
  resolveGetLastError();
  final result_ = _TrackPopupMenu(
    hMenu,
    uFlags,
    x,
    y,
    NULL,
    hWnd,
    prcRect ?? nullptr,
  );
  return Win32Result(value: result_ != FALSE, error: GetLastError());
}

final _TrackPopupMenu = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Int32,
        Int32,
        Int32,
        Pointer,
        Pointer<RECT>,
      ),
      int Function(Pointer, int, int, int, int, Pointer, Pointer<RECT>)
    >('TrackPopupMenu');

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
  resolveGetLastError();
  final result_ = _TrackPopupMenuEx(
    hMenu,
    uFlags,
    x,
    y,
    hwnd,
    lptpm ?? nullptr,
  );
  return Win32Result(value: result_ != FALSE, error: GetLastError());
}

final _TrackPopupMenuEx = _user32
    .lookupFunction<
      Int32 Function(
        Pointer,
        Uint32,
        Int32,
        Int32,
        Pointer,
        Pointer<TPMPARAMS>,
      ),
      int Function(Pointer, int, int, int, Pointer, Pointer<TPMPARAMS>)
    >('TrackPopupMenuEx');

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
  resolveGetLastError();
  final result_ = _TranslateAccelerator(hWnd, hAccTable, lpMsg);
  return .new(value: result_, error: GetLastError());
}

final _TranslateAccelerator = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<MSG>),
      int Function(Pointer, Pointer, Pointer<MSG>)
    >('TranslateAcceleratorW');

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

final _TranslateMDISysAccel = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<MSG>),
      int Function(Pointer, Pointer<MSG>)
    >('TranslateMDISysAccel');

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

final _TranslateMessage = _user32
    .lookupFunction<Int32 Function(Pointer<MSG>), int Function(Pointer<MSG>)>(
      'TranslateMessage',
    );

/// Removes a hook procedure installed in a hook chain by the SetWindowsHookEx
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unhookwindowshookex>.
///
/// {@category user32}
Win32Result<bool> UnhookWindowsHookEx(HHOOK hhk) {
  resolveGetLastError();
  final result_ = _UnhookWindowsHookEx(hhk);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnhookWindowsHookEx = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnhookWindowsHookEx',
    );

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

final _UnionRect = _user32
    .lookupFunction<
      Int32 Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>),
      int Function(Pointer<RECT>, Pointer<RECT>, Pointer<RECT>)
    >('UnionRect');

/// Unloads an input locale identifier (formerly called a keyboard layout).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unloadkeyboardlayout>.
///
/// {@category user32}
Win32Result<bool> UnloadKeyboardLayout(HKL hkl) {
  resolveGetLastError();
  final result_ = _UnloadKeyboardLayout(hkl);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnloadKeyboardLayout = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnloadKeyboardLayout',
    );

/// Unregisters a window class, freeing the memory required for the class.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterclassw>.
///
/// {@category user32}
Win32Result<bool> UnregisterClass(PCWSTR lpClassName, HINSTANCE? hInstance) {
  resolveGetLastError();
  final result_ = _UnregisterClass(lpClassName, hInstance ?? nullptr);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnregisterClass = _user32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer),
      int Function(Pointer<Utf16>, Pointer)
    >('UnregisterClassW');

/// Closes the specified device notification handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterdevicenotification>.
///
/// {@category user32}
Win32Result<bool> UnregisterDeviceNotification(HDEVNOTIFY handle) {
  resolveGetLastError();
  final result_ = _UnregisterDeviceNotification(handle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnregisterDeviceNotification = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnregisterDeviceNotification',
    );

/// Frees a hot key previously registered by the calling thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterhotkey>.
///
/// {@category user32}
Win32Result<bool> UnregisterHotKey(HWND? hWnd, int id) {
  resolveGetLastError();
  final result_ = _UnregisterHotKey(hWnd ?? nullptr, id);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnregisterHotKey = _user32
    .lookupFunction<Int32 Function(Pointer, Int32), int Function(Pointer, int)>(
      'UnregisterHotKey',
    );

/// Unregisters the power setting notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregisterpowersettingnotification>.
///
/// {@category user32}
Win32Result<bool> UnregisterPowerSettingNotification(HPOWERNOTIFY handle) {
  resolveGetLastError();
  final result_ = _UnregisterPowerSettingNotification(handle);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnregisterPowerSettingNotification = _user32
    .lookupFunction<Int32 Function(IntPtr), int Function(int)>(
      'UnregisterPowerSettingNotification',
    );

/// Registers a window as no longer being touch-capable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-unregistertouchwindow>.
///
/// {@category user32}
Win32Result<bool> UnregisterTouchWindow(HWND hwnd) {
  resolveGetLastError();
  final result_ = _UnregisterTouchWindow(hwnd);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UnregisterTouchWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UnregisterTouchWindow',
    );

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

final _UpdateLayeredWindowIndirect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<UPDATELAYEREDWINDOWINFO>),
      int Function(Pointer, Pointer<UPDATELAYEREDWINDOWINFO>)
    >('UpdateLayeredWindowIndirect');

/// Updates the client area of the specified window by sending a WM_PAINT
/// message to the window if the window's update region is not empty.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-updatewindow>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
bool UpdateWindow(HWND hWnd) => _UpdateWindow(hWnd) != FALSE;

final _UpdateWindow = _user32
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'UpdateWindow',
    );

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
  resolveGetLastError();
  final result_ = _UserHandleGrantAccess(
    hUserHandle,
    hJob,
    bGrant ? TRUE : FALSE,
  );
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _UserHandleGrantAccess = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Int32),
      int Function(Pointer, Pointer, int)
    >('UserHandleGrantAccess');

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

final _ValidateRect = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<RECT>),
      int Function(Pointer, Pointer<RECT>)
    >('ValidateRect');

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

final _ValidateRgn = _user32
    .lookupFunction<
      Int32 Function(Pointer, Pointer),
      int Function(Pointer, Pointer)
    >('ValidateRgn');

/// Translates a character to the corresponding virtual-key code and shift state
/// for the current keyboard.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-vkkeyscanw>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
int VkKeyScan(int ch) => _VkKeyScan(ch);

final _VkKeyScan = _user32
    .lookupFunction<Int16 Function(Uint16), int Function(int)>('VkKeyScanW');

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

final _VkKeyScanEx = _user32
    .lookupFunction<
      Int16 Function(Uint16, Pointer),
      int Function(int, Pointer)
    >('VkKeyScanExW');

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

final _WaitForInputIdle = _user32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32),
      int Function(Pointer, int)
    >('WaitForInputIdle');

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
  resolveGetLastError();
  final result_ = _WaitMessage();
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _WaitMessage = _user32.lookupFunction<Int32 Function(), int Function()>(
  'WaitMessage',
);

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

final _WindowFromDC = _user32
    .lookupFunction<Pointer Function(Pointer), Pointer Function(Pointer)>(
      'WindowFromDC',
    );

/// Retrieves a handle to the window that contains the specified physical point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfromphysicalpoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND WindowFromPhysicalPoint(POINT point) =>
    HWND(_WindowFromPhysicalPoint(point));

final _WindowFromPhysicalPoint = _user32
    .lookupFunction<Pointer Function(POINT), Pointer Function(POINT)>(
      'WindowFromPhysicalPoint',
    );

/// Retrieves a handle to the window that contains the specified point.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-windowfrompoint>.
///
/// {@category user32}
@pragma('vm:prefer-inline')
HWND WindowFromPoint(POINT point) => HWND(_WindowFromPoint(point));

final _WindowFromPoint = _user32
    .lookupFunction<Pointer Function(POINT), Pointer Function(POINT)>(
      'WindowFromPoint',
    );
