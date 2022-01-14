import 'dart:io';

import 'package:winmd/winmd.dart';

import '../projection/struct.dart';
import '../projection/utils.dart';
import 'exclusions.dart';
import 'generate.dart';

const structFileHeader = '''
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

/// Return all the imports needed for a struct to be satisfied.
List<String> importsForStruct(TypeDef struct) {
  final importList = <String>[];

  for (final field in struct.fields) {
    if (specialTypes.contains(field.typeIdentifier.name)) {
      importList.add('specialTypes.dart');
    }

    if (field.typeIdentifier.type?.isNested == true) {
      importList.addAll(importsForStruct(field.typeIdentifier.type!));
    }

    if (field.typeIdentifier.name.startsWith('Windows.Win32')) {
      importList.add(importForWin32Type(field.typeIdentifier));
    }

    if (field.typeIdentifier.typeArg != null) {
      final fieldTypeArg = field.typeIdentifier.typeArg!;
      if (fieldTypeArg.name.startsWith('Windows.Win32')) {
        importList.add(importForWin32Type(fieldTypeArg));
      }

      if (fieldTypeArg.typeArg != null) {
        final ffTypeArg = fieldTypeArg.typeArg!;
        if (ffTypeArg.name.startsWith('Windows.Win32')) {
          importList.add(importForWin32Type(ffTypeArg));
        }
      }
    }
  }
  return importList;
}

void generateStructsFile(File file, List<TypeDef> structs) {
  final importList = {'combase.dart', 'guid.dart'};
  for (final struct in structs) {
    importList.addAll(importsForStruct(struct));
  }
  final importDeclarations = importList
      .map((import) => "import '${relativePathToSrcDirectory(file)}$import';");

  final structProjections = structs.map((struct) => StructProjection(
      struct, stripAnsiUnicodeSuffix(lastComponent(struct.name))));

  final structsFile =
      [structFileHeader, ...importDeclarations, ...structProjections].join();

  file.writeAsStringSync(formatter.format(structsFile));
}
