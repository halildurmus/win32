// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Parse the Windows Metadata for a Wdk type and grab some interesting
// information about it.

import 'package:winmd/winmd.dart';

void main() async {
  // Win32 metadata also needs to be loaded to resolve references from Wdk
  // metadata
  await MetadataStore.loadWin32Metadata();
  // Load the Wdk metadata
  final scope = await MetadataStore.loadWdkMetadata();

  // Find a namespace
  final namespace =
      scope.findTypeDef('Windows.Wdk.System.SystemInformation.Apis')!;

  // Sort the functions alphabetically
  final sortedMethods = namespace.methods
    ..sort((a, b) => a.name.compareTo(b.name));

  // Find a specific function
  const funcName = 'NtQuerySystemInformation';
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
