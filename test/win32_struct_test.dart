@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Struct has expected number of fields', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.Graphics.Gdi.XFORM')!;
    expect(struct.fields.length, equals(6));
  });

  test('Struct primitive field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.Graphics.Gdi.XFORM')!;
    expect(struct.fields.first.name, equals('eM11'));
    expect(struct.fields.first.typeIdentifier.baseType, equals(BaseType.Float));
  });

  test('Struct valuetype field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope
        .findTypeDef('Windows.Win32.System.Threading.PROCESS_INFORMATION')!;
    expect(struct.fields.first.name, equals('hProcess'));
    expect(struct.fields.first.typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(struct.fields.first.typeIdentifier.name, endsWith('HANDLE'));
  });

  test('Struct array field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final struct = scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPINFO')!;
    expect(struct.fields.last.name, equals('bmiColors'));
    expect(struct.fields.last.typeIdentifier.baseType,
        equals(BaseType.ArrayTypeModifier));
    expect(
        struct.fields.last.typeIdentifier.typeArg?.name, endsWith('RGBQUAD'));
  });

  test('Struct array field has expected name and type 2', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.DESIGNVECTOR')!;
    expect(struct.fields.last.name, equals('dvValues'));
    expect(struct.fields.last.typeIdentifier.baseType,
        equals(BaseType.ArrayTypeModifier));
    expect(struct.fields.last.typeIdentifier.typeArg?.baseType,
        equals(BaseType.Int32));
    expect(struct.fields.last.typeIdentifier.arrayDimensions, equals([16]));
  });

  test('Struct PHYSICAL_MONITOR contains an array of chars', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Devices.Display.PHYSICAL_MONITOR')!;
    final szPhysicalMonitorDescription = struct.fields[1];

    expect(szPhysicalMonitorDescription.typeIdentifier.baseType,
        equals(BaseType.ArrayTypeModifier));
    expect(szPhysicalMonitorDescription.typeIdentifier.typeArg?.baseType,
        equals(BaseType.Char));
  });

  test('Small struct array fields have the correct dimensions', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Storage.FileSystem.WIN32_FIND_DATAW')!;
    final cAlternateFileName = struct.fields[9];
    expect(cAlternateFileName.name, equals('cAlternateFileName'));
    expect(
        cAlternateFileName.typeIdentifier.arrayDimensions?.first, equals(14));
  });

  test('Large struct array fields have the correct dimensions', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.Storage.FileSystem.WIN32_FIND_DATAW')!;
    final cFileName = struct.fields[8];
    expect(cFileName.name, equals('cFileName'));
    expect(cFileName.typeIdentifier.arrayDimensions?.first, equals(260));
  });

  test('Nested types are identified correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;

    final lastField = struct.fields.last;
    expect(lastField.nestedType, isNotNull);

    final nestedUnion = lastField.nestedType!;
    expect(nestedUnion.isNested, isTrue);
  });

  test('Union structs are identified correctly', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;

    // INPUT is not itself a union, but it contains a union.
    expect(struct.isUnion, isFalse);
    final lastField = struct.fields.last;
    expect(lastField.nestedType, isNotNull);

    final nestedUnion = lastField.nestedType!;
    expect(nestedUnion.isUnion, isTrue);
  });

  test('Union structs have correct parent', () {
    final scope = MetadataStore.getWin32Scope();
    final struct =
        scope.findTypeDef('Windows.Win32.UI.Input.KeyboardAndMouse.INPUT')!;

    // INPUT is not itself a union, but it contains a union.
    expect(struct.isUnion, isFalse);
    final lastField = struct.fields.last;
    expect(lastField.nestedType, isNotNull);

    final nestedUnion = lastField.nestedType!;

    expect(nestedUnion.enclosingClass, equals(struct));
  });
}
