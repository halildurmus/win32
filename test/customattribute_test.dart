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

  test('Custom Attributes name', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    expect(mc?.customAttributes.length, equals(5));

    final first = mc?.customAttributes.first;
    expect(first.toString(),
        equals('Windows.Foundation.Metadata.DeprecatedAttribute'));
  });
}
