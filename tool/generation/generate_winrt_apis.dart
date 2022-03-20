// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a type and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile
// https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import '../inputs/interfaces.dart';
import '../projection/utils.dart';
import '../projection/winrt_interface.dart';

void generateWinRTApis() {
  for (final interface in windowsRuntimeTypesToGenerate) {
    final typeDef = MetadataStore.getMetadataForType(interface);
    if (typeDef == null) throw Exception("Can't find $interface");
    final interfaceProjection = WinRTInterfaceProjection(typeDef);

    final dartClass = interfaceProjection.toString();

    final classOutputFilename =
        stripAnsiUnicodeSuffix(interface.split('.').last);
    final classOutputPath = 'lib/src/com/$classOutputFilename.dart';

    File(classOutputPath).writeAsStringSync(DartFormatter().format(dartClass));
  }
}
