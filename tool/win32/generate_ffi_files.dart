// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates the FFI mapping files (e.g. lib/src/kernel32.dart)

import 'dart:io';

import 'shared.dart';

void generateFfiFiles() {
  final libraries = prototypes.values.map((e) => e.dllLibrary).toSet().toList();

  for (final library in libraries) {
    final writer = File('lib/src/$library.dart').openSync(mode: FileMode.write);
    writer.writeStringSync('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _$library = DynamicLibrary.open('$library${library == 'bthprops' ? '.cpl' : '.dll'}');\n
''');
    final libProtos = prototypes.values.where((p) => p.dllLibrary == library);

    for (final proto in libProtos) {
      final apiName = prototypes.keys.firstWhere(
          (k) => prototypes[k].neutralApiName == proto.neutralApiName);
      writer.writeStringSync('''
// ${proto.prototype.first.split('\\n').join('\n// ')}

/// {@category $library}
final ${proto.neutralApiName} = _$library.lookupFunction<\n
  ${proto.nativeReturn} Function(
    ${proto.nativeParams.keys.map((param) => '${proto.nativeParams[param]} $param').join(', ')}),
  ${proto.dartReturn} Function(
    ${proto.dartParams.keys.map((param) => '${proto.dartParams[param]} $param').join(', ')})>
  ('$apiName');

  
''');
    }

    writer.closeSync();
  }
}

void main() {
  loadCsv('tool/win32/win32api.csv');
  generateFfiFiles();
}
