// converter.dart

// The data model as loaded from JSON (as found in model.dart) contains a string
// prototype for each API. This class parses the raw format into something more
// useful, which can in turn be used to generate FFI mappings and tests.

// We could just serialize this file to JSON, but it would be a pain to edit.
// The JSON is designed to be hand-editable and easy to create from Windows API
// header files and/or documentation. The extra layer of abstraction should be
// better in the long run.

import 'model.dart';
import 'win32types.dart';

final win32APIs = <Win32Function>[];

class Win32Function {
  final String name;
  final String returnType;
  final List<List<String>> params;

  const Win32Function(this.returnType, this.name, this.params);

  factory Win32Function.fromPrototype(String rawFunction) {
    final paramsStart = rawFunction.indexOf('(');
    final preamble = rawFunction
        .substring(0, paramsStart)
        .replaceAll('WINAPI ', '')
        .split(' ')
        .map((s) => s.trim())
        .toList();

    if (preamble.length != 2) {
      throw Exception('preamble != 2 at $rawFunction.');
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

    return Win32Function(returnType, apiName, params);
  }

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
    }

    return [paramType, paramName];
  }
}

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

void parsePrototypes() {
  for (final func in prototypes.keys) {
    win32APIs.add(Win32Function.fromPrototype(prototypes[func]!.prototype[0]));
  }
}
