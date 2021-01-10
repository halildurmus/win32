import 'dart:collection';
import 'dart:io';

final prototypes = <String, TypeDef>{};

class TypeDef {
  late String neutralApiName;
  final List<String> prototype;
  late String nativeReturn;
  late String dartReturn;

  Map<String, String> nativeParams = {};
  Map<String, String> dartParams = {};
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
    'LRESULT': 'IntPtr', 'FARPROC': 'IntPtr',
    'LONGLONG': 'Int64', 'INT64': 'Int64', 'LARGE_INTEGER': 'Int64',
    'ULONGLONG': 'Uint64', 'UINT64': 'Uint64', 'ULARGE_INTEGER': 'Uint64',
    'LONG': 'Int32', 'INT': 'Int32', 'INT32': 'Int32', 'LSTATUS': 'Int32',
    'UINT': 'Uint32', 'UINT32': 'Uint32', 'DWORD': 'Uint32', 'ULONG': 'Uint32',
    'SHORT': 'Int16', 'INT16': 'Int16',
    'WORD': 'Uint16', 'UINT16': 'Uint16', 'ATOM': 'Uint16',
    'BYTE': 'Uint8',
    'BOOL': 'Int32', '_BOOL': 'Int32',
    'FLOAT': 'Float',
    'DOUBLE': 'Double',

    'HANDLE': 'IntPtr', 'HRSRC': 'IntPtr', 'HWND': 'IntPtr',
    'HMODULE': 'IntPtr', 'HGLOBAL': 'IntPtr', 'HDC': 'IntPtr',
    'HBITMAP': 'IntPtr', 'HPEN': 'IntPtr', 'HBRUSH': 'IntPtr',
    'HACCEL': 'IntPtr',
    'HFONT': 'IntPtr', 'HPALETTE': 'IntPtr', 'HGDIOBJ': 'IntPtr',
    'HMENU': 'IntPtr', 'HICON': 'IntPtr', 'HMONITOR': 'IntPtr',
    'HCURSOR': 'IntPtr', 'HBLUETOOTH_DEVICE_FIND': 'IntPtr',
    'HBLUETOOTH_RADIO_FIND': 'IntPtr', 'HINSTANCE': 'IntPtr',

    'HRESULT': 'Int32',
    'NTSTATUS': 'Int32',
    'SHSTDAPI': 'Int32', 'SHFOLDERAPI': 'Int32',
    'COLORREF': 'Int32',
    'MCIDEVICEID': 'Uint32', 'MCIERROR': 'Uint32',

    'LPVOID': 'Pointer',

    'BSTR': 'Pointer',
  };

  if (mapping.containsKey(win32Type)) {
    return mapping[win32Type]!;
  } else {
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

class Win32Function {
  final String name;
  final String returnType;
  final List<List<String>> params;

  const Win32Function(this.returnType, this.name, this.params);

  String convertParamType(List<String> param) => ffiFromWin32(param.first);
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

  final params = rawFunction
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
  // print(params);

  for (final param in params) {
    if ((param.length != 2) &&
        (param[0].isNotEmpty) &&
        (!(param.length == 1 && param[0] == 'void'))) {
      throw Exception('params != 2');
    }
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

    final nativeReturn = fields[idx++];

    prototypes[apiName] = TypeDef(prototype.split('\n'))
      ..neutralApiName = neutralApiName
      ..dllLibrary = dllLibrary
      ..nativeReturn = nativeReturn
      ..dartReturn = dartFromFFI(nativeReturn);

    try {
      final numParams = int.parse(fields[idx++]);
      for (var i = 0; i < numParams; i++) {
        final paramName = fields[idx++];
        final paramNativeType = fields[idx++];

        prototypes[apiName]!.dartParams[paramName] =
            dartFromFFI(paramNativeType);
        prototypes[apiName]!.nativeParams[paramName] = paramNativeType;
      }
    } catch (e) {
      print('Error processing parameters for $apiName at index $idx.');
      rethrow;
    }

    // last field is the comment
    // keep consuming until we have a quoted string
    if (fields.length > idx) {
      prototypes[apiName]!.comment = fields[idx++];
      while (prototypes[apiName]!.comment.indexOf('"') == 0 &&
          prototypes[apiName]!.comment.lastIndexOf('"') == 0) {
        prototypes[apiName]!.comment += ', ${fields[idx++]}';
      }
      prototypes[apiName]!.comment =
          prototypes[apiName]!.comment.replaceAll('"', '');
    } else {
      prototypes[apiName]!.comment = '';
    }
  }

  for (final func in prototypes.keys) {
    // print('Loading $func');
    loadFunction(prototypes[func]!.prototype[0]);
  }
}

void saveCsv(String filename) {
  final file = File(filename);
  final buffer = StringBuffer();
  buffer.writeln(
      'ApiName, NeutralApiName, DllLibrary, WindowsPrototype, ReturnNative, '
      'ReturnDart, ParamCount, Param1Native, Param1Dart, Comment');

  for (final protoKey in prototypes.keys) {
    final proto = prototypes[protoKey]!;
    final fields = <String>[
      protoKey,
      proto.neutralApiName,
      proto.dllLibrary,
      '"${proto.prototype.first}"',
      proto.nativeReturn,
      proto.nativeParams.length.toString(),
    ];
    for (final key in proto.nativeParams.keys) {
      fields.add(key);
      fields.add(proto.nativeParams[key]!);
    }
    fields.add('"${proto.comment}"');
    buffer.writeln(fields.join(", "));
  }
  file.writeAsStringSync(buffer.toString());
}
