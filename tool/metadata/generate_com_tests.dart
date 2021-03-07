// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generates a file to test that all the COM interfaces can be loaded (i.e.
// that lookupFunction works for all the APIs generated.)

import 'dart:io';

import 'package:winmd/winmd.dart';

import 'generate_com_classes.dart';

String generateTests(ClassProjection projection) {
  final interfaceName = projection.shortName;
  final dartClassName = interfaceName.substring(1).toLowerCase();

  final buffer = StringBuffer();
  buffer.write('''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final $dartClassName = $interfaceName(ptr);
''');

  for (final method in projection.methods) {
    if (!method.isGetProperty && !method.isSetProperty) {
      buffer.write('''
        test('Can instantiate $interfaceName.${method.name}', () {
          expect($dartClassName.${method.name}, isA<Function>());
          });
          ''');
    }
  }

  buffer.write('''
  free(ptr);
  }''');

  return buffer.toString();
}

void main(List<String> args) {
  final scope =
      MetadataStore.getScopeForFile(File('tool/win32/Windows.Win32.winmd'));

  final outputDirectory =
      (args.length == 1) ? Directory(args.first) : Directory('test/com');

  for (final type in interfacesToGenerate) {
    final mdTypeDef = scope.findTypeDef(type.typeName)!;

    final parentInterface = mdTypeDef.interfaces.isNotEmpty
        ? mdTypeDef.interfaces.first.typeName.split('.').last
        : '';

    var clsid = '';
    if (type.generateClass) {
      final typeNameAsList = type.typeName.split('.');
      final fullyQualifiedClassName =
          (typeNameAsList.sublist(0, typeNameAsList.length - 1)
                ..add(typeNameAsList.last.substring(1)))
              .join('.');
      clsid = scope.findTypeDef(fullyQualifiedClassName)?.guid ?? '';

      final projection = ClassProjector(mdTypeDef).projection
        ..inherits = parentInterface
        ..vtableStart = type.vTableStart
        ..sourceType = SourceType.com
        ..generateClass = type.generateClass
        ..clsid = clsid
        ..className = type.typeName.split('.').last.substring(1);

      final dartTests = generateTests(projection);

      final outputFilename = type.typeName.split('.').last;
      final testFile = File(
          '${outputDirectory.uri.toFilePath()}${outputFilename}_test.dart');

      print('Writing:    ${testFile.path}');
      testFile.writeAsStringSync(dartTests);
    }
  }
}
