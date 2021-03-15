// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../manual_gen/function.dart';

class Win32Prototype {
  final String _nameWithoutEncoding;
  final Method _method;
  final String _lib;

  String get nativePrototype =>
      '${TypeProjector(_method.returnType.typeIdentifier).nativeType} Function($nativeParams)';

  String get nativeParams => _method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).nativeType} ${param.name}')
      .join(', ');

  String get dartPrototype =>
      '${TypeProjector(_method.returnType.typeIdentifier).dartType} Function($dartParams)';

  String get dartParams => _method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).dartType} ${param.name}')
      .join(', ');

  String get dartFfiMapping =>
      '${TypeProjector(_method.returnType.typeIdentifier).dartType} '
      '$_nameWithoutEncoding($dartParams) {\n'
      '  final _$_nameWithoutEncoding = _$_lib.lookupFunction<\n'
      '    $nativePrototype, \n'
      '    $dartPrototype\n'
      "  >('${_method.methodName}');\n"
      '  return _$_nameWithoutEncoding'
      '(${_method.parameters.map((param) => (param.name)).toList().join(', ')})'
      ';\n'
      '}\n';

  const Win32Prototype(this._nameWithoutEncoding, this._method, this._lib);
}

final methods = <Method>[];

String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine.clear();
      textLine.write('/// $word ');
    } else {
      textLine.write('$word ');
    }
  }

  outputText.write(textLine);
  return outputText.toString().trimRight();
}

String generateDocComment(Win32Function func) {
  final comment = StringBuffer();

  if (func.comment.isNotEmpty) {
    comment.writeln(wrapCommentText(func.comment));
    comment.writeln('///');
  }

  comment.writeln('/// ```c');
  comment.write('/// ');
  comment.writeln(func.prototype.first.split('\\n').join('\n/// '));
  comment.writeln('/// ```');

  comment.write('/// {@category ${func.category}}');
  return comment.toString();
}

void generateFfiFile(String library, TypeDef typedef) {
  final folderName = typedef.typeName.split('.')[2].toLowerCase(); // e.g. gdi

  final filteredFunctionList = typedef.methods
      .where((method) => method.module.name == library)
      .where((method) => !method.methodName.endsWith('A'))
      .toList()
        ..sort((a, b) => a.methodName.compareTo(b.methodName));

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
import '../com/combase.dart';
import '../structs.dart';

final _$libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');\n
''');

  for (final function in filteredFunctionList) {
    writer.writeStringSync(
        '${Win32Prototype(function.methodName, function, libraryDartName).dartFfiMapping}\n');
  }

  writer.closeSync();
}

void main() {
  final scope = MetadataStore.getWin32Scope();

  // Start with the GDI namespace
  final gdi = scope.typeDefs
      .where((typedef) => (typedef.typeName == 'Windows.Win32.Gdi.Apis'))
      .first;

  // List of distinct modules in the namespace
  final modules = [
    gdi.methods.map((method) => method.module.name).toSet().toList().first
  ]; // GDI32 for now

  for (final module in modules) {
    generateFfiFile(module, gdi);
  }

  // apis.forEach((api) => methods.addAll(api.methods));
  // print('${methods.length} APIs collected');

  // final win32 = Win32API('tool/win32/win32api.json');
  // final genCount = win32.functions.values
  //     .where((func) => winmdGenerated.contains(func.dllLibrary))
  //     .length;

  // generateFfiFiles(win32);
  // print('$genCount typedefs generated from Windows metadata.');
}
