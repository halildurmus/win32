const typeMappings = <String, String>{
  // Base C types
  'void': 'void',
  'int': 'Int32',
  'long': 'Int32',
  'short': 'Int16',
  'char': 'Int8',

  // Windows ints
  'LONGLONG': 'Int64', 'INT64': 'Int64',
  'ULONGLONG': 'Uint64', 'UINT64': 'Uint64',
  'LONG': 'Int32', 'INT': 'Int32', 'INT32': 'Int32',
  'UINT': 'Uint32', 'UINT32': 'Uint32', 'DWORD': 'Uint32', 'ULONG': 'Uint32',
  'SHORT': 'Int16', 'INT16': 'Int16', 'WORD': 'Uint16', 'UINT16': 'Uint16',
  'BYTE': 'Uint8',
  'BOOL': 'Int32',

  // Windows strings
  'LPCSTR': 'Pointer<Utf16>',
  'LPCWSTR': 'Pointer<Utf16>',
  'LPWSTR': 'Pointer<Utf16>',
  'BSTR': 'Pointer<Utf16>',
  'WCHAR': 'Pointer<Utf16>',

  // Core Windows types
  'ATOM': 'Int16',
  'HANDLE': 'IntPtr',
  'HBRUSH': 'IntPtr',
  'HDC': 'IntPtr',
  'HINSTANCE': 'IntPtr',
  'HRESULT': 'Uint32',
  'HWND': 'IntPtr',
  'LPARAM': 'IntPtr',
  'LRESULT': 'IntPtr',
  'REFGUID': 'Pointer<GUID>',
  'REFIID': 'Pointer<GUID>',
  'WPARAM': 'IntPtr',
  'WNDPROC': 'IntPtr',

  // Structs and enums
  'CDCONTROLSTATEF': 'Int32',
  'CIMTYPE': 'Int32',
  'CLSID': 'CLSID',
  'COLORREF': 'Uint32',
  'COMDLG_FILTERSPEC': 'COMDLG_FILTERSPEC',
  'DESKTOP_SLIDESHOW_OPTIONS': 'Uint32',
  'DESKTOP_SLIDESHOW_DIRECTION': 'Uint32',
  'DESKTOP_SLIDESHOW_STATE': 'Uint32',
  'DESKTOP_WALLPAPER_POSITION': 'Uint32',
  'FDAP': 'Uint32',
  'FILEOPENDIALOGOPTIONS': 'Uint32',
  'FILETIME': 'FILETIME',
  'GETPROPERTYSTOREFLAGS': 'Uint32',
  'PROPERTYKEY': 'PROPERTYKEY',
  'PROPVARIANT': 'PROPVARIANT',
  'REFPROPERTYKEY': 'Pointer<PROPERTYKEY>',
  'RECT': 'RECT',
  'SAFEARRAY': 'SAFEARRAY',
  'SFGAOF': 'Uint32',
  'SHCONTF': 'Uint32',
  'SICHINTF': 'Uint32',
  'SIGDN': 'Uint32',
  'SIATTRIBFLAGS': 'Uint32',
  'VARIANT': 'VARIANT_POINTER', // NOTE: This projection is incomplete

  // WinRT types
  'IID': 'Pointer<GUID>',
  'HSTRING': 'IntPtr',
  'TrustLevel': 'Int32',
  'PickerViewMode': 'Int32',
  'PickerLocationId': 'Int32',
  'boolean': 'Uint8',
  'DateTime': 'Int64',
  'DayOfWeek': 'Int32',
  'Calendar': 'IntPtr', // NOTE: might need narrowing

  // Interfaces
  'IBindCtx': 'COMObject',
  'IEnumShellItems': 'COMObject',
  'IEnumWbemClassObject': 'COMObject',
  'IFileDialogEvents': 'COMObject',
  'IFileOperationProgressSink': 'COMObject',
  'IPropertyDescriptionList': 'COMObject',
  'IPropertyStore': 'COMObject',
  'IShellItem': 'COMObject',
  'IShellItemArray': 'COMObject',
  'IShellItemFilter': 'COMObject',
  'IUnknown': 'COMObject',
  'IWbemCallResult': 'COMObject',
  'IWbemClassObject': 'COMObject',
  'IWbemContext': 'COMObject',
  'IWbemObjectSink': 'COMObject',
  'IWbemQualifierSet': 'COMObject',
  'IWbemServices': 'COMObject',
};

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

String dartType(String nativeType) =>
    intTypes.contains(nativeType) ? 'int' : nativeType;
