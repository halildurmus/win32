@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Test Win32 field properties', () {
    final scope = MetadataStore.getWin32Scope();
    final typeDef = scope.findTypeDef('Windows.Win32.Media.Audio.Apis');

    check(typeDef).isNotNull();

    final field = typeDef!.findField('MIXERCONTROL_CONTROLTYPE_DECIBELS');
    check(field).isNotNull();
    check(field!.fieldAccess).equals(FieldAccess.public);
    check(field.isStatic).isTrue();
    check(field.isLiteral).isTrue();
    check(field.isRTSpecialName).isFalse();
    check(field.isPinvokeImpl).isFalse();
    check(field.isSpecialName).isFalse();
    check(field.hasFieldMarshal).isFalse();
    check(field.isInitOnly).isFalse();
    check(field.isNotSerialized).isFalse();
    check(field.hasDefault).isTrue();
    check(field.hasFieldRVA).isFalse();

    check(field.value).equals(805568512);
    check(field.parent).equals(typeDef);
  });

  test('Test WinRT field properties', () {
    final typeDef = MetadataStore.getMetadataForType('Windows.Foundation.Rect');

    check(typeDef).isNotNull();

    // _Anonymous_e__Struct
    final field = typeDef!.fields.last;
    check(field.fieldAccess).equals(FieldAccess.public);
    check(field.isStatic).isFalse();
    check(field.isLiteral).isFalse();
    check(field.isRTSpecialName).isFalse();
    check(field.isPinvokeImpl).isFalse();
    check(field.isSpecialName).isFalse();
    check(field.hasFieldMarshal).isFalse();
    check(field.isInitOnly).isFalse();
    check(field.isNotSerialized).isFalse();
    check(field.hasDefault).isFalse();
    check(field.hasFieldRVA).isFalse();

    check(field.parent).equals(typeDef);
    check(field.toString()).equals('Height');
  });
}
