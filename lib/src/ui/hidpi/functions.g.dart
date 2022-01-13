// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/hidpi/structs.g.dart';
import '../../graphics/gdi/structs.g.dart'; // -----------------------------------------------------------------------

// uxtheme.dll
// -----------------------------------------------------------------------
final _uxtheme = DynamicLibrary.open('uxtheme.dll');

int OpenThemeDataForDpi(
  int hwnd,
  Pointer<Utf16> pszClassList,
  int dpi,
) =>
    _OpenThemeDataForDpi(
      hwnd,
      pszClassList,
      dpi,
    );

late final _OpenThemeDataForDpi = _uxtheme.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Pointer<Utf16> pszClassList,
  Uint32 dpi,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszClassList,
  int dpi,
)>('OpenThemeDataForDpi');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int AdjustWindowRectExForDpi(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
  int dpi,
) =>
    _AdjustWindowRectExForDpi(
      lpRect,
      dwStyle,
      bMenu,
      dwExStyle,
      dpi,
    );

late final _AdjustWindowRectExForDpi = _user32.lookupFunction<
    Int32 Function(
  Pointer<RECT> lpRect,
  Uint32 dwStyle,
  Int32 bMenu,
  Uint32 dwExStyle,
  Uint32 dpi,
),
    int Function(
  Pointer<RECT> lpRect,
  int dwStyle,
  int bMenu,
  int dwExStyle,
  int dpi,
)>('AdjustWindowRectExForDpi');

int AreDpiAwarenessContextsEqual(
  int dpiContextA,
  int dpiContextB,
) =>
    _AreDpiAwarenessContextsEqual(
      dpiContextA,
      dpiContextB,
    );

late final _AreDpiAwarenessContextsEqual = _user32.lookupFunction<
    Int32 Function(
  IntPtr dpiContextA,
  IntPtr dpiContextB,
),
    int Function(
  int dpiContextA,
  int dpiContextB,
)>('AreDpiAwarenessContextsEqual');

int EnableNonClientDpiScaling(
  int hwnd,
) =>
    _EnableNonClientDpiScaling(
      hwnd,
    );

late final _EnableNonClientDpiScaling = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('EnableNonClientDpiScaling');

int GetAwarenessFromDpiAwarenessContext(
  int value,
) =>
    _GetAwarenessFromDpiAwarenessContext(
      value,
    );

late final _GetAwarenessFromDpiAwarenessContext = _user32.lookupFunction<
    Int32 Function(
  IntPtr value,
),
    int Function(
  int value,
)>('GetAwarenessFromDpiAwarenessContext');

int GetDialogControlDpiChangeBehavior(
  int hWnd,
) =>
    _GetDialogControlDpiChangeBehavior(
      hWnd,
    );

late final _GetDialogControlDpiChangeBehavior = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
),
    int Function(
  int hWnd,
)>('GetDialogControlDpiChangeBehavior');

int GetDialogDpiChangeBehavior(
  int hDlg,
) =>
    _GetDialogDpiChangeBehavior(
      hDlg,
    );

late final _GetDialogDpiChangeBehavior = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hDlg,
),
    int Function(
  int hDlg,
)>('GetDialogDpiChangeBehavior');

int GetDpiAwarenessContextForProcess(
  int hProcess,
) =>
    _GetDpiAwarenessContextForProcess(
      hProcess,
    );

late final _GetDpiAwarenessContextForProcess = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('GetDpiAwarenessContextForProcess');

int GetDpiForSystem() => _GetDpiForSystem();

late final _GetDpiForSystem = _user32
    .lookupFunction<Uint32 Function(), int Function()>('GetDpiForSystem');

int GetDpiForWindow(
  int hwnd,
) =>
    _GetDpiForWindow(
      hwnd,
    );

late final _GetDpiForWindow = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('GetDpiForWindow');

int GetDpiFromDpiAwarenessContext(
  int value,
) =>
    _GetDpiFromDpiAwarenessContext(
      value,
    );

late final _GetDpiFromDpiAwarenessContext = _user32.lookupFunction<
    Uint32 Function(
  IntPtr value,
),
    int Function(
  int value,
)>('GetDpiFromDpiAwarenessContext');

int GetSystemDpiForProcess(
  int hProcess,
) =>
    _GetSystemDpiForProcess(
      hProcess,
    );

late final _GetSystemDpiForProcess = _user32.lookupFunction<
    Uint32 Function(
  IntPtr hProcess,
),
    int Function(
  int hProcess,
)>('GetSystemDpiForProcess');

int GetSystemMetricsForDpi(
  int nIndex,
  int dpi,
) =>
    _GetSystemMetricsForDpi(
      nIndex,
      dpi,
    );

late final _GetSystemMetricsForDpi = _user32.lookupFunction<
    Int32 Function(
  Int32 nIndex,
  Uint32 dpi,
),
    int Function(
  int nIndex,
  int dpi,
)>('GetSystemMetricsForDpi');

int GetThreadDpiAwarenessContext() => _GetThreadDpiAwarenessContext();

late final _GetThreadDpiAwarenessContext =
    _user32.lookupFunction<IntPtr Function(), int Function()>(
        'GetThreadDpiAwarenessContext');

int GetThreadDpiHostingBehavior() => _GetThreadDpiHostingBehavior();

late final _GetThreadDpiHostingBehavior =
    _user32.lookupFunction<Int32 Function(), int Function()>(
        'GetThreadDpiHostingBehavior');

int GetWindowDpiAwarenessContext(
  int hwnd,
) =>
    _GetWindowDpiAwarenessContext(
      hwnd,
    );

late final _GetWindowDpiAwarenessContext = _user32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('GetWindowDpiAwarenessContext');

