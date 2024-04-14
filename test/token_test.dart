// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope win32Scope;
  late Scope winrtScope;

  setUpAll(() async {
    win32Scope = await MetadataStore.loadWin32Metadata();
    winrtScope = await MetadataStore.loadWinRTMetadata();
  });

  test('0 is not a valid token', () {
    check(win32Scope.reader.isValidToken(0)).equals(FALSE);
  });

  test('0x00000001 is a valid token', () {
    // This should be the module identifier in all normal circumstances
    check(win32Scope.reader.isValidToken(0x00000001)).equals(TRUE);
  });

  test('ValueType', () {
    final typeDef =
        win32Scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.ACCEL');
    check(typeDef).isNotNull();
    check(typeDef!.isResolvedToken).isTrue();
    final parent = typeDef.parent;
    check(parent).isNotNull();
    check(parent!.name).equals('System.ValueType');
    check(parent.isResolvedToken).isFalse();
  });

  test('IInspectable works', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Foundation.Collections.IPropertySet');
    check(typeDef).isNotNull();
    final parent = typeDef!.parent;
    check(parent).isNotNull();
    check(parent!.name).endsWith('IInspectable');
  });

  tearDownAll(MetadataStore.close);
}
