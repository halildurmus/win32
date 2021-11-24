import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/utils.dart';
import '../projection/callback.dart';
import 'exclusions.dart';
import 'win32_functions.dart';

const callbacksFileHeader = '''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
''';

void generateCallbacksFile(File file, List<TypeDef> callbacks) {
  final imports = <String>{};
  final buffer = StringBuffer();

  for (final callback in callbacks) {
    buffer.write(CallbackProjection(callback).toString());

    final invokeMethod = callback.findMethod('Invoke');
    if (invokeMethod != null) {
      imports.addAll(importsForFunction(invokeMethod));
    }
  }

  if (callbacks.isNotEmpty) {
    final writer = file.openSync(mode: FileMode.writeOnly);
    writer.writeStringSync(callbacksFileHeader);
    writer.writeStringSync(
        "import '${relativePathToSrcDirectory(file)}guid.dart';\n");
    writer.writeStringSync(
        "import '${relativePathToSrcDirectory(file)}combase.dart';\n");
    for (final import in imports) {
      if (!excludedImports.contains(import)) {
        writer.writeStringSync(
            "import '${relativePathToSrcDirectory(file)}$import';\n");
      }
    }
    writer.writeStringSync(buffer.toString());
    writer.closeSync();
  }
}