int GetWindowDpiHostingBehavior(
  int hwnd,
) =>
    _GetWindowDpiHostingBehavior(
      hwnd,
    );

late final _GetWindowDpiHostingBehavior = _user32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
),
    int Function(
  int hwnd,
)>('GetWindowDpiHostingBehavior');

int IsValidDpiAwarenessContext(
  int value,
) =>
    _IsValidDpiAwarenessContext(
      value,
    );

late final _IsValidDpiAwarenessContext = _user32.lookupFunction<
    Int32 Function(
  IntPtr value,
),
    int Function(
  int value,
)>('IsValidDpiAwarenessContext');

int LogicalToPhysicalPointForPerMonitorDPI(
  int hWnd,
  Pointer<POINT> lpPoint,
) =>
    _LogicalToPhysicalPointForPerMonitorDPI(
      hWnd,
      lpPoint,
    );

late final _LogicalToPhysicalPointForPerMonitorDPI = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<POINT> lpPoint,
),
    int Function(
  int hWnd,
  Pointer<POINT> lpPoint,
)>('LogicalToPhysicalPointForPerMonitorDPI');

int PhysicalToLogicalPointForPerMonitorDPI(
  int hWnd,
  Pointer<POINT> lpPoint,
) =>
    _PhysicalToLogicalPointForPerMonitorDPI(
      hWnd,
      lpPoint,
    );

late final _PhysicalToLogicalPointForPerMonitorDPI = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<POINT> lpPoint,
),
    int Function(
  int hWnd,
  Pointer<POINT> lpPoint,
)>('PhysicalToLogicalPointForPerMonitorDPI');

int SetDialogControlDpiChangeBehavior(
  int hWnd,
  int mask,
  int values,
) =>
    _SetDialogControlDpiChangeBehavior(
      hWnd,
      mask,
      values,
    );

late final _SetDialogControlDpiChangeBehavior = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Uint32 mask,
  Uint32 values,
),
    int Function(
  int hWnd,
  int mask,
  int values,
)>('SetDialogControlDpiChangeBehavior');

int SetDialogDpiChangeBehavior(
  int hDlg,
  int mask,
  int values,
) =>
    _SetDialogDpiChangeBehavior(
      hDlg,
      mask,
      values,
    );

late final _SetDialogDpiChangeBehavior = _user32.lookupFunction<
    Int32 Function(
  IntPtr hDlg,
  Uint32 mask,
  Uint32 values,
),
    int Function(
  int hDlg,
  int mask,
  int values,
)>('SetDialogDpiChangeBehavior');

int SetProcessDpiAwarenessContext(
  int value,
) =>
    _SetProcessDpiAwarenessContext(
      value,
    );

late final _SetProcessDpiAwarenessContext = _user32.lookupFunction<
    Int32 Function(
  IntPtr value,
),
    int Function(
  int value,
)>('SetProcessDpiAwarenessContext');

int SetThreadDpiAwarenessContext(
  int dpiContext,
) =>
    _SetThreadDpiAwarenessContext(
      dpiContext,
    );

late final _SetThreadDpiAwarenessContext = _user32.lookupFunction<
    IntPtr Function(
  IntPtr dpiContext,
),
    int Function(
  int dpiContext,
)>('SetThreadDpiAwarenessContext');

int SetThreadDpiHostingBehavior(
  int value,
) =>
    _SetThreadDpiHostingBehavior(
      value,
    );

late final _SetThreadDpiHostingBehavior = _user32.lookupFunction<
    Int32 Function(
  Int32 value,
),
    int Function(
  int value,
)>('SetThreadDpiHostingBehavior');

int SystemParametersInfoForDpi(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
  int dpi,
) =>
    _SystemParametersInfoForDpi(
      uiAction,
      uiParam,
      pvParam,
      fWinIni,
      dpi,
    );

late final _SystemParametersInfoForDpi = _user32.lookupFunction<
    Int32 Function(
  Uint32 uiAction,
  Uint32 uiParam,
  Pointer pvParam,
  Uint32 fWinIni,
  Uint32 dpi,
),
    int Function(
  int uiAction,
  int uiParam,
  Pointer pvParam,
  int fWinIni,
  int dpi,
)>('SystemParametersInfoForDpi');

// -----------------------------------------------------------------------
// api-ms-win-shcore-scaling-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_shcore_scaling_l1_1_1 =
    DynamicLibrary.open('api-ms-win-shcore-scaling-l1-1-1.dll');

int GetDpiForMonitor(
  int hmonitor,
  int dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
) =>
    _GetDpiForMonitor(
      hmonitor,
      dpiType,
      dpiX,
      dpiY,
    );

late final _GetDpiForMonitor = _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
    Int32 Function(
  IntPtr hmonitor,
  Int32 dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
),
    int Function(
  int hmonitor,
  int dpiType,
  Pointer<Uint32> dpiX,
  Pointer<Uint32> dpiY,
)>('GetDpiForMonitor');

int GetProcessDpiAwareness(
  int hprocess,
  Pointer<Int32> value,
) =>
    _GetProcessDpiAwareness(
      hprocess,
      value,
    );

late final _GetProcessDpiAwareness =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr hprocess,
  Pointer<Int32> value,
),
        int Function(
  int hprocess,
  Pointer<Int32> value,
)>('GetProcessDpiAwareness');

int SetProcessDpiAwareness(
  int value,
) =>
    _SetProcessDpiAwareness(
      value,
    );

late final _SetProcessDpiAwareness =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        Int32 Function(
  Int32 value,
),
        int Function(
  int value,
)>('SetProcessDpiAwareness');
