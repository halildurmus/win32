@TestOn('windows')

import 'package:test/test.dart';
import 'package:winmd/winmd.dart';

void main() {
  test('Simple int type', () {
    final type = TypeIdentifier(CorElementType.ELEMENT_TYPE_I4);
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('int'));
    expect(typeProjection.nativeType, equals('Int32'));
  });

  test('Unicode string', () {
    final type = TypeIdentifier(CorElementType.ELEMENT_TYPE_PTR)
      ..name = 'LPWSTR'
      ..typeArgs = [TypeIdentifier(CorElementType.ELEMENT_TYPE_U2)];
    final typeProjection = TypeProjector(type);

    expect(typeProjection.dartType, equals('Pointer<Utf16>'));
    expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
  });

  group('Projection', () {
    final scope = MetadataStore.getWin32Scope();

    test('ANSI string', () {
      final typedef =
          scope.findTypeDef('Windows.Win32.KeyboardAndMouseInput.Apis')!;
      final api = typedef.findMethod('GetKeyNameTextA')!;
      final type = api.parameters[1].typeIdentifier; // LPSTR
      final typeProjection = TypeProjector(type);

      expect(typeProjection.dartType, equals('Pointer<Utf8>'));
      expect(typeProjection.nativeType, equals('Pointer<Utf8>'));
    });

    test('Handle', () {
      final typedef =
          scope.findTypeDef('Windows.Win32.KeyboardAndMouseInput.Apis')!;
      final api = typedef.findMethod('UnregisterHotKey')!;
      final type = api.parameters.first.typeIdentifier; // HWND
      final typeProjection = TypeProjector(type);

      expect(typeProjection.dartType, equals('int'));
      expect(typeProjection.nativeType, equals('IntPtr'));
    });

    test('Pointer<T>', () {
      final typedef =
          scope.findTypeDef('Windows.Win32.KeyboardAndMouseInput.Apis')!;
      final api = typedef.findMethod('GetKeyboardState')!;
      final type = api.parameters.first.typeIdentifier; // PBYTE
      final typeProjection = TypeProjector(type);

      expect(typeProjection.dartType, equals('Pointer<Uint8>'));
      expect(typeProjection.nativeType, equals('Pointer<Uint8>'));
    });

    test('Pointer<Pointer<T>>', () {
      final typedef = scope.findTypeDef('Windows.Win32.Security.Apis')!;
      final api = typedef.findMethod('CredReadW')!;
      final type = api.parameters.last.typeIdentifier; // PCREDENTIALW *
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer<Pointer<CREDENTIAL>>'));
      expect(typeProjection.dartType, equals('Pointer<Pointer<CREDENTIAL>>'));
    });

    test('Unicode string w/ double pointer', () {
      final typedef = scope.findTypeDef('Windows.Win32.Shell.Apis')!;
      final api = typedef.findMethod('SHGetKnownFolderPath')!;
      final type = api.parameters.last.typeIdentifier; // PWSTR *
      final typeProjection = TypeProjector(type);

      expect(typeProjection.dartType, equals('Pointer<Pointer<Utf16>>'));
      expect(typeProjection.nativeType, equals('Pointer<Pointer<Utf16>>'));
    });

    test('Pass COM interfaces', () {
      final typedef = scope.findTypeDef('Windows.Win32.Com.Apis')!;
      final api = typedef.findMethod('CoSetProxyBlanket')!;
      final type = api.parameters.first.typeIdentifier; // IUnknown
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer'));
      expect(typeProjection.dartType, equals('Pointer'));
    });

    test('Pass pointers to COM interfaces', () {
      final typedef = scope.findTypeDef('Windows.Win32.Com.Apis')!;
      final api = typedef.findMethod('CoCreateInstance')!;
      final type = api.parameters[1].typeIdentifier; // LPUNKNOWN
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer'));
      expect(typeProjection.dartType, equals('Pointer'));
    });

    test('Pass double pointers to COM interfaces', () {
      final typedef = scope.findTypeDef('Windows.Win32.Automation.Apis')!;
      final api = typedef.findMethod('GetActiveObject')!;
      final type = api.parameters.last.typeIdentifier; // IUnknown **
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer<Pointer>'));
      expect(typeProjection.dartType, equals('Pointer<Pointer>'));
    });

    test('OLECHAR is represented correctly', () {
      final typedef = scope.findTypeDef('Windows.Win32.Automation.Apis')!;
      final api = typedef.findMethod('SysAllocString')!;
      final type = api.parameters.first.typeIdentifier; // OLECHAR *
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer<Utf16>'));
      expect(typeProjection.dartType, equals('Pointer<Utf16>'));
    });

    test('Callbacks are represented correctly', () {
      final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
      final api = typedef.findMethod('EnumFontFamiliesExW')!;
      final type = api.parameters[2].typeIdentifier; // FONTENUMPROCW
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType,
          equals('Pointer<NativeFunction<EnumFontFamExProc>>'));
      expect(typeProjection.dartType,
          equals('Pointer<NativeFunction<EnumFontFamExProc>>'));
    });

    test('Callbacks are represented correctly 2', () {
      final typedef = scope.findTypeDef('Windows.Win32.Debug.Apis')!;
      final api = typedef.findMethod('SymEnumSymbolsW')!;
      final type =
          api.parameters[3].typeIdentifier; // PSYM_ENUMERATESYMBOLS_CALLBACKW
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType,
          equals('Pointer<NativeFunction<SymEnumSymbolsProc>>'));
      expect(typeProjection.dartType,
          equals('Pointer<NativeFunction<SymEnumSymbolsProc>>'));
    });

    test('Pointers to structs are represented correctly', () {
      final typedef =
          scope.findTypeDef('Windows.Win32.WindowsAndMessaging.Apis')!;
      final api = typedef.findMethod('ChooseFontW')!;
      final type = api.parameters.first.typeIdentifier; // CHOOSEFONTW
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer<CHOOSEFONT>'));
      expect(typeProjection.dartType, equals('Pointer<CHOOSEFONT>'));
    });

    test('Naked structs are represented correctly', () {
      final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
      final api = typedef.findMethod('InitializeProcThreadAttributeList')!;
      final type =
          api.parameters.first.typeIdentifier; // LPPROC_THREAD_ATTRIBUTE_LIST
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer'));
      expect(typeProjection.dartType, equals('Pointer'));
    });

    test('Enumeration params are represented correctly', () {
      final typedef = scope.findTypeDef('Windows.Win32.Gdi.Apis')!;
      final api = typedef.findMethod('CreateDIBitmap')!;
      final type = api.parameters.last.typeIdentifier;
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Uint32'));
      expect(typeProjection.dartType, equals('int'));
    });

    test('Pointer<Enum> params are represented correctly', () {
      final typedef = scope.findTypeDef('Windows.Win32.SystemServices.Apis')!;
      final api = typedef.findMethod('GetNamedPipeInfo')!;
      final type = api.parameters[1].typeIdentifier;
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Pointer<Uint32>'));
      expect(typeProjection.dartType, equals('Pointer<Uint32>'));
    });

    test('Void returns are represented correctly', () {
      final typedef = scope.findTypeDef('Windows.Win32.Security.Apis')!;
      final api = typedef.findMethod('CredFree')!;
      final type = api.returnType.typeIdentifier;
      final typeProjection = TypeProjector(type);

      expect(typeProjection.nativeType, equals('Void'));
      expect(typeProjection.dartType, equals('void'));
    });
  });
}
