// Dart representations of Win32 callbacks.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi';

import 'pcwstr.dart';
import 'structs.g.dart';

/// Receives event notifications from the Active Directory Domain Services
/// container browser dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nc-shlobj_core-bffcallback>.
///
/// {@category callback}
typedef BFFCALLBACK =
    Int32 Function(HWND hwnd, Uint32 uMsg, LPARAM lParam, LPARAM lpData);

/// An application-defined callback function used with the CreateDialog and
/// DialogBox families of functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-dlgproc>.
///
/// {@category callback}
typedef DLGPROC =
    IntPtr Function(HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// An application-defined callback function that renders a complex image for
/// the DrawState function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-drawstateproc>.
///
/// {@category callback}
typedef DRAWSTATEPROC =
    BOOL Function(HDC hdc, LPARAM lData, WPARAM wData, Int32 cx, Int32 cy);

/// {@category callback}
typedef DTT_CALLBACK_PROC =
    Int32 Function(
      HDC hdc,
      PWSTR pszText,
      Int32 cchText,
      Pointer<RECT> prc,
      Uint32 dwFlags,
      LPARAM lParam,
    );

/// An application-defined callback function used with the EnumResourceNames and
/// EnumResourceNamesEx functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nc-libloaderapi-enumresnameprocw>.
///
/// {@category callback}
typedef ENUMRESNAMEPROC =
    BOOL Function(HMODULE hModule, PCWSTR lpType, PCWSTR lpName, IntPtr lParam);

/// An application-defined callback function used with the EnumResourceTypes and
/// EnumResourceTypesEx functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/libloaderapi/nc-libloaderapi-enumrestypeprocw>.
///
/// {@category callback}
typedef ENUMRESTYPEPROC =
    BOOL Function(HMODULE hModule, PCWSTR lpType, IntPtr lParam);

/// {@category callback}
typedef FARPROC = Pointer;

/// An application defined callback function used with the EnumFontFamilies
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/dd162621(v=vs.85)>.
///
/// {@category callback}
typedef FONTENUMPROC =
    Int32 Function(
      Pointer<LOGFONT> param0,
      Pointer<TEXTMETRIC> param1,
      Uint32 param2,
      LPARAM param3,
    );

/// An application-defined callback function used with the GrayString function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-graystringproc>.
///
/// {@category callback}
typedef GRAYSTRINGPROC = BOOL Function(HDC param0, LPARAM param1, Int32 param2);

/// An application-defined or library-defined callback function used with the
/// SetWindowsHookEx function.
///
/// The system calls this function after the SendMessage function is called. The
/// hook procedure can examine the message; it cannot modify it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-hookproc>.
///
/// {@category callback}
typedef HOOKPROC = LRESULT Function(Int32 code, WPARAM wParam, LPARAM lParam);

/// Receives messages or notifications intended for the default dialog box
/// procedure of the Color dialog box.
///
/// This is an application-defined or library-defined callback function that is
/// used with the ChooseColor function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-lpcchookproc>.
///
/// {@category callback}
typedef LPCCHOOKPROC =
    IntPtr Function(HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// Receives messages or notifications intended for the default dialog box
/// procedure of the Font dialog box.
///
/// This is an application-defined or library-defined callback procedure that is
/// used with the ChooseFont function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-lpcfhookproc>.
///
/// {@category callback}
typedef LPCFHOOKPROC =
    IntPtr Function(HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// {@category callback}
typedef LPEXCEPFINO_DEFERRED_FILLIN =
    Int32 Function(Pointer<EXCEPINFO> pExcepInfo);

/// Receives messages or notifications intended for the default dialog box
/// procedure of the Find or Replace dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-lpfrhookproc>.
///
/// {@category callback}
typedef LPFRHOOKPROC =
    IntPtr Function(HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// An application-defined callback function used with the
/// RegisterServiceCtrlHandler function.
///
/// A service program can use it as the control handler function of a particular
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nc-winsvc-lphandler_function>.
///
/// {@category callback}
typedef LPHANDLER_FUNCTION = Void Function(Uint32 dwControl);

/// An application-defined callback function used with the
/// RegisterServiceCtrlHandlerEx function.
///
/// A service program can use it as the control handler function of a particular
/// service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nc-winsvc-lphandler_function_ex>.
///
/// {@category callback}
typedef LPHANDLER_FUNCTION_EX =
    Uint32 Function(
      Uint32 dwControl,
      Uint32 dwEventType,
      Pointer lpEventData,
      Pointer lpContext,
    );

/// {@category callback}
typedef LPOCNCHKPROC =
    BOOL Function(IntPtr param0, IntPtr param1, Pointer param2);

/// {@category callback}
typedef LPOCNCONNPROC =
    IntPtr Function(
      IntPtr param0,
      PCWSTR param1,
      PCWSTR param2,
      Pointer param3,
    );

/// {@category callback}
typedef LPOCNDSCPROC =
    Void Function(IntPtr param0, IntPtr param1, Pointer param2);

/// Receives notification messages sent from the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commdlg/nc-commdlg-lpofnhookproc>.
///
/// {@category callback}
typedef LPOFNHOOKPROC =
    IntPtr Function(HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);

/// An application-defined callback function used with the ReadFileEx and
/// WriteFileEx functions.
///
/// It is called when the asynchronous input and output (I/O) operation is
/// completed or canceled and the calling thread is in an alertable state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/minwinbase/nc-minwinbase-lpoverlapped_completion_routine>.
///
/// {@category callback}
typedef LPOVERLAPPED_COMPLETION_ROUTINE =
    Void Function(
      Uint32 dwErrorCode,
      Uint32 dwNumberOfBytesTransfered,
      Pointer<OVERLAPPED> lpOverlapped,
    );

/// An application-defined callback function used with the CopyFileEx,
/// MoveFileTransacted, and MoveFileWithProgress functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nc-winbase-lpprogress_routine>.
///
/// {@category callback}
typedef LPPROGRESS_ROUTINE =
    Uint32 Function(
      Int64 totalFileSize,
      Int64 totalBytesTransferred,
      Int64 streamSize,
      Int64 streamBytesTransferred,
      Uint32 dwStreamNumber,
      Uint32 dwCallbackReason,
      HANDLE hSourceFile,
      HANDLE hDestinationFile,
      Pointer lpData,
    );

/// The entry point for a service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nc-winsvc-lpservice_main_functionw>.
///
/// {@category callback}
typedef LPSERVICE_MAIN_FUNCTION =
    Void Function(Uint32 dwNumServicesArgs, Pointer<PWSTR> lpServiceArgVectors);

/// An application-defined function that serves as the starting address for a
/// thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms686736(v=vs.85)>.
///
/// {@category callback}
typedef LPTHREAD_START_ROUTINE = Uint32 Function(Pointer lpThreadParameter);

/// An application-defined callback function that is called by the
/// EnumDisplayMonitors function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-monitorenumproc>.
///
/// {@category callback}
typedef MONITORENUMPROC =
    BOOL Function(
      HMONITOR param0,
      HDC param1,
      Pointer<RECT> param2,
      LPARAM param3,
    );

/// Prototype for a callback function that implements a custom transform for
/// image scaling.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/magnification/nc-magnification-magimagescalingcallback>.
///
/// {@category callback}
typedef MagImageScalingCallback =
    BOOL Function(
      HWND hwnd,
      Pointer srcdata,
      MAGIMAGEHEADER srcheader,
      Pointer destdata,
      MAGIMAGEHEADER destheader,
      RECT unclipped,
      RECT clipped,
      HRGN dirty,
    );

/// {@category callback}
typedef NEARPROC = Pointer;

/// An application-defined callback function used with the EnumPageFiles
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/psapi/nc-psapi-penum_page_file_callbackw>.
///
/// {@category callback}
typedef PENUM_PAGE_FILE_CALLBACK =
    BOOL Function(
      Pointer pContext,
      Pointer<ENUM_PAGE_FILE_INFORMATION> pPageFileInfo,
      PCWSTR lpFilename,
    );

/// Profile drivers implement a Bluetooth GATT event callback to be called
/// whenever the value of a specific characteristic changes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bthledef/nc-bthledef-pfnbluetooth_gatt_event_callback>.
///
/// {@category callback}
typedef PFNBLUETOOTH_GATT_EVENT_CALLBACK =
    Void Function(Int32 eventType, Pointer eventOutParameter, Pointer context);

/// An application-defined callback function used in conjunction with the
/// BluetoothRegisterForAuthenticationEx function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nc-bluetoothapis-pfn_authentication_callback_ex>.
///
/// {@category callback}
typedef PFN_AUTHENTICATION_CALLBACK_EX =
    BOOL Function(
      Pointer pvParam,
      Pointer<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS> pAuthCallbackParams,
    );

/// An application-defined callback function that is called once for each
/// attribute found in the pSDPStream parameter passed to the
/// BluetoothSdpEnumAttributes function call.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nc-bluetoothapis-pfn_bluetooth_enum_attributes_callback>.
///
/// {@category callback}
typedef PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK =
    BOOL Function(
      Uint32 uAttribId,
      Pointer<Uint8> pValueStream,
      Uint32 cbStreamSize,
      Pointer pvParam,
    );

/// An application-defined callback function used in association with selecting
/// Bluetooth devices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/bluetoothapis/nc-bluetoothapis-pfn_device_callback>.
///
/// {@category callback}
typedef PFN_DEVICE_CALLBACK =
    BOOL Function(Pointer pvParam, Pointer<BLUETOOTH_DEVICE_INFO> pDevice);

/// {@category callback}
typedef PFN_SC_NOTIFY_CALLBACK = Void Function(Pointer pParameter);

/// An application-defined function used with the TaskDialogIndirect function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nc-commctrl-pftaskdialogcallback>.
///
/// {@category callback}
typedef PFTASKDIALOGCALLBACK =
    Int32 Function(
      HWND hwnd,
      Uint32 msg,
      WPARAM wParam,
      LPARAM lParam,
      IntPtr lpRefData,
    );

/// An application-defined function used with the SetConsoleCtrlHandler
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/console/handlerroutine>.
///
/// {@category callback}
typedef PHANDLER_ROUTINE = BOOL Function(Uint32 ctrlType);

/// {@category callback}
typedef PROC = Pointer;

/// Used with the SymEnumSymbols, SymEnumTypes, and SymEnumTypesByName
/// functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/dbghelp/nc-dbghelp-psym_enumeratesymbols_callbackw>.
///
/// {@category callback}
typedef PSYM_ENUMERATESYMBOLS_CALLBACK =
    BOOL Function(
      Pointer<SYMBOL_INFO> pSymInfo,
      Uint32 symbolSize,
      Pointer userContext,
    );

/// An application-defined callback function used with the SendMessageCallback
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-sendasyncproc>.
///
/// {@category callback}
typedef SENDASYNCPROC =
    Void Function(HWND param0, Uint32 param1, IntPtr param2, LRESULT param3);

/// {@category callback}
typedef SPNOTIFYCALLBACK = Void Function(WPARAM wParam, LPARAM lParam);

/// Defines the prototype for the callback function used by RemoveWindowSubclass
/// and SetWindowSubclass.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/commctrl/nc-commctrl-subclassproc>.
///
/// {@category callback}
typedef SUBCLASSPROC =
    LRESULT Function(
      HWND hWnd,
      Uint32 uMsg,
      WPARAM wParam,
      LPARAM lParam,
      IntPtr uIdSubclass,
      IntPtr dwRefData,
    );

/// An application-defined callback function that processes WM_TIMER messages.
///
/// The TIMERPROC type defines a pointer to this callback function. TimerProc is
/// a placeholder for the application-defined function name.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-timerproc>.
///
/// {@category callback}
typedef TIMERPROC =
    Void Function(HWND param0, Uint32 param1, IntPtr param2, Uint32 param3);

/// Defines the type of notification callback function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wlanapi/nc-wlanapi-wlan_notification_callback>.
///
/// {@category callback}
typedef WLAN_NOTIFICATION_CALLBACK =
    Void Function(Pointer<L2_NOTIFICATION_DATA> param0, Pointer param1);

/// An application-defined callback function used with the EnumWindows or
/// EnumDesktopWindows function.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/legacy/ms633498(v=vs.85)>.
///
/// {@category callback}
typedef WNDENUMPROC = BOOL Function(HWND param0, LPARAM param1);

/// An application-defined callback function that processes messages sent to a
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nc-winuser-wndproc>.
///
/// {@category callback}
typedef WNDPROC =
    LRESULT Function(HWND param0, Uint32 param1, WPARAM param2, LPARAM param3);
