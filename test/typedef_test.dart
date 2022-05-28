@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Find an unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final field = typeDef!.findField('THIS_ONE_GOES_TO_11');
    expect(field, isNull);
  });

  test('Test for unknown field', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final method = typeDef!.findMethod('PlaySoundVeryLoudly');
    expect(method, isNull);
  });

  test('Test for parent field', () {
    final typeDef =
        MetadataStore.getMetadataForType('Windows.Data.Xml.Dom.IXmlNodeList');

    expect(typeDef, isNotNull);
    expect(typeDef!.parent, isNotNull);
    expect(typeDef.parent!.name, endsWith('IInspectable'));
    expect(typeDef.parent!.parent, isNull);
  });
}
