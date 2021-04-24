@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  test('Struct has expected number of fields', () {
    final xform = scope.findTypeDef('Windows.Win32.Gdi.XFORM')!;
    expect(xform.fields.length, equals(6));
  });

  test('Struct primitive field has expected name and type', () {
    final xform = scope.findTypeDef('Windows.Win32.Gdi.XFORM')!;
    expect(xform.fields.first.name, equals('eM11'));
    expect(xform.fields.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_R4));
  });

  test('Struct valuetype field has expected name and type', () {
    final procInfo =
        scope.findTypeDef('Windows.Win32.SystemServices.PROCESS_INFORMATION')!;
    expect(procInfo.fields.first.name, equals('hProcess'));
    expect(procInfo.fields.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(procInfo.fields.first.typeIdentifier.name, endsWith('HANDLE'));
  });

  test('Struct array field has expected name and type', () {
    final procInfo = scope.findTypeDef('Windows.Win32.Gdi.BITMAPINFO')!;
    expect(procInfo.fields.last.name, equals('bmiColors'));
    expect(procInfo.fields.last.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_ARRAY));
    expect(
        procInfo.fields.last.typeIdentifier.typeArg?.name, endsWith('RGBQUAD'));
  });

  test('Struct array field has expected name and type 2', () {
    final procInfo = scope.findTypeDef('Windows.Win32.Gdi.DESIGNVECTOR')!;
    expect(procInfo.fields.last.name, equals('dvValues'));
    expect(procInfo.fields.last.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_ARRAY));
    expect(procInfo.fields.last.typeIdentifier.typeArg?.corType,
        equals(CorElementType.ELEMENT_TYPE_I4));
    expect(procInfo.fields.last.typeIdentifier.arrayDimensions, equals([16]));
  });

  test('Struct PHYSICAL_MONITOR contains an array of chars', () {
    final procInfo =
        scope.findTypeDef('Windows.Win32.Monitor.PHYSICAL_MONITOR')!;
    final szPhysicalMonitorDescription = procInfo.fields[1];

    expect(szPhysicalMonitorDescription.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_ARRAY));
    expect(szPhysicalMonitorDescription.typeIdentifier.typeArg?.corType,
        equals(CorElementType.ELEMENT_TYPE_CHAR));
  });

  test('Small struct array fields have the correct dimensions', () {
    final procInfo =
        scope.findTypeDef('Windows.Win32.FileSystem.WIN32_FIND_DATAW')!;
    final cAlternateFileName = procInfo.fields[9];
    expect(cAlternateFileName.name, equals('cAlternateFileName'));
    expect(
        cAlternateFileName.typeIdentifier.arrayDimensions?.first, equals(14));
  });

  test('Large struct array fields have the correct dimensions', () {
    final procInfo =
        scope.findTypeDef('Windows.Win32.FileSystem.WIN32_FIND_DATAW')!;
    final cFileName = procInfo.fields[8];
    expect(cFileName.name, equals('cFileName'));
    expect(cFileName.typeIdentifier.arrayDimensions?.first, equals(260));
  });
}
