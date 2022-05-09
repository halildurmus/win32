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

    // These numbers will vary from version to version of Windows; they're here
    // just for experimentation.
    expect(deprecated.token,
        equals(0x0C000F1E)); // custom attribute DeprecatedAttribute
    expect(deprecated.memberRef.token, equals(0x0A000015)); // memberref .ctor

    final ref = MemberRef.fromToken(deprecated.scope, 0x0A000015);
    // expect(ref.referencedToken, equals(0x060002AA)); // method .ctor
    // actually 0x0100069E // typeRef to Windows.Foundation.DeprecatedAttribute

    final sig = UncompressedData.fromBlob(ref.signatureBlob);
    expect(sig.data, equals(0x20));
    expect(sig.dataLength, equals(1));
    final sig2 = UncompressedData.fromBlob(ref.signatureBlob.sublist(1));
    expect(sig2.data, equals(0x04));
    expect(sig2.dataLength, equals(1));
    // what is signature 9343?

    expect(deprecated.memberRef.tokenType, equals(TokenType.MemberRef));
    expect(deprecated.memberRef.name, equals('.ctor'));
    expect(deprecated.constructor.name, endsWith('DeprecatedAttribute'));
    expect(deprecated.constructor.methods.length, equals(3));
  }, skip: 'Still experimenting.');
}
