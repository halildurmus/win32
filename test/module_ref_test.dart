// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can detect the module in which an API is found', () async {
    final scope = await MetadataStore.loadWin32Metadata();
    final typeDef = scope.findTypeDef('Windows.Win32.Graphics.Gdi.Apis');
    check(typeDef).isNotNull();
    final method = typeDef!.findMethod('AddFontResourceW');
    check(method).isNotNull();
    check(method!.module.name).equalsIgnoringCase('gdi32.dll');
    check(method.module.toString()).equalsIgnoringCase('gdi32.dll');

    MetadataStore.close();
  });
}
