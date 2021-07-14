// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';
import '../metadata/projection/win32_function_printer.dart';
import '../metadata/utils.dart';
import 'exclusions.dart';

const ffiFileHeader = '''
// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering, unused_element

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

final imports = <String>{};

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

/// Return all the imports needed for a function to be satisfied.
List<String> importsForFunction(Method function) {
  final importList = <String>[];

  // If a parameter takes the form Windows.Win32.Foundation.SYSTEMTIME, return
  // "foundation"
  for (final param in function.parameters) {
    if (param.typeIdentifier.name.startsWith('Windows.Win32')) {
      final typeName = param.typeIdentifier.name.split('.');
      importList.add(typeName[typeName.length - 2].toLowerCase());
    }
  }
  return importList;
}

/// Given a library name and a typedef, generate a file of typedefs / function
/// lookups corresponding to that file.
void generateFfiFile(File file, List<String> modules, TypeDef typedef) {
  final writer = file.openSync(mode: FileMode.writeOnly);

  final buffer = StringBuffer();
  for (final library in modules) {
    // For now, we only project Unicode methods.
    final functions = typedef.methods
        .where((method) => method.module.name == library)
        .where((method) => !method.name.endsWith('A'))
        .where((method) =>
            !excludedFunctions.contains(nameWithoutEncoding(method.name)))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));

    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_').toLowerCase();

    final dll = libraryFromDllName(library);
    buffer.write(docComment(dll));
    buffer.writeln("  final _$libraryDartName = DynamicLibrary.open('$dll');");
    buffer.writeln();

    for (final function in functions) {
      final printer = Win32FunctionPrinter(
          nameWithoutEncoding(function.name), function, libraryDartName);
      buffer.writeln(printer.dartFfiMapping);
      imports.addAll(importsForFunction(function));
    }
  }
  writer.writeStringSync(ffiFileHeader);
  for (final import in imports) {
    if (!excludedImports.contains(import)) {
      writer.writeStringSync("import '../$import/structs.g.dart';\n");
    }
  }
  writer.writeStringSync('\n');
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}
