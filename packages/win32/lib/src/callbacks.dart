// ignore_for_file: camel_case_types, non_constant_identifier_names

// Native callback functions that can get called by the Win32 API

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import 'types.dart';

@Deprecated('Use HOOKPROC instead')
typedef CallWndProc = HOOKPROC;

/// An application-defined or library-defined callback function used with the
/// SetWindowsHookEx function. The system calls this function before calling the
/// window procedure to process a message sent to the thread.
typedef HOOKPROC = LRESULT Function(Int32 nCode, WPARAM wParam, LPARAM lParam);

@Deprecated('Use LPCCHOOKPROC instead')
typedef CCHookProc = LPCCHOOKPROC;

/// Application-defined callback function used with the ChooseColor function.
/// Receives messages or notifications intended for the default dialog box
/// procedure of the Color dialog box.
typedef LPCCHOOKPROC = UINT_PTR Function(HWND, UINT, WPARAM, LPARAM);

@Deprecated('Use LPCFHOOKPROC instead')
typedef CFHookProc = LPCFHOOKPROC;

/// Application-defined callback function used with the ChooseFont function.
/// Receives messages or notifications intended for the default dialog box
/// procedure of the Font dialog box.
typedef LPCFHOOKPROC = UINT_PTR Function(HWND, UINT, WPARAM, LPARAM);

@Deprecated('Use DLGPROC instead')
typedef DlgProc = DLGPROC;

/// Application-defined callback function used with the CreateDialog and
/// DialogBox families of functions. It processes messages sent to a modal or
/// modeless dialog box.
typedef DLGPROC = INT_PTR Function(HWND, UINT, WPARAM, LPARAM);

@Deprecated('Use DTT_CALLBACK_PROC instead')
typedef DrawTextCallback = DTT_CALLBACK_PROC;

/// Application-defined callback function used with the DrawThemeTextEx
/// function. This function is used instead of DrawText.
typedef DTT_CALLBACK_PROC = Int32 Function(HDC hdc, LPWSTR pszText,
    Int32 cchText, Pointer<RECT> prc, UINT dwFlags, LPARAM lparam);

@Deprecated('Use DRAWSTATEPROC instead')
typedef DrawStateProc = DRAWSTATEPROC;

/// Application-defined callback function that renders a complex image for the
/// DrawState function.
typedef DRAWSTATEPROC = Int32 Function(
    IntPtr hdc, IntPtr lData, IntPtr wData, Int32 cx, Int32 cy);

@Deprecated('Use PENUM_PAGE_FILE_CALLBACK instead')
typedef EnumPageFilesProc = PENUM_PAGE_FILE_CALLBACK;

/// Application-defined callback function used with the EnumPageFiles function.
typedef PENUM_PAGE_FILE_CALLBACK = BOOL Function(PVOID pContext,
    Pointer<ENUM_PAGE_FILE_INFORMATION> pPageFileInfo, LPWSTR lpFilename);

@Deprecated('Use WNDENUMPROC instead')
typedef EnumWindowsProc = WNDENUMPROC;

/// Application-defined callback function used with the EnumChildWindows
/// function. It receives the child window handles.
typedef WNDENUMPROC = BOOL Function(HWND hwnd, LPARAM lParam);

@Deprecated('Use FONTENUMPROC instead')
typedef EnumFontFamExProc = FONTENUMPROC;

/// Application defined callback function used with the EnumFontFamiliesEx
/// function. It is used to process the fonts.
typedef FONTENUMPROC = Int32 Function(Pointer<LOGFONT> lpelfe,
    Pointer<TEXTMETRIC> lpntme, DWORD FontType, LPARAM lParam);

@Deprecated('Use ENUMRESNAMEPROC instead')
typedef EnumResNameProc = ENUMRESNAMEPROC;

/// Application-defined callback function used with the EnumResourceNames and
/// EnumResourceNamesEx functions. It receives the type and name of a resource.
typedef ENUMRESNAMEPROC = BOOL Function(HMODULE hModule, Pointer<Utf16> lpType,
    Pointer<Utf16> lpName, LONG_PTR lParam);

@Deprecated('Use ENUMRESTYPEPROC instead')
typedef EnumResTypeProc = ENUMRESTYPEPROC;

/// Application-defined callback function used with the EnumResourceTypes and
/// EnumResourceTypesEx functions. It receives resource types.
typedef ENUMRESTYPEPROC = BOOL Function(
    HMODULE hModule, Pointer<Utf16> lpszType, LONG_PTR lParam);

