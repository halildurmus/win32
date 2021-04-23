@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Can find system token 0x0100001d', () {
    final scope = MetadataStore.getWin32Scope();
    final token = TypeDef.fromTypeRefToken(scope.reader, 0x0100001d);
    expect(token.typeName,
        equals('Windows.Win32.Gdi.MODIFY_WORLD_TRANSFORM_MODE'));
    expect(token.parent?.typeName, endsWith('Enum'));
  });

  test('Can find system token 0x0100003e', () {
    final scope = MetadataStore.getWin32Scope();
    final token = TypeDef.fromTypeRefToken(scope.reader, 0x0100003e);
    expect(token.typeName, equals('System.ValueType'));
  });

  test('IInspectable works', () {
    final winTypeDef = MetadataStore.getMetadataForType(
        'Windows.Foundation.Collections.IPropertySet')!;
    expect(winTypeDef.parent?.typeName, endsWith('IInspectable'));
  });
}
