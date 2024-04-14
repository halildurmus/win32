// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Parse the Windows Metadata for a Win32 type and grab some interesting
// information about it.

import 'package:winmd/winmd.dart';

void main() async {
  // Load the Win32 metadata
  final scope = await MetadataStore.loadWin32Metadata();

  // Find a namespace
  final namespace =
      scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.Apis')!;

  // Sort the functions alphabetically
  final sortedMethods = namespace.methods
    ..sort((a, b) => a.name.compareTo(b.name));

  // Find a specific function
  const funcName = 'MessageBoxW';
  final method = sortedMethods.firstWhere((m) => m.name == funcName);

  // Print out some information about it
  print('Win32 function $funcName [token #${method.token}]');

  // Retrieve its parameters and project them into Dart FFI types
  final params = method.parameters
      .map((param) =>
          '${param.typeIdentifier.name.split('.').last} ${param.name}')
      .join(', ');
  print('The parameters are:\n  $params');

  final returnType = method.returnType.typeIdentifier.name.split('.').last;
  print('It returns type: $returnType.');

  MetadataStore.close();
}