@Deprecated('Use LPEXCEPFINO_DEFERRED_FILLIN instead')
typedef ExcepInfoProc = IntPtr Function(Pointer<EXCEPINFO>);

/// Application-defined callback function used with the IDispatch::Invoke
/// function to defer filling in bstrDescription, bstrHelpFile, and
/// dwHelpContext fields until they are needed.
typedef LPEXCEPFINO_DEFERRED_FILLIN = IntPtr Function(Pointer<EXCEPINFO>);

@Deprecated('Use LPFRHOOKPROC instead')
typedef FRHookProc = LPFRHOOKPROC;

/// Application-defined callback function used with the FindText or ReplaceText
/// function. Receives messages or notifications intended for the default dialog
/// box procedure of the Find or Replace dialog box.
typedef LPFRHOOKPROC = UINT_PTR Function(HWND, UINT, WPARAM, LPARAM);

@Deprecated('Use PHANDLER_ROUTINE instead')
typedef HandlerRoutine = PHANDLER_ROUTINE;

/// Application-defined callback function used with the SetConsoleCtrlHandler
/// function. A console process uses this function to handle control signals
/// received by the process. When the signal is received, the system creates a
/// new thread in the process to execute the function.
typedef PHANDLER_ROUTINE = BOOL Function(DWORD dwCtrlType);

@Deprecated('Use LPHANDLER_FUNCTION instead')
typedef LphandlerFunction = LPHANDLER_FUNCTION;

/// Application-defined callback function used with the
/// RegisterServiceCtrlHandler function. A service program can use it as the
/// control handler function of a particular service.
typedef LPHANDLER_FUNCTION = Void Function(DWORD dwControl);

@Deprecated('Use LPHANDLER_FUNCTION_EX instead')
typedef LphandlerFunctionEx = LPHANDLER_FUNCTION_EX;

/// Application-defined callback function used with the
/// RegisterServiceCtrlHandlerEx function. A service program can use it as the
/// control handler function of a particular service.
typedef LPHANDLER_FUNCTION_EX = DWORD Function(
    DWORD dwControl, DWORD dwEventType, LPVOID lpEventData, LPVOID lpContext);

@Deprecated('Use LPOVERLAPPED_COMPLETION_ROUTINE instead')
typedef LpoverlappedCompletionRoutine = LPOVERLAPPED_COMPLETION_ROUTINE;

/// Application-defined callback function used with the ReadFileEx and
/// WriteFileEx functions. It is called when the asynchronous input and output
/// (I/O) operation is completed or canceled and the calling thread is in an
/// alertable state (by using the SleepEx, MsgWaitForMultipleObjectsEx,
/// WaitForSingleObjectEx, or WaitForMultipleObjectsEx function with the
/// fAlertable parameter set to TRUE).
typedef LPOVERLAPPED_COMPLETION_ROUTINE = Void Function(DWORD dwErrorCode,
    DWORD dwNumberOfBytesTransfered, OVERLAPPED lpOverlapped);

@Deprecated('Use LPSERVICE_MAIN_FUNCTION instead')
typedef LpserviceMainFunctionw = LPSERVICE_MAIN_FUNCTION;

/// Application-defined callback function used as the entry point for a service.
/// The LPSERVICE_MAIN_FUNCTION type defines a pointer to this callback
/// function. ServiceMain is a placeholder for an application-defined function
/// name.
typedef LPSERVICE_MAIN_FUNCTION = Void Function(
    DWORD dwNumServicesArgs, Pointer<LPWSTR> lpServiceArgVectors);

@Deprecated('Use PFN_SC_NOTIFY_CALLBACK instead')
typedef PfnScNotifyCallbackFunction = PFN_SC_NOTIFY_CALLBACK;

/// Application-defined callback function that receives a pointer to the
/// SERVICE_NOTIFY structure provided by the caller.
typedef PFN_SC_NOTIFY_CALLBACK = PVOID Function(PVOID pParameter);

/// Application-defined callback function implements a custom transform for
/// image scaling.
typedef MagImageScalingCallback = BOOL Function(
    HWND hwnd,
    Pointer srcdata,
    MAGIMAGEHEADER srcheader,
    Pointer destdata,
    MAGIMAGEHEADER destheader,
    RECT unclipped,
    RECT clipped,
    HRGN dirty);

