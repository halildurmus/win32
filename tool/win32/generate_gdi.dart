// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';

import 'function.dart';
import 'win32api.dart';
import 'winmd.dart';

late List<WinmdMethod> methods;

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
  // Generate a list of libs, e.g. [kernel32, gdi32, ...]
  // The .toSet() removes duplicates.
  // final libraries =
  //     win32.functions.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in ['gdi32']) {
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

    final filteredFunctionList =
        win32.functions.values.where((func) => func.dllLibrary == library);

    for (final function in filteredFunctionList) {
      final method =
          methods.firstWhere((m) => m.methodName == function.signature.name);

      writer.writeStringSync('''
${generateDocComment(function)}
${Win32Prototype(method, 'gdi32').dartFfiMapping}
''');
    }

    writer.closeSync();
  }
}

void main() {
  final scope = WinmdStore.getScopeForFile('tool/win32/Windows.Win32.winmd');
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  methods = gdiApi.methods;
  final win32 = Win32API('tool/win32/win32api.json');

  generateFfiFiles(win32);
  print('${win32.functions.length} typedefs generated.');
}
