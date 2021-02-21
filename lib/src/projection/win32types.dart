/// Converts from a Win32 type (e.g. BOOL, UINT, DWORD) to the underlying Dart
/// FFI native type (e.g. Uint32).
String convertToFFIType(String win32Type) {
  if (win32TypeMap.containsKey(win32Type)) {
    return win32TypeMap[win32Type]!;
  } else {
    if (win32Type.startsWith('LP')) {
      return 'Pointer<${win32Type.substring(2)}>';
    }
    // It's a STRUCT (or an unknown type, in which case it will fail Dart
    // analysis.)
    return win32Type;
  }
}

// Converts from a Dart FFI native type (e.g. Uint32) to the equivalent Dart
// type (e.g. int).
String convertToDartType(String ffiType) {
  const intTypes = <String>[
    'Int8',
    'Int16',
    'Int32',
    'Int64',
    'IntPtr',
    'Uint8',
    'Uint16',
    'Uint32',
    'Uint64'
  ];

  if (['Float', 'Double'].contains(ffiType)) {
    return 'double';
  }

  if (intTypes.contains(ffiType)) {
    return 'int';
  }

  return ffiType;
}

const win32TypeMap = <String, String>{
  // Base C types
  'void': 'Void',
  'int': 'Int32',
  'long': 'Int32',
  'short': 'Int16',
  'char': 'Int8',

  // Windows numerics

  // A signed integer type for pointer precision. Use when casting a pointer to
  // an integer to perform pointer arithmetic.
  'INT_PTR': 'IntPtr',

  // An unsigned INT_PTR.
  'UINT_PTR': 'IntPtr',

  // A signed long type for pointer precision. Use when casting a pointer to a
  // long to perform pointer arithmetic.
  'LONG_PTR': 'IntPtr',

  // An unsigned long type for pointer precision. Use when casting a pointer to
  // a long type to perform pointer arithmetic. (Also commonly used for general
  // 32-bit parameters that have been extended to 64 bits in 64-bit Windows.)
  // Declared as `ULONG_PTR`.
  'DWORD_PTR': 'IntPtr',

  // An unsigned LONG_PTR.
  'ULONG_PTR': 'IntPtr',

  // A message parameter. Declared as `UINT_PTR`.
  'WPARAM': 'IntPtr',

  // A message parameter. Declared as `LONG_PTR`.
  'LPARAM': 'IntPtr',

  // The maximum number of bytes to which a pointer can point. Use for a count
  // that must span the full range of a pointer. Declared as `ULONG_PTR`.
  'SIZE_T': 'IntPtr',

  // Signed result of message processing. Declared as `LONG_PTR`.
  'LRESULT': 'IntPtr',

  'FARPROC': 'IntPtr',

  // A 64-bit signed integer. The range is -9223372036854775808 through
  // 9223372036854775807 decimal.
  'LONGLONG': 'Int64',

  // A 64-bit signed integer. The range is -9223372036854775808 through
  // 9223372036854775807 decimal. Declared as `signed __int64`.
  'INT64': 'Int64',

  'LARGE_INTEGER': 'Int64',
  'ULONGLONG': 'Uint64', 'UINT64': 'Uint64', 'ULARGE_INTEGER': 'Uint64',

  // A 64-bit unsigned integer. The range is 0 through 18446744073709551615
  // decimal. Declared as `unsigned __int64`.
  'DWORDLONG': 'Uint64',

  // A 64-bit unsigned integer. Declared as `unsigned __int64`.
  'DWORD64': 'Uint64',

  // A 32-bit signed integer. The range is -2147483648 through 2147483647
  // decimal. Declared as `long`.
  'LONG': 'Int32',

  // A 32-bit signed integer. The range is -2147483648 through 2147483647
  // decimal. Declared as `long`.
  'INT': 'Int32',

  'INT32': 'Int32', 'LSTATUS': 'Int32',

  // A 32-bit unsigned integer. Declared as `unsigned int`.
  'DWORD32': 'Uint32',

  // An unsigned INT. The range is 0 through 4294967295 decimal. Declared as
  // `unsigned int`.
  'UINT': 'Uint32',

  // An unsigned INT32. The range is 0 through 4294967295 decimal. Declared as
  // `unsigned int`.
  'UINT32': 'Uint32',

  // A 32-bit unsigned integer. The range is 0 through 4294967295 decimal.
  // Declared as `unsigned long`.
  'DWORD': 'Uint32',

  // An unsigned LONG. The range is 0 through 4294967295 decimal. Declared as
  // `unsigned long`.
  'ULONG': 'Uint32',

  // A 16-bit integer. The range is -32768 through 32767 decimal. Declared as
  // `short`.
  'SHORT': 'Int16',

  // A 16-bit signed integer. Declared as `signed short`.
  'INT16': 'Int16',

  // A 16-bit unsigned integer. The range is 0 through 65535 decimal. Declared
  // as `unsigned short`.
  'WORD': 'Uint16',

  // A 16-bit Unicode character. Declared as `wchar_t`.
  'WCHAR': 'Uint16',

  // An unsigned INT16. Declared as `unsigned short`.
  'UINT16': 'Uint16',

  // An atom. Declared as `WORD`.
  'ATOM': 'Uint16',

  // An unsigned SHORT. The range is 0 through 65535 decimal. Declared as
  // `unsigned short`.
  'USHORT': 'Uint16',

  // A Boolean variable (should be TRUE or FALSE). Defined as `BYTE`.
  'BOOLEAN': 'Uint8',

  // A byte (8 bits). Type defined as as `unsigned char`.
  'BYTE': 'Uint8',

  // An 8-bit Windows (ANSI) character. Declared as `char`.
  'CHAR': 'Int8',

  // An unsigned CHAR. Declared as `unsigned char`.
  'UCHAR': 'Uint8',

  // A Boolean variable (should be TRUE or FALSE). Defined as `int`.
  'BOOL': 'Int32', '_BOOL': 'Int32',

  // A floating-point variable. Defined as `float`.
  'FLOAT': 'Float',

  'DOUBLE': 'Double', 'double': 'Double',
  'VOID': 'Void',

  // A handle to an object. Declared as `PVOID`.
  'HANDLE': 'IntPtr',

  // A handle to an accelerator table. Declared as `HANDLE`.
  'HACCEL': 'IntPtr',

  // A handle to a bitmap. Declared as `HANDLE`.
  'HBITMAP': 'IntPtr',

  // A handle to a brush. Declared as `HANDLE`.
  'HBRUSH': 'IntPtr',

  // A handle to a color space. Declared as `HANDLE`.
  'HCOLORSPACE': 'IntPtr',

  // A handle to a cursor. Declared as `HANDLE`.
  'HCURSOR': 'IntPtr',

  // A handle to a device context (DC). Declared as `HANDLE`.
  'HDC': 'IntPtr',

  // A handle to a desktop. Declared as `HANDLE`.
  'HDESK': 'IntPtr',

  // A handle to an enhanced metafile. Declared as `HANDLE`.
  'HENHMETAFILE': 'IntPtr',

  // A handle to a file opened by OpenFile, not CreateFile. Declared as `HANDLE`.
  'HFILE': 'IntPtr',

  // A handle to a font. Declared as `HANDLE`.
  'HFONT': 'IntPtr',

  // A handle to a GDI object. Declared as `HANDLE`.
  'HGDIOBJ': 'IntPtr',

  // A handle to a global memory block. Declared as `HANDLE`.
  'HGLOBAL': 'IntPtr',

  // A handle to an icon. Declared as `HANDLE`.
  'HICON': 'IntPtr',

  // A handle to an instance. This is the base address of the module in memory.
  // HMODULE and HINSTANCE are the same today, but represented different things
  // in 16-bit Windows. Declared as `HANDLE`.
  'HINSTANCE': 'IntPtr',

  // A handle to a registry key. Declared as `HANDLE`.
  'HKEY': 'IntPtr',

  // A handle to a keyboard layout. Declared as `HANDLE`.
  'HKL': 'IntPtr',

  // A handle to a menu. Declared as `HANDLE`.
  'HMENU': 'IntPtr',

  // A handle to a metafile. Declared as `HANDLE`.
  'HMETAFILE': 'IntPtr',

  // A handle to a module. The is the base address of the module in memory.
  // Declared as `HANDLE`.
  'HMODULE': 'IntPtr',

  // A handle to a display monitor. Declared as `HANDLE`.
  'HMONITOR': 'IntPtr',

  // A handle to a palette. Declared as `HANDLE`.
  'HPALETTE': 'IntPtr',

  // A handle to a pen. Declared as `HANDLE`.
  'HPEN': 'IntPtr',

  // A handle to a region. Declared as `HANDLE`.
  'HRGN': 'IntPtr',

  // A handle to a resource. Declared as `HANDLE`.
  'HRSRC': 'IntPtr',

  // A handle to a window. Declared as `HANDLE`.
  'HWND': 'IntPtr',

  'HBLUETOOTH_DEVICE_FIND': 'IntPtr',
  'HBLUETOOTH_RADIO_FIND': 'IntPtr',
  'HBLUETOOTH_AUTHENTICATION_REGISTRATION': 'IntPtr',

  // A handle to a pseudoconsole.
  'HPCON': 'IntPtr',

  'HWAVEOUT': 'IntPtr',

  // A handle to a Windows Runtime string.
  'HSTRING': 'IntPtr',

  'HPOWERNOTIFY': 'IntPtr',

  // The return codes used by COM interfaces. To test an HRESULT value, use the
  // FAILED and SUCCEEDED macros. Declared as `LONG`.
  'HRESULT': 'Int32',

  'MMRESULT': 'Uint32',
  'NTSTATUS': 'Int32',

  // Subtype of a VARIANT. Declared as `unsigned short`.
  'VARTYPE': 'Uint16',

  // A language identifier. Declared as `WORD`.
  'LANGID': 'Uint16',

  // A locale identifier. Declared as `DWORD`.
  'LCID': 'Uint32',

  // A locale information. Declared as `DWORD`.
  'LCTYPE': 'Uint32',

  // A language group identifier. Declared as `DWORD`.
  'LGRPID': 'Uint32',

  'SHSTDAPI': 'Int32', 'SHFOLDERAPI': 'Int32',

  // The red, green, blue (RGB) color value (32 bits). Defined as `DWORD`.
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
  'NLM_NETWORK_CATEGORY': 'Uint32',
  'NLM_DOMAIN_TYPE': 'Uint32',
  'NLM_CONNECTIVITY': 'Uint32',

  'EXECUTION_STATE': 'Uint32',

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
  'LPBOOL': 'Pointer<Uint32>', 'LPUINT': 'Pointer<Uint32>',
  'LPWORD': 'Pointer<Uint16>',

  // Strings
  'LPWSTR': 'Pointer<Utf16>', 'LPCWSTR': 'Pointer<Utf16>',
  'LPCTSTR': 'Pointer<Utf16>',
  'LPTSTR': 'Pointer<Utf16>', 'LPWCH': 'Pointer<Utf16>',
  'LPCWCH': 'Pointer<Utf16>',
  'LPCOLESTR': 'Pointer<Utf16>',
  'LPOLESTR': 'Pointer<Utf16>',
  'PCNZWCH': 'Pointer<Utf16>',
  'LPCSTR': 'Pointer<Uint8>',
  'LPSTR': 'Pointer<Uint8>',
  'LPCCH': 'Pointer<Uint8>',
  'TCHAR': 'Uint16',
  'PCSTR': 'Pointer<Uint8>',
  'PSTR': 'Pointer<Utf8>',
  'PCTSTR': 'Pointer<Utf16>',
  'PCWSTR': 'Pointer<Utf16>',
  // A pointer to a null-terminated string of 16-bit Unicode characters.
  'PWSTR': 'Pointer<Utf16>',
  'BSTR': 'Pointer<Utf16>',

  // Pointers not prefixed with LP*
  'PBOOL': 'Pointer<Int32>',
  'PBOOLEAN': 'Pointer<Uint8>',
  'PBYTE': 'Pointer<Uint8>',
  'PCHAR': 'Pointer<Int8>',
  'PDWORD': 'Pointer<Uint32>',
  'PDWORDLONG': 'Pointer<Uint64>',
  'PDWORD_PTR': 'Pointer<IntPtr>',
  'PDWORD32': 'Pointer<Uint32>',
  'PDWORD64': 'Pointer<Uint64>',
  'PFLOAT': 'Pointer<Float>',
  'PHALF_PTR': 'Pointer<IntPtr>',
  'PHANDLE': 'Pointer<IntPtr>',
  'PHKEY': 'Pointer<IntPtr>',
  'PINT': 'Pointer<Int32>',
  'PINT_PTR': 'Pointer<IntPtr>',
  'PINT8': 'Pointer<Int8>',
  'PINT16': 'Pointer<Int16>',
  'PINT32': 'Pointer<Int32>',
  'PINT64': 'Pointer<Int64>',
  'PLCID': 'Pointer<Uint32>',
  'PLONG': 'Pointer<Int32>',
  'PLONGLONG': 'Pointer<Int64>',
  'PSHORT': 'Pointer<Int64>',
  'PUINT': 'Pointer<Uint32>',
  'PULONGLONG': 'Pointer<Uint64>',
  'PLARGE_INTEGER': 'Pointer<Int64>',
  'PSIZE_T': 'Pointer<IntPtr>',
  'PBLUETOOTH_OOB_DATA_INFO': 'Pointer<BLUETOOTH_OOB_DATA_INFO>',
  'PBLUETOOTH_RADIO_INFO': 'Pointer<BLUETOOTH_RADIO_INFO>',
  'PCREDENTIALW': 'Pointer<CREDENTIAL>',
  'PCOORD': 'Pointer<COORD>', 'PWINDOWINFO': 'Pointer<WINDOWINFO>',
  'PSECURITY_DESCRIPTOR': 'Pointer<SECURITY_DESCRIPTOR>',
  'PCONSOLE_CURSOR_INFO': 'Pointer<CONSOLE_CURSOR_INFO>',
  'PCONSOLE_SELECTION_INFO': 'Pointer<CONSOLE_SELECTION_INFO>',
  'PCONSOLE_SCREEN_BUFFER_INFO': 'Pointer<CONSOLE_SCREEN_BUFFER_INFO>',
  'PCACTCTXW': 'Pointer<ACTCTX>',
  'PLASTINPUTINFO': 'Pointer<LASTINPUTINFO>',

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
  'LPCGUID': 'Pointer<GUID>',
  'LPCMENUINFO': 'Pointer<MENUINFO>',
  'LPCMENUITEMINFOW': 'Pointer<MENUITEMINFO>',
  'LPCSCROLLINFO': 'Pointer<SCROLLINFO>',
  'LPCWAVEFORMATEX': 'Pointer<WAVEFORMATEX>',
  'LPCLSID': 'Pointer<GUID>', 'REFCLSID': 'Pointer<GUID>',
  'REFIID': 'Pointer<GUID>', 'LPIID': 'Pointer<GUID>',
  'REFKNOWNFOLDERID': 'Pointer<GUID>',
  'OLECHAR': 'Utf16',
  'VARIANTARG': 'Void', 'va_list': 'Void',
  'IEnumNetworkConnections': 'Pointer',
  'IUnknown': 'Pointer', 'IBindCtx': 'Pointer',
  'HPCON*': 'Pointer<IntPtr>',
  'LPHWAVEOUT': 'Pointer<IntPtr>',
  'LOGFONTW': 'LOGFONT',
  'SHELLEXECUTEINFOW': 'SHELLEXECUTEINFO',
  'WNDCLASSW': 'WNDCLASS',
  'LPPROC_THREAD_ATTRIBUTE_LIST': 'Pointer',

// Enums generated by win32metadata
// TODO: Generate these directly
  'ROP_CODE': 'Uint32',
  'DIB_USAGE': 'Uint32',
};
