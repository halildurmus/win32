import 'dart:io';

import 'package:winmd/winmd.dart';

import '../projection/utils.dart';
import 'generate.dart';

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

Iterable<String> getConstants(List<Field> constants) => constants.map((constant) =>
    'const ${safeName(constant.name)} = 0x${constant.value.toRadixString(16)};\n');

Iterable<String> getGuidConstants(List<TypeDef> guidConstants) =>
    guidConstants.map((constant) =>
        "const ${safeName(lastComponent(constant.name))} = '${constant.guid}';\n");

void generateConstantsFile(
    File file, List<Field> constants, List<TypeDef> guidConstants) {
  final constantProjections = getConstants(constants);
  final guidProjections = getGuidConstants(guidConstants);

  final constantsFile =
      [constantFileHeader, ...constantProjections, ...guidProjections].join();

  file.writeAsStringSync(formatter.format(constantsFile));
}
