// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the Win32 API typedefs can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'signature.dart';
import 'struct_sizes.dart';
import 'win32api.dart';
import 'win32types.dart';

void generateTests(Win32API win32) {
  var tests = 0;
  final writer = File('test/api_test.dart').openSync(mode: FileMode.write);

  writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  final windowsBuildNumber = getWindowsBuildNumber();
''');
  // Generate a list of libs, e.g. [kernel32, gdi32, ...]
  // The .toSet() removes duplicates.
  final libraries =
      win32.functions.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in libraries) {
    // API set names aren't legal Dart identifiers, so we rename them
    final libraryDartName = library.replaceAll('-', '_');

    writer.writeStringSync("group('Test $library functions', () {\n");

    final filteredFunctionList =
        win32.functions.values.where((func) => func.dllLibrary == library);

    for (final function in filteredFunctionList) {
      if (function.test == false) continue;

      final apiName = function.signature.nameWithoutEncoding;
      final returnFFIType = convertToFFIType(function.signature.returnType);
      final returnDartType = Win32Param([returnFFIType, '']).dartType;

      final nativeParams = function.signature.params
          .map((param) => '${param.ffiType} ${param.name}')
          .join(', ');

      final dartParams = function.signature.params
          .map((param) => '${param.dartType} ${param.name}')
          .join(', ');

      final test = '''
      test('Can instantiate $apiName', () {
        final $libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');
        final $apiName = $libraryDartName.lookupFunction<\n
          $returnFFIType Function($nativeParams),
          $returnDartType Function($dartParams)>
          ('${function.signature.name}');
        expect($apiName, isA<Function>());
      });''';

      if (function.minimumWindowsVersion > 0) {
        writer.writeStringSync('''
        if (windowsBuildNumber >= ${function.minimumWindowsVersion}) {
          $test
        }''');
      } else {
        writer.writeStringSync(test);
      }
      writer.writeStringSync('\n');
      tests++;
    }
    writer.writeStringSync('});\n\n');
  }
  writer.writeStringSync('}');
  writer.closeSync();
  print('$tests API tests generated.');
}

void generateStructSizeTests() {
  var tests = 0;
  final writer = File('test/struct_test.dart').openSync(mode: FileMode.write);

  writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 structs are the right size.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final is64bitOS = sizeOf<IntPtr>() == 8;
''');

  for (final struct
      in structSize64.keys.where((struct) => !skipStructs.contains(struct))) {
    writer.writeStringSync('''
  test('Struct $struct is the right size', () {
    if (is64bitOS) {
      expect(sizeOf<$struct>(), equals(${structSize64[struct]}));
    }
    else {
      expect(sizeOf<$struct>(), equals(${structSize32[struct]}));
    }
  });
''');
    tests++;
  }

  writer.writeStringSync('}');
  writer.closeSync();
  print('$tests struct tests generated.');
}

void main() {
  final win32 = Win32API('tool/win32/win32api.json');

  generateTests(win32);
  generateStructSizeTests();
}
