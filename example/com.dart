// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a COM type and generate a Dart wrapper

import 'dart:io';

import 'package:winmd/winmd.dart';

const typeToGenerate = 'Windows.Win32.NetworkListManager.INetwork';

void main(List<String> args) {
  final scope = MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
  final typedef = scope.findTypeDef(typeToGenerate)!;
  final projection = ClassProjector(typedef).projection;
  final dartClass = TypePrinter.printType(projection);

  print(dartClass);
}
