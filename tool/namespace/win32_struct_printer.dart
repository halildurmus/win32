import 'dart:io';

import 'package:winmd/winmd.dart';

import '../metadata/projection/typeprinter.dart';

const structFileHeader = '''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

''';

// List<String> namespaces = [];

// void initNamespaces(Scope scope) {
//   // Use a Set to avoid duplication
//   final namespaceSet = <String>{};

//   final scope = MetadataStore.getWin32Scope();
//   for (final td in scope.typeDefs) {
//     if (td.name.startsWith('Windows.Win32')) {
//       final namespace = td.name.split('.')[2];
//       namespaceSet.add('Windows.Win32.$namespace');
//     }
//   }
//   namespaces = namespaceSet.toList()..sort((a, b) => a.compareTo(b));
// }

// void main() {
//   final scope = MetadataStore.getWin32Scope();
//   initNamespaces(scope);

//   for (final namespace in namespaces) {
//     final folderName = namespace.split('.').last.toLowerCase();

//     final filteredTypeDefs = scope.typeDefs.where((typedef) =>
//         typedef.name.startsWith(namespace) &&
//         typedef.isClass &&
//         typedef.parent?.name == 'System.ValueType');

//     if (filteredTypeDefs.isNotEmpty) {
//       Directory('lib/src/$folderName').createSync();

//       final writer = File('lib/src/$folderName/structs.dart')
//           .openSync(mode: FileMode.write);

//       final structsLength = filteredTypeDefs.length;
//       print('Processing $structsLength structs in $namespace');
//       final buffer = StringBuffer();

//       buffer.write(structFileHeader);

//       for (final struct in filteredTypeDefs) {
//         buffer.write(
//             TypePrinter.printStruct(struct, struct.name.split('.').last));
//       }
//       writer.writeStringSync(buffer.toString());
//     }
//   }
// }

void generateStructsFile(File file, List<TypeDef> typedefs) {
  final writer = file.openSync(mode: FileMode.write);
  final buffer = StringBuffer();

  buffer.write(structFileHeader);

  for (final struct in typedefs) {
    buffer.write(TypePrinter.printStruct(struct, struct.name.split('.').last));
  }
  writer.writeStringSync(buffer.toString());
  writer.closeSync();
}
