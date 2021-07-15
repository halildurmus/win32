import 'dart:io';

import 'package:winmd/winmd.dart';

const constantFileHeader = '''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

''';

void generateConstantsFile(File file, List<Field> constants) {
  final writer = file.openSync(mode: FileMode.writeOnly);
  final buffer = StringBuffer();

  buffer.write(constantFileHeader);

  for (final constant in constants) {
    buffer.write(
        'const ${constant.name} = 0x${constant.value.toRadixString(16)};\n');
  }
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}

void appendGuidConstantsFile(File file, List<TypeDef> guidConstants) {
  final writer = file.openSync(mode: FileMode.writeOnlyAppend);
  final buffer = StringBuffer();

  for (final constant in guidConstants) {
    buffer.write(
        "const ${constant.name.split('.').last} = '${constant.guid}';\n");
  }
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}
