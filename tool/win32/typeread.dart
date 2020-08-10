import 'dart:io';

final prototypes = <String, TypeDef>{};

class TypeDef {
  String neutralApiName;
  final List<String> prototype;
  String nativeReturn;
  String dartReturn;
  final Map<String, String> nativeParams = {};
  final Map<String, String> dartParams = {};
  String dllLibrary;

  TypeDef(this.prototype);
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
      ..dllLibrary = dllLibrary
      ..nativeReturn = fields[idx++]
      ..dartReturn = fields[idx++];

    final numParams = int.parse(fields[idx++]);

    for (var i = 0; i < numParams; i++) {
      final paramName = fields[idx++];
      final paramNativeType = fields[idx++];
      final paramDartType = fields[idx++];

      prototypes[apiName].dartParams[paramName] = paramDartType;
      prototypes[apiName].nativeParams[paramName] = paramNativeType;
    }
  }
}

void generateFfiFiles() {
  final libraries = prototypes.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in libraries) {
    final writer = File('lib/src/$library.dart').openSync();
    writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _$library = DynamicLibrary.open('$library.dll');
''');
    final libProtos = prototypes.values.where((p) => p.dllLibrary == library);

    for (final proto in libProtos) {
      final apiName = prototypes.keys.firstWhere(
          (k) => prototypes[k].neutralApiName == proto.neutralApiName);
      writer.writeStringSync('/// {@category $library}\n');
      writer.writeStringSync('// ${proto.prototype.join('// ')}');
      writer.writeStringSync(
          'final ${proto.neutralApiName} = _$library.lookupFunction<');
      writer.writeStringSync('${proto.nativeReturn} Function(');
      writer.writeStringSync(proto.nativeParams.keys
          .map((param) => '${proto.nativeParams[param]} $param')
          .join(', '));
      writer.writeStringSync('), \n');
      writer.writeStringSync('${proto.dartReturn} Function(');
      writer.writeStringSync(proto.dartParams.keys
          .map((param) => '${proto.dartParams[param]} $param')
          .join(', '));
      writer.writeStringSync(")>('$apiName');\n\n");
    }

    writer.closeSync();
  }
}

/// {@category kernel32}
// BOOL Beep(
//   DWORD dwFreq,
//   DWORD dwDuration
// );
// final Beep = _kernel32.lookupFunction<
//     Int32 Function(Uint32 dwFreq, Uint32 dwDuration),
//     int Function(int dwFreq, int dwDuration)>('Beep');

void main() {
  loadCsv('win32types_loaded.csv');
  generateFfiFiles();
}
