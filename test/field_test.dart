@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Test Win32 field properties', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    expect(typeDef, isNotNull);

    final field = typeDef!.findField('MIXERCONTROL_CONTROLTYPE_DECIBELS');
    expect(field, isNotNull);
    expect(field!.fieldAccess, equals(FieldAccess.public));
    expect(field.isStatic, isTrue);
    expect(field.isLiteral, isTrue);
    expect(field.isRTSpecialName, isFalse);
    expect(field.isPinvokeImpl, isFalse);
    expect(field.isSpecialName, isFalse);
    expect(field.hasFieldMarshal, isFalse);
    expect(field.isInitOnly, isFalse);
    expect(field.isNotSerialized, isFalse);
    expect(field.hasDefault, isTrue);
    expect(field.hasFieldRVA, isFalse);

    expect(field.value, equals(805568512));
    expect(field.parent, equals(typeDef));
  });

  test('Test WinRT field properties', () {
    final typeDef = MetadataStore.getMetadataForType('Windows.Foundation.Rect');

    expect(typeDef, isNotNull);

    // _Anonymous_e__Struct
    final field = typeDef!.fields.last;
    expect(field.fieldAccess, equals(FieldAccess.public));
    expect(field.isStatic, isFalse);
    expect(field.isLiteral, isFalse);
    expect(field.isRTSpecialName, isFalse);
    expect(field.isPinvokeImpl, isFalse);
    expect(field.isSpecialName, isFalse);
    expect(field.hasFieldMarshal, isFalse);
    expect(field.isInitOnly, isFalse);
    expect(field.isNotSerialized, isFalse);
    expect(field.hasDefault, isFalse);
    expect(field.hasFieldRVA, isFalse);

    expect(field.parent, equals(typeDef));
    expect(field.toString(), equals('Height'));
  });
}
