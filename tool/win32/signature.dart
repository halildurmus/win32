// converter.dart

// The data model as loaded from JSON (as found in model.dart) contains a string
// prototype for each API. This class parses the raw format into something more
// useful, which can in turn be used to generate FFI mappings and tests.

// We could just serialize this file to JSON, but it would be a pain to edit.
// The JSON is designed to be hand-editable and easy to create from Windows API
// header files and/or documentation. The extra layer of abstraction should be
// better in the long run.

import 'win32types.dart';

class Win32Signature {
  final String name;
  final String returnType;
  final List<Win32Param> params;

  const Win32Signature(this.returnType, this.name, this.params);

  factory Win32Signature.fromSyntaxString(String syntax) {
    final paramsStart = syntax.indexOf('(');
    final preamble = syntax
        .substring(0, paramsStart)
        .replaceAll('WINAPI ', '')
        .split(' ')
        .map((s) => s.trim())
        .toList();

    if (preamble.length != 2) {
      throw Exception('preamble != 2 at $syntax.');
    }
    final returnType = preamble[0];
    final apiName = preamble[1];

    final params = syntax
        .substring(paramsStart + 1, syntax.length - 2)
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
        .map((s) => Win32Param(s.map((p) => p.trim()).toList()))
        .toList()
          ..removeWhere((param) => param.ffiType == 'Void');

    return Win32Signature(returnType, apiName, params);
  }

  String get nameWithoutEncoding =>
      name.endsWith('W') ? name.substring(0, name.length - 1) : name;
}

class Win32Param {
  late String name;
  final String windowsType;
  late String ffiType;

  String get dartType {
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

  Win32Param(List<String> param)
      : assert(param.length == 2),
        windowsType = param.last {
    ffiType = ffiFromWin32(param.first);
    name = param.last;

    if (name.startsWith('**')) {
      ffiType = 'Pointer<Pointer>';
      name = name.substring(2);
    }

    if (name.startsWith('*')) {
      if (ffiType == 'Void') {
        ffiType = 'Pointer';
      } else {
        ffiType = 'Pointer<$ffiType>';
      }
      name = name.substring(1);
    }
  }
}
