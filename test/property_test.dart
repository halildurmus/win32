@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Base property test', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Devices.LowLevelDevicesController')!;
    check(typeDef.properties.length).equals(1);

    final property = typeDef.properties.first;
    check(property.toString()).equals('DefaultProvider');

    check(property.hasGetter).isTrue();
    check(property.hasSetter).isTrue();

    check(property.getterMethod?.name).equals('get_DefaultProvider');
    check(property.setterMethod?.name).equals('put_DefaultProvider');

    check(property.parent).equals(typeDef);
    check(property.hasDefault).isFalse();
    check(property.isSpecialName).isFalse();
    check(property.isRTSpecialName).isFalse();
  });
}
