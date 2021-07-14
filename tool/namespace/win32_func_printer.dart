// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';
import '../metadata/projection/typeprojector.dart';

class Win32Prototype {
  final String _nameWithoutEncoding;
  final Method _method;
  final String _lib;

  // Sanitize any Dart keywords in parameter names.
  String sanitize(String input) => input == 'in' ? 'in_' : input;

  String get nativePrototype =>
      '${TypeProjector(_method.returnType.typeIdentifier).nativeType} Function($nativeParams)';

  String get nativeParams => _method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).nativeType} ${sanitize(param.name)}')
      .join(', ');

  String get dartPrototype =>
      '${TypeProjector(_method.returnType.typeIdentifier).dartType} Function($dartParams)';

  String get dartParams => _method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).dartType} ${sanitize(param.name)}')
      .join(', ');

  String get dartFfiMapping =>
      '${TypeProjector(_method.returnType.typeIdentifier).dartType} '
      '$_nameWithoutEncoding($dartParams) =>\n'
      '  _$_nameWithoutEncoding'
      '(${_method.parameters.map((param) => (param.name)).map(sanitize).toList().join(', ')})'
      ';\n\n'
      '  late final _$_nameWithoutEncoding = _$_lib.lookupFunction<\n'
      '    $nativePrototype, \n'
      '    $dartPrototype\n'
      "  >('${_method.name}');\n\n";
  const Win32Prototype(this._nameWithoutEncoding, this._method, this._lib);
}

final methods = <Method>[];

bool methodMatches(String methodName, List<String> rawPrototype) {
  final prototype = rawPrototype.join('\n');
  final methodNameToFind = ' $methodName(';

  return prototype.contains(methodNameToFind);
}

/// Qualify the DLL with an extension.
///
/// While most libraries have a DLL extension (e.g. `kernel32.dll`), there are a
/// couple of exceptions. We hardcode them here, since there are so few.
String libraryFromDllName(String dllName) {
  switch (dllName) {
    case 'bthprops':
      return 'bthprops.cpl';
    case 'winspool':
      return 'winspool.drv';
    default:
      return '$dllName.dll';
  }
}

/// Given a library name and a typedef, generate a file of typedefs / function
/// lookups corresponding to that file.
void generateFfiFile(String library, TypeDef typedef) {
  final folderName = typedef.name.split('.')[2].toLowerCase(); // e.g. gdi

  final filteredFunctionList = typedef.methods
      .where((method) => method.module.name == library)
      .where((method) => !method.name.endsWith('A'))
      .toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  final writer =
      File('lib/src/$folderName/apis.dart').openSync(mode: FileMode.write);

  // API set names aren't legal Dart identifiers, so we rename them
  final libraryDartName = library.replaceAll('-', '_').toLowerCase();

  writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
// import 'enums.dart';
// import 'structs.dart';

final _$libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');\n
''');

  for (final function in filteredFunctionList) {
    writer.writeStringSync(
        '${Win32Prototype(function.name, function, libraryDartName).dartFfiMapping}\n');
  }

  writer.closeSync();
}
