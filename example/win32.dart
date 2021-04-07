// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a Win32 type and grab some interesting
// information about it.

import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata for Win32, as produced by the following utility:
  // https://github.com/microsoft/win32metadata
  final scope = MetadataStore.getWin32Scope();

  // Find a namesapce
  final namespace =
      scope.findTypeDef('Windows.Win32.WindowsAndMessaging.Apis')!;

  // Sort the functions alphabetically
  final sortedMethods = namespace.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // Find a specific function
  const funcName = 'MessageBoxW';
  final method = sortedMethods.firstWhere((m) => m.methodName == funcName);

  // Print out some information about it
  print('Win32 function $funcName [token #${method.token}]');

  // Retrieve its parameters and project them into Dart FFI types
  final params = method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).nativeType} ${param.name}')
      .join(', ');
  print('The parameters are:\n  $params');

  final returnType = TypeProjector(method.returnType.typeIdentifier).nativeType;
  print('It returns type: $returnType.');
}
