// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../manual_gen/function.dart';
import '../manual_gen/win32api.dart';
import 'generate_win32_structs.dart';
import 'generate_win32_tests.dart';
import 'winmd_caveats.dart';

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

String methodNameWithoutEncoding(String methodName) {
  if (methodName.endsWith('W') || methodName.endsWith('A')) {
    return methodName.substring(0, methodName.length - 1);
  } else {
    return methodName;
  }
}

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

bool methodMatches(String methodName, List<String> rawPrototype) {
  final prototype = rawPrototype.join('\n');
  final methodNameToFind = ' $methodName(';

  return prototype.contains(methodNameToFind);
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
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _$libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');\n
''');

    // Subset of functions that belong to the library we're projecting.
    final filteredFunctionList = Map<String, Win32Function>.of(win32.functions)
      ..removeWhere((key, value) => value.dllLibrary != library);

    for (final function in filteredFunctionList.keys) {
      try {
        final method = methods.firstWhere((m) => methodMatches(
            m.methodName, filteredFunctionList[function]!.prototype));
        writer.writeStringSync('''
${generateDocComment(filteredFunctionList[function]!)}
${Win32Prototype(function, method, libraryDartName).dartFfiMapping}
''');
      } on StateError {
        continue;
      }
    }

    writer.closeSync();
  }
}

void main() {
  final scope = MetadataStore.getWin32Scope();
  final apis = scope.typeDefs.where((type) => type.typeName.endsWith('Apis'));

  apis.forEach((api) => methods.addAll(api.methods));
  print('${methods.length} APIs collected');

  final win32 = Win32API(
      apiFile: 'tool/manual_gen/win32api.json',
      structFile: 'tool/manual_gen/win32struct.json');
  final genCount = win32.functions.values
      .where((func) => winmdGenerated.contains(func.dllLibrary))
      .length;

  generateFfiFiles(win32);
  print('$genCount typedefs generated from Windows metadata.');

  final apiTestsGenerated = generateTests(win32);
  print('$apiTestsGenerated API tests generated.');

  final structsGenerated = generateStructs(win32);
  print('$structsGenerated structs generated from Windows metadata.');

  final structTestsGenerated = generateStructSizeTests();
  print('$structTestsGenerated struct tests generated.');
}
