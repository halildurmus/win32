import 'dart:io';

import 'package:winmd/winmd.dart';

import '../projection/utils.dart';
import '../projection/callback.dart';
import 'generate.dart';
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
  final importList = {'combase.dart', 'guid.dart'};
  for (final callback in callbacks) {
    final invokeMethod = callback.findMethod('Invoke');
    if (invokeMethod != null) {
      importList.addAll(importsForFunction(invokeMethod));
    }
  }
  final importDeclarations = importList
      .map((import) => "import '${relativePathToSrcDirectory(file)}$import';");

  final callbackProjections = callbacks.map(CallbackProjection.new);

  final callbacksFile = [
    callbacksFileHeader,
    ...importDeclarations,
    ...callbackProjections
  ].join();

  file.writeAsStringSync(formatter.format(callbacksFile));
}
