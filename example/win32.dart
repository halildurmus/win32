// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a Win32 type and grab some interesting
// information about it.

import 'dart:io';

import 'package:winmd/winmd.dart';

void main() {
  // Load WinMD metadata for Win32, as produced by the following utility:
  // https://github.com/microsoft/win32metadata
  final scope = MetadataStore.getScopeForFile(File('bin/Windows.Win32.winmd'));
  print('*** ${scope.name} ***');

  // Find the GDI API namesapce
  final gdiApi =
      scope.typeDefs.firstWhere((type) => type.typeName.endsWith('Gdi.Apis'));

  final gdiAttrs = gdiApi.attributes;
  for (final attr in gdiAttrs) {
    print(
        'gdiAttr: ${attr.signatureBlob.map((b) => b.toRadixString(16)).toList()}');
  }

  // Sort the functions alphabetically
  final sortedMethods = gdiApi.methods
    ..sort((a, b) => a.methodName.compareTo(b.methodName));

  // Find a specific function
  const funcName = 'AddFontResourceW';
  final winmdMethod = sortedMethods.firstWhere((m) => m.methodName == funcName);

  print('Module for $funcName is ${winmdMethod.module.name}');

  final mAttrs = winmdMethod.attributes;
  print('There are ${mAttrs.length} method attributes:');
  for (final attr in mAttrs) {
    print(
        'attr: ${attr.signatureBlob.map((b) => b.toRadixString(16)).toList()}');
  }

  // Print out some information about it
  print('This method is token #${winmdMethod.token}');

  final mattr = winmdMethod.attributeSignature('DllImport');
  if (mattr.isNotEmpty) {
    print('DllImport: ${mattr.map((b) => b.toRadixString(16)).toList()}');
  }

  final params = winmdMethod.parameters
      .map((param) => '${param.typeIdentifier} ${param.name}')
      .join(', ');
  print('The parameters are:\n$params');

  final lastParam = winmdMethod.parameters.last;
  if (lastParam.signatureBlob.isNotEmpty) {
    print('Parameter SignatureBlob: '
        '${lastParam.signatureBlob.map((b) => b.toRadixString(8)).toList()}');
  }

  final attr = lastParam.attributeSignature('NativeTypeInfo');
  if (attr.isNotEmpty) {
    print('NativeTypeInfo: ${attr.map((b) => b.toRadixString(16)).toList()}');
  }

  final attrs = lastParam.attributes;
  print('There are ${attrs.length} attributes in ${lastParam.name}:');
  for (final attr in attrs) {
    print(
        'attr [${attr.tokenType.toRadixString(16)}]: ${attr.signatureBlob.map((b) => b.toRadixString(16)).toList()}');
  }
}
