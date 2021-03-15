@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  test('Struct has expected number of fields', () {
    final xform = scope['Windows.Win32.Gdi.XFORM']!;
    expect(xform.fields.length, equals(6));
  });
  test('Struct primitive field has expected name and type', () {
    final xform = scope['Windows.Win32.Gdi.XFORM']!;
    expect(xform.fields.first.name, equals('eM11'));
    expect(xform.fields.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_R4));
  });
  test('Struct valuetype field has expected name and type', () {
    final xform = scope['Windows.Win32.SystemServices.PROCESS_INFORMATION']!;
    expect(xform.fields.first.name, equals('hProcess'));
    expect(xform.fields.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(xform.fields.first.typeIdentifier.name, endsWith('HANDLE'));
  });
}
