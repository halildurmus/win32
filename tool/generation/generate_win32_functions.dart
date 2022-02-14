// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart) using JSON

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../inputs/functions.dart';
import '../projection/function.dart';
import '../projection/utils.dart';
import 'headers.dart';

bool methodMatches(String methodName, List<String> rawPrototype) {
  final prototype = rawPrototype.join('\n');
  final methodNameToFind = ' $methodName(';

  return prototype.contains(methodNameToFind);
}

String generateDocComment(Win32Function func) {
  final comment = StringBuffer();

  if (func.comment.isNotEmpty) {
    comment
      ..writeln(wrapCommentText(func.comment))
      ..writeln('///');
  }

  comment
    ..writeln('/// ```c')
    ..write('/// ')
    ..writeln(func.prototype.first.split('\\n').join('\n/// '))
    ..writeln('/// ```')
    ..write('/// {@category ${func.category}}');
  return comment.toString();
}

void generateFunctions(Map<String, Win32Function> functions) {
  final methods = <Method>[];
  final scope = MetadataStore.getWin32Scope();
  final apis = scope.typeDefs.where((typeDef) => typeDef.name.endsWith('Apis'));
  for (final api in apis) {
    methods.addAll(api.methods);
  }

  for (final library in dllLibraries) {
    final buffer = StringBuffer();

    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    buffer.write('''
$functionsFileHeader

final _$libraryDartName = DynamicLibrary.open('${libraryFromDllName(library)}');\n
''');

    // Subset of functions that belong to the library we're projecting.
    final filteredFunctionList = Map<String, Win32Function>.of(functions)
      ..removeWhere((key, value) => value.dllLibrary != library);

    for (final function in filteredFunctionList.keys) {
      try {
        final method = methods.firstWhere((m) =>
            methodMatches(m.name, filteredFunctionList[function]!.prototype));
        buffer.write('''
${generateDocComment(filteredFunctionList[function]!)}
${FunctionProjection(method, libraryDartName).toString()}
''');
      } on StateError {
        continue;
      }
    }

    File('lib/src/$library.dart')
        .writeAsStringSync(DartFormatter().format(buffer.toString()));
  }
}
