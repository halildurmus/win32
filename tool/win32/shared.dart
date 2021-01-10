import 'dart:io';

// THIS IS TERRIBLE CODE AND I NEED TO UNTANGLE IT

final prototypes = <String, TypeDef>{};

class TypeDef {
  late String neutralApiName;
  final List<String> prototype;

  late String dllLibrary;
  late String comment;

  TypeDef(this.prototype);
}

String ffiFromWin32(String win32Type) {
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
    'BYTE': 'Uint8',
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
    'HBLUETOOTH_RADIO_FIND': 'IntPtr', 'HINSTANCE': 'IntPtr',
    'HPCON': 'IntPtr',

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

    // Callbacks
    'FONTENUMPROCW': 'Pointer<NativeFunction>',
    'ENUMRESTYPEPROCW': 'Pointer<NativeFunction>',
    'ENUMRESNAMEPROCW': 'Pointer<NativeFunction>',
    'MONITORENUMPROC': 'Pointer<NativeFunction>',
    'GRAYSTRINGPROC': 'Pointer<NativeFunction>',
    'WNDENUMPROC': 'Pointer<NativeFunction>',
    'PHANDLER_ROUTINE': 'Pointer<NativeFunction>',
    'TIMERPROC': 'Pointer<NativeFunction>',
    'DLGPROC': 'Pointer<NativeFunction>',

    // Void pointers
    'LPVOID': 'Pointer', 'PVOID': 'Pointer', 'LPCVOID': 'Pointer',
    'LPUNKNOWN': 'Pointer<IntPtr>',

    // Pointers to ints
    'LPDWORD': 'Pointer<Uint32>', 'LPBYTE': 'Pointer<Uint8>',

    // Strings
    'LPWSTR': 'Pointer<Utf16>', 'LPCWSTR': 'Pointer<Utf16>',
    'PCWSTR': 'Pointer<Utf16>', 'LPCTSTR': 'Pointer<Utf16>',
    'LPTSTR': 'Pointer<Utf16>', 'LPWCH': 'Pointer<Utf16>',
    'LPCOLESTR': 'Pointer<Utf16>',
    'LPCSTR': 'Pointer<Uint8>', // This is an ANSI type string
    'TCHAR': 'Uint16', 'PWSTR': 'Pointer<Utf16>',

    // Pointers not prefixed with LP*
    'PUINT': 'Pointer<Uint32>', 'PHANDLE': 'Pointer<IntPtr>',
    'PULONGLONG': 'Pointer<Uint64>', 'PDWORD': 'Pointer<Uint32>',
    'PLONG': 'Pointer<Int32>',
    'PLARGE_INTEGER': 'Pointer<Int64>', 'PSIZE_T': 'Pointer<IntPtr>',
    'PBLUETOOTH_OOB_DATA_INFO': 'Pointer<BLUETOOTH_OOB_DATA_INFO>',
    'PCREDENTIALW': 'Pointer<CREDENTIAL>', 'PHKEY': 'Pointer<IntPtr>',
    'PCOORD': 'Pointer<COORD>',
    'PSECURITY_DESCRIPTOR': 'Pointer<SECURITY_DESCRIPTOR>',
    'PCONSOLE_CURSOR_INFO': 'Pointer<CONSOLE_CURSOR_INFO>',
    'PCONSOLE_SELECTION_INFO': 'Pointer<CONSOLE_SELECTION_INFO>',
    'PCONSOLE_SCREEN_BUFFER_INFO': 'Pointer<CONSOLE_SCREEN_BUFFER_INFO>',

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

    // Special cases
    'RPC_AUTH_IDENTITY_HANDLE': 'Pointer',
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

String dartFromFFI(String ffiType) {
  if (ffiType.startsWith('Pointer')) {
    return ffiType;
  }
  if (ffiType.startsWith('Uint') || ffiType.startsWith('Int')) {
    return 'int';
  }

  if (['Double', 'Float'].contains(ffiType)) {
    return 'double';
  }

  if (ffiType == 'Void') {
    return 'void';
  }

  // Must be a struct passed by value, e.g. COORD in SetConsoleCursorPosition
  return ffiType;
}

final win32APIs = <Win32Function>[];

class Win32Param {
  late final String name;
  late final String returnType;

  Win32Param(List<String> param) {
    if (param.length != 2) {
      throw ArgumentError('Constructor list must have length of two.');
    }
    name = param.first;
    returnType = param.last;
  }
}

class Win32Function {
  final String name;
  final String returnType;
  final List<List<String>> params;

  const Win32Function(this.returnType, this.name, this.params);

  String get nameWithoutEncoding =>
      name.endsWith('W') ? name.substring(0, name.length - 1) : name;

  List<String> convertParamType(List<String> param) {
    var paramType = ffiFromWin32(param.first);
    var paramName = param.last;

    while (paramName.startsWith('*')) {
      if (paramType == 'Void') {
        paramType = 'Pointer';
      } else {
        paramType = 'Pointer<$paramType>';
      }
      paramName = paramName.substring(1);

      // // Double pointers are always of type Pointer<IntPtr>
      // if (paramType.startsWith('Pointer<Pointer<')) {
      //   paramType = 'Pointer<IntPtr>';
      // }
    }

    return [paramType, paramName];
  }
}

Win32Function loadFunction(String rawFunction) {
  final paramsStart = rawFunction.indexOf('(');
  final preamble = rawFunction
      .substring(0, paramsStart)
      .replaceAll('WINAPI ', '')
      .split(' ')
      .map((s) => s.trim())
      .toList();

  if (preamble.length != 2) {
    throw Exception('preamble != 2');
  }
  final returnType = preamble[0];
  final apiName = preamble[1];

  var params = rawFunction
      .substring(paramsStart + 1, rawFunction.length - 2)
      .split(',')
      .map((s) => s.replaceAll(r'\n', ''))
      .map((s) => s.replaceAll('_In_', ''))
      .map((s) => s.replaceAll('_Out_', ''))
      .map((s) => s.replaceAll('opt_', ''))
      .map((s) => s.replaceAll('_Reserved_', ''))
      .map((s) => s.replaceAll('_Inout_', ''))
      .map((s) => s.replaceAll('_Frees_ptr_', ''))
      .map((s) => s.replaceAll('const', ''))
      .map((s) => s.trim())
      .map((s) => s.split(RegExp(' +')))
      .map((s) => s.map((p) => p.trim()).toList())
      .toList();

  for (final param in params) {
    if ((param.length != 2) &&
        (param[0].isNotEmpty) &&
        (!(param.length == 1 && param[0] == 'void'))) {
      throw Exception('params != 2');
    }
  }

  if (params.first.length == 1) {
    params = [];
  }

  final func = Win32Function(returnType, apiName, params);
  win32APIs.add(func);
  return func;
}

void loadCsv(String filename) {
  final file = File(filename);
  final lines = file.readAsLinesSync().skip(1);
  for (final line in lines) {
    final fields = line.split(', ');
    final apiName = fields[0];
    final neutralApiName = fields[1];
    final dllLibrary = fields[2];

    var prototype = fields[3];
    var idx = 4;
    // keep consuming until we have a quoted string
    while (prototype.allMatches('"').length == 1) {
      // ignore: use_string_buffers
      prototype += ', ${fields[idx++]}';
    }
    prototype = prototype.replaceAll('"', '');

    prototypes[apiName] = TypeDef(prototype.split('\n'))
      ..neutralApiName = neutralApiName
      ..dllLibrary = dllLibrary;

    // last field is the comment
    // keep consuming until we have a quoted string
    prototypes[apiName]!.comment = fields[idx++];
    while (prototypes[apiName]!.comment.indexOf('"') == 0 &&
        prototypes[apiName]!.comment.lastIndexOf('"') == 0) {
      prototypes[apiName]!.comment += ', ${fields[idx++]}';
    }
    prototypes[apiName]!.comment =
        prototypes[apiName]!.comment.replaceAll('"', '');
  }

  for (final func in prototypes.keys) {
    loadFunction(prototypes[func]!.prototype[0]);
  }
}

void saveCsv(String filename) {
  final file = File(filename);
  final buffer = StringBuffer();
  buffer.writeln(
      'ApiName, NeutralApiName, DllLibrary, WindowsPrototype, Comment');

  for (final protoKey in prototypes.keys) {
    final proto = prototypes[protoKey]!;
    final fields = <String>[
      protoKey,
      proto.neutralApiName,
      proto.dllLibrary,
      '"${proto.prototype.first}"',
      '"${proto.comment}"'
    ];

    buffer.writeln(fields.join(", "));
  }
  file.writeAsStringSync(buffer.toString());
}
