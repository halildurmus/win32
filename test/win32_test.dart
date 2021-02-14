@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:win32/win32.dart';

void main() {
  if (isWindowsRuntimeAvailable()) {
    test('Can load a Win32 metadata file', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      expect(scope.typeDefs.length, isNonZero);
    });
    test('Scope name is as expected', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      expect(scope.name, equals('Windows.Win32.winmd'));
    });
    test('Scope modules contain expected DLLs', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      expect(
          scope.modules.map((module) => module.name),
          containsAll(
              <String>['KERNEL32', 'USER32', 'GDI32', 'd3d12', 'netutils']));
    });

    test('Can find the GDI API', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis'];
      expect(typedef, isNotNull);
      expect(typedef!.methods.length, isNonZero);
    });

    test('Searching for a non-existent typedef returns null', () {
      const fakeTypeDef = 'Windows.Flutter.Apis'; // for now :)
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope[fakeTypeDef];
      expect(typedef, isNull);
    });

    test('Can find the AddFontResourceW API', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;

      final api = typedef.findMethod('AddFontResourceW');
      expect(api, isNotNull);
      expect(api!.parameters.length, isNonZero);
    });

    test('Searching for a non-existent API call returns null', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;

      final api = typedef.findMethod('AddFlutterWidget');
      expect(api, isNull);
    });

    test('Can find the AddFontResourceW API', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;

      final api = typedef.findMethod('AddFontResourceW')!;

      expect(api.module.name, equalsIgnoringCase('gdi32'));
    });

    test('AddFontResourceW API returns an int', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;
      final api = typedef.findMethod('AddFontResourceW')!;
      final returnType = api.returnType;

      expect(returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(returnType.typeIdentifier.typeArgs.length, isZero);
      expect(returnType.typeIdentifier.name, equals('int'));
    });

    test('AddFontResourceW API has a wide string parameter named param0', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;
      final api = typedef.findMethod('AddFontResourceW')!;

      expect(api.parameters.length, equals(1));
      final param = api.parameters.first;

      expect(param.name, equals('param0'));
      expect(param.sequence, equals(1));
      expect(param.stringType, equals(StringType.Unicode));
      expect(param.typeIdentifier.name, equals('LPWSTR'));

      // corType is a pointer to a unsigned word
      expect(param.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_PTR));
      expect(param.typeIdentifier.typeArgs.length, equals(1));
      expect(param.typeIdentifier.typeArgs.first.corType,
          equals(CorElementType.ELEMENT_TYPE_U2));
    });

    test('AddFontResourceW signature blob is correct', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;
      final api = typedef.findMethod('AddFontResourceW')!;
      expect(api.signatureBlob, equals([0x00, 0x01, 0x08, 0x0f, 0x07]));
    });

    test('AddFontResourceW nativeTypeInfo custom attribute blob is correct',
        () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;
      final api = typedef.findMethod('AddFontResourceW')!;
      final param = api.parameters.first;

      // At some point, we should look this up
      const nativeTypeInfoToken = 0x0A000004;
      final nativeTypeInfo = param.attributes
          .firstWhere((attr) => attr.tokenType == nativeTypeInfoToken);

      expect(nativeTypeInfo.signatureBlob.length, equals(28));
      expect(nativeTypeInfo.signatureBlob.sublist(0, 6),
          equals([0x01, 0x00, 0x15, 0x00, 0x00, 0x00]));
    });
  }

  test('AddFontResourceW string param is correctly marked', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, equals('LPWSTR'));
  });

  test('AddFontResourceA string param is correctly marked', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('AddFontResourceA')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, equals('LPSTR'));
  });

  test('UnionRect function parameters have correct width', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('UnionRect')!;

    expect(api.parameters.length, equals(3));

    expect(api.parameters[0].name, equals('lprcDst'));
    expect(api.parameters[1].name, equals('lprcSrc1'));
    expect(api.parameters[2].name, equals('lprcSrc2'));

    expect(api.parameters[0].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(api.parameters[1].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(api.parameters[2].typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
  });

  test('UnionRect function have correct Win32 type', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('UnionRect')!;

    expect(api.parameters.first.name, equals('lprcDst'));
    expect(api.parameters.first.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));

    expect(api.parameters.first.typeIdentifier.typeArgs.length, equals(1));
    expect(api.parameters.first.typeIdentifier.typeArgs.first.name,
        equals('Windows.Win32.DisplayDevices.RECT'));
  });
}
