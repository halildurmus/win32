// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a type and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile
// https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

import 'dart:io';

import 'typeBuilder.dart';
import 'typePrinter.dart';

final typesToGenerate = [
  'Windows.Foundation.IAsyncInfo',
  'Windows.Foundation.IClosable',
  'Windows.Foundation.IStringable',
  // 'Windows.Foundation.IPropertyValue',
];

void main(List<String> args) {
  final outputDirectory = (args.length == 1)
      ? Directory(args.first)
      : Directory('lib/src/generated2');

  for (var type in typesToGenerate) {
    final projection = TypeBuilder.projectWinMdType(type);
    final dartClass = TypePrinter.printType(projection);

    final outputFilename = type.split('.').last;
    final outputFile =
        File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);
  }
}
