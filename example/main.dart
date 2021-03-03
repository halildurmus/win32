// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a WinRT type and generate a Dart wrapper

import 'package:winmd/winmd.dart';

const winrtType = 'Windows.Foundation.IPropertyValue';

void main(List<String> args) {
  final mdTypeDef = MetadataStore.getMetadataForType(winrtType)!;
  final projection = ClassProjector(mdTypeDef).projection;
  final dartClass = TypePrinter.printType(projection);

  print(dartClass);
}
