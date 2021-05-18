// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a COM type and generate a Dart wrapper

import 'package:winmd/winmd.dart';

const typeToGenerate = 'Windows.Win32.Networking.NetworkListManager.INetwork';

void main(List<String> args) {
  final scope = MetadataStore.getWin32Scope();
  final typedef = scope.findTypeDef(typeToGenerate)!;

  print('$typeToGenerate contains the following methods:');

  for (final method in typedef.methods) {
    print('  ${method.name}');
  }
}
