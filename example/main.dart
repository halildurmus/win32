// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a WinRT type and generate a Dart wrapper

import 'package:winmd/winmd.dart';

void main() {
  // A Windows Runtime interface
  const typeToGenerate = 'Windows.Media.Playback.MediaPlayer';

  // Load the metadata for this interface
  final typeDef = MetadataStore.getMetadataForType(typeToGenerate)!;

  // Create a Dart projection
  print('$typeToGenerate contains the following methods:');

  for (final method in typeDef.methods) {
    print('  ${method.methodName}');
  }
}
