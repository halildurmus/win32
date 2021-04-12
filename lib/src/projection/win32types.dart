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

  if (ffiType == 'Void') {
    return 'void';
  }

  if (ffiType == '/* Boolean */ Uint8') {
    return 'bool';
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
  // Enums generated by win32metadata
  'ProcessHeapHandle': 'IntPtr',
  'CONSOLE_READCONSOLE_CONTROL': 'Void',

  // Callbacks
  'LPCCHOOKPROC': 'Pointer<NativeFunction<CCHookProc>>',
  'LPCFHOOKPROC': 'Pointer<NativeFunction<CFHookProc>>',
  'LPFRHOOKPROC': 'Pointer<NativeFunction<FRHookProc>>',
  'LPOFNHOOKPROC': 'Pointer<NativeFunction<OFNHookProc>>',
  'DLGPROC': 'Pointer<NativeFunction<DlgProc>>',
  'DRAWSTATEPROC': 'Pointer<NativeFunction<DrawStateProc>>',
  'WNDPROC': 'Pointer<NativeFunction<WindowProc>>',
  'WNDENUMPROC': 'Pointer<NativeFunction<EnumWindowsProc>>',
  'FONTENUMPROCW': 'Pointer<NativeFunction<EnumFontFamExProc>>',
  'ENUMRESNAMEPROCW': 'Pointer<NativeFunction<EnumResNameProc>>',
  'ENUMRESTYPEPROCW': 'Pointer<NativeFunction<EnumResTypeProc>>',
  'MONITORENUMPROC': 'Pointer<NativeFunction<MonitorEnumProc>>',
  'GRAYSTRINGPROC': 'Pointer<NativeFunction<OutputProc>>',
  'SENDASYNCPROC': 'Pointer<NativeFunction<SendAsyncProc>>',
  'PHANDLER_ROUTINE': 'Pointer<NativeFunction<HandlerProc>>',
  'TIMERPROC': 'Pointer<NativeFunction<TimerProc>>',
  'PFN_AUTHENTICATION_CALLBACK_EX':
      'Pointer<NativeFunction<PfnAuthenticationCallbackEx>>',
  'PSYM_ENUMERATESYMBOLS_CALLBACKW':
      'Pointer<NativeFunction<SymEnumSymbolsProc>>',
  'LPEXCEPFINO_DEFERRED_FILLIN': 'Pointer<NativeFunction<ExcepInfoProc>>',

  // Void pointers
  'LPVOID': 'Pointer', 'PVOID': 'Pointer', 'LPCVOID': 'Pointer',
  'LPUNKNOWN': 'Pointer<IntPtr>',

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

  'PSIZE_T': 'Pointer<IntPtr>',

  'PSID': 'Pointer',

  'mdTypeDef': 'Uint32',
  'IMetaDataDispenserEx': 'IntPtr',
  'IMetaDataImport2': 'IntPtr',

  // COM interfaces
  'IEnumIDList': 'Pointer',
  'IEnumMoniker': 'Pointer',
  'IEnumNetworkConnections': 'Pointer',
  'IEnumNetworks': 'Pointer',
  'IEnumShellItems': 'Pointer',
  'IEnumString': 'Pointer',
  'IEnumVARIANT': 'Pointer',
  'IEnumWbemClassObject': 'Pointer',
  'IFileDialogEvents': 'Pointer',
  'IFileOperationProgressSink': 'Pointer',
  'IInspectable': 'Pointer',
  'IKnownFolder': 'Pointer',
  'IMoniker': 'Pointer',
  'INetwork': 'Pointer',
  'INetworkConnection': 'Pointer',
  'IPropertyDescriptionList': 'Pointer',
  'IPropertyStore': 'Pointer',
  'IProvideClassInfo': 'Pointer',
  'IRunningObjectTable': 'Pointer',
  'IShellFolder': 'Pointer',
  'IShellItem': 'Pointer',
  'IShellItemArray': 'Pointer',
  'IShellItemFilter': 'Pointer',
  'IStream': 'Pointer',
  'ITypeInfo': 'Pointer',
  'IUnknown': 'Pointer', 'IBindCtx': 'Pointer',
  'IWbemCallResult': 'Pointer',
  'IWbemClassObject': 'Pointer',
  'IWbemContext': 'Pointer',
  'IWbemObjectSink': 'Pointer',
  'IWbemQualifierSet': 'Pointer',
  'IWbemServices': 'Pointer',

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
  'HPCON*': 'Pointer<IntPtr>',
  'LPHWAVEOUT': 'Pointer<IntPtr>',
  'LOGFONTW': 'LOGFONT',
  'SHELLEXECUTEINFOW': 'SHELLEXECUTEINFO',
  'WNDCLASSW': 'WNDCLASS',
  'LPPROC_THREAD_ATTRIBUTE_LIST': 'Pointer',
};
