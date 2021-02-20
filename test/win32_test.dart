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

    test('Can successfully load a typedef from the Win32 metadata', () {
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

    test('Can find a known API within the given scope', () {
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

    test('Can detect the module in which an API is found', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;

      final api = typedef.findMethod('AddFontResourceW')!;

      expect(api.module.name, equalsIgnoringCase('gdi32'));
    });

    test('Functions can correctly return an int type', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;
      final api = typedef.findMethod('AddFontResourceW')!;
      final returnType = api.returnType;

      expect(returnType.typeIdentifier.corType,
          equals(CorElementType.ELEMENT_TYPE_I4));
      expect(returnType.typeIdentifier.typeArgs.length, isZero);
      expect(returnType.typeIdentifier.name, equals('int'));
    });

    test('LPWSTR parameters are handled correctly', () {
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

    test('Signature blob is correct', () {
      final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
      final typedef = scope['Windows.Win32.Gdi.Apis']!;
      final api = typedef.findMethod('AddFontResourceW')!;
      expect(api.signatureBlob, equals([0x00, 0x01, 0x08, 0x0f, 0x07]));
    });

    test('NativeTypeInfo custom attribute blob is correct', () {
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

  test('Unicode string params are correctly marked', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('AddFontResourceW')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, equals('LPWSTR'));
  });

  test('ANSI string params are correctly marked', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('AddFontResourceA')!;

    expect(api.parameters.length, equals(1));
    final param = api.parameters.first;

    expect(param.name, equals('param0'));
    expect(param.typeIdentifier.name, equals('LPSTR'));
  });

  test('Returned structs like LPRECT have correct param width', () {
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

  test('Structs like RECT have the correct type args', () {
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

  test('DWORD typedefs like COLORREF have the correct param type', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('SetBkColor')!;
    final colorParam = api.parameters.last;

    expect(colorParam.name, equals('color'));
    expect(colorParam.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U4));
  });

  test('DWORD typedefs like COLORREF have the correct return type', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('SetBkColor')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_U4));
  });

  test('HANDLE-style parameters have the correct type', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.KeyboardAndMouseInput.Apis']!;
    final api = typedef.findMethod('UnregisterHotKey')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.name, endsWith('HWND'));
  });

  test('UnregisterPowerSettingNotification has the correct parameter type', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.SystemServices.Apis']!;
    final api = typedef.findMethod('UnregisterPowerSettingNotification')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(param.typeIdentifier.name, endsWith('HPOWERNOTIFY'));
  }, skip: 'https://github.com/microsoft/win32metadata/issues/225');

  test('APIs with empty parameters have an accurate return type', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.DataExchange.Apis']!;
    final api = typedef.findMethod('CountClipboardFormats')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_I4));
  });

  test('Double pointer is interpreted correctly', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Security.Apis']!;
    final api = typedef.findMethod('CredReadW')!;
    final param = api.parameters.last;

    expect(
        param.typeIdentifier.corType, equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(param.typeIdentifier.typeArgs.length, equals(2));
    expect(param.typeIdentifier.typeArgs.first.corType,
        equals(CorElementType.ELEMENT_TYPE_PTR));
    expect(param.typeIdentifier.typeArgs.last.name, endsWith('CREDENTIALW'));
  });

  test('HRESULT return values are generated correctly', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.WindowsProgramming.Apis']!;
    final api = typedef.findMethod('GetIntegratedDisplaySize')!;
    final returnType = api.returnType;

    expect(returnType.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_VALUETYPE));
    expect(returnType.typeIdentifier.name, endsWith('HRESULT'));
  });

  test('IUnknown parameters are generated correctly', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Com.Apis']!;
    final api = typedef.findMethod('CoSetProxyBlanket')!;
    final param = api.parameters.first;

    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_CLASS));
    expect(param.typeIdentifier.name, endsWith('IUnknown'));
  });

  test('Callback functions are generated correctly', () {
    final scope = MetadataStore.getScopeForFile('bin/Windows.Win32.winmd');
    final typedef = scope['Windows.Win32.Gdi.Apis']!;
    final api = typedef.findMethod('EnumFontFamiliesExW')!;
    final param = api.parameters[2]; // FONTENUMPROCW

    expect(param.name, equals('lpProc'));
    expect(param.typeIdentifier.corType,
        equals(CorElementType.ELEMENT_TYPE_CLASS));
    expect(param.typeIdentifier.name, endsWith('FONTENUMPROCW'));
    expect(param.typeIdentifier.typeArgs, isEmpty);
  });
}
