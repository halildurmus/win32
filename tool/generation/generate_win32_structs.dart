// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the Win32 API typedefs can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../projection/struct.dart';
import '../projection/utils.dart';
import 'headers.dart';

const structFileImports = '''
import 'callbacks.dart';
import 'com/IDispatch.dart';
import 'com/IUnknown.dart';
import 'combase.dart';
import 'guid.dart';
import 'oleaut32.dart';
import 'structs.dart';
''';

int generateStructs(Map<String, String> structs) {
  final scope = MetadataStore.getWin32Scope();

  final file = File('lib/src/structs.g.dart');

  final typeDefs = scope.typeDefs
      .where((typeDef) => structs.keys.contains(typeDef.name))
      .where((typeDef) => typeDef.supportedArchitectures.x64)
      .toList()
    ..sort((a, b) => lastComponent(a.name).compareTo(lastComponent(b.name)));

  final structProjections = typeDefs.map((struct) => StructProjection(
      struct, stripAnsiUnicodeSuffix(lastComponent(struct.name)),
      comment: structs[struct.name]!));

  final structsFile =
      [structFileHeader, structFileImports, ...structProjections].join();

  file.writeAsStringSync(DartFormatter().format(structsFile));
  return structProjections.length;
}
