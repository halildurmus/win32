// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'package:winmd/winmd.dart';
import '../projection/function.dart';
import '../projection/safenames.dart';
import '../projection/utils.dart';
import 'exclusions.dart';
import 'generate.dart';

const functionFileHeader = '''
// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

''';

const commentDivider =
    '  // -----------------------------------------------------------------------';

/// Create a comment header out of a simple string comment.
///
/// This function does not wrap the comment.
String commentHeader(String comment) =>
    '$commentDivider\n  // $comment\n$commentDivider\n';

/// Qualify the DLL with an extension.
///
/// While most libraries have a DLL extension (e.g. `kernel32.dll`), there are a
/// couple of exceptions. We hardcode them here, since there are so few.
String DLLFromModuleName(String moduleName) {
  switch (moduleName) {
    case 'bthprops':
      return 'bthprops.cpl';
    case 'winspool':
      return 'winspool.drv';
    default:
      return '$moduleName.dll';
  }
}

/// Return all the imports needed for a function to be satisfied. For example,
/// if one of the parameters is `Windows.Win32.Foundation.SYSTEMTIME`, we will
/// add a needed import of `foundation/structs.g.dart`.
List<String> importsForFunction(Method function) {
  final importList = <String>[];

  // TODO: Clean this up -- there's a better example duplicated elsewhere.
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

/// Makes sure there's no better Unicode variant available for a given function.
///
/// For most functions, the ANSI version has an 'A' suffix. For a function like
/// `SymFindDebugInfoFile`, the unprefixed version is ANSI, the Unicode version
/// has a 'W' suffix.
bool noUnicodeVariantAvailable(Method method) {
  // We'd prefer to project the Unicode version, so we append a W and see if the
  // API is available. If the function already has a prefix, this will return
  // false, since there are no functions that end with a suffix 'AW' or 'WW".
  final suffixedName = '${lastComponent(method.name)}W';
  return method.parent.methods.where((m) => m.name == suffixedName).isEmpty;
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
  final importList = {'combase.dart', 'guid.dart'};

  final functionProjections = StringBuffer();

  var functionsCount = 0;

  for (final module in modules) {
    // For now, we only project Unicode methods.
    final functions = typedef.methods
        .where((method) => method.module.name.toLowerCase() == module)
        .where((method) => !method.name.endsWith('A'))
        .where(noUnicodeVariantAvailable)
        .where((method) => method.supportedArchitectures.x64)
        .where((method) =>
            !excludedFunctions.contains(stripAnsiUnicodeSuffix(method.name)))
        .toList()
      ..sort((a, b) => a.name.compareTo(b.name));

    // Don't bother with modules that don't contain any relevant functions.
    if (functions.isNotEmpty) {
      final moduleDartIdentifier = identifierForModuleName(module);
      final dllFilename = DLLFromModuleName(module);
      functionProjections.write(commentHeader(dllFilename));
      functionProjections.writeln(
          "  final _$moduleDartIdentifier = DynamicLibrary.open('$dllFilename');");
      functionProjections.writeln();

      for (final function in functions) {
        final printer = FunctionProjection(function, moduleDartIdentifier);
        functionProjections.writeln(printer.toString());
        functionsCount++;
        importList.addAll(importsForFunction(function));
      }
      functionProjections.writeln();
    }
  }

  if (functionsCount > 0) {
    final importDeclarations = importList.map(
        (import) => "import '${relativePathToSrcDirectory(file)}$import';");

    final functionsFile =
        [functionFileHeader, ...importDeclarations, functionProjections].join();

    file.writeAsStringSync(formatter.format(functionsFile));
  }
}