@Deprecated('Use MIDIINPROC instead')
typedef MidiInProc = MIDIINPROC;

/// Application-defined callback function for handling incoming MIDI messages.
/// MidiInProc is a placeholder for the application-supplied function name. The
/// address of this function can be specified in the callback-address parameter
/// of the midiInOpen function.
typedef MIDIINPROC = Void Function(HMIDIIN hMidiIn, UINT wMsg,
    DWORD_PTR dwInstance, DWORD_PTR dwParam1, DWORD_PTR dwParam2);

@Deprecated('Use MIDIOUTPROC instead')
typedef MidiOutProc = MIDIOUTPROC;

/// Application-defined callback function for handling outgoing MIDI messages.
/// MidiOutProc is a placeholder for the application-supplied function name. The
/// address of the function can be specified in the callback-address parameter
/// of the midiOutOpen function.
typedef MIDIOUTPROC = Void Function(IntPtr hmo, Uint32 wMsg, IntPtr dwInstance,
    IntPtr dwParam1, IntPtr dwParam2);

@Deprecated('Use MONITORENUMPROC instead')
typedef MonitorEnumProc = MONITORENUMPROC;

/// Application-defined callback function used with the EnumDisplayMonitors
/// function. It receives display monitors in the calculated enumeration set.
typedef MONITORENUMPROC = Int32 Function(
    IntPtr hMonitor, IntPtr hDC, Pointer lpRect, IntPtr lParam);

@Deprecated('Use LPOFNHOOKPROC instead')
typedef OFNHookProc = LPOFNHOOKPROC;

/// Application-defined callback function used with the Explorer-style Open and
/// Save As dialog boxes. Receives notification messages sent from the dialog
/// box. The function also receives messages for any additional controls that
/// you defined by specifying a child dialog template.
typedef LPOFNHOOKPROC = UINT_PTR Function(HWND, UINT, WPARAM, LPARAM);

@Deprecated('Use GRAYSTRINGPROC instead')
typedef OutputProc = GRAYSTRINGPROC;

/// Application-defined callback function used with the GrayString function. It
/// is used to draw a string.
typedef GRAYSTRINGPROC = Int32 Function(IntPtr Arg1, IntPtr Arg2, Int32 Arg3);

@Deprecated('Use PFN_AUTHENTICATION_CALLBACK_EX instead')
typedef PfnAuthenticationCallbackEx = PFN_AUTHENTICATION_CALLBACK_EX;

/// Application-defined callback function used with the
/// BluetoothRegisterForAuthenticationEx function.
typedef PFN_AUTHENTICATION_CALLBACK_EX = Int32 Function(Pointer pvParam,
    Pointer<BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS> pAuthCallbackParams);

@Deprecated('Use PFNBLUETOOTH_GATT_EVENT_CALLBACK instead')
typedef PfnbluetoothGattEventCallback = PFNBLUETOOTH_GATT_EVENT_CALLBACK;

/// Application-defined callback function used with profile drivers to implement
/// a Bluetooth GATT event callback to be called whenever the value of a
/// specific characteristic changes.
typedef PFNBLUETOOTH_GATT_EVENT_CALLBACK = Void Function(
    Int32 EventType, Pointer EventOutParameter, Pointer Context);

@Deprecated('Use PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK instead')
typedef PfnBluetoothEnumAttributesCallback
    = PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK;

/// Application-defined callback function that is called once for each attribute
/// found in the pSDPStream parameter passed to the BluetoothSdpEnumAttributes
/// function call.
typedef PFN_BLUETOOTH_ENUM_ATTRIBUTES_CALLBACK = BOOL Function(
    ULONG uAttribId, LPBYTE pValueStream, ULONG cbStreamSize, LPVOID pvParam);

@Deprecated('Use PFN_DEVICE_CALLBACK instead')
typedef PfnDeviceCallback = PFN_DEVICE_CALLBACK;

/// Application-defined callback function used in association with selecting
/// Bluetooth devices. The PFN_DEVICE_CALLBACK function can be set to NULL if no
/// specialized filtering is required.
typedef PFN_DEVICE_CALLBACK = BOOL Function(
    LPVOID pvParam, Pointer<BLUETOOTH_DEVICE_INFO> pDevice);

@Deprecated('Use SENDASYNCPROC instead')
typedef SendAsyncProc = SENDASYNCPROC;

