// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

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

/// Calls the next handler in a window's subclass chain.
///
/// The last handler in the subclass chain calls the original window procedure
/// for the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-defsubclassproc>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
LRESULT DefSubclassProc(HWND hWnd, int uMsg, WPARAM wParam, LPARAM lParam) =>
    LRESULT(_DefSubclassProc(hWnd, uMsg, wParam, lParam));

@Native<IntPtr Function(Pointer, Uint32, IntPtr, IntPtr)>(
  symbol: 'DefSubclassProc',
)
external int _DefSubclassProc(Pointer hWnd, int uMsg, int wParam, int lParam);

/// Draws the specified text in the style of a status window with borders.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-drawstatustextw>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
void DrawStatusText(HDC hDC, Pointer<RECT> lprc, PCWSTR pszText, int uFlags) =>
    _DrawStatusText(hDC, lprc, pszText, uFlags);

@Native<Void Function(Pointer, Pointer<RECT>, Pointer<Utf16>, Uint32)>(
  symbol: 'DrawStatusTextW',
)
external void _DrawStatusText(
  Pointer hDC,
  Pointer<RECT> lprc,
  Pointer<Utf16> pszText,
  int uFlags,
);

/// Destroys an image list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-imagelist_destroy>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
bool ImageList_Destroy(HIMAGELIST? himl) =>
    _ImageList_Destroy(himl ?? NULL) != FALSE;

@Native<Int32 Function(IntPtr)>(symbol: 'ImageList_Destroy')
external int _ImageList_Destroy(int himl);

/// Ensures that the common control DLL (Comctl32.dll) is loaded, and registers
/// specific common control classes from the DLL.
///
/// An application must call this function before creating a common control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-initcommoncontrolsex>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
bool InitCommonControlsEx(Pointer<INITCOMMONCONTROLSEX> picce) =>
    _InitCommonControlsEx(picce) != FALSE;

@Native<Int32 Function(Pointer<INITCOMMONCONTROLSEX>)>(
  symbol: 'InitCommonControlsEx',
)
external int _InitCommonControlsEx(Pointer<INITCOMMONCONTROLSEX> picce);

/// Removes a subclass callback from a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-removewindowsubclass>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
bool RemoveWindowSubclass(
  HWND hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
) => _RemoveWindowSubclass(hWnd, pfnSubclass, uIdSubclass) != FALSE;

@Native<Int32 Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr)>(
  symbol: 'RemoveWindowSubclass',
)
external int _RemoveWindowSubclass(
  Pointer hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
);

/// Installs or updates a window subclass callback.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-setwindowsubclass>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
bool SetWindowSubclass(
  HWND hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  int dwRefData,
) => _SetWindowSubclass(hWnd, pfnSubclass, uIdSubclass, dwRefData) != FALSE;

@Native<
  Int32 Function(Pointer, Pointer<NativeFunction<SUBCLASSPROC>>, IntPtr, IntPtr)
>(symbol: 'SetWindowSubclass')
external int _SetWindowSubclass(
  Pointer hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  int dwRefData,
);

/// Creates, displays, and operates a task dialog.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-taskdialog>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
void TaskDialog(
  HWND? hwndOwner,
  HINSTANCE? hInstance,
  PCWSTR? pszWindowTitle,
  PCWSTR? pszMainInstruction,
  PCWSTR? pszContent,
  TASKDIALOG_COMMON_BUTTON_FLAGS dwCommonButtons,
  PCWSTR? pszIcon,
  Pointer<Int32>? pnButton,
) {
  final hr$ = HRESULT(
    _TaskDialog(
      hwndOwner ?? nullptr,
      hInstance ?? nullptr,
      pszWindowTitle ?? nullptr,
      pszMainInstruction ?? nullptr,
      pszContent ?? nullptr,
      dwCommonButtons,
      pszIcon ?? nullptr,
      pnButton ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<
  Int32 Function(
    Pointer,
    Pointer,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Pointer<Utf16>,
    Int32,
    Pointer<Utf16>,
    Pointer<Int32>,
  )
>(symbol: 'TaskDialog')
external int _TaskDialog(
  Pointer hwndOwner,
  Pointer hInstance,
  Pointer<Utf16> pszWindowTitle,
  Pointer<Utf16> pszMainInstruction,
  Pointer<Utf16> pszContent,
  int dwCommonButtons,
  Pointer<Utf16> pszIcon,
  Pointer<Int32> pnButton,
);

/// Creates, displays, and operates a task dialog.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nf-commctrl-taskdialogindirect>.
///
/// {@category comctl32}
@pragma('vm:prefer-inline')
void TaskDialogIndirect(
  Pointer<TASKDIALOGCONFIG> pTaskConfig,
  Pointer<Int32>? pnButton,
  Pointer<Int32>? pnRadioButton,
  Pointer<Int32>? pfVerificationFlagChecked,
) {
  final hr$ = HRESULT(
    _TaskDialogIndirect(
      pTaskConfig,
      pnButton ?? nullptr,
      pnRadioButton ?? nullptr,
      pfVerificationFlagChecked ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<
  Int32 Function(
    Pointer<TASKDIALOGCONFIG>,
    Pointer<Int32>,
    Pointer<Int32>,
    Pointer<Int32>,
  )
>(symbol: 'TaskDialogIndirect')
external int _TaskDialogIndirect(
  Pointer<TASKDIALOGCONFIG> pTaskConfig,
  Pointer<Int32> pnButton,
  Pointer<Int32> pnRadioButton,
  Pointer<Int32> pfVerificationFlagChecked,
);
