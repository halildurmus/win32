String ffiFromWin32(String win32Type) {
  if (mapping.containsKey(win32Type)) {
    return mapping[win32Type]!;
  } else {
    if (win32Type.startsWith('LP')) {
      return 'Pointer<${win32Type.substring(2)}>';
    }
    // It's a STRUCT (or an unknown type, in which case it will fail Dart
    // analysis.)
    return win32Type;
  }
}

const mapping = <String, String>{
  // Base C types
  'void': 'Void',
  'int': 'Int32',
  'long': 'Int32',
  'short': 'Int16',
  'char': 'Int8',

  // Windows numerics
  'INT_PTR': 'IntPtr', 'UINT_PTR': 'IntPtr', 'LONG_PTR': 'IntPtr',
  'DWORD_PTR': 'IntPtr', 'ULONG_PTR': 'IntPtr',
  'WPARAM': 'IntPtr', 'LPARAM': 'IntPtr',
  'SIZE_T': 'IntPtr',
  'LRESULT': 'IntPtr', 'FARPROC': 'IntPtr',
  'LONGLONG': 'Int64', 'INT64': 'Int64', 'LARGE_INTEGER': 'Int64',
  'ULONGLONG': 'Uint64', 'UINT64': 'Uint64', 'ULARGE_INTEGER': 'Uint64',
  'LONG': 'Int32', 'INT': 'Int32', 'INT32': 'Int32', 'LSTATUS': 'Int32',
  'UINT': 'Uint32', 'UINT32': 'Uint32', 'DWORD': 'Uint32', 'ULONG': 'Uint32',
  'SHORT': 'Int16', 'INT16': 'Int16',
  'WORD': 'Uint16', 'UINT16': 'Uint16', 'ATOM': 'Uint16', 'USHORT': 'Uint16',
  'BYTE': 'Uint8', 'UCHAR': 'Uint8',
  'BOOL': 'Int32', '_BOOL': 'Int32',
  'FLOAT': 'Float',
  'DOUBLE': 'Double', 'double': 'Double',
  'VOID': 'Void',

  'HANDLE': 'IntPtr', 'HRSRC': 'IntPtr', 'HWND': 'IntPtr',
  'HMODULE': 'IntPtr', 'HGLOBAL': 'IntPtr', 'HDC': 'IntPtr',
  'HBITMAP': 'IntPtr', 'HPEN': 'IntPtr', 'HBRUSH': 'IntPtr',
  'HACCEL': 'IntPtr', 'HKEY': 'IntPtr', 'HRGN': 'IntPtr',
  'HFONT': 'IntPtr', 'HPALETTE': 'IntPtr', 'HGDIOBJ': 'IntPtr',
  'HMENU': 'IntPtr', 'HICON': 'IntPtr', 'HMONITOR': 'IntPtr',
  'HCURSOR': 'IntPtr', 'HBLUETOOTH_DEVICE_FIND': 'IntPtr',
  'HBLUETOOTH_RADIO_FIND': 'IntPtr',
  'HBLUETOOTH_AUTHENTICATION_REGISTRATION': 'IntPtr', 'HINSTANCE': 'IntPtr',
  'HPCON': 'IntPtr',
  'HSTRING': 'IntPtr',

  'HRESULT': 'Int32',
  'NTSTATUS': 'Int32',
  'SHSTDAPI': 'Int32', 'SHFOLDERAPI': 'Int32',
  'COLORREF': 'Int32',
  'MCIDEVICEID': 'Uint32', 'MCIERROR': 'Uint32',
  'REGSAM': 'Uint32',

  // Enums
  'AUTHENTICATION_REQUIREMENTS': 'Int32',
  'TASKDIALOG_COMMON_BUTTON_FLAGS': 'Int32',
  'POWER_INFORMATION_LEVEL': 'Int32',
  'MC_GAIN_TYPE': 'Int32', 'MC_DRIVE_TYPE': 'Int32', 'MC_SIZE_TYPE': 'Int32',
  'MC_COLOR_TEMPERATURE': 'Int32', 'MC_DISPLAY_TECHNOLOGY_TYPE': 'Int32',
  'MC_POSITION_TYPE': 'Int32',
  'MONITOR_DPI_TYPE': 'Int32',
  'PROCESS_DPI_AWARENESS': 'Int32',
  'COMPUTER_NAME_FORMAT': 'Int32',
  'GET_FILEEX_INFO_LEVELS': 'Int32',
  'RO_INIT_TYPE': 'Int32',

  // Callbacks
  'DLGPROC': 'Pointer<NativeFunction<DlgProc>>',
  'WNDENUMPROC': 'Pointer<NativeFunction<EnumWindowsProc>>',
  'FONTENUMPROCW': 'Pointer<NativeFunction<EnumFontFamExProc>>',
  'ENUMRESNAMEPROCW': 'Pointer<NativeFunction<EnumResNameProc>>',
  'ENUMRESTYPEPROCW': 'Pointer<NativeFunction<EnumResTypeProc>>',
  'MONITORENUMPROC': 'Pointer<NativeFunction<MonitorEnumProc>>',
  'GRAYSTRINGPROC': 'Pointer<NativeFunction<OutputProc>>',
  'PHANDLER_ROUTINE': 'Pointer<NativeFunction<HandlerProc>>',
  'TIMERPROC': 'Pointer<NativeFunction<TimerProc>>',
  'PFN_AUTHENTICATION_CALLBACK_EX':
      'Pointer<NativeFunction<PfnAuthenticationCallbackEx>>',

  // Void pointers
  'LPVOID': 'Pointer', 'PVOID': 'Pointer', 'LPCVOID': 'Pointer',
  'LPUNKNOWN': 'Pointer<IntPtr>',

  // Pointers to ints
  'LPDWORD': 'Pointer<Uint32>', 'LPBYTE': 'Pointer<Uint8>',
  'LPBOOL': 'Pointer<Uint32>',

  // Strings
  'LPWSTR': 'Pointer<Utf16>', 'LPCWSTR': 'Pointer<Utf16>',
  'PCWSTR': 'Pointer<Utf16>', 'LPCTSTR': 'Pointer<Utf16>',
  'LPTSTR': 'Pointer<Utf16>', 'LPWCH': 'Pointer<Utf16>',
  'LPCWCH': 'Pointer<Utf16>',
  'LPCOLESTR': 'Pointer<Utf16>',
  'LPOLESTR': 'Pointer<Utf16>',
  'PCNZWCH': 'Pointer<Utf16>',
  'LPCSTR': 'Pointer<Uint8>', 'LPSTR': 'Pointer<Uint8>',
  'LPCCH': 'Pointer<Uint8>',
  'TCHAR': 'Uint16', 'PWSTR': 'Pointer<Utf16>',

  // Pointers not prefixed with LP*
  'PUINT': 'Pointer<Uint32>', 'PHANDLE': 'Pointer<IntPtr>',
  'PULONGLONG': 'Pointer<Uint64>', 'PDWORD': 'Pointer<Uint32>',
  'PLONG': 'Pointer<Int32>', 'PBOOL': 'Pointer<Int32>',
  'PLARGE_INTEGER': 'Pointer<Int64>', 'PSIZE_T': 'Pointer<IntPtr>',
  'PBLUETOOTH_OOB_DATA_INFO': 'Pointer<BLUETOOTH_OOB_DATA_INFO>',
  'PBLUETOOTH_RADIO_INFO': 'Pointer<BLUETOOTH_RADIO_INFO>',
  'PCREDENTIALW': 'Pointer<CREDENTIAL>', 'PHKEY': 'Pointer<IntPtr>',
  'PCOORD': 'Pointer<COORD>', 'PWINDOWINFO': 'Pointer<WINDOWINFO>',
  'PSECURITY_DESCRIPTOR': 'Pointer<SECURITY_DESCRIPTOR>',
  'PCONSOLE_CURSOR_INFO': 'Pointer<CONSOLE_CURSOR_INFO>',
  'PCONSOLE_SELECTION_INFO': 'Pointer<CONSOLE_SELECTION_INFO>',
  'PCONSOLE_SCREEN_BUFFER_INFO': 'Pointer<CONSOLE_SCREEN_BUFFER_INFO>',
  'PCACTCTXW': 'Pointer<ACTCTX>',

  // Pointers to enums
  'LPMC_COLOR_TEMPERATURE': 'Pointer<Int32>',
  'LPMC_DISPLAY_TECHNOLOGY_TYPE': 'Pointer<Int32>',

  // Pointers to Unicode structs
  'LPFINDREPLACEW': 'Pointer<FINDREPLACE>',
  'LPOPENFILENAMEW': 'Pointer<OPENFILENAME>',
  'LPLOGFONTW': 'Pointer<LOGFONT>',
  'LPTEXTMETRICW': 'Pointer<TEXTMETRIC>',
  'LPSHELLEXECUTEINFOW': 'Pointer<SHELLEXECUTEINFO>',
  'LPSTARTUPINFOW': 'Pointer<STARTUPINFO>',
  'LPOSVERSIONINFOW': 'Pointer<OSVERSIONINFO>',
  'LPCDLGTEMPLATEW': 'Pointer<DLGTEMPLATE>',
  'LPWIN32_FIND_DATAW': 'Pointer<WIN32_FIND_DATA>',

  'mdTypeDef': 'Uint32',
  'IMetaDataDispenserEx': 'IntPtr',
  'IMetaDataImport2': 'IntPtr',

  // Special cases
  'RPC_AUTH_IDENTITY_HANDLE': 'Pointer',
  'REFGUID': 'Pointer<GUID>',
  'LPCRECT': 'Pointer<RECT>',
  'LPCMENUINFO': 'Pointer<MENUINFO>',
  'LPCMENUITEMINFOW': 'Pointer<MENUITEMINFO>',
  'LPCSCROLLINFO': 'Pointer<SCROLLINFO>',
  'LPCLSID': 'Pointer<GUID>', 'REFCLSID': 'Pointer<GUID>',
  'REFIID': 'Pointer<GUID>', 'LPIID': 'Pointer<GUID>',
  'REFKNOWNFOLDERID': 'Pointer<GUID>',
  'BSTR': 'Pointer',
  'OLECHAR': 'Utf16',
  'VARIANTARG': 'Void', 'va_list': 'Void',
  'IUnknown': 'Void', 'IBindCtx': 'Void',
  'HPCON*': 'Pointer<IntPtr>',
  'LOGFONTW': 'LOGFONT',
  'SHELLEXECUTEINFOW': 'SHELLEXECUTEINFO',
  'WNDCLASSW': 'WNDCLASS',
  'LPPROC_THREAD_ATTRIBUTE_LIST': 'Pointer',
};
