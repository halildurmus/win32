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

  test('Custom Attribute constructor can be found', () {
    final mc = MetadataStore.getMetadataForType('Windows.Media.MediaControl');

    final found = mc?.customAttributes
        .where((a) => a.name.endsWith('DeprecatedAttribute'));
    expect(found, isNotNull);
    expect(found!.length, equals(1));

    final deprecated = found.first;
    expect(
        deprecated.signatureBlob.sublist(0, 2), equals([0x01, 0x00])); // prolog

    final ref = MemberRef.fromToken(deprecated.scope, 0x0A000015);
    expect(ref.signatureBlob.length, equals(9));
    expect(ref.signatureBlob.toList(),
        containsAllInOrder([0x20, 0x04, 0x01, 0x0e]));

    expect(deprecated.memberRef.tokenType, equals(TokenType.MemberRef));
    expect(deprecated.memberRef.name, equals('.ctor'));
    expect(deprecated.constructor.name, endsWith('DeprecatedAttribute'));

    expect(deprecated.parameterTypes.length, equals(4));
    expect(deprecated.parameterTypes[0].baseType, equals(BaseType.String));
    expect(deprecated.parameterTypes[1].baseType,
        equals(BaseType.ValueTypeModifier));
    expect(deprecated.parameterTypes[2].baseType, equals(BaseType.Uint32));
    expect(deprecated.parameterTypes[3].baseType, equals(BaseType.String));
    expect(deprecated.parameterTypes.length, equals(4));

    expect(deprecated.parameterValues[0], isA<String>());
    expect(
        deprecated.parameterValues[0],
        equals('MediaControl may be altered or unavailable for releases after '
            'Windows 8.1. Instead, use SystemMediaTransportControls.'));
    expect(deprecated.parameterValues[1], isA<int>());
    expect(deprecated.parameterValues[1], equals(0));
    expect(deprecated.parameterValues[2], isA<int>());
    expect(deprecated.parameterValues[2], equals(65536));
    expect(deprecated.parameterValues[3], isA<String>());
    expect(deprecated.parameterValues[3],
        equals('Windows.Media.MediaControlContract'));
    expect(deprecated.parameterValues.length, equals(4));
  });
}