/// Application-defined callback function used with the SendMessageCallback
/// function. The system passes the message to the callback function after
/// passing the message to the destination window procedure. The SENDASYNCPROC
/// type defines a pointer to this callback function. SendAsyncProc is a
/// placeholder for the application-defined function name.
typedef SENDASYNCPROC = Void Function(IntPtr, Uint32, IntPtr, IntPtr);

@Deprecated('Use SPNOTIFYCALLBACK instead')
typedef SpNotifyCallback = SPNOTIFYCALLBACK;

// Application-defined callback function used with SAPI clients to receive
// notifications.
typedef SPNOTIFYCALLBACK = Void Function(WPARAM wParam, LPARAM lParam);

@Deprecated('Use SUBCLASSPROC instead')
typedef SubclassProc = SUBCLASSPROC;

/// Application-defined callback function used with the RemoveWindowSubclass
/// and SetWindowSubclass functions.
typedef SUBCLASSPROC = LRESULT Function(HWND hWnd, UINT uMsg, WPARAM wParam,
    LPARAM lParam, UINT_PTR uIdSubclass, DWORD_PTR dwRefData);

@Deprecated('Use PSYM_ENUMERATESYMBOLS_CALLBACK instead')
typedef SymEnumSymbolsProc = PSYM_ENUMERATESYMBOLS_CALLBACK;

/// Application-defined callback function used with the SymEnumSymbols,
/// SymEnumTypes, and SymEnumTypesByName functions.
typedef PSYM_ENUMERATESYMBOLS_CALLBACK = Int32 Function(
    Pointer<SYMBOL_INFO> pSymInfo, Uint32 SymbolSize, Pointer UserContext);

@Deprecated('Use PFTASKDIALOGCALLBACK instead')
typedef TaskDialogCallbackProc = PFTASKDIALOGCALLBACK;

/// Application-defined callback function used with the TaskDialogIndirect
/// function. It receives messages from the task dialog when various events
/// occur.
typedef PFTASKDIALOGCALLBACK = IntPtr Function(
    IntPtr hwnd, Uint32 uMsg, IntPtr wParam, IntPtr lParam, IntPtr lpRefData);

@Deprecated('Use LPTHREAD_START_ROUTINE instead')
typedef ThreadProc = LPTHREAD_START_ROUTINE;

/// Application-defined callback function that serves as the starting address
/// for a thread. Specify this address when calling the CreateThread,
/// CreateRemoteThread, or CreateRemoteThreadEx function.
typedef LPTHREAD_START_ROUTINE = DWORD Function(Pointer lpParameter);

@Deprecated('Use TIMERPROC instead')
typedef TimerProc = TIMERPROC;

/// Application-defined callback function that processes WM_TIMER messages.
typedef TIMERPROC = Void Function(IntPtr, Uint32, Pointer<Uint32>, Int32);

@Deprecated('Use WNDPROC instead')
typedef WindowProc = WNDPROC;

/// Application-defined callback function that processes messages sent to a
/// window.
typedef WNDPROC = LRESULT Function(
    HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);

@Deprecated('Use WLAN_NOTIFICATION_CALLBACK instead')
typedef WlanNotificationCallback = WLAN_NOTIFICATION_CALLBACK;

/// Application-defined callback function that is used by an application to
/// register and unregister notifications on all wireless interfaces.
typedef WLAN_NOTIFICATION_CALLBACK = Void Function(
    Pointer<L2_NOTIFICATION_DATA>, Pointer);

@Deprecated('Use LPOCNCHKPROC instead')
typedef OpenCardCheckProc = LPOCNCHKPROC;

/// Application-defined callback function that provides special verification
/// for smart card searches.
typedef LPOCNCHKPROC = Int32 Function(IntPtr, IntPtr, Pointer);

@Deprecated('Use LPOCNCONNPROC instead')
typedef OpenCardConnProc = LPOCNCONNPROC;

/// Application-defined callback function that allows callers to perform
/// additional processing to connect to the smart card.
typedef LPOCNCONNPROC = IntPtr Function(
    IntPtr, Pointer<Utf16>, Pointer<Utf16>, Pointer);

@Deprecated('Use LPOCNDSCPROC instead')
typedef OpenCardDisconnProc = LPOCNDSCPROC;

/// Application-defined callback function that can be used for disconnecting
/// smart cards.
typedef LPOCNDSCPROC = Void Function(IntPtr, IntPtr, Pointer);
