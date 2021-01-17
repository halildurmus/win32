import 'dart:convert';
import 'dart:io';

import 'win32types.dart';

// THIS IS TERRIBLE CODE AND I NEED TO UNTANGLE IT

final prototypes = <String, TypeDef>{};

class TypeDef {
  final String neutralApiName;
  final List<String> prototype;

  final String dllLibrary;
  final String comment;

  const TypeDef(
      this.neutralApiName, this.dllLibrary, this.prototype, this.comment);

  Map<String, dynamic> toJson() => <String, dynamic>{
        'neutralApiName': neutralApiName,
        'prototype': prototype.first,
        'dllLibrary': dllLibrary,
        'comment': comment
      };
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

    var comment = fields[idx++];
    // last field is the comment
    // keep consuming until we have a quoted string
    while (comment.indexOf('"') == 0 && comment.lastIndexOf('"') == 0) {
      // ignore: use_string_buffers
      comment = '$comment, ${fields[idx++]}';
    }
    comment = comment.replaceAll('"', '');

    prototypes[apiName] =
        TypeDef(neutralApiName, dllLibrary, prototype.split('\n'), comment);
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

void saveJson(String filename) {
  final file = File(filename);
  file.writeAsStringSync(json.encode(prototypes).replaceAll(r'\\n', r'\n'));
}
