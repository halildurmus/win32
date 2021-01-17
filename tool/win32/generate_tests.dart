// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the Win32 API typedefs can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'converter.dart';
import 'model.dart';
import 'struct_sizes.dart';
import 'win32types.dart';

void generateTests() {
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
  final libraries = prototypes.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in libraries) {
    writer.writeStringSync("group('Test $library functions', () {\n");

    final libProtos = prototypes.values.where((td) => td.dllLibrary == library);
    // .where((td) => !td.exportName.startsWith('TaskDialog'));

    for (final proto in libProtos) {
      if (proto.test == false) continue;

      final win32Func = proto.signature;

      final returnFFIType = ffiFromWin32(win32Func.returnType);
      final returnDartType = dartFromFFI(returnFFIType);

      final test = '''
      test('Can instantiate ${win32Func.nameWithoutEncoding}', () {
        final $library = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');
        final ${win32Func.nameWithoutEncoding} = $library.lookupFunction<\n
          $returnFFIType Function(
            ${win32Func.params.map((param) {
        final convertedParams = win32Func.convertParamType(param);
        return '${convertedParams.first} ${convertedParams.last}';
      }).join(', ')}),
          $returnDartType Function(
            ${win32Func.params.map((param) {
        final convertedParams = win32Func.convertParamType(param);
        final dartType = dartFromFFI(convertedParams.first);
        return '$dartType ${convertedParams.last}';
      }).join(', ')})>
          ('${win32Func.name}');
        expect(${win32Func.nameWithoutEncoding}, isA<Function>());
      });''';

      if (proto.minimumWindowsVersion > 0) {
        writer.writeStringSync('''
        if (windowsBuildNumber >= ${proto.minimumWindowsVersion}) {
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
''');

  for (final struct
      in structSize64.keys.where((struct) => !skipStructs.contains(struct))) {
    writer.writeStringSync('''
  test('Struct $struct is the right size', () {
    if (sizeOf<IntPtr>() == 8) {
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
  loadJson('tool/win32/win32api.json');
  generateTests();
  generateStructSizeTests();
}
