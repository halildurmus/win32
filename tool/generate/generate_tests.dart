// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the COM interfaces can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'interface.dart';

String generateTests(Interface interface) {
  final buffer = StringBuffer();
  buffer.write('''
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

void main() {
  final ptr = COMObject.allocate().addressOf;

  final ${interface.name!.substring(1).toLowerCase()} = ${interface.name!}(ptr);
''');

  for (final method in interface.methods) {
    if (method != null) {
      final className = interface.name!;

      // TODO: Add tests for properties
      if (!method.name.startsWith('get_') && !method.name.startsWith('set_')) {
        buffer.write('''
    test('Can instantiate $className.${method.name}', () {
      expect(${interface.name!.substring(1).toLowerCase()}.${method.name}, isA<Function>());
      });
      ''');
      }
      // }
    }
  }

  buffer.write('''
  free(ptr);
  }''');

  return buffer.toString();
}
