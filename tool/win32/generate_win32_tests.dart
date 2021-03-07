// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the Win32 API typedefs can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/win32.dart';
import 'function.dart';
import 'struct_sizes.dart';
import 'win32api.dart';

int generateTests(Win32API win32) {
  var testsGenerated = 0;
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

    final filteredFunctionList = Map<String, Win32Function>.of(win32.functions)
      ..removeWhere((key, value) => value.dllLibrary != library)
      ..removeWhere(
          (key, value) => value.prototype.contains('SetWindowLongPtrW'));

    for (final function in filteredFunctionList.keys) {
      if (filteredFunctionList[function]!.test == false) continue;

      late Method method;
      try {
        method = methods.firstWhere((m) => methodMatches(
            m.methodName, filteredFunctionList[function]!.prototype));
      } on StateError {
        continue;
      }

      final prototype = Win32Prototype(function, method, libraryDartName);

      final returnFFIType =
          TypeProjector(method.returnType.typeIdentifier).nativeType;
      final returnDartType =
          TypeProjector(method.returnType.typeIdentifier).dartType;

      final minimumWindowsVersion =
          filteredFunctionList[function]!.minimumWindowsVersion;

      // Temporary, because of
      // https://github.com/microsoft/win32metadata/issues/296
      final nativeParams = prototype.nativeParams
          .replaceAll('BLUETOOTH_ADDRESS_STRUCT', 'BLUETOOTH_ADDRESS')
          .replaceAll('BLUETOOTH_DEVICE_INFO_STRUCT', 'BLUETOOTH_DEVICE_INFO');
      final dartParams = prototype.dartParams
          .replaceAll('BLUETOOTH_ADDRESS_STRUCT', 'BLUETOOTH_ADDRESS')
          .replaceAll('BLUETOOTH_DEVICE_INFO_STRUCT', 'BLUETOOTH_DEVICE_INFO');

      final test = '''
      test('Can instantiate $function', () {
        final $libraryDartName = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');
        final $function = $libraryDartName.lookupFunction<\n
          $returnFFIType Function($nativeParams),
          $returnDartType Function($dartParams)>
          ('${method.methodName}');
        expect($function, isA<Function>());
      });''';

      if (minimumWindowsVersion > 0) {
        writer.writeStringSync('''
        if (windowsBuildNumber >= $minimumWindowsVersion) {
          $test
        }''');
      } else {
        writer.writeStringSync(test);
      }
      writer.writeStringSync('\n');
      testsGenerated++;
    }
    writer.writeStringSync('});\n\n');
  }
  writer.writeStringSync('}');
  writer.closeSync();

  return testsGenerated;
}

int generateStructSizeTests() {
  var testsGenerated = 0;
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
    testsGenerated++;
  }

  writer.writeStringSync('}');
  writer.closeSync();

  return testsGenerated;
}
