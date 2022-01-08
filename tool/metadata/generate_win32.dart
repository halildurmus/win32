// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart) using JSON

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../manual_gen/function.dart';
import '../manual_gen/win32api.dart';
import '../projection/function.dart';
import 'generate_win32_structs.dart';
import 'generate_win32_tests.dart';
import 'win32_functions.dart';
import 'winmd_caveats.dart';

final methods = <Method>[];

String wrapCommentText(String inputText, [int wrapLength = 76]) {
  final words = inputText.split(' ');
  final textLine = StringBuffer('/// ');
  final outputText = StringBuffer();

  for (final word in words) {
    if ((textLine.length + word.length) >= wrapLength) {
      textLine.write('\n');
      outputText.write(textLine);
      textLine
        ..clear()
        ..write('/// $word ');
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

void generateFfiFiles(Win32API win32) {
  for (final library in winmdGenerated) {
    final writer =
        File('lib/src/$library.dart').openSync(mode: FileMode.writeOnly);

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
import 'guid.dart';
import 'structs.dart';
import 'structs.g.dart';

final _$libraryDartName = DynamicLibrary.open('${libraryFromDllName(library)}');\n
''');

    // Subset of functions that belong to the library we're projecting.
    final filteredFunctionList = Map<String, Win32Function>.of(win32.functions)
      ..removeWhere((key, value) => value.dllLibrary != library);

    for (final function in filteredFunctionList.keys) {
      try {
        final method = methods.firstWhere((m) =>
            methodMatches(m.name, filteredFunctionList[function]!.prototype));
        writer.writeStringSync('''
${generateDocComment(filteredFunctionList[function]!)}
${FunctionProjection(method, libraryDartName).toString()}
''');
      } on StateError {
        continue;
      }
    }

    writer.closeSync();
  }
}

void main(List<String> args) {
  final options = args.length != 1 ? '--all' : args.last;
  final optionAPIs =
      (options != '--tests-only') && (options != '--structs-only');
  final optionTests =
      (options != '--apis-only') && (options != '--structs-only');
  final optionStructs =
      (options != '--apis-only') && (options != '--tests-only');

  final scope = MetadataStore.getWin32Scope();
  final apis = scope.typeDefs.where((type) => type.name.endsWith('Apis'));

  for (final api in apis) {
    methods.addAll(api.methods);
  }
  print('${methods.length} APIs collected');

  final win32 = Win32API(
      apiFile: 'tool/manual_gen/win32api.json',
      structFile: 'tool/manual_gen/win32struct.json');
  final genCount = win32.functions.values
      .where((func) => winmdGenerated.contains(func.dllLibrary))
      .length;

  if (optionAPIs) {
    generateFfiFiles(win32);
    print('$genCount typedefs generated from Windows metadata.');
  }

  if (optionTests) {
    final apiTestsGenerated = generateTests(win32);
    print('$apiTestsGenerated API tests generated.');
  }

  if (optionStructs) {
    final structsGenerated = generateStructs(win32);
    print('$structsGenerated structs generated from Windows metadata.');
  }

  if (optionTests) {
    final structTestsGenerated = generateStructSizeTests();
    print('$structTestsGenerated struct tests generated.');
  }
}
