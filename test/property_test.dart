// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  late Scope winrtScope;

  setUpAll(() async {
    winrtScope = await MetadataStore.loadWinRTMetadata();
  });

  test('Base property test', () {
    final typeDef =
        winrtScope.findTypeDef('Windows.Devices.LowLevelDevicesController');
    check(typeDef).isNotNull();
    check(typeDef!.properties.length).equals(1);
    final [property] = typeDef.properties;
    check(property.getterMethod).isNotNull();
    check(property.getterMethod!.name).equals('get_DefaultProvider');
    check(property.hasDefault).isFalse();
    check(property.hasGetter).isTrue();
    check(property.hasSetter).isTrue();
    check(property.isSpecialName).isFalse();
    check(property.isRTSpecialName).isFalse();
    check(property.parent).equals(typeDef);
    check(property.setterMethod?.name).equals('put_DefaultProvider');
    check(property.toString()).equals('DefaultProvider');
  });

  tearDownAll(MetadataStore.close);
}
