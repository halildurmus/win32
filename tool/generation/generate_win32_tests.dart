// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the Win32 API typedefs can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../inputs/functions.dart';
import '../inputs/struct_sizes.dart';
import '../projection/function.dart';
import '../projection/type.dart';
import '../projection/utils.dart';

import 'generate_win32_functions.dart';
import 'headers.dart';

int generateFunctionTests(Map<String, Win32Function> functions) {
  final methods = <Method>[];
  final scope = MetadataStore.getWin32Scope();
  final apis = scope.typeDefs.where((typeDef) => typeDef.name.endsWith('Apis'));
  for (final api in apis) {
    methods.addAll(api.methods);
  }
  var testsGenerated = 0;
  final buffer = StringBuffer()..write('''
$testFunctionsHeader

import 'helpers.dart';

void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
''');
  // Generate a list of libs, e.g. [kernel32, gdi32, ...]
  // The .toSet() removes duplicates.
  // GitHub Actions doesn't install Native Wifi API on runners, so we remove
  // wlanapi manually to prevent test failures.
  final libraries = functions.values.map((e) => e.dllLibrary).toSet().toList()
    ..removeWhere((library) => library == 'wlanapi');

  for (final library in libraries) {
    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    buffer.write("group('Test $library functions', () {\n");

    final filteredFunctions = Map<String, Win32Function>.of(functions)
      ..removeWhere((key, value) => value.dllLibrary != library)
      ..removeWhere(
          (key, value) => value.prototype.contains('SetWindowLongPtrW'));

    for (final function in filteredFunctions.keys) {
      if (filteredFunctions[function]!.test == false) continue;

      late Method method;
      try {
        method = methods.firstWhere((m) =>
            methodMatches(m.name, filteredFunctions[function]!.prototype));
      } on StateError {
        print("Couldn't find $function");
        continue;
      }

      final prototype = FunctionProjection(method, libraryDartName);

      final returnFFIType =
          TypeProjection(method.returnType.typeIdentifier).nativeType;
      final returnDartType =
          TypeProjection(method.returnType.typeIdentifier).dartType;

      final minimumWindowsVersion =
          filteredFunctions[function]!.minimumWindowsVersion;

      final test = '''
      test('Can instantiate $function', () {
        final $libraryDartName = DynamicLibrary.open('${libraryFromDllName(library)}');
        final $function = $libraryDartName.lookupFunction<\n
          $returnFFIType Function(${prototype.nativeParams}),
          $returnDartType Function(${prototype.dartParams})>
          ('${method.name}');
        expect($function, isA<Function>());
      });''';

      if (minimumWindowsVersion > 0) {
        buffer.write('''
        if (windowsBuildNumber >= $minimumWindowsVersion) {
          $test
        }''');
      } else {
        buffer.write(test);
      }
      buffer.writeln();
      testsGenerated++;
    }
    buffer.write('});\n\n');
  }
  buffer.write('}');
  File('test/api_test.dart')
      .writeAsStringSync(DartFormatter().format(buffer.toString()));

  return testsGenerated;
}

int generateStructSizeTests() {
  var testsGenerated = 0;
  final buffer = StringBuffer()..write('''
$testStructsHeader

void main() {
  final is64bitOS = sizeOf<IntPtr>() == 8;
''');

  for (final struct in structSize64.keys) {
    if (structSize64[struct] == structSize32[struct]) {
      buffer.write('''
  test('Struct $struct is the right size', () {
    expect(sizeOf<$struct>(), equals(${structSize64[struct]}));
  });
    ''');
    } else {
      buffer.write('''
  test('Struct $struct is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<$struct>(), equals(${structSize64[struct]}));
    }
    else {
      expect(sizeOf<$struct>(), equals(${structSize32[struct]}));
    }
  });
''');
    }
    testsGenerated++;
  }

  buffer.write('}');

  File('test/struct_test.dart')
      .writeAsStringSync(DartFormatter().format(buffer.toString()));

  return testsGenerated;
}
