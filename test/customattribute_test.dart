@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winmd/src/com/constants.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Create custom attribute from invalid token fails', () {
    final scope = MetadataStore.getWin32Scope();

    expect(
        () => CustomAttribute.fromToken(scope, -1),
        throwsA(predicate(
            (e) => e is WindowsException && e.hr == CLDB_E_INDEX_NOTFOUND)));
  });

  test('Custom Attribute has a name', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    expect(mc?.customAttributes.length, equals(5));

    final attributes = mc?.customAttributes.map((a) => a.toString());
    expect(attributes,
        contains('Windows.Foundation.Metadata.DeprecatedAttribute'));
  });

  test('Custom Attribute has a type', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    final found = mc?.customAttributes
        .where((a) => a.name.endsWith('DeprecatedAttribute'));
    expect(found, isNotNull);
    expect(found!.length, equals(1));

    final deprecated = found.first;
    // expect(deprecated.attributeType, equals(1));
    expect(
        deprecated.signatureBlob.sublist(0, 2), equals([0x01, 0x00])); // prolog
  });
}
