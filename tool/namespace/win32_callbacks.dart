import 'dart:io';

import 'package:winmd/winmd.dart';

const callbacksFileHeader = '''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

import 'dart:ffi';

import 'package:ffi/ffi.dart';
''';

void generateCallbacksFile(File file, List<TypeDef> callbacks) {
  final writer = file.openSync(mode: FileMode.write);
  final buffer = StringBuffer();

  buffer.write(callbacksFileHeader);

  for (final callback in callbacks) {
    buffer.write('typedef ${callback.name} = void Function();\n');
  }
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}
