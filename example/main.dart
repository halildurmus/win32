// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a WinRT type and generate a Dart wrapper

import 'package:winmd/winmd.dart';

void main() {
  // A Windows Runtime interface
  const type = 'Windows.Foundation.IAsyncInfo';

  // Load the metadata for this interface
  final typeDef = MetadataStore.getMetadataForType(type)!;

  // Project it into something Dart can work with
  final projection = ClassProjector(typeDef).projection;

  // Create a Dart projection
  final dartClass = TypePrinter.printType(projection);

  // Print it to the screen. Normally you'd save it to a file and format it.
  print(dartClass);
}
