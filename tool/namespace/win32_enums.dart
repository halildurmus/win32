import 'dart:io';

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

const enumFileHeader = '''
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

String processEnumeration(TypeDef enumClass) {
  final buffer = StringBuffer();

  // Get the enum name
  var dartClass = enumClass.name.split('.').last;

  // Dart treats types beginning with _ as private to the library
  while (dartClass.startsWith('_')) {
    dartClass = dartClass.substring(1);
  }

  buffer.writeln('/// {@category Enum}');
  buffer.writeln('class $dartClass {');

  // The first field is always the special field _value
  for (final field in enumClass.fields.skip(1)) {
    final value = field.value.toHexString(32);
    buffer.writeln('  static const ${field.name} = $value;');
  }

  buffer.writeln('}\n');

  return buffer.toString();
}

void generateEnumsFile(File file, List<TypeDef> enums) {
  final writer = file.openSync(mode: FileMode.writeOnly);
  final buffer = StringBuffer();

  for (final enumObject in enums) {
    buffer.write(processEnumeration(enumObject));
  }
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}
