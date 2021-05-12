@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Struct has expected number of fields', () {
    final scope = MetadataStore.getWin32Scope();
    final xform = scope.findTypeDef('Windows.Win32.Graphics.Gdi.XFORM')!;
    expect(xform.fields.length, equals(6));
  });

  test('Struct primitive field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final xform = scope.findTypeDef('Windows.Win32.Graphics.Gdi.XFORM')!;
    expect(xform.fields.first.name, equals('eM11'));
    expect(xform.fields.first.typeIdentifier.baseType, equals(BaseType.Float));
  });

  test('Struct valuetype field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final procInfo = scope
        .findTypeDef('Windows.Win32.System.Threading.PROCESS_INFORMATION')!;
    expect(procInfo.fields.first.name, equals('hProcess'));
    expect(procInfo.fields.first.typeIdentifier.baseType,
        equals(BaseType.ValueTypeModifier));
    expect(procInfo.fields.first.typeIdentifier.name, endsWith('HANDLE'));
  });

  test('Struct array field has expected name and type', () {
    final scope = MetadataStore.getWin32Scope();
    final procInfo =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.BITMAPINFO')!;
    expect(procInfo.fields.last.name, equals('bmiColors'));
    expect(procInfo.fields.last.typeIdentifier.baseType,
        equals(BaseType.ArrayTypeModifier));
    expect(
        procInfo.fields.last.typeIdentifier.typeArg?.name, endsWith('RGBQUAD'));
  });

  test('Struct array field has expected name and type 2', () {
    final scope = MetadataStore.getWin32Scope();
    final procInfo =
        scope.findTypeDef('Windows.Win32.Graphics.Gdi.DESIGNVECTOR')!;
    expect(procInfo.fields.last.name, equals('dvValues'));
    expect(procInfo.fields.last.typeIdentifier.baseType,
        equals(BaseType.ArrayTypeModifier));
    expect(procInfo.fields.last.typeIdentifier.typeArg?.baseType,
        equals(BaseType.Int32));
    expect(procInfo.fields.last.typeIdentifier.arrayDimensions, equals([16]));
  });

  test('Struct PHYSICAL_MONITOR contains an array of chars', () {
    final scope = MetadataStore.getWin32Scope();
    final procInfo =
        scope.findTypeDef('Windows.Win32.Devices.Display.PHYSICAL_MONITOR')!;
    final szPhysicalMonitorDescription = procInfo.fields[1];

    expect(szPhysicalMonitorDescription.typeIdentifier.baseType,
        equals(BaseType.ArrayTypeModifier));
    expect(szPhysicalMonitorDescription.typeIdentifier.typeArg?.baseType,
        equals(BaseType.Char));
  });

  test('Small struct array fields have the correct dimensions', () {
    final scope = MetadataStore.getWin32Scope();
    final procInfo =
        scope.findTypeDef('Windows.Win32.Storage.FileSystem.WIN32_FIND_DATAW')!;
    final cAlternateFileName = procInfo.fields[9];
    expect(cAlternateFileName.name, equals('cAlternateFileName'));
    expect(
        cAlternateFileName.typeIdentifier.arrayDimensions?.first, equals(14));
  });

  test('Large struct array fields have the correct dimensions', () {
    final scope = MetadataStore.getWin32Scope();
    final procInfo =
        scope.findTypeDef('Windows.Win32.Storage.FileSystem.WIN32_FIND_DATAW')!;
    final cFileName = procInfo.fields[8];
    expect(cFileName.name, equals('cFileName'));
    expect(cFileName.typeIdentifier.arrayDimensions?.first, equals(260));
  });
}
