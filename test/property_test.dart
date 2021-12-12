@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Base property test', () {
    final typeDef = MetadataStore.getMetadataForType(
        'Windows.Devices.LowLevelDevicesController')!;
    expect(typeDef.properties.length, equals(1));

    final property = typeDef.properties.first;
    expect(property.toString(), equals('DefaultProvider'));

    expect(property.hasGetter, isTrue);
    expect(property.hasSetter, isTrue);

    expect(property.getterMethod?.name, equals('get_DefaultProvider'));
    expect(property.setterMethod?.name, equals('put_DefaultProvider'));

    expect(property.parent, equals(typeDef));
    expect(property.hasDefault, isFalse);
    expect(property.isSpecialName, isFalse);
    expect(property.isRTSpecialName, isFalse);
  });
}
