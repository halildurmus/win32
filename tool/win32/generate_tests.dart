// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the Win32 API typedefs can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'shared.dart';

final prototypes = <String, TypeDef>{};

void generateFfiFiles() {
  final writer = File('test/api_test.dart').openSync(mode: FileMode.write);

  writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
''');
  final libraries = prototypes.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in libraries) {
    writer.writeStringSync("group('Test $library ', () {\n");

    final libProtos = prototypes.values.where((p) => p.dllLibrary == library);

    for (final proto in libProtos) {
      final apiName = prototypes.keys.firstWhere(
          (k) => prototypes[k].neutralApiName == proto.neutralApiName);
      writer.writeStringSync('''
      test('Dialog object exists', () {
        final prototype = 
      }
''');
    }
    writer.writeStringSync('}');
  }
  writer.closeSync();
}

void main() {
  loadCsv('tool/win32/win32api.csv');
  generateFfiFiles();
}
