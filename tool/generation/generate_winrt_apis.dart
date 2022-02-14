// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a type and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile
// https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

import 'dart:io';

import 'package:winmd/winmd.dart';

import '../inputs/interfaces.dart';
import '../projection/winrt_interface.dart';

void main(List<String> args) {
  final outputDirectory =
      (args.length == 1) ? Directory(args.first) : Directory('lib/src/com');

  for (final type in windowsRuntimeTypesToGenerate) {
    final mdTypeDef = MetadataStore.getMetadataForType(type);
    if (mdTypeDef == null) {
      throw Exception("Can't find type $type.");
    }

    final projection = WinRTInterfaceProjection(mdTypeDef);
    final dartClass = projection.toString();

    final outputFilename = type.split('.').last;
    final outputFile =
        File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');

    print('Writing:    ${outputFile.path}');
    outputFile.writeAsStringSync(dartClass);
  }
}
