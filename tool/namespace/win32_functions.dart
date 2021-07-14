// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';
import '../metadata/projection/win32_function_printer.dart';

const ffiFileHeader = '''
// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import 'enums.g.dart';
import 'structs.g.dart';

''';

const headerComment =
    '  // -----------------------------------------------------------------------';

String docComment(String comment) =>
    '$headerComment\n  // $comment\n$headerComment\n';

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
void generateFfiFile(File file, List<String> modules, TypeDef typedef) {
  final writer = file.openSync(mode: FileMode.writeOnly);

  writer.writeStringSync(ffiFileHeader);
  for (final library in modules) {
    // For now, we only project Unicode methods.
    final functions = typedef.methods
        .where((method) => method.module.name == library)
        .where((method) => !method.name.endsWith('A'))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));

    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_').toLowerCase();

    final dll = libraryFromDllName(library);
    writer.writeStringSync(docComment(dll));
    writer.writeStringSync(
        "  final _$libraryDartName = DynamicLibrary.open('$dll');\n\n");

    for (final function in functions) {
      writer.writeStringSync(
          '${Win32FunctionPrinter(function.name, function, libraryDartName).dartFfiMapping}\n');
    }
  }
  writer.closeSync();
}
