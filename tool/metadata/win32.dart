// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../win32/function.dart';
import '../win32/generate_from.dart';
import '../win32/win32api.dart';

class Win32Prototype {
  final String _nameWithoutEncoding;
  final Method _method;
  final String _lib;

  String get nativePrototype =>
      '${TypeBuilder.nativeType(_method.returnType.typeIdentifier)} Function($nativeParams)';

  String get nativeParams => _method.parameters
      .map((param) =>
          '${TypeBuilder.nativeType(param.typeIdentifier)} ${param.name}')
      .join(', ');

  String get dartPrototype =>
      '${TypeBuilder.dartType(_method.returnType.typeIdentifier)} Function($dartParams)';

  String get dartParams => _method.parameters
      .map((param) =>
          '${TypeBuilder.dartType(param.typeIdentifier)} ${param.name}')
      .join(', ');

  String get dartFfiMapping =>
      '${TypeBuilder.dartType(_method.returnType.typeIdentifier)} '
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

void generateFfiFiles(Win32API win32) {
  for (final library in winmdGenerated) {
    final writer = File('lib/src/$library.dart').openSync(mode: FileMode.write);

    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/combase.dart';
import 'structs.dart';

final _$libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');\n
''');

    final filteredFunctionList = win32.functions.values
        .where((func) => func.dllLibrary == library)
        .toList();

    filteredFunctionList
        .removeWhere((func) => func.signature.name == 'SetWindowLongPtrW');

    for (final function in filteredFunctionList) {
      final method = methods.firstWhere(
          (m) => m.methodName == function.signature.name,
          orElse: () =>
              throw Exception('Cannot find ${function.signature.name}'));

      writer.writeStringSync('''
${generateDocComment(function)}
${Win32Prototype(function.signature.nameWithoutEncoding, method, libraryDartName).dartFfiMapping}
''');
    }

    writer.closeSync();
  }
}

void main() {
  final scope = MetadataStore.getScopeForFile('tool/win32/Windows.Win32.winmd');
  final apis = scope.typeDefs.where((type) => type.typeName.endsWith('Apis'));

  apis.forEach((api) => methods.addAll(api.methods));
  print('${methods.length} APIs collected');

  final win32 = Win32API('tool/win32/win32api.json');
  final genCount = win32.functions.values
      .where((func) => winmdGenerated.contains(func.dllLibrary))
      .length;

  generateFfiFiles(win32);
  print('$genCount typedefs generated from Windows metadata.');
}
