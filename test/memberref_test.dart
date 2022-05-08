@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  // test('Create module ref from invalid token fails', () {
  //   // Dirty implementation for now: assumes things don't move .
  //   const DeprecatedAttributeCtor = 0x0A000015;

  //   final typeDef = MetadataStore.getMetadataForType(
  //       'Windows.Globalization.LanguageLayoutDirection')!;
  //   final memberRef = typeDef.customAttributes.first.token;
  //   expect(memberRef, equals(DeprecatedAttributeCtor));
  //   // final memberRef = MemberRef.fromToken(
  //   //     scope, DeprecatedAttributeCtor); // points to DeprecatedAttribute.ctor
  //   // expect(memberRef.token, equals(DeprecatedAttributeCtor));
  //   // expect(memberRef.referencedToken,
  //   //     equals(0x0100069E)); // TypeRef DeprecatedAttribute

  //   // final typeRef = TypeDef.fromTypeRefToken(scope, memberRef.referencedToken);
  //   // expect(typeRef.name,
  //   //     equals('Windows.Foundation.Metadata.DeprecatedAttribute'));
  //   // expect(typeRef.methods.length, equals(3));
  // });
}
