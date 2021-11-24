// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../projection/function.dart';
import '../projection/utils.dart';
import 'exclusions.dart';

const ffiFileHeader = '''
// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

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

/// Return all the imports needed for a function to be satisfied. For example,
/// if one of the parameters is `Windows.Win32.Foundation.SYSTEMTIME`, we will
/// add a needed import of `foundation/structs.g.dart`.
List<String> importsForFunction(Method function) {
  final importList = <String>[];

  for (final param in function.parameters) {
    if (param.typeIdentifier.name.startsWith('Windows.Win32')) {
      importList.add(importForWin32Type(param.typeIdentifier));
    }

    if (param.typeIdentifier.typeArg != null) {
      final paramTypeArg = param.typeIdentifier.typeArg!;
      if (paramTypeArg.name.startsWith('Windows.Win32')) {
        importList.add(importForWin32Type(paramTypeArg));
      }

      if (param.typeIdentifier.typeArg!.typeArg != null) {
        final ppTypeArg = param.typeIdentifier.typeArg!.typeArg!;
        if (ppTypeArg.name.startsWith('Windows.Win32')) {
          importList.add(importForWin32Type(ppTypeArg));
        }
      }
    }
  }
  return importList;
}

/// Given a library name and a typedef, generate a file of typedefs / function
/// lookups corresponding to that file.
void generateFfiFile(File file, TypeDef typedef) {
  // List of distinct modules in the namespace. There may be multiple, for
  // example Windows.Win32.Foundation.Apis contains functions from oleaut32.dll,
  // kernelbase.dll and kernel32.dll (amongst others).
  final modules = typedef.methods
      .map((method) => method.module.name.toLowerCase())
      .toSet()
      .toList();
  final imports = <String>{};

  final writer = file.openSync(mode: FileMode.writeOnly);
  final buffer = StringBuffer();

  for (final library in modules) {
    // For now, we only project Unicode methods.
    final functions = typedef.methods
        .where((method) => method.module.name == library)
        .where((method) => !method.name.endsWith('A'))
        .where((method) =>
            !excludedFunctions.contains(stripAnsiUnicodeSuffix(method.name)))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));

    // API set names aren't legal Dart identifiers, so we rename them
    // Some modules may also be of the form windows.ai.machinelearning.dll.
    final libraryDartName =
        library.replaceAll('-', '_').replaceAll('.', '_').toLowerCase();

    final dll = libraryFromDllName(library);
    buffer.write(docComment(dll));
    buffer.writeln("  final _$libraryDartName = DynamicLibrary.open('$dll');");
    buffer.writeln();

    for (final function in functions) {
      final printer = FunctionProjection(function, libraryDartName);
      buffer.writeln(printer.toString());
      imports.addAll(importsForFunction(function));
    }
    buffer.writeln();
  }

  writer.writeStringSync(ffiFileHeader);
  writer.writeStringSync(
      "import '${relativePathToSrcDirectory(file)}guid.dart';\n");
  writer.writeStringSync(
      "import '${relativePathToSrcDirectory(file)}combase.dart';\n");
  for (final import in imports) {
    if (!excludedImports.contains(import)) {
      writer.writeStringSync(
          "import '${relativePathToSrcDirectory(file)}$import';\n");
    }
  }
  writer.writeStringSync('\n');
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}
